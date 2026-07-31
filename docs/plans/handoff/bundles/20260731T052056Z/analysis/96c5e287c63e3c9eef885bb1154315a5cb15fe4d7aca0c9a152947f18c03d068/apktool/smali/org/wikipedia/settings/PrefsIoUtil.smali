.class public abstract Lorg/wikipedia/settings/PrefsIoUtil;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static curConfig:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

.field public static final lambda$-1740632181:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const v3, -0x67bff075

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lorg/wikipedia/settings/PrefsIoUtil;->lambda$-1740632181:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method

.method public static final AboutScreenBody(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/util/List;)V
    .locals 12

    .line 1
    move-object v6, p3

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const v0, 0x2a9d5e9c

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x10

    .line 22
    .line 23
    :goto_0
    or-int v7, p0, v0

    .line 24
    .line 25
    and-int/lit8 v0, v7, 0x13

    .line 26
    .line 27
    const/16 v2, 0x12

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x1

    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    .line 33
    move v0, v9

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v8

    .line 36
    :goto_1
    and-int/lit8 v2, v7, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 45
    .line 46
    new-instance v2, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/16 v3, 0xa

    .line 49
    .line 50
    invoke-direct {v2, v3}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const/high16 v3, 0x42000000    # 32.0f

    .line 54
    .line 55
    invoke-direct {v0, v3, v9, v2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 56
    .line 57
    .line 58
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 59
    .line 60
    const/4 v3, 0x6

    .line 61
    invoke-static {v0, v2, p1, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-wide v2, p1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 66
    .line 67
    ushr-long v10, v2, v1

    .line 68
    .line 69
    xor-long/2addr v2, v10

    .line 70
    long-to-int v1, v2

    .line 71
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 87
    .line 88
    .line 89
    iget-boolean v10, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 90
    .line 91
    if-eqz v10, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 98
    .line 99
    .line 100
    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 101
    .line 102
    invoke-static {p1, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 106
    .line 107
    invoke-static {p1, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 120
    .line 121
    invoke-static {p1, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {p1, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    const v0, 0x7f120020

    .line 130
    .line 131
    .line 132
    invoke-static {v0, p1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const v0, 0x7f12001f

    .line 137
    .line 138
    .line 139
    invoke-static {v0, p1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const/4 v3, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    move-object v4, p1

    .line 147
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/settings/PrefsIoUtil;->LinkTextWithHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/runtime/GapComposer;I)V

    .line 148
    .line 149
    .line 150
    const v0, 0x7f120024

    .line 151
    .line 152
    .line 153
    invoke-static {v0, p1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const v0, 0x7f120025

    .line 158
    .line 159
    .line 160
    invoke-static {v0, p1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const/4 v0, 0x0

    .line 165
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/settings/PrefsIoUtil;->LinkTextWithHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/runtime/GapComposer;I)V

    .line 166
    .line 167
    .line 168
    const v0, 0x7f120022

    .line 169
    .line 170
    .line 171
    invoke-static {v0, p1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    shl-int/lit8 v1, v7, 0x3

    .line 176
    .line 177
    and-int/lit16 v1, v1, 0x380

    .line 178
    .line 179
    const/4 v2, 0x0

    .line 180
    invoke-static {v2, v0, p3, p1, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->LicenseTextWithHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/GapComposer;I)V

    .line 181
    .line 182
    .line 183
    const v0, 0x7f12001d

    .line 184
    .line 185
    .line 186
    invoke-static {v0, p1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const v0, 0x7f12001c

    .line 191
    .line 192
    .line 193
    invoke-static {v0, p1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/settings/PrefsIoUtil;->LinkTextWithHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/runtime/GapComposer;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 206
    .line 207
    .line 208
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_4

    .line 213
    .line 214
    new-instance v1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda6;

    .line 215
    .line 216
    invoke-direct {v1, p0, v8, p2, p3}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda6;-><init>(IILandroidx/compose/ui/Modifier;Ljava/util/List;)V

    .line 217
    .line 218
    .line 219
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 220
    .line 221
    :cond_4
    return-void
.end method

.method public static final AboutScreenContent(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v1, -0x2db1d986

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int v1, p5, v1

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/16 v6, 0x20

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    move v2, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v2, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v1, v2

    .line 45
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const/16 v2, 0x100

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v2, 0x80

    .line 55
    .line 56
    :goto_2
    or-int/2addr v1, v2

    .line 57
    and-int/lit16 v2, v1, 0x493

    .line 58
    .line 59
    const/16 v7, 0x492

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    if-eq v2, v7, :cond_3

    .line 63
    .line 64
    move v2, v8

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/4 v2, 0x0

    .line 67
    :goto_3
    and-int/lit8 v7, v1, 0x1

    .line 68
    .line 69
    invoke-virtual {v0, v7, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    invoke-static {v0}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v3, v2, v8}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 84
    .line 85
    sget-object v9, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 86
    .line 87
    const/16 v10, 0x30

    .line 88
    .line 89
    invoke-static {v9, v7, v0, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 94
    .line 95
    ushr-long v13, v11, v6

    .line 96
    .line 97
    xor-long/2addr v11, v13

    .line 98
    long-to-int v6, v11

    .line 99
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {v0, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 115
    .line 116
    .line 117
    iget-boolean v12, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 118
    .line 119
    if-eqz v12, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 126
    .line 127
    .line 128
    :goto_4
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 129
    .line 130
    invoke-static {v0, v7, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 134
    .line 135
    invoke-static {v0, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 148
    .line 149
    invoke-static {v0, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 150
    .line 151
    .line 152
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 153
    .line 154
    invoke-static {v0, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 155
    .line 156
    .line 157
    const/high16 v2, 0x3f800000    # 1.0f

    .line 158
    .line 159
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 160
    .line 161
    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    const/16 v17, 0x5

    .line 166
    .line 167
    const/4 v13, 0x0

    .line 168
    const/high16 v14, 0x41f00000    # 30.0f

    .line 169
    .line 170
    const/4 v15, 0x0

    .line 171
    const/high16 v16, 0x41800000    # 16.0f

    .line 172
    .line 173
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    move/from16 v15, v16

    .line 178
    .line 179
    and-int/lit8 v1, v1, 0x70

    .line 180
    .line 181
    or-int/lit16 v1, v1, 0x186

    .line 182
    .line 183
    move-object/from16 v6, p3

    .line 184
    .line 185
    invoke-static {v2, v4, v6, v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->AboutWikipediaHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/GapComposer;I)V

    .line 186
    .line 187
    .line 188
    new-instance v1, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;

    .line 189
    .line 190
    invoke-direct {v1, v5, v8}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;I)V

    .line 191
    .line 192
    .line 193
    const v2, -0x3d30f8ad

    .line 194
    .line 195
    .line 196
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const/4 v2, 0x0

    .line 201
    invoke-static {v2, v1, v0, v10}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SelectionContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 202
    .line 203
    .line 204
    const/4 v14, 0x0

    .line 205
    const/16 v16, 0x5

    .line 206
    .line 207
    const/4 v12, 0x0

    .line 208
    const/high16 v13, 0x41c00000    # 24.0f

    .line 209
    .line 210
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const/4 v2, 0x6

    .line 215
    invoke-static {v1, v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->AboutScreenFooter(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_5
    move-object/from16 v6, p3

    .line 223
    .line 224
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 225
    .line 226
    .line 227
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    if-eqz v8, :cond_6

    .line 232
    .line 233
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 234
    .line 235
    const/16 v2, 0xe

    .line 236
    .line 237
    const/4 v7, 0x0

    .line 238
    move/from16 v1, p5

    .line 239
    .line 240
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 241
    .line 242
    .line 243
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 244
    .line 245
    :cond_6
    return-void
.end method

.method public static final AboutScreenFooter(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    const v1, -0x3af94643

    .line 6
    .line 7
    .line 8
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p2, 0x3

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, 0x1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    move v1, v12

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v11

    .line 21
    :goto_0
    and-int/lit8 v2, p2, 0x1

    .line 22
    .line 23
    invoke-virtual {v14, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance v1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 30
    .line 31
    new-instance v2, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    const/high16 v3, 0x41800000    # 16.0f

    .line 39
    .line 40
    invoke-direct {v1, v3, v12, v2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 44
    .line 45
    const/16 v3, 0x36

    .line 46
    .line 47
    invoke-static {v1, v2, v14, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-wide v2, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 52
    .line 53
    const/16 v4, 0x20

    .line 54
    .line 55
    ushr-long v4, v2, v4

    .line 56
    .line 57
    xor-long/2addr v2, v4

    .line 58
    long-to-int v2, v2

    .line 59
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v14, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 73
    .line 74
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 75
    .line 76
    .line 77
    iget-boolean v6, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 78
    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 86
    .line 87
    .line 88
    :goto_1
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 89
    .line 90
    invoke-static {v14, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 91
    .line 92
    .line 93
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 94
    .line 95
    invoke-static {v14, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 103
    .line 104
    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 105
    .line 106
    .line 107
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 108
    .line 109
    invoke-static {v14, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 113
    .line 114
    invoke-static {v14, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 115
    .line 116
    .line 117
    const/high16 v1, 0x41c00000    # 24.0f

    .line 118
    .line 119
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 120
    .line 121
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const v1, 0x7f080217

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v11, v14}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget-object v13, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 133
    .line 134
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 139
    .line 140
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 141
    .line 142
    new-instance v7, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 143
    .line 144
    const/4 v2, 0x5

    .line 145
    invoke-direct {v7, v4, v5, v2}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 146
    .line 147
    .line 148
    const/16 v9, 0x1b8

    .line 149
    .line 150
    const/16 v10, 0x38

    .line 151
    .line 152
    const/4 v2, 0x0

    .line 153
    const/4 v4, 0x0

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v6, 0x0

    .line 156
    move-object v8, v14

    .line 157
    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 158
    .line 159
    .line 160
    const v1, 0x7f120027

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v14}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 168
    .line 169
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 174
    .line 175
    iget-object v4, v2, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 176
    .line 177
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 182
    .line 183
    iget-wide v5, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 184
    .line 185
    new-instance v3, Landroidx/compose/ui/text/TextLinkStyles;

    .line 186
    .line 187
    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    .line 188
    .line 189
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 194
    .line 195
    iget-wide v7, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 196
    .line 197
    const/16 v33, 0x0

    .line 198
    .line 199
    const v34, 0xfffe

    .line 200
    .line 201
    .line 202
    const-wide/16 v18, 0x0

    .line 203
    .line 204
    const/16 v20, 0x0

    .line 205
    .line 206
    const/16 v21, 0x0

    .line 207
    .line 208
    const/16 v22, 0x0

    .line 209
    .line 210
    const/16 v23, 0x0

    .line 211
    .line 212
    const/16 v24, 0x0

    .line 213
    .line 214
    const-wide/16 v25, 0x0

    .line 215
    .line 216
    const/16 v27, 0x0

    .line 217
    .line 218
    const/16 v28, 0x0

    .line 219
    .line 220
    const/16 v29, 0x0

    .line 221
    .line 222
    const-wide/16 v30, 0x0

    .line 223
    .line 224
    const/16 v32, 0x0

    .line 225
    .line 226
    move-wide/from16 v16, v7

    .line 227
    .line 228
    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 229
    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    invoke-direct {v3, v15, v2, v2, v2}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 233
    .line 234
    .line 235
    const/4 v15, 0x0

    .line 236
    const/16 v16, 0xfe2

    .line 237
    .line 238
    const/4 v7, 0x0

    .line 239
    const/4 v8, 0x0

    .line 240
    const-wide/16 v9, 0x0

    .line 241
    .line 242
    move v13, v11

    .line 243
    const/4 v11, 0x0

    .line 244
    move/from16 v17, v12

    .line 245
    .line 246
    const/4 v12, 0x0

    .line 247
    move/from16 v18, v13

    .line 248
    .line 249
    const/4 v13, 0x0

    .line 250
    move/from16 v0, v17

    .line 251
    .line 252
    invoke-static/range {v1 .. v16}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_2
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 260
    .line 261
    .line 262
    :goto_2
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_3

    .line 267
    .line 268
    new-instance v1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda10;

    .line 269
    .line 270
    const/4 v13, 0x0

    .line 271
    move-object/from16 v2, p0

    .line 272
    .line 273
    move/from16 v3, p2

    .line 274
    .line 275
    invoke-direct {v1, v2, v3, v13}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 276
    .line 277
    .line 278
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 279
    .line 280
    :cond_3
    return-void
.end method

.method public static final AboutWikipediaHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/GapComposer;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const v3, -0x3eea02a1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v3, v4, 0x6

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x2

    .line 31
    :goto_0
    or-int/2addr v3, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v3, v4

    .line 34
    :goto_1
    and-int/lit8 v5, v4, 0x30

    .line 35
    .line 36
    if-nez v5, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    const/16 v5, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v5, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v3, v5

    .line 50
    :cond_3
    and-int/lit16 v5, v4, 0x180

    .line 51
    .line 52
    move-object/from16 v10, p2

    .line 53
    .line 54
    if-nez v5, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    const/16 v5, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v5, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v3, v5

    .line 68
    :cond_5
    and-int/lit16 v5, v3, 0x93

    .line 69
    .line 70
    const/16 v8, 0x92

    .line 71
    .line 72
    if-eq v5, v8, :cond_6

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    goto :goto_4

    .line 76
    :cond_6
    const/4 v5, 0x0

    .line 77
    :goto_4
    and-int/lit8 v8, v3, 0x1

    .line 78
    .line 79
    invoke-virtual {v0, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_c

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 90
    .line 91
    if-ne v5, v8, :cond_7

    .line 92
    .line 93
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    move-object v9, v5

    .line 101
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 102
    .line 103
    const v5, 0x7f12086c

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    const v5, 0x7f12086d

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 118
    .line 119
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 120
    .line 121
    const/16 v16, 0x20

    .line 122
    .line 123
    const/16 v6, 0x30

    .line 124
    .line 125
    invoke-static {v13, v5, v0, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-wide v14, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 130
    .line 131
    ushr-long v17, v14, v16

    .line 132
    .line 133
    xor-long v14, v14, v17

    .line 134
    .line 135
    long-to-int v13, v14

    .line 136
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 145
    .line 146
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 152
    .line 153
    .line 154
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 155
    .line 156
    if-eqz v7, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 163
    .line 164
    .line 165
    :goto_5
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 171
    .line 172
    invoke-static {v0, v14, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 185
    .line 186
    invoke-static {v0, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 187
    .line 188
    .line 189
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 190
    .line 191
    invoke-static {v0, v15, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    and-int/lit16 v3, v3, 0x380

    .line 199
    .line 200
    const/16 v6, 0x100

    .line 201
    .line 202
    if-ne v3, v6, :cond_9

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_9
    const/4 v3, 0x0

    .line 207
    :goto_6
    or-int/2addr v3, v5

    .line 208
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    or-int/2addr v3, v5

    .line 213
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    or-int/2addr v3, v5

    .line 218
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    if-nez v3, :cond_a

    .line 223
    .line 224
    if-ne v5, v8, :cond_b

    .line 225
    .line 226
    :cond_a
    new-instance v8, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;

    .line 227
    .line 228
    const/4 v13, 0x0

    .line 229
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    move-object v5, v8

    .line 236
    :cond_b
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 237
    .line 238
    const/4 v3, 0x0

    .line 239
    const/4 v6, 0x0

    .line 240
    invoke-static {v3, v5, v0, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->AboutWikipediaImage(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 241
    .line 242
    .line 243
    new-instance v5, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;

    .line 244
    .line 245
    const/16 v7, 0xc

    .line 246
    .line 247
    invoke-direct {v5, v2, v7, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;IB)V

    .line 248
    .line 249
    .line 250
    const v6, -0x3e808cda

    .line 251
    .line 252
    .line 253
    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const/16 v6, 0x30

    .line 258
    .line 259
    invoke-static {v3, v5, v0, v6}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SelectionContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 260
    .line 261
    .line 262
    const/4 v3, 0x1

    .line 263
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 268
    .line 269
    .line 270
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    if-eqz v6, :cond_d

    .line 275
    .line 276
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 277
    .line 278
    const/4 v5, 0x0

    .line 279
    move-object/from16 v3, p2

    .line 280
    .line 281
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 282
    .line 283
    .line 284
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 285
    .line 286
    :cond_d
    return-void
.end method

.method public static final AboutWikipediaImage(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v1, -0x308ac213

    .line 11
    .line 12
    .line 13
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    or-int/lit8 v1, v11, 0x6

    .line 17
    .line 18
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, 0x10

    .line 29
    .line 30
    :goto_0
    or-int/2addr v1, v2

    .line 31
    and-int/lit8 v2, v1, 0x13

    .line 32
    .line 33
    const/16 v4, 0x12

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x1

    .line 37
    if-eq v2, v4, :cond_1

    .line 38
    .line 39
    move v2, v13

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v2, v12

    .line 42
    :goto_1
    and-int/lit8 v4, v1, 0x1

    .line 43
    .line 44
    invoke-virtual {v8, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_8

    .line 49
    .line 50
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 55
    .line 56
    if-ne v2, v4, :cond_2

    .line 57
    .line 58
    new-instance v2, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 59
    .line 60
    invoke-direct {v2, v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 67
    .line 68
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 69
    .line 70
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 71
    .line 72
    const/16 v7, 0x30

    .line 73
    .line 74
    invoke-static {v6, v5, v8, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iget-wide v6, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 79
    .line 80
    ushr-long v9, v6, v3

    .line 81
    .line 82
    xor-long/2addr v6, v9

    .line 83
    long-to-int v6, v6

    .line 84
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 89
    .line 90
    invoke-static {v8, v14}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 100
    .line 101
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 102
    .line 103
    .line 104
    iget-boolean v15, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 105
    .line 106
    if-eqz v15, :cond_3

    .line 107
    .line 108
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 113
    .line 114
    .line 115
    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    .line 117
    invoke-static {v8, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 121
    .line 122
    invoke-static {v8, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    invoke-static {v8, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 135
    .line 136
    invoke-static {v8, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {v8, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    const/high16 v5, 0x42b00000    # 88.0f

    .line 145
    .line 146
    invoke-static {v14, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    if-ne v5, v4, :cond_4

    .line 155
    .line 156
    new-instance v5, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 157
    .line 158
    invoke-direct {v5}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    move-object/from16 v16, v5

    .line 165
    .line 166
    check-cast v16, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 167
    .line 168
    and-int/lit8 v1, v1, 0x70

    .line 169
    .line 170
    if-ne v1, v3, :cond_5

    .line 171
    .line 172
    move v1, v13

    .line 173
    goto :goto_3

    .line 174
    :cond_5
    move v1, v12

    .line 175
    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-nez v1, :cond_6

    .line 180
    .line 181
    if-ne v3, v4, :cond_7

    .line 182
    .line 183
    :cond_6
    new-instance v3, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 184
    .line 185
    invoke-direct {v3, v12, v0, v2}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_7
    move-object/from16 v20, v3

    .line 192
    .line 193
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 194
    .line 195
    const/16 v21, 0x1c

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    const/16 v18, 0x0

    .line 200
    .line 201
    const/16 v19, 0x0

    .line 202
    .line 203
    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/RippleNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const v1, 0x7f08030f

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v12, v8}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const v2, 0x7f120023

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v8}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const/16 v9, 0x8

    .line 222
    .line 223
    const/16 v10, 0x78

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    const/4 v5, 0x0

    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v7, 0x0

    .line 229
    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 230
    .line 231
    .line 232
    const/16 v18, 0x0

    .line 233
    .line 234
    const/16 v19, 0xd

    .line 235
    .line 236
    const/4 v15, 0x0

    .line 237
    const/high16 v16, 0x40800000    # 4.0f

    .line 238
    .line 239
    const/16 v17, 0x0

    .line 240
    .line 241
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const/high16 v2, 0x41b00000    # 22.0f

    .line 246
    .line 247
    const/high16 v3, 0x42e40000    # 114.0f

    .line 248
    .line 249
    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    const v1, 0x7f080321

    .line 254
    .line 255
    .line 256
    invoke-static {v1, v12, v8}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 261
    .line 262
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 267
    .line 268
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 269
    .line 270
    new-instance v7, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 271
    .line 272
    const/4 v2, 0x5

    .line 273
    invoke-direct {v7, v4, v5, v2}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 274
    .line 275
    .line 276
    const/16 v9, 0x38

    .line 277
    .line 278
    const/16 v10, 0x38

    .line 279
    .line 280
    const/4 v2, 0x0

    .line 281
    const/4 v4, 0x0

    .line 282
    const/4 v5, 0x0

    .line 283
    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 291
    .line 292
    .line 293
    move-object/from16 v14, p0

    .line 294
    .line 295
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    if-eqz v1, :cond_9

    .line 300
    .line 301
    new-instance v2, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda12;

    .line 302
    .line 303
    invoke-direct {v2, v14, v0, v11, v12}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V

    .line 304
    .line 305
    .line 306
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 307
    .line 308
    :cond_9
    return-void
.end method

.method public static final AboutWikipediaScreen(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    move/from16 v1, p5

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v2, 0x2758f8f8

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v2, v1, 0x6

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    move v6, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v6, 0x2

    .line 37
    :goto_0
    or-int/2addr v6, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object/from16 v2, p0

    .line 40
    .line 41
    move v6, v1

    .line 42
    :goto_1
    and-int/lit16 v7, v1, 0x180

    .line 43
    .line 44
    if-nez v7, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_2

    .line 51
    .line 52
    const/16 v7, 0x100

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v7, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v6, v7

    .line 58
    :cond_3
    and-int/lit16 v7, v1, 0xc00

    .line 59
    .line 60
    if-nez v7, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_4

    .line 67
    .line 68
    const/16 v7, 0x800

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v7, 0x400

    .line 72
    .line 73
    :goto_3
    or-int/2addr v6, v7

    .line 74
    :cond_5
    and-int/lit16 v7, v6, 0x493

    .line 75
    .line 76
    const/16 v8, 0x492

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    if-eq v7, v8, :cond_6

    .line 80
    .line 81
    const/4 v7, 0x1

    .line 82
    goto :goto_4

    .line 83
    :cond_6
    move v7, v9

    .line 84
    :goto_4
    and-int/lit8 v8, v6, 0x1

    .line 85
    .line 86
    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_8

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 97
    .line 98
    if-ne v7, v8, :cond_7

    .line 99
    .line 100
    new-instance v7, Landroidx/compose/material3/SnackbarHostState;

    .line 101
    .line 102
    invoke-direct {v7}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    check-cast v7, Landroidx/compose/material3/SnackbarHostState;

    .line 109
    .line 110
    sget-object v8, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 111
    .line 112
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 117
    .line 118
    iget-wide v11, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 119
    .line 120
    new-instance v8, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;

    .line 121
    .line 122
    invoke-direct {v8, v4, v5, v9}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function0;IB)V

    .line 123
    .line 124
    .line 125
    const v5, -0x5a3da844

    .line 126
    .line 127
    .line 128
    invoke-static {v5, v8, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    new-instance v8, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;

    .line 133
    .line 134
    const/4 v10, 0x5

    .line 135
    invoke-direct {v8, v10, v7}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const v10, 0x7ba488be

    .line 139
    .line 140
    .line 141
    invoke-static {v10, v8, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    new-instance v10, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;

    .line 146
    .line 147
    move-object/from16 v13, p1

    .line 148
    .line 149
    invoke-direct {v10, v13, v3, v7, v9}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 150
    .line 151
    .line 152
    const v7, 0x7aea4a07

    .line 153
    .line 154
    .line 155
    invoke-static {v7, v10, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 156
    .line 157
    .line 158
    move-result-object v16

    .line 159
    and-int/lit8 v6, v6, 0xe

    .line 160
    .line 161
    const v7, 0x30000c30

    .line 162
    .line 163
    .line 164
    or-int v18, v6, v7

    .line 165
    .line 166
    const/16 v19, 0x1b4

    .line 167
    .line 168
    const/4 v7, 0x0

    .line 169
    const/4 v9, 0x0

    .line 170
    const/4 v10, 0x0

    .line 171
    const-wide/16 v13, 0x0

    .line 172
    .line 173
    const/4 v15, 0x0

    .line 174
    move-object/from16 v17, v0

    .line 175
    .line 176
    move-object v6, v5

    .line 177
    move-object v5, v2

    .line 178
    invoke-static/range {v5 .. v19}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    :goto_5
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    if-eqz v6, :cond_9

    .line 190
    .line 191
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;

    .line 192
    .line 193
    move-object/from16 v2, p1

    .line 194
    .line 195
    move v5, v1

    .line 196
    move-object/from16 v1, p0

    .line 197
    .line 198
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;I)V

    .line 199
    .line 200
    .line 201
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 202
    .line 203
    :cond_9
    return-void
.end method

.method public static final LicenseTextWithHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/GapComposer;I)V
    .locals 31

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move/from16 v1, p4

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const v2, -0x3d887043

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    or-int/lit8 v2, v1, 0x6

    .line 20
    .line 21
    and-int/lit8 v4, v1, 0x30

    .line 22
    .line 23
    const/16 v5, 0x20

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    move-object/from16 v4, p1

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    move v6, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v6, 0x10

    .line 38
    .line 39
    :goto_0
    or-int/2addr v2, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object/from16 v4, p1

    .line 42
    .line 43
    :goto_1
    and-int/lit16 v6, v1, 0x180

    .line 44
    .line 45
    if-nez v6, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    const/16 v6, 0x100

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v6, 0x80

    .line 57
    .line 58
    :goto_2
    or-int/2addr v2, v6

    .line 59
    :cond_3
    and-int/lit16 v6, v2, 0x93

    .line 60
    .line 61
    const/16 v7, 0x92

    .line 62
    .line 63
    const/4 v8, 0x1

    .line 64
    if-eq v6, v7, :cond_4

    .line 65
    .line 66
    move v6, v8

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/4 v6, 0x0

    .line 69
    :goto_3
    and-int/lit8 v7, v2, 0x1

    .line 70
    .line 71
    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_6

    .line 76
    .line 77
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 78
    .line 79
    new-instance v7, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/16 v9, 0xa

    .line 82
    .line 83
    invoke-direct {v7, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const/high16 v9, 0x41000000    # 8.0f

    .line 87
    .line 88
    invoke-direct {v6, v9, v8, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 89
    .line 90
    .line 91
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 92
    .line 93
    const/4 v9, 0x6

    .line 94
    invoke-static {v6, v7, v0, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 99
    .line 100
    ushr-long v12, v10, v5

    .line 101
    .line 102
    xor-long/2addr v10, v12

    .line 103
    long-to-int v5, v10

    .line 104
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 109
    .line 110
    invoke-static {v0, v10}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 115
    .line 116
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 122
    .line 123
    .line 124
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 125
    .line 126
    if-eqz v13, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 133
    .line 134
    .line 135
    :goto_4
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 136
    .line 137
    invoke-static {v0, v6, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 138
    .line 139
    .line 140
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 141
    .line 142
    invoke-static {v0, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 150
    .line 151
    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 152
    .line 153
    .line 154
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 155
    .line 156
    invoke-static {v0, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 160
    .line 161
    invoke-static {v0, v11, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 165
    .line 166
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 171
    .line 172
    iget-object v5, v5, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 173
    .line 174
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 175
    .line 176
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 181
    .line 182
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 183
    .line 184
    shr-int/lit8 v11, v2, 0x3

    .line 185
    .line 186
    and-int/lit8 v25, v11, 0xe

    .line 187
    .line 188
    const/16 v26, 0x0

    .line 189
    .line 190
    const v27, 0x1fffa

    .line 191
    .line 192
    .line 193
    move-object/from16 v23, v5

    .line 194
    .line 195
    const/4 v5, 0x0

    .line 196
    move v11, v8

    .line 197
    const/4 v8, 0x0

    .line 198
    move v12, v9

    .line 199
    move-object v13, v10

    .line 200
    const-wide/16 v9, 0x0

    .line 201
    .line 202
    move v14, v11

    .line 203
    const/4 v11, 0x0

    .line 204
    move v15, v12

    .line 205
    const/4 v12, 0x0

    .line 206
    move-object/from16 v17, v13

    .line 207
    .line 208
    move/from16 v16, v14

    .line 209
    .line 210
    const-wide/16 v13, 0x0

    .line 211
    .line 212
    move/from16 v18, v15

    .line 213
    .line 214
    const/4 v15, 0x0

    .line 215
    move/from16 v19, v16

    .line 216
    .line 217
    move-object/from16 v20, v17

    .line 218
    .line 219
    const-wide/16 v16, 0x0

    .line 220
    .line 221
    move/from16 v21, v18

    .line 222
    .line 223
    const/16 v18, 0x0

    .line 224
    .line 225
    move/from16 v22, v19

    .line 226
    .line 227
    const/16 v19, 0x0

    .line 228
    .line 229
    move-object/from16 v24, v20

    .line 230
    .line 231
    const/16 v20, 0x0

    .line 232
    .line 233
    move/from16 v28, v21

    .line 234
    .line 235
    const/16 v21, 0x0

    .line 236
    .line 237
    move/from16 v29, v22

    .line 238
    .line 239
    const/16 v22, 0x0

    .line 240
    .line 241
    move-object/from16 v30, v24

    .line 242
    .line 243
    move-object/from16 v24, v0

    .line 244
    .line 245
    move/from16 v0, v29

    .line 246
    .line 247
    move-object/from16 v29, v30

    .line 248
    .line 249
    invoke-static/range {v4 .. v27}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v4, v24

    .line 253
    .line 254
    shr-int/lit8 v2, v2, 0x6

    .line 255
    .line 256
    and-int/lit8 v2, v2, 0xe

    .line 257
    .line 258
    invoke-static {v2, v4, v5, v3}, Lorg/wikipedia/compose/components/TabsBoxKt;->LicenseLinkText(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/util/List;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_6
    move-object v4, v0

    .line 266
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 267
    .line 268
    .line 269
    move-object/from16 v29, p0

    .line 270
    .line 271
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    if-eqz v6, :cond_7

    .line 276
    .line 277
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 278
    .line 279
    const/16 v5, 0x12

    .line 280
    .line 281
    move-object/from16 v2, p1

    .line 282
    .line 283
    move v4, v1

    .line 284
    move-object/from16 v1, v29

    .line 285
    .line 286
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 287
    .line 288
    .line 289
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 290
    .line 291
    :cond_7
    return-void
.end method

.method public static final LinkTextWithHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/runtime/GapComposer;I)V
    .locals 34

    .line 1
    move-object/from16 v13, p4

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const v0, 0x7b962802

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    or-int/lit8 v0, p5, 0x6

    .line 16
    .line 17
    move-object/from16 v5, p1

    .line 18
    .line 19
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x20

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v1, 0x10

    .line 30
    .line 31
    :goto_0
    or-int/2addr v0, v1

    .line 32
    move-object/from16 v1, p2

    .line 33
    .line 34
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    const/16 v3, 0x100

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v3, 0x80

    .line 44
    .line 45
    :goto_1
    or-int/2addr v0, v3

    .line 46
    or-int/lit16 v0, v0, 0x400

    .line 47
    .line 48
    and-int/lit16 v3, v0, 0x493

    .line 49
    .line 50
    const/16 v4, 0x492

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    if-eq v3, v4, :cond_2

    .line 54
    .line 55
    move v3, v6

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v3, 0x0

    .line 58
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 59
    .line 60
    invoke-virtual {v13, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_6

    .line 65
    .line 66
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 67
    .line 68
    .line 69
    and-int/lit8 v3, p5, 0x1

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 81
    .line 82
    .line 83
    and-int/lit16 v0, v0, -0x1c01

    .line 84
    .line 85
    move-object/from16 v24, p3

    .line 86
    .line 87
    move/from16 v25, v0

    .line 88
    .line 89
    move-object/from16 v0, p0

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    :goto_3
    new-instance v3, Landroidx/compose/ui/text/TextLinkStyles;

    .line 93
    .line 94
    new-instance v14, Landroidx/compose/ui/text/SpanStyle;

    .line 95
    .line 96
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 103
    .line 104
    iget-wide v7, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 105
    .line 106
    const/16 v32, 0x0

    .line 107
    .line 108
    const v33, 0xfffe

    .line 109
    .line 110
    .line 111
    const-wide/16 v17, 0x0

    .line 112
    .line 113
    const/16 v19, 0x0

    .line 114
    .line 115
    const/16 v20, 0x0

    .line 116
    .line 117
    const/16 v21, 0x0

    .line 118
    .line 119
    const/16 v22, 0x0

    .line 120
    .line 121
    const/16 v23, 0x0

    .line 122
    .line 123
    const-wide/16 v24, 0x0

    .line 124
    .line 125
    const/16 v26, 0x0

    .line 126
    .line 127
    const/16 v27, 0x0

    .line 128
    .line 129
    const/16 v28, 0x0

    .line 130
    .line 131
    const-wide/16 v29, 0x0

    .line 132
    .line 133
    const/16 v31, 0x0

    .line 134
    .line 135
    move-wide v15, v7

    .line 136
    invoke-direct/range {v14 .. v33}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 137
    .line 138
    .line 139
    const/4 v4, 0x0

    .line 140
    invoke-direct {v3, v14, v4, v4, v4}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 141
    .line 142
    .line 143
    and-int/lit16 v0, v0, -0x1c01

    .line 144
    .line 145
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 146
    .line 147
    move/from16 v25, v0

    .line 148
    .line 149
    move-object/from16 v24, v3

    .line 150
    .line 151
    move-object v0, v4

    .line 152
    :goto_4
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 153
    .line 154
    .line 155
    new-instance v3, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 156
    .line 157
    new-instance v4, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 158
    .line 159
    const/16 v7, 0xa

    .line 160
    .line 161
    invoke-direct {v4, v7}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 162
    .line 163
    .line 164
    const/high16 v7, 0x41000000    # 8.0f

    .line 165
    .line 166
    invoke-direct {v3, v7, v6, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 167
    .line 168
    .line 169
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 170
    .line 171
    const/4 v7, 0x6

    .line 172
    invoke-static {v3, v4, v13, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 177
    .line 178
    ushr-long v10, v8, v2

    .line 179
    .line 180
    xor-long/2addr v8, v10

    .line 181
    long-to-int v2, v8

    .line 182
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {v13, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 191
    .line 192
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 196
    .line 197
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 198
    .line 199
    .line 200
    iget-boolean v10, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 201
    .line 202
    if-eqz v10, :cond_5

    .line 203
    .line 204
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 209
    .line 210
    .line 211
    :goto_5
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 212
    .line 213
    invoke-static {v13, v3, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 217
    .line 218
    invoke-static {v13, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 226
    .line 227
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 228
    .line 229
    .line 230
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 231
    .line 232
    invoke-static {v13, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 233
    .line 234
    .line 235
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 236
    .line 237
    invoke-static {v13, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 238
    .line 239
    .line 240
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 241
    .line 242
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 247
    .line 248
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 249
    .line 250
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 251
    .line 252
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 257
    .line 258
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 259
    .line 260
    shr-int/lit8 v8, v25, 0x3

    .line 261
    .line 262
    and-int/lit8 v21, v8, 0xe

    .line 263
    .line 264
    const/16 v22, 0x0

    .line 265
    .line 266
    const v23, 0x1fffa

    .line 267
    .line 268
    .line 269
    const/4 v1, 0x0

    .line 270
    move-object/from16 v19, v2

    .line 271
    .line 272
    move-wide v2, v3

    .line 273
    const/4 v4, 0x0

    .line 274
    move v8, v6

    .line 275
    const-wide/16 v5, 0x0

    .line 276
    .line 277
    move v9, v7

    .line 278
    const/4 v7, 0x0

    .line 279
    move v10, v8

    .line 280
    const/4 v8, 0x0

    .line 281
    move v11, v9

    .line 282
    move v12, v10

    .line 283
    const-wide/16 v9, 0x0

    .line 284
    .line 285
    move v14, v11

    .line 286
    const/4 v11, 0x0

    .line 287
    move v15, v12

    .line 288
    const-wide/16 v12, 0x0

    .line 289
    .line 290
    move/from16 v16, v14

    .line 291
    .line 292
    const/4 v14, 0x0

    .line 293
    move/from16 v17, v15

    .line 294
    .line 295
    const/4 v15, 0x0

    .line 296
    move/from16 v18, v16

    .line 297
    .line 298
    const/16 v16, 0x0

    .line 299
    .line 300
    move/from16 v20, v17

    .line 301
    .line 302
    const/16 v17, 0x0

    .line 303
    .line 304
    move/from16 v26, v18

    .line 305
    .line 306
    const/16 v18, 0x0

    .line 307
    .line 308
    move-object/from16 v20, p4

    .line 309
    .line 310
    move/from16 v27, v26

    .line 311
    .line 312
    move-object/from16 v26, v0

    .line 313
    .line 314
    move-object/from16 v0, p1

    .line 315
    .line 316
    invoke-static/range {v0 .. v23}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 317
    .line 318
    .line 319
    shr-int/lit8 v0, v25, 0x6

    .line 320
    .line 321
    and-int/lit8 v14, v0, 0xe

    .line 322
    .line 323
    const/16 v15, 0xffa

    .line 324
    .line 325
    const/4 v3, 0x0

    .line 326
    const-wide/16 v4, 0x0

    .line 327
    .line 328
    const/4 v6, 0x0

    .line 329
    const/4 v7, 0x0

    .line 330
    const-wide/16 v8, 0x0

    .line 331
    .line 332
    const/4 v10, 0x0

    .line 333
    const/4 v12, 0x0

    .line 334
    move-object/from16 v0, p2

    .line 335
    .line 336
    move-object/from16 v13, p4

    .line 337
    .line 338
    move-object/from16 v2, v24

    .line 339
    .line 340
    invoke-static/range {v0 .. v15}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 341
    .line 342
    .line 343
    const/4 v10, 0x1

    .line 344
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 345
    .line 346
    .line 347
    move-object v7, v2

    .line 348
    move-object/from16 v4, v26

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 352
    .line 353
    .line 354
    move-object/from16 v4, p0

    .line 355
    .line 356
    move-object/from16 v7, p3

    .line 357
    .line 358
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-eqz v0, :cond_7

    .line 363
    .line 364
    new-instance v1, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 365
    .line 366
    const/16 v3, 0xd

    .line 367
    .line 368
    const/4 v8, 0x0

    .line 369
    move-object/from16 v5, p1

    .line 370
    .line 371
    move-object/from16 v6, p2

    .line 372
    .line 373
    move/from16 v2, p5

    .line 374
    .line 375
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 376
    .line 377
    .line 378
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 379
    .line 380
    :cond_7
    return-void
.end method

.method public static getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;
    .locals 4

    .line 1
    sget-object v0, Lorg/wikipedia/settings/PrefsIoUtil;->curConfig:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    const v1, 0x7f120672

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string/jumbo v0, "{}"

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :try_start_1
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl$Companion;

    .line 45
    .line 46
    invoke-virtual {v3}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 55
    .line 56
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    check-cast v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    .line 67
    move-object v0, v2

    .line 68
    goto :goto_2

    .line 69
    :catch_1
    move-exception v0

    .line 70
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    :goto_2
    sput-object v0, Lorg/wikipedia/settings/PrefsIoUtil;->curConfig:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 79
    .line 80
    :cond_3
    if-nez v0, :cond_4

    .line 81
    .line 82
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-object v0
.end method

.method public static getInt(II)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static varargs getKey(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, p1

    .line 12
    invoke-static {p1, v1, v0, p0}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getLong(JI)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p2, p0, p1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static remove(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static setBoolean(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static setInt(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static setLong(JI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static setString(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
