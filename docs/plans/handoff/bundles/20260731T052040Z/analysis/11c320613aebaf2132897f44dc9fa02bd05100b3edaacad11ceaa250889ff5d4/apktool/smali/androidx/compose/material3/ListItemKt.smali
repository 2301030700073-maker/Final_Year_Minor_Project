.class public abstract Landroidx/compose/material3/ListItemKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final InteractiveListBottomPadding:F

.field public static final InteractiveListEndPadding:F

.field public static final InteractiveListStartPadding:F

.field public static final InteractiveListTopPadding:F

.field public static final InteractiveListVerticalAlignmentBreakpoint:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->ItemLeadingSpace:F

    .line 2
    .line 3
    sput v0, Landroidx/compose/material3/ListItemKt;->InteractiveListStartPadding:F

    .line 4
    .line 5
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->ItemTrailingSpace:F

    .line 6
    .line 7
    sput v0, Landroidx/compose/material3/ListItemKt;->InteractiveListEndPadding:F

    .line 8
    .line 9
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->ItemTopSpace:F

    .line 10
    .line 11
    sput v0, Landroidx/compose/material3/ListItemKt;->InteractiveListTopPadding:F

    .line 12
    .line 13
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->ItemBottomSpace:F

    .line 14
    .line 15
    sput v1, Landroidx/compose/material3/ListItemKt;->InteractiveListBottomPadding:F

    .line 16
    .line 17
    sget v2, Landroidx/compose/material3/tokens/ListTokens;->ItemThreeLineContainerHeight:F

    .line 18
    .line 19
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->ItemTwoLineContainerHeight:F

    .line 20
    .line 21
    add-float/2addr v2, v3

    .line 22
    const/high16 v3, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr v2, v3

    .line 25
    sub-float/2addr v2, v0

    .line 26
    sub-float/2addr v2, v1

    .line 27
    sput v2, Landroidx/compose/material3/ListItemKt;->InteractiveListVerticalAlignmentBreakpoint:F

    .line 28
    .line 29
    return-void
.end method

.method public static final CollectInteractionsAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    move-object v7, p5

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v0, 0x325af62f

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x4

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p6

    .line 21
    and-int/lit16 v3, v0, 0x2493

    .line 22
    .line 23
    const/16 v4, 0x2492

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq v3, v4, :cond_1

    .line 28
    .line 29
    move v3, v6

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v5

    .line 32
    :goto_1
    and-int/lit8 v4, v0, 0x1

    .line 33
    .line 34
    invoke-virtual {v7, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_5

    .line 39
    .line 40
    and-int/lit8 v0, v0, 0xe

    .line 41
    .line 42
    if-ne v0, v2, :cond_2

    .line 43
    .line 44
    move v5, v6

    .line 45
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 52
    .line 53
    if-ne v0, v2, :cond_4

    .line 54
    .line 55
    :cond_3
    new-instance v0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v5, p0

    .line 59
    move-object v1, p1

    .line 60
    move-object v2, p2

    .line 61
    move-object v3, p3

    .line 62
    move-object v4, p4

    .line 63
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/InteractionSource;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 70
    .line 71
    invoke-static {v7, p0, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 76
    .line 77
    .line 78
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    if-eqz v8, :cond_6

    .line 83
    .line 84
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;

    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    move-object v1, p0

    .line 88
    move-object v2, p1

    .line 89
    move-object v3, p2

    .line 90
    move-object v4, p3

    .line 91
    move-object v5, p4

    .line 92
    move v6, p6

    .line 93
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 97
    .line 98
    :cond_6
    return-void
.end method

.method public static final ContentDecorator-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object/from16 v4, p4

    .line 2
    .line 3
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x2c86a20e

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v4, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x2

    .line 20
    :goto_0
    or-int v2, p5, v2

    .line 21
    .line 22
    move-object v3, p3

    .line 23
    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    const/16 v5, 0x100

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v5, 0x80

    .line 33
    .line 34
    :goto_1
    or-int/2addr v2, v5

    .line 35
    and-int/lit16 v5, v2, 0x93

    .line 36
    .line 37
    const/16 v6, 0x92

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x1

    .line 41
    if-eq v5, v6, :cond_2

    .line 42
    .line 43
    move v5, v8

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v5, v7

    .line 46
    :goto_2
    and-int/lit8 v6, v2, 0x1

    .line 47
    .line 48
    invoke-virtual {v4, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 55
    .line 56
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-wide v6, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 61
    .line 62
    const/16 v9, 0x20

    .line 63
    .line 64
    ushr-long v9, v6, v9

    .line 65
    .line 66
    xor-long/2addr v6, v9

    .line 67
    long-to-int v6, v6

    .line 68
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 73
    .line 74
    invoke-static {v4, v9}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 79
    .line 80
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 86
    .line 87
    .line 88
    iget-boolean v11, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 89
    .line 90
    if-eqz v11, :cond_3

    .line 91
    .line 92
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 97
    .line 98
    .line 99
    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 100
    .line 101
    invoke-static {v4, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 102
    .line 103
    .line 104
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 105
    .line 106
    invoke-static {v4, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 114
    .line 115
    invoke-static {v4, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 119
    .line 120
    invoke-static {v4, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {v4, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p2, v4}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    and-int/lit16 v2, v2, 0x38e

    .line 133
    .line 134
    move-object v0, v5

    .line 135
    move v5, v2

    .line 136
    move-object v2, v0

    .line 137
    move-wide v0, p0

    .line 138
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 146
    .line 147
    .line 148
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    new-instance v5, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda2;

    .line 155
    .line 156
    const/4 v11, 0x1

    .line 157
    move-wide v6, p0

    .line 158
    move-object v8, p2

    .line 159
    move-object v9, p3

    .line 160
    move/from16 v10, p5

    .line 161
    .line 162
    invoke-direct/range {v5 .. v11}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda2;-><init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;II)V

    .line 163
    .line 164
    .line 165
    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 166
    .line 167
    :cond_5
    return-void
.end method

.method public static final InteractiveListItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ListItemColors;Landroidx/compose/material3/ListItemShapes;Landroidx/compose/material3/ListItemElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 36

    move/from16 v6, p2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p10

    move/from16 v4, p11

    .line 1
    sget-object v5, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$2:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    move-object/from16 v12, p9

    check-cast v12, Landroidx/compose/runtime/GapComposer;

    const v7, -0x53efd893

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v7, v3, 0x6

    if-nez v7, :cond_1

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v3

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    and-int/lit8 v8, v3, 0x30

    const/16 v10, 0x20

    if-nez v8, :cond_3

    move-object/from16 v8, p0

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v10

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v7, v11

    goto :goto_3

    :cond_3
    move-object/from16 v8, p0

    :goto_3
    and-int/lit16 v11, v3, 0x180

    const/4 v13, 0x0

    const/16 v16, 0x80

    const/16 v17, 0x100

    if-nez v11, :cond_5

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move/from16 v11, v17

    goto :goto_4

    :cond_4
    move/from16 v11, v16

    :goto_4
    or-int/2addr v7, v11

    :cond_5
    and-int/lit16 v11, v3, 0xc00

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-nez v11, :cond_7

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move/from16 v11, v19

    goto :goto_5

    :cond_6
    move/from16 v11, v18

    :goto_5
    or-int/2addr v7, v11

    :cond_7
    and-int/lit16 v11, v3, 0x6000

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-nez v11, :cond_9

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move/from16 v11, v21

    goto :goto_6

    :cond_8
    move/from16 v11, v20

    :goto_6
    or-int/2addr v7, v11

    :cond_9
    const/high16 v11, 0x30000

    and-int v22, v3, v11

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-nez v22, :cond_b

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    move/from16 v22, v24

    goto :goto_7

    :cond_a
    move/from16 v22, v23

    :goto_7
    or-int v7, v7, v22

    :cond_b
    const/high16 v22, 0x180000

    and-int v25, v3, v22

    const/high16 v26, 0x80000

    const/high16 v27, 0x100000

    move-object/from16 v15, p1

    if-nez v25, :cond_d

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    move/from16 v25, v27

    goto :goto_8

    :cond_c
    move/from16 v25, v26

    :goto_8
    or-int v7, v7, v25

    :cond_d
    const/high16 v25, 0xc00000

    and-int v28, v3, v25

    const/high16 v29, 0x400000

    const/high16 v30, 0x800000

    if-nez v28, :cond_f

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_e

    move/from16 v28, v30

    goto :goto_9

    :cond_e
    move/from16 v28, v29

    :goto_9
    or-int v7, v7, v28

    :cond_f
    const/high16 v28, 0x6000000

    and-int v28, v3, v28

    const/4 v14, 0x0

    if-nez v28, :cond_11

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_10

    const/high16 v28, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v28, 0x2000000

    :goto_a
    or-int v7, v7, v28

    :cond_11
    const/high16 v28, 0x30000000

    and-int v28, v3, v28

    move-object/from16 v14, p3

    if-nez v28, :cond_13

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    const/high16 v31, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v31, 0x10000000

    :goto_b
    or-int v7, v7, v31

    :cond_13
    and-int/lit8 v31, v4, 0x6

    move-object/from16 v13, p4

    if-nez v31, :cond_15

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v32, 0x4

    goto :goto_c

    :cond_14
    const/16 v32, 0x2

    :goto_c
    or-int v32, v4, v32

    goto :goto_d

    :cond_15
    move/from16 v32, v4

    :goto_d
    and-int/lit8 v33, v4, 0x30

    const/4 v9, 0x0

    if-nez v33, :cond_17

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    goto :goto_e

    :cond_16
    const/16 v10, 0x10

    :goto_e
    or-int v32, v32, v10

    :cond_17
    and-int/lit16 v10, v4, 0x180

    if-nez v10, :cond_19

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    move/from16 v16, v17

    :cond_18
    or-int v32, v32, v16

    :cond_19
    and-int/lit16 v10, v4, 0xc00

    if-nez v10, :cond_1b

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move/from16 v18, v19

    :cond_1a
    or-int v32, v32, v18

    :cond_1b
    and-int/lit16 v10, v4, 0x6000

    if-nez v10, :cond_1d

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    move/from16 v20, v21

    :cond_1c
    or-int v32, v32, v20

    :cond_1d
    and-int v10, v4, v11

    if-nez v10, :cond_1f

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    move/from16 v23, v24

    :cond_1e
    or-int v32, v32, v23

    :cond_1f
    and-int v10, v4, v22

    if-nez v10, :cond_21

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    move/from16 v26, v27

    :cond_20
    or-int v32, v32, v26

    :cond_21
    and-int v10, v4, v25

    if-nez v10, :cond_23

    move-object/from16 v10, p8

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    move/from16 v29, v30

    :cond_22
    or-int v32, v32, v29

    goto :goto_f

    :cond_23
    move-object/from16 v10, p8

    :goto_f
    const v11, 0x12492493

    and-int/2addr v11, v7

    const v9, 0x12492492

    const/4 v13, 0x1

    if-ne v11, v9, :cond_25

    const v9, 0x492493

    and-int v9, v32, v9

    const v11, 0x492492

    if-eq v9, v11, :cond_24

    goto :goto_10

    :cond_24
    const/4 v9, 0x0

    goto :goto_11

    :cond_25
    :goto_10
    move v9, v13

    :goto_11
    and-int/2addr v7, v13

    invoke-virtual {v12, v7, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v7

    if-eqz v7, :cond_80

    const v7, 0x2be7bd8e

    .line 2
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 4
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v9, :cond_26

    .line 5
    new-instance v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v7}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 6
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 7
    :cond_26
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v11, 0x0

    .line 8
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v9, :cond_27

    .line 10
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v11

    .line 11
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 12
    :cond_27
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v9, :cond_28

    .line 14
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v13

    .line 15
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 16
    :cond_28
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 17
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_29

    .line 18
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    .line 19
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 20
    :cond_29
    check-cast v3, Landroidx/compose/runtime/MutableState;

    move-object/from16 v17, v3

    .line 21
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_2a

    .line 22
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    .line 23
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 24
    :cond_2a
    check-cast v3, Landroidx/compose/runtime/MutableState;

    move-object/from16 v18, v9

    move-object v9, v13

    const/16 v13, 0x6db0

    move-object v8, v11

    move-object/from16 v10, v17

    move-object v11, v3

    move-object/from16 v3, v18

    .line 25
    invoke-static/range {v7 .. v13}, Landroidx/compose/material3/ListItemKt;->CollectInteractionsAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    move-object v13, v7

    move-object/from16 v16, v11

    .line 26
    sget-object v7, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v7, v12}, Landroidx/compose/material3/BadgeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v7

    .line 27
    sget-object v11, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v11, v12}, Landroidx/compose/material3/BadgeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 28
    invoke-static {v11, v12}, Landroidx/compose/material3/BadgeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v17

    .line 29
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 30
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 31
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 32
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move-object/from16 v18, v7

    const v7, 0x7c053cd0

    .line 33
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    if-eqz v8, :cond_2b

    .line 34
    iget-object v7, v1, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    goto :goto_12

    :cond_2b
    if-eqz v11, :cond_2c

    .line 35
    iget-object v7, v1, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    goto :goto_12

    :cond_2c
    if-eqz v9, :cond_2d

    .line 36
    iget-object v7, v1, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    goto :goto_12

    :cond_2d
    if-eqz v10, :cond_2e

    .line 37
    iget-object v7, v1, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    goto :goto_12

    .line 38
    :cond_2e
    iget-object v7, v1, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 39
    :goto_12
    iget-object v8, v1, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v9, v1, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v10, v1, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v11, v1, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v19, v7

    iget-object v7, v1, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v20, v13

    iget-object v13, v1, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    .line 40
    instance-of v14, v8, Landroidx/compose/foundation/shape/RoundedCornerShape;

    move/from16 v21, v14

    if-eqz v21, :cond_38

    .line 41
    instance-of v14, v13, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v14, :cond_38

    .line 42
    instance-of v14, v7, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v14, :cond_38

    .line 43
    instance-of v14, v11, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v14, :cond_38

    .line 44
    instance-of v14, v10, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v14, :cond_38

    .line 45
    instance-of v14, v9, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v14, :cond_38

    const v7, 0x65874c2c

    .line 46
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const v7, -0x70567761

    .line 47
    invoke-virtual {v12, v7, v1}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v7, v19

    check-cast v7, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 48
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 49
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_2f

    if-ne v9, v3, :cond_30

    .line 50
    :cond_2f
    new-instance v9, Landroidx/compose/material3/internal/AnimatedShapeState;

    invoke-direct {v9, v7, v4}, Landroidx/compose/material3/internal/AnimatedShapeState;-><init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 51
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 52
    :cond_30
    check-cast v9, Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 53
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_31

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, -0x1

    .line 54
    invoke-static {v11, v10, v8}, Lkotlinx/coroutines/channels/ProduceKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    .line 55
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 56
    :cond_31
    check-cast v4, Lkotlinx/coroutines/channels/Channel;

    .line 57
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    .line 58
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_32

    if-ne v10, v3, :cond_33

    .line 59
    :cond_32
    new-instance v10, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    const/4 v8, 0x6

    invoke-direct {v10, v4, v7, v8}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 61
    :cond_33
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v10, v12}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 62
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 63
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_34

    if-ne v8, v3, :cond_35

    .line 64
    :cond_34
    new-instance v8, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;

    const/4 v7, 0x0

    invoke-direct {v8, v4, v9, v7}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;-><init>(Lkotlinx/coroutines/channels/Channel;Landroidx/compose/material3/internal/AnimatedShapeState;Lkotlin/coroutines/Continuation;)V

    .line 65
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    :cond_35
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v8, v12}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 67
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 68
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 70
    iput-object v4, v9, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 71
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    .line 72
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_36

    if-ne v7, v3, :cond_37

    .line 73
    :cond_36
    new-instance v7, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;

    invoke-direct {v7, v9}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;)V

    .line 74
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 75
    :cond_37
    check-cast v7, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;

    const/4 v11, 0x0

    .line 76
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 77
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 78
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v4, v7

    const/4 v13, 0x0

    goto/16 :goto_15

    .line 79
    :cond_38
    instance-of v8, v8, Landroidx/compose/foundation/shape/CornerBasedShape;

    if-eqz v8, :cond_42

    .line 80
    instance-of v8, v13, Landroidx/compose/foundation/shape/CornerBasedShape;

    if-eqz v8, :cond_42

    .line 81
    instance-of v7, v7, Landroidx/compose/foundation/shape/CornerBasedShape;

    if-eqz v7, :cond_42

    .line 82
    instance-of v7, v11, Landroidx/compose/foundation/shape/CornerBasedShape;

    if-eqz v7, :cond_42

    .line 83
    instance-of v7, v10, Landroidx/compose/foundation/shape/CornerBasedShape;

    if-eqz v7, :cond_42

    .line 84
    instance-of v7, v9, Landroidx/compose/foundation/shape/CornerBasedShape;

    if-eqz v7, :cond_42

    const v7, 0x6589532e

    .line 85
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const v7, -0x705666a3    # -1.672376E-29f

    .line 86
    invoke-virtual {v12, v7, v1}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v7, v19

    check-cast v7, Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 87
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 88
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_39

    if-ne v9, v3, :cond_3a

    .line 89
    :cond_39
    new-instance v9, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

    invoke-direct {v9, v7, v4}, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 90
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 91
    :cond_3a
    check-cast v9, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

    .line 92
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3b

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, -0x1

    .line 93
    invoke-static {v11, v10, v8}, Lkotlinx/coroutines/channels/ProduceKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    .line 94
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    :cond_3b
    check-cast v4, Lkotlinx/coroutines/channels/Channel;

    .line 96
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    .line 97
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_3c

    if-ne v10, v3, :cond_3d

    .line 98
    :cond_3c
    new-instance v10, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    const/4 v8, 0x7

    invoke-direct {v10, v4, v7, v8}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 99
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    :cond_3d
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v10, v12}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 101
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 102
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_3f

    if-ne v8, v3, :cond_3e

    goto :goto_13

    :cond_3e
    const/4 v13, 0x0

    goto :goto_14

    .line 103
    :cond_3f
    :goto_13
    new-instance v8, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$6$1;

    const/4 v13, 0x0

    invoke-direct {v8, v4, v9, v13}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$6$1;-><init>(Lkotlinx/coroutines/channels/Channel;Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;Lkotlin/coroutines/Continuation;)V

    .line 104
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 105
    :goto_14
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v8, v12}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 106
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 107
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 108
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 109
    iput-object v4, v9, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 110
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    .line 111
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_40

    if-ne v7, v3, :cond_41

    .line 112
    :cond_40
    new-instance v7, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;

    invoke-direct {v7, v9}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;-><init>(Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;)V

    .line 113
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    :cond_41
    check-cast v7, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;

    const/4 v11, 0x0

    .line 115
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 116
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 117
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v4, v7

    goto :goto_15

    :cond_42
    const/4 v11, 0x0

    const/4 v13, 0x0

    const v4, 0x658aca92

    .line 118
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 119
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 120
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v4, v19

    .line 121
    :goto_15
    new-instance v7, Landroidx/compose/material3/InteractiveListColorState;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {v7, v6, v8}, Landroidx/compose/material3/InteractiveListColorState;-><init>(ZZ)V

    const/16 v8, 0x30

    .line 122
    invoke-static {v8, v11, v12, v7}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(IILandroidx/compose/runtime/Composer;Ljava/lang/Object;)Landroidx/compose/animation/core/Transition;

    move-result-object v7

    iget-object v14, v7, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v8, v7, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 123
    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 124
    check-cast v9, Landroidx/compose/material3/InteractiveListColorState;

    const v10, 0x1ef7d775

    .line 125
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 126
    iget-boolean v13, v9, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 127
    iget-boolean v9, v9, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 128
    invoke-virtual {v0, v13, v11, v9}, Landroidx/compose/material3/ListItemColors;->containerColor-XeAY9LY(ZZZ)J

    move-result-wide v24

    .line 129
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 130
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v9

    .line 131
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 132
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_43

    if-ne v13, v3, :cond_44

    .line 133
    :cond_43
    new-instance v11, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    invoke-direct {v11, v9}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 134
    new-instance v13, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v13, v5, v11}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 135
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 136
    :cond_44
    move-object v11, v13

    check-cast v11, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 137
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v9

    const v10, 0x6355e4b0

    if-nez v9, :cond_48

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 138
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 139
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_46

    if-ne v10, v3, :cond_45

    goto :goto_17

    :cond_45
    :goto_16
    const/4 v1, 0x0

    goto :goto_19

    .line 140
    :cond_46
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    if-eqz v9, :cond_47

    .line 141
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    goto :goto_18

    :cond_47
    const/4 v10, 0x0

    .line 142
    :goto_18
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    .line 143
    :try_start_0
    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-static {v9, v13, v10}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 145
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v10, v1

    goto :goto_16

    .line 146
    :goto_19
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_1a

    :catchall_0
    move-exception v0

    .line 147
    invoke-static {v9, v13, v10}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_48
    const/4 v1, 0x0

    const v9, 0x6359c50d

    .line 148
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 149
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 150
    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    .line 151
    :goto_1a
    check-cast v10, Landroidx/compose/material3/InteractiveListColorState;

    const v9, 0x1ef7d775

    .line 152
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 153
    iget-boolean v9, v10, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 154
    iget-boolean v10, v10, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 155
    invoke-virtual {v0, v9, v1, v10}, Landroidx/compose/material3/ListItemColors;->containerColor-XeAY9LY(ZZZ)J

    move-result-wide v9

    .line 156
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v1, v8

    .line 157
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 158
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 159
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_49

    if-ne v10, v3, :cond_4a

    .line 160
    :cond_49
    new-instance v9, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/4 v10, 0x4

    invoke-direct {v9, v7, v10}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v9}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v10

    .line 161
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 162
    :cond_4a
    check-cast v10, Landroidx/compose/runtime/State;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/material3/InteractiveListColorState;

    const v10, 0x1ef7d775

    .line 163
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 164
    iget-boolean v10, v9, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 165
    iget-boolean v9, v9, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    const/4 v13, 0x0

    .line 166
    invoke-virtual {v0, v10, v13, v9}, Landroidx/compose/material3/ListItemColors;->containerColor-XeAY9LY(ZZZ)J

    move-result-wide v9

    .line 167
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 168
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 169
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 170
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_4b

    if-ne v10, v3, :cond_4c

    .line 171
    :cond_4b
    new-instance v9, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/4 v10, 0x5

    invoke-direct {v9, v7, v10}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v9}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v10

    .line 172
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 173
    :cond_4c
    check-cast v10, Landroidx/compose/runtime/State;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/animation/core/Transition$Segment;

    const v9, 0x4874d167

    .line 174
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v9, 0x0

    .line 175
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v10, v13

    move v13, v9

    move-object v9, v10

    move-object/from16 v10, v18

    .line 176
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v18

    .line 177
    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 178
    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x9374d83

    .line 179
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 180
    iget-boolean v11, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 181
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 182
    invoke-virtual {v0, v11, v13, v8}, Landroidx/compose/material3/ListItemColors;->contentColor-XeAY9LY(ZZZ)J

    move-result-wide v25

    .line 183
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 184
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v8

    .line 185
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 186
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_4d

    if-ne v13, v3, :cond_4e

    .line 187
    :cond_4d
    new-instance v11, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    invoke-direct {v11, v8}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 188
    new-instance v13, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v13, v5, v11}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 189
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 190
    :cond_4e
    move-object v11, v13

    check-cast v11, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 191
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v8

    if-nez v8, :cond_52

    const v13, 0x6355e4b0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 192
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 193
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_50

    if-ne v13, v3, :cond_4f

    goto :goto_1c

    :cond_4f
    move-object/from16 v25, v1

    :goto_1b
    const/4 v1, 0x0

    goto :goto_1e

    .line 194
    :cond_50
    :goto_1c
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8

    if-eqz v8, :cond_51

    .line 195
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v13

    goto :goto_1d

    :cond_51
    const/4 v13, 0x0

    .line 196
    :goto_1d
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    move-object/from16 v25, v1

    .line 197
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 199
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v13, v1

    goto :goto_1b

    .line 200
    :goto_1e
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_1f

    :catchall_1
    move-exception v0

    .line 201
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_52
    move-object/from16 v25, v1

    const/4 v1, 0x0

    const v9, 0x6359c50d

    .line 202
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 203
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 204
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    .line 205
    :goto_1f
    check-cast v13, Landroidx/compose/material3/InteractiveListColorState;

    const v8, -0x9374d83

    .line 206
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 207
    iget-boolean v8, v13, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 208
    iget-boolean v9, v13, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 209
    invoke-virtual {v0, v8, v1, v9}, Landroidx/compose/material3/ListItemColors;->contentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 210
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 211
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 212
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 213
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_53

    if-ne v9, v3, :cond_54

    .line 214
    :cond_53
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/4 v9, 0x6

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 215
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 216
    :cond_54
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x9374d83

    .line 217
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 218
    iget-boolean v9, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 219
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    const/4 v13, 0x0

    .line 220
    invoke-virtual {v0, v9, v13, v8}, Landroidx/compose/material3/ListItemColors;->contentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 221
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 222
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 223
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 224
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_55

    if-ne v9, v3, :cond_56

    .line 225
    :cond_55
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/4 v9, 0x7

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 226
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 227
    :cond_56
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/Transition$Segment;

    const v8, 0x42bf80ef

    .line 228
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v8, 0x0

    .line 229
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v9, v13

    move v13, v8

    move-object v8, v1

    .line 230
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v1

    .line 231
    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 232
    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x31d8b4f0

    .line 233
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 234
    iget-boolean v11, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 235
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 236
    invoke-virtual {v0, v11, v13, v8}, Landroidx/compose/material3/ListItemColors;->leadingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v22

    .line 237
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 238
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v8

    .line 239
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 240
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_57

    if-ne v13, v3, :cond_58

    .line 241
    :cond_57
    new-instance v11, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    invoke-direct {v11, v8}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 242
    new-instance v13, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v13, v5, v11}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 243
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 244
    :cond_58
    move-object v11, v13

    check-cast v11, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 245
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v8

    if-nez v8, :cond_5c

    const v13, 0x6355e4b0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 246
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 247
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_5a

    if-ne v13, v3, :cond_59

    goto :goto_21

    :cond_59
    move-object/from16 v22, v4

    :goto_20
    const/4 v4, 0x0

    goto :goto_23

    .line 248
    :cond_5a
    :goto_21
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8

    if-eqz v8, :cond_5b

    .line 249
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v13

    goto :goto_22

    :cond_5b
    const/4 v13, 0x0

    .line 250
    :goto_22
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    move-object/from16 v22, v4

    .line 251
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 253
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v13, v4

    goto :goto_20

    .line 254
    :goto_23
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_24

    :catchall_2
    move-exception v0

    .line 255
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_5c
    move-object/from16 v22, v4

    const/4 v4, 0x0

    const v9, 0x6359c50d

    .line 256
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 257
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 258
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    .line 259
    :goto_24
    check-cast v13, Landroidx/compose/material3/InteractiveListColorState;

    const v8, -0x31d8b4f0

    .line 260
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 261
    iget-boolean v8, v13, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 262
    iget-boolean v9, v13, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 263
    invoke-virtual {v0, v8, v4, v9}, Landroidx/compose/material3/ListItemColors;->leadingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 264
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 265
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 266
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 267
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_5d

    if-ne v9, v3, :cond_5e

    .line 268
    :cond_5d
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/16 v9, 0x8

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 269
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 270
    :cond_5e
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x31d8b4f0

    .line 271
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 272
    iget-boolean v9, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 273
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    const/4 v13, 0x0

    .line 274
    invoke-virtual {v0, v9, v13, v8}, Landroidx/compose/material3/ListItemColors;->leadingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 275
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 276
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 277
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 278
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_5f

    if-ne v9, v3, :cond_60

    .line 279
    :cond_5f
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/16 v9, 0x9

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 280
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 281
    :cond_60
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/Transition$Segment;

    const v8, 0x1a1e1982

    .line 282
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v8, 0x0

    .line 283
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v9, v13

    move v13, v8

    move-object v8, v4

    .line 284
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    .line 285
    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 286
    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x61189d46

    .line 287
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 288
    iget-boolean v11, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 289
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 290
    invoke-virtual {v0, v11, v13, v8}, Landroidx/compose/material3/ListItemColors;->trailingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v26

    .line 291
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 292
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v8

    .line 293
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 294
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_61

    if-ne v13, v3, :cond_62

    .line 295
    :cond_61
    new-instance v11, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    invoke-direct {v11, v8}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 296
    new-instance v13, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v13, v5, v11}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 297
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 298
    :cond_62
    move-object v11, v13

    check-cast v11, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 299
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v8

    if-nez v8, :cond_66

    const v13, 0x6355e4b0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 300
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 301
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_64

    if-ne v13, v3, :cond_63

    goto :goto_26

    :cond_63
    move-object/from16 v23, v4

    :goto_25
    const/4 v4, 0x0

    goto :goto_28

    .line 302
    :cond_64
    :goto_26
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8

    if-eqz v8, :cond_65

    .line 303
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v13

    goto :goto_27

    :cond_65
    const/4 v13, 0x0

    .line 304
    :goto_27
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    move-object/from16 v23, v4

    .line 305
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 306
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 307
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v13, v4

    goto :goto_25

    .line 308
    :goto_28
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_29

    :catchall_3
    move-exception v0

    .line 309
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_66
    move-object/from16 v23, v4

    const/4 v4, 0x0

    const v9, 0x6359c50d

    .line 310
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 311
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 312
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    .line 313
    :goto_29
    check-cast v13, Landroidx/compose/material3/InteractiveListColorState;

    const v8, -0x61189d46

    .line 314
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 315
    iget-boolean v8, v13, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 316
    iget-boolean v9, v13, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 317
    invoke-virtual {v0, v8, v4, v9}, Landroidx/compose/material3/ListItemColors;->trailingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 318
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 319
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 320
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 321
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_67

    if-ne v9, v3, :cond_68

    .line 322
    :cond_67
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/16 v9, 0xa

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 323
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 324
    :cond_68
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x61189d46

    .line 325
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 326
    iget-boolean v9, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 327
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    const/4 v13, 0x0

    .line 328
    invoke-virtual {v0, v9, v13, v8}, Landroidx/compose/material3/ListItemColors;->trailingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 329
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 330
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 331
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 332
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_69

    if-ne v9, v3, :cond_6a

    .line 333
    :cond_69
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/16 v9, 0xb

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 334
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 335
    :cond_6a
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/Transition$Segment;

    const v8, -0x2e359d78

    .line 336
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v8, 0x0

    .line 337
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v9, v13

    move v13, v8

    move-object v8, v4

    .line 338
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    .line 339
    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 340
    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, 0x3ab18f8e

    .line 341
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 342
    iget-boolean v11, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 343
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 344
    invoke-virtual {v0, v11, v13, v8}, Landroidx/compose/material3/ListItemColors;->overlineContentColor-XeAY9LY(ZZZ)J

    move-result-wide v26

    .line 345
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 346
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v8

    .line 347
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 348
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_6b

    if-ne v13, v3, :cond_6c

    .line 349
    :cond_6b
    new-instance v11, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    invoke-direct {v11, v8}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 350
    new-instance v13, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v13, v5, v11}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 351
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 352
    :cond_6c
    move-object v11, v13

    check-cast v11, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 353
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v8

    if-nez v8, :cond_70

    const v13, 0x6355e4b0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 354
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 355
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_6e

    if-ne v13, v3, :cond_6d

    goto :goto_2b

    :cond_6d
    move-object/from16 v26, v4

    :goto_2a
    const/4 v4, 0x0

    goto :goto_2d

    .line 356
    :cond_6e
    :goto_2b
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8

    if-eqz v8, :cond_6f

    .line 357
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v13

    goto :goto_2c

    :cond_6f
    const/4 v13, 0x0

    .line 358
    :goto_2c
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    move-object/from16 v26, v4

    .line 359
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 360
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 361
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v13, v4

    goto :goto_2a

    .line 362
    :goto_2d
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_2e

    :catchall_4
    move-exception v0

    .line 363
    invoke-static {v8, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_70
    move-object/from16 v26, v4

    const/4 v4, 0x0

    const v9, 0x6359c50d

    .line 364
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 365
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 366
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    .line 367
    :goto_2e
    check-cast v13, Landroidx/compose/material3/InteractiveListColorState;

    const v8, 0x3ab18f8e

    .line 368
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 369
    iget-boolean v8, v13, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 370
    iget-boolean v9, v13, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 371
    invoke-virtual {v0, v8, v4, v9}, Landroidx/compose/material3/ListItemColors;->overlineContentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 372
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 373
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 374
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 375
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_71

    if-ne v9, v3, :cond_72

    .line 376
    :cond_71
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/16 v9, 0xc

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 377
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 378
    :cond_72
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, 0x3ab18f8e

    .line 379
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 380
    iget-boolean v9, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 381
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    const/4 v13, 0x0

    .line 382
    invoke-virtual {v0, v9, v13, v8}, Landroidx/compose/material3/ListItemColors;->overlineContentColor-XeAY9LY(ZZZ)J

    move-result-wide v8

    .line 383
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 384
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 385
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 386
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_73

    if-ne v9, v3, :cond_74

    .line 387
    :cond_73
    new-instance v8, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 388
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 389
    :cond_74
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/animation/core/Transition$Segment;

    const v8, 0x6d948f5c

    .line 390
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v8, 0x0

    .line 391
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v9, v13

    move v13, v8

    move-object v8, v4

    .line 392
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    .line 393
    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 394
    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x5b88fb7d

    .line 395
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 396
    iget-boolean v11, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 397
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    .line 398
    invoke-virtual {v0, v11, v13, v8}, Landroidx/compose/material3/ListItemColors;->supportingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v29

    .line 399
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 400
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v8

    .line 401
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 402
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_75

    if-ne v13, v3, :cond_76

    .line 403
    :cond_75
    new-instance v11, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    invoke-direct {v11, v8}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 404
    new-instance v13, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v13, v5, v11}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 405
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 406
    :cond_76
    move-object v11, v13

    check-cast v11, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 407
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v5

    if-nez v5, :cond_7a

    const v13, 0x6355e4b0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 408
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 409
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_78

    if-ne v8, v3, :cond_77

    goto :goto_30

    :cond_77
    :goto_2f
    const/4 v14, 0x0

    goto :goto_32

    .line 410
    :cond_78
    :goto_30
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 411
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v13

    goto :goto_31

    :cond_79
    const/4 v13, 0x0

    .line 412
    :goto_31
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8

    .line 413
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 414
    invoke-static {v5, v8, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 415
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v14

    goto :goto_2f

    .line 416
    :goto_32
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_33

    :catchall_5
    move-exception v0

    .line 417
    invoke-static {v5, v8, v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_7a
    const v5, 0x6359c50d

    const/4 v14, 0x0

    .line 418
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 419
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 420
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v8

    .line 421
    :goto_33
    check-cast v8, Landroidx/compose/material3/InteractiveListColorState;

    .line 422
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 423
    iget-boolean v5, v8, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 424
    iget-boolean v8, v8, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    move-object v13, v10

    .line 425
    invoke-virtual {v0, v5, v14, v8}, Landroidx/compose/material3/ListItemColors;->supportingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v9

    .line 426
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 427
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 428
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 429
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_7b

    if-ne v9, v3, :cond_7c

    .line 430
    :cond_7b
    new-instance v5, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/4 v9, 0x2

    invoke-direct {v5, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v5}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    .line 431
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 432
    :cond_7c
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/InteractiveListColorState;

    const v9, -0x5b88fb7d

    .line 433
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 434
    iget-boolean v9, v5, Landroidx/compose/material3/InteractiveListColorState;->enabled:Z

    .line 435
    iget-boolean v5, v5, Landroidx/compose/material3/InteractiveListColorState;->dragged:Z

    const/4 v14, 0x0

    .line 436
    invoke-virtual {v0, v9, v14, v5}, Landroidx/compose/material3/ListItemColors;->supportingContentColor-XeAY9LY(ZZZ)J

    move-result-wide v9

    .line 437
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 438
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 439
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 440
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_7d

    if-ne v10, v3, :cond_7e

    .line 441
    :cond_7d
    new-instance v3, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    const/4 v9, 0x3

    invoke-direct {v3, v7, v9}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    invoke-static {v3}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v10

    .line 442
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 443
    :cond_7e
    check-cast v10, Landroidx/compose/runtime/State;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/Transition$Segment;

    const v3, -0x5566b72f

    .line 444
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v14, 0x0

    .line 445
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v9, v5

    move-object v10, v13

    .line 446
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v19

    .line 447
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemLeadingAvatarLabelFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 448
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->ItemTrailingSupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-object/from16 v11, v16

    .line 449
    sget-object v16, Landroidx/compose/material3/tokens/ListTokens;->ItemOverlineFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-object/from16 v5, v18

    .line 450
    sget-object v18, Landroidx/compose/material3/tokens/ListTokens;->ItemSupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-object/from16 v13, v20

    .line 451
    sget-object v20, Landroidx/compose/material3/tokens/ListTokens;->ItemLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 452
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 453
    iget v7, v2, Landroidx/compose/material3/ListItemElevation;->draggedElevation:F

    goto :goto_34

    .line 454
    :cond_7f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    .line 455
    :goto_34
    sget v8, Landroidx/compose/animation/core/AnimateAsStateKt;->$r8$clinit:I

    .line 456
    new-instance v8, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v8, v7}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    move-object v7, v8

    .line 457
    sget-object v8, Landroidx/compose/animation/core/ArcSplineKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    move-object v11, v12

    const/4 v12, 0x0

    .line 458
    const-string v10, "DpAnimation"

    move-object/from16 v9, v17

    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v7

    move-object v8, v11

    .line 459
    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 460
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 461
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 462
    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 463
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    .line 464
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 465
    sget-object v10, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 466
    iget-object v12, v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 467
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 468
    check-cast v12, Landroidx/compose/ui/graphics/Color;

    move-object/from16 p9, v1

    .line 469
    iget-wide v0, v12, Landroidx/compose/ui/graphics/Color;->value:J

    .line 470
    new-instance v12, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v12, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 471
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    move-object v1, v0

    .line 472
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda10;

    move-object/from16 v21, p0

    move-object/from16 v35, v1

    move-object v12, v3

    move-object/from16 v17, v4

    move-object v10, v5

    move-object v2, v7

    move-object/from16 v34, v8

    move-object v3, v9

    move-object v5, v13

    move-object v9, v15

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v26

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p8

    move-object/from16 v22, p9

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    const v1, -0x52225553

    move-object/from16 v12, v34

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, v35

    invoke-static {v2, v0, v12, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_35

    .line 473
    :cond_80
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 474
    :goto_35
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_81

    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda11;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ListItemColors;Landroidx/compose/material3/ListItemShapes;Landroidx/compose/material3/ListItemElevation;Landroidx/compose/foundation/layout/PaddingValues;II)V

    .line 475
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_81
    return-void
.end method

.method public static final InteractiveListItemLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v1, -0x42a78957

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x4

    .line 17
    if-eqz v1, :cond_0

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
    or-int v1, p8, v1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/16 v5, 0x20

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    move v4, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v4, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v1, v4

    .line 37
    const v4, 0x92493

    .line 38
    .line 39
    .line 40
    and-int/2addr v4, v1

    .line 41
    const v6, 0x92492

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x1

    .line 46
    if-eq v4, v6, :cond_2

    .line 47
    .line 48
    move v4, v8

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v4, v7

    .line 51
    :goto_2
    and-int/lit8 v6, v1, 0x1

    .line 52
    .line 53
    invoke-virtual {v0, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_9

    .line 58
    .line 59
    and-int/lit8 v1, v1, 0x70

    .line 60
    .line 61
    if-ne v1, v5, :cond_3

    .line 62
    .line 63
    move v1, v8

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v1, v7

    .line 66
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    if-ne v4, v6, :cond_5

    .line 75
    .line 76
    :cond_4
    new-instance v4, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;

    .line 77
    .line 78
    invoke-direct {v4, p1}, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    check-cast v4, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;

    .line 85
    .line 86
    const/4 v1, 0x5

    .line 87
    new-array v1, v1, [Lkotlin/jvm/functions/Function2;

    .line 88
    .line 89
    aput-object p2, v1, v7

    .line 90
    .line 91
    aput-object p3, v1, v8

    .line 92
    .line 93
    aput-object p4, v1, v2

    .line 94
    .line 95
    const/4 v2, 0x3

    .line 96
    aput-object p5, v1, v2

    .line 97
    .line 98
    aput-object p6, v1, v3

    .line 99
    .line 100
    invoke-static {v1}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Landroidx/compose/ui/layout/RulerKt;->combineAsVirtualLayouts(Ljava/util/List;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-nez v2, :cond_6

    .line 117
    .line 118
    if-ne v3, v6, :cond_7

    .line 119
    .line 120
    :cond_6
    new-instance v3, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;

    .line 121
    .line 122
    invoke-direct {v3, v4}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 129
    .line 130
    iget-wide v9, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 131
    .line 132
    ushr-long v4, v9, v5

    .line 133
    .line 134
    xor-long/2addr v4, v9

    .line 135
    long-to-int v2, v4

    .line 136
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 155
    .line 156
    if-eqz v9, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 163
    .line 164
    .line 165
    :goto_4
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 171
    .line 172
    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 185
    .line 186
    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 187
    .line 188
    .line 189
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 190
    .line 191
    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 206
    .line 207
    .line 208
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    new-instance v1, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda26;

    .line 215
    .line 216
    move-object v2, p0

    .line 217
    move-object v3, p1

    .line 218
    move-object v4, p2

    .line 219
    move-object v5, p3

    .line 220
    move-object v6, p4

    .line 221
    move-object/from16 v7, p5

    .line 222
    .line 223
    move-object/from16 v8, p6

    .line 224
    .line 225
    move/from16 v9, p8

    .line 226
    .line 227
    invoke-direct/range {v1 .. v9}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda26;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 228
    .line 229
    .line 230
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 231
    .line 232
    :cond_a
    return-void
.end method

.method public static final LeadingDecorator-8s8adOk(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x2c979a71

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p5

    .line 19
    invoke-virtual {p4, p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x800

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v1, 0x400

    .line 42
    .line 43
    :goto_2
    or-int/2addr v0, v1

    .line 44
    and-int/lit16 v1, v0, 0x493

    .line 45
    .line 46
    const/16 v2, 0x492

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eq v1, v2, :cond_3

    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v1, v4

    .line 55
    :goto_3
    and-int/2addr v0, v3

    .line 56
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const v0, 0x3e4a9fb1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    :goto_4
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    if-eqz p4, :cond_5

    .line 80
    .line 81
    new-instance v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    move v1, p0

    .line 85
    move-wide v2, p1

    .line 86
    move-object v4, p3

    .line 87
    move v5, p5

    .line 88
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;-><init>(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;II)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method public static final ListItem(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/material3/ListItemShapes;Landroidx/compose/material3/ListItemColors;Landroidx/compose/material3/ListItemElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move/from16 v9, p9

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0xb11d4a4

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v9, 0x6

    .line 14
    .line 15
    move-object/from16 v14, p0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int/2addr v1, v9

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v9

    .line 31
    :goto_1
    and-int/lit8 v2, v9, 0x30

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v2

    .line 49
    :cond_3
    and-int/lit16 v2, v9, 0x180

    .line 50
    .line 51
    move/from16 v12, p1

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    const/16 v2, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v2, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v1, v2

    .line 67
    :cond_5
    const v2, 0x1b6c00

    .line 68
    .line 69
    .line 70
    or-int/2addr v2, v1

    .line 71
    const/high16 v3, 0xc00000

    .line 72
    .line 73
    and-int/2addr v3, v9

    .line 74
    if-nez v3, :cond_6

    .line 75
    .line 76
    const v2, 0x5b6c00

    .line 77
    .line 78
    .line 79
    or-int/2addr v2, v1

    .line 80
    :cond_6
    const/high16 v1, 0x36000000

    .line 81
    .line 82
    or-int/2addr v1, v2

    .line 83
    const v2, 0x12492493

    .line 84
    .line 85
    .line 86
    and-int/2addr v2, v1

    .line 87
    const v3, 0x12492492

    .line 88
    .line 89
    .line 90
    if-ne v2, v3, :cond_7

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    goto :goto_4

    .line 94
    :cond_7
    const/4 v2, 0x1

    .line 95
    :goto_4
    and-int/lit8 v3, v1, 0x1

    .line 96
    .line 97
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_e

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 104
    .line 105
    .line 106
    and-int/lit8 v2, v9, 0x1

    .line 107
    .line 108
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 109
    .line 110
    const v4, -0x1c00001

    .line 111
    .line 112
    .line 113
    if-eqz v2, :cond_9

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_8

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 123
    .line 124
    .line 125
    and-int/2addr v1, v4

    .line 126
    move-object/from16 v11, p2

    .line 127
    .line 128
    move-object/from16 v16, p3

    .line 129
    .line 130
    move-object/from16 v15, p4

    .line 131
    .line 132
    move-object/from16 v17, p5

    .line 133
    .line 134
    move-object/from16 v18, p6

    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :cond_9
    :goto_5
    sget-object v2, Landroidx/compose/material3/ListItemDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 139
    .line 140
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-nez v5, :cond_a

    .line 157
    .line 158
    if-ne v6, v3, :cond_b

    .line 159
    .line 160
    :cond_a
    new-instance v6, Landroidx/compose/material3/ListItemDefaults$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    invoke-direct {v6, v2}, Landroidx/compose/material3/ListItemDefaults$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_b
    move-object v2, v6

    .line 169
    check-cast v2, Landroidx/compose/ui/Alignment$Vertical;

    .line 170
    .line 171
    and-int/2addr v1, v4

    .line 172
    sget-object v4, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    .line 174
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Landroidx/compose/material3/MaterialTheme$Values;

    .line 179
    .line 180
    iget-object v4, v4, Landroidx/compose/material3/MaterialTheme$Values;->shapes:Landroidx/compose/material3/Shapes;

    .line 181
    .line 182
    iget-object v5, v4, Landroidx/compose/material3/Shapes;->defaultListItemShapesCached:Landroidx/compose/material3/ListItemShapes;

    .line 183
    .line 184
    if-nez v5, :cond_c

    .line 185
    .line 186
    new-instance v15, Landroidx/compose/material3/ListItemShapes;

    .line 187
    .line 188
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->ItemContainerExpressiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 189
    .line 190
    invoke-static {v4, v5}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->ItemSelectedContainerExpressiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 195
    .line 196
    invoke-static {v4, v5}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    .line 197
    .line 198
    .line 199
    move-result-object v17

    .line 200
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->ItemPressedContainerExpressiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 201
    .line 202
    invoke-static {v4, v5}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    .line 203
    .line 204
    .line 205
    move-result-object v18

    .line 206
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->ItemFocusedContainerExpressiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 207
    .line 208
    invoke-static {v4, v5}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    .line 209
    .line 210
    .line 211
    move-result-object v19

    .line 212
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->ItemHoveredContainerExpressiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 213
    .line 214
    invoke-static {v4, v5}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    .line 215
    .line 216
    .line 217
    move-result-object v20

    .line 218
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->ItemShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 219
    .line 220
    invoke-static {v4, v5}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    .line 221
    .line 222
    .line 223
    move-result-object v21

    .line 224
    invoke-direct/range {v15 .. v21}, Landroidx/compose/material3/ListItemShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    .line 225
    .line 226
    .line 227
    iput-object v15, v4, Landroidx/compose/material3/Shapes;->defaultListItemShapesCached:Landroidx/compose/material3/ListItemShapes;

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_c
    move-object v15, v5

    .line 231
    :goto_6
    invoke-static {v0}, Landroidx/compose/material3/ListItemDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ListItemColors;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->ItemDraggedContainerElevation:F

    .line 236
    .line 237
    new-instance v6, Landroidx/compose/material3/ListItemElevation;

    .line 238
    .line 239
    invoke-direct {v6, v5}, Landroidx/compose/material3/ListItemElevation;-><init>(F)V

    .line 240
    .line 241
    .line 242
    sget-object v5, Landroidx/compose/material3/ListItemDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 243
    .line 244
    move-object v11, v2

    .line 245
    move-object/from16 v18, v5

    .line 246
    .line 247
    move-object/from16 v17, v6

    .line 248
    .line 249
    move-object/from16 v16, v15

    .line 250
    .line 251
    move-object v15, v4

    .line 252
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    if-ne v2, v3, :cond_d

    .line 260
    .line 261
    new-instance v2, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;

    .line 262
    .line 263
    const/16 v3, 0x8

    .line 264
    .line 265
    invoke-direct {v2, v3}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_d
    move-object v13, v2

    .line 272
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 273
    .line 274
    shr-int/lit8 v2, v1, 0x3

    .line 275
    .line 276
    and-int/lit8 v3, v2, 0xe

    .line 277
    .line 278
    const v4, 0x36000030

    .line 279
    .line 280
    .line 281
    or-int/2addr v3, v4

    .line 282
    and-int/lit16 v4, v2, 0x380

    .line 283
    .line 284
    or-int/2addr v3, v4

    .line 285
    and-int/lit16 v4, v2, 0x1c00

    .line 286
    .line 287
    or-int/2addr v3, v4

    .line 288
    const v4, 0xe000

    .line 289
    .line 290
    .line 291
    and-int/2addr v4, v2

    .line 292
    or-int/2addr v3, v4

    .line 293
    const/high16 v4, 0x70000

    .line 294
    .line 295
    and-int/2addr v2, v4

    .line 296
    or-int/2addr v2, v3

    .line 297
    shl-int/lit8 v3, v1, 0xf

    .line 298
    .line 299
    const/high16 v4, 0x1c00000

    .line 300
    .line 301
    and-int/2addr v3, v4

    .line 302
    or-int v20, v2, v3

    .line 303
    .line 304
    and-int/lit8 v2, v1, 0xe

    .line 305
    .line 306
    shr-int/lit8 v1, v1, 0x15

    .line 307
    .line 308
    and-int/lit8 v3, v1, 0x70

    .line 309
    .line 310
    or-int/2addr v2, v3

    .line 311
    and-int/lit16 v1, v1, 0x380

    .line 312
    .line 313
    or-int/2addr v1, v2

    .line 314
    const v2, 0xc00c00

    .line 315
    .line 316
    .line 317
    or-int v21, v1, v2

    .line 318
    .line 319
    move-object/from16 v10, p7

    .line 320
    .line 321
    move-object/from16 v19, v0

    .line 322
    .line 323
    invoke-static/range {v10 .. v21}, Landroidx/compose/material3/ListItemKt;->InteractiveListItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ListItemColors;Landroidx/compose/material3/ListItemShapes;Landroidx/compose/material3/ListItemElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 324
    .line 325
    .line 326
    move-object v3, v11

    .line 327
    move-object v5, v15

    .line 328
    move-object/from16 v4, v16

    .line 329
    .line 330
    move-object/from16 v6, v17

    .line 331
    .line 332
    move-object/from16 v7, v18

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_e
    move-object/from16 v19, v0

    .line 336
    .line 337
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 338
    .line 339
    .line 340
    move-object/from16 v3, p2

    .line 341
    .line 342
    move-object/from16 v4, p3

    .line 343
    .line 344
    move-object/from16 v5, p4

    .line 345
    .line 346
    move-object/from16 v6, p5

    .line 347
    .line 348
    move-object/from16 v7, p6

    .line 349
    .line 350
    :goto_8
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    if-eqz v10, :cond_f

    .line 355
    .line 356
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;

    .line 357
    .line 358
    move-object/from16 v1, p0

    .line 359
    .line 360
    move/from16 v2, p1

    .line 361
    .line 362
    move-object/from16 v8, p7

    .line 363
    .line 364
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/material3/ListItemShapes;Landroidx/compose/material3/ListItemColors;Landroidx/compose/material3/ListItemElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 365
    .line 366
    .line 367
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 368
    .line 369
    :cond_f
    return-void
.end method

.method public static final ListItem-HXNGIdc(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x1d090fc6

    .line 12
    .line 13
    .line 14
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x20

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x10

    .line 27
    .line 28
    :goto_0
    or-int v0, p6, v0

    .line 29
    .line 30
    or-int/lit16 v0, v0, 0x180

    .line 31
    .line 32
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x800

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v1, 0x400

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v1

    .line 44
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const/16 v1, 0x4000

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v1, 0x2000

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v1

    .line 56
    const/high16 v1, 0x6cb0000

    .line 57
    .line 58
    or-int/2addr v0, v1

    .line 59
    const v1, 0x2492493

    .line 60
    .line 61
    .line 62
    and-int/2addr v1, v0

    .line 63
    const v5, 0x2492492

    .line 64
    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x1

    .line 68
    if-eq v1, v5, :cond_3

    .line 69
    .line 70
    move v1, v7

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v1, v6

    .line 73
    :goto_3
    and-int/2addr v0, v7

    .line 74
    invoke-virtual {v12, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_9

    .line 79
    .line 80
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 81
    .line 82
    .line 83
    and-int/lit8 v0, p6, 0x1

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    move-object/from16 v0, p4

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_5
    :goto_4
    invoke-static {v12}, Landroidx/compose/material3/ListItemDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ListItemColors;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 105
    .line 106
    .line 107
    new-instance v1, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 108
    .line 109
    const/16 v5, 0x9

    .line 110
    .line 111
    move-object/from16 v15, p0

    .line 112
    .line 113
    invoke-direct {v1, v0, v15, v5}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    const v5, 0x258aca4e

    .line 117
    .line 118
    .line 119
    invoke-static {v5, v1, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 120
    .line 121
    .line 122
    move-result-object v19

    .line 123
    const/16 v18, 0x0

    .line 124
    .line 125
    if-nez v3, :cond_6

    .line 126
    .line 127
    const v1, -0x1e708881

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 134
    .line 135
    .line 136
    move-object/from16 v21, v18

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_6
    const v1, -0x1e708880

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda1;

    .line 146
    .line 147
    invoke-direct {v1, v0, v3, v6}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/ListItemColors;Lkotlin/jvm/functions/Function2;I)V

    .line 148
    .line 149
    .line 150
    const v5, -0x4cf6537c

    .line 151
    .line 152
    .line 153
    invoke-static {v5, v1, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v21, v1

    .line 161
    .line 162
    :goto_6
    const v1, -0x1e697f7a

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 169
    .line 170
    .line 171
    if-nez v4, :cond_7

    .line 172
    .line 173
    const v1, -0x1e63e2f1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 180
    .line 181
    .line 182
    move-object/from16 v17, v18

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_7
    const v1, -0x1e63e2f0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda1;

    .line 192
    .line 193
    invoke-direct {v1, v0, v4, v7}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/ListItemColors;Lkotlin/jvm/functions/Function2;I)V

    .line 194
    .line 195
    .line 196
    const v5, 0x1acb90a3

    .line 197
    .line 198
    .line 199
    invoke-static {v5, v1, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 204
    .line 205
    .line 206
    move-object/from16 v17, v1

    .line 207
    .line 208
    :goto_7
    const v1, -0x1e5a9f14

    .line 209
    .line 210
    .line 211
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 222
    .line 223
    if-ne v1, v5, :cond_8

    .line 224
    .line 225
    new-instance v1, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;

    .line 226
    .line 227
    const/16 v5, 0x8

    .line 228
    .line 229
    invoke-direct {v1, v5}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_8
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 236
    .line 237
    new-instance v5, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 238
    .line 239
    invoke-direct {v5, v1, v7}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 240
    .line 241
    .line 242
    invoke-static {v5, v2}, Landroidx/compose/ui/Modifier$-CC;->$default$then(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    sget-object v1, Landroidx/compose/material3/ListItemDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 247
    .line 248
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->ItemContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 249
    .line 250
    invoke-static {v1, v12}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    iget-wide v7, v0, Landroidx/compose/material3/ListItemColors;->containerColor:J

    .line 255
    .line 256
    iget-wide v9, v0, Landroidx/compose/material3/ListItemColors;->contentColor:J

    .line 257
    .line 258
    new-instance v16, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda4;

    .line 259
    .line 260
    move-object/from16 v20, v18

    .line 261
    .line 262
    invoke-direct/range {v16 .. v21}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v1, v16

    .line 266
    .line 267
    const v11, 0x4713ef21

    .line 268
    .line 269
    .line 270
    invoke-static {v11, v1, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    const v13, 0xc36000

    .line 275
    .line 276
    .line 277
    const/16 v14, 0x40

    .line 278
    .line 279
    invoke-static/range {v5 .. v14}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 280
    .line 281
    .line 282
    move-object v5, v0

    .line 283
    goto :goto_8

    .line 284
    :cond_9
    move-object/from16 v15, p0

    .line 285
    .line 286
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 287
    .line 288
    .line 289
    move-object/from16 v5, p4

    .line 290
    .line 291
    :goto_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    if-eqz v8, :cond_a

    .line 296
    .line 297
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;

    .line 298
    .line 299
    const/4 v7, 0x0

    .line 300
    move/from16 v6, p6

    .line 301
    .line 302
    move-object v1, v15

    .line 303
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 304
    .line 305
    .line 306
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 307
    .line 308
    :cond_a
    return-void
.end method

.method public static final ListItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v0, p5

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v3, -0x3a70552

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v7, 0x4

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    move v3, v7

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x2

    .line 29
    :goto_0
    or-int v3, p6, v3

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    const/16 v9, 0x20

    .line 36
    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    move v8, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v8, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v3, v8

    .line 44
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_2

    .line 49
    .line 50
    const/16 v8, 0x800

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v8, 0x400

    .line 54
    .line 55
    :goto_2
    or-int/2addr v3, v8

    .line 56
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    const/16 v8, 0x4000

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v8, 0x2000

    .line 66
    .line 67
    :goto_3
    or-int/2addr v3, v8

    .line 68
    and-int/lit16 v8, v3, 0x2493

    .line 69
    .line 70
    const/16 v10, 0x2492

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v12, 0x1

    .line 74
    if-eq v8, v10, :cond_4

    .line 75
    .line 76
    move v8, v12

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move v8, v11

    .line 79
    :goto_4
    and-int/2addr v3, v12

    .line 80
    invoke-virtual {v0, v3, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_c

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 91
    .line 92
    if-ne v3, v8, :cond_5

    .line 93
    .line 94
    new-instance v3, Landroidx/compose/material3/ListItemMeasurePolicy;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    check-cast v3, Landroidx/compose/material3/ListItemMeasurePolicy;

    .line 103
    .line 104
    if-nez v4, :cond_6

    .line 105
    .line 106
    sget-object v10, Landroidx/compose/material3/BadgeKt;->lambda$-489887388:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_6
    move-object v10, v4

    .line 110
    :goto_5
    if-nez v5, :cond_7

    .line 111
    .line 112
    sget-object v13, Landroidx/compose/material3/BadgeKt;->lambda$1629163587:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_7
    move-object v13, v5

    .line 116
    :goto_6
    if-nez v1, :cond_8

    .line 117
    .line 118
    sget-object v14, Landroidx/compose/material3/BadgeKt;->lambda$-546752734:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_8
    move-object v14, v1

    .line 122
    :goto_7
    if-nez v2, :cond_9

    .line 123
    .line 124
    sget-object v15, Landroidx/compose/material3/BadgeKt;->lambda$1572298241:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 125
    .line 126
    :goto_8
    const/16 p5, 0x2

    .line 127
    .line 128
    goto :goto_9

    .line 129
    :cond_9
    move-object v15, v2

    .line 130
    goto :goto_8

    .line 131
    :goto_9
    const/4 v6, 0x5

    .line 132
    new-array v6, v6, [Lkotlin/jvm/functions/Function2;

    .line 133
    .line 134
    aput-object p2, v6, v11

    .line 135
    .line 136
    aput-object v10, v6, v12

    .line 137
    .line 138
    aput-object v13, v6, p5

    .line 139
    .line 140
    const/4 v10, 0x3

    .line 141
    aput-object v14, v6, v10

    .line 142
    .line 143
    aput-object v15, v6, v7

    .line 144
    .line 145
    invoke-static {v6}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6}, Landroidx/compose/ui/layout/RulerKt;->combineAsVirtualLayouts(Ljava/util/List;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    if-ne v7, v8, :cond_a

    .line 158
    .line 159
    new-instance v7, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;

    .line 160
    .line 161
    invoke-direct {v7, v3}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    check-cast v7, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 168
    .line 169
    iget-wide v13, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 170
    .line 171
    ushr-long v8, v13, v9

    .line 172
    .line 173
    xor-long/2addr v8, v13

    .line 174
    long-to-int v3, v8

    .line 175
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 180
    .line 181
    invoke-static {v0, v9}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 193
    .line 194
    .line 195
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 196
    .line 197
    if-eqz v13, :cond_b

    .line 198
    .line 199
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 200
    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 204
    .line 205
    .line 206
    :goto_a
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 207
    .line 208
    invoke-static {v0, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    .line 210
    .line 211
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 212
    .line 213
    invoke-static {v0, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 221
    .line 222
    invoke-static {v0, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 223
    .line 224
    .line 225
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 226
    .line 227
    invoke-static {v0, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 228
    .line 229
    .line 230
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 231
    .line 232
    invoke-static {v0, v9, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v6, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 243
    .line 244
    .line 245
    goto :goto_b

    .line 246
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 247
    .line 248
    .line 249
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    if-eqz v7, :cond_d

    .line 254
    .line 255
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda4;

    .line 256
    .line 257
    move-object/from16 v3, p2

    .line 258
    .line 259
    move/from16 v6, p6

    .line 260
    .line 261
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    .line 262
    .line 263
    .line 264
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 265
    .line 266
    :cond_d
    return-void
.end method

.method public static final OverlineDecorator-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x35a1c2f9

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x100

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x80

    .line 30
    .line 31
    :goto_1
    or-int/2addr v0, v1

    .line 32
    and-int/lit16 v1, v0, 0x93

    .line 33
    .line 34
    const/16 v2, 0x92

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eq v1, v2, :cond_2

    .line 39
    .line 40
    move v1, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v1, v4

    .line 43
    :goto_2
    and-int/2addr v0, v3

    .line 44
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const v0, 0x33657e89

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 61
    .line 62
    .line 63
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    move-wide v1, p0

    .line 73
    move-object v3, p2

    .line 74
    move v4, p4

    .line 75
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;-><init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;II)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method public static final ProvideTextStyleFromToken-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object/from16 v4, p4

    .line 2
    .line 3
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, -0x1102d020

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v4, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x2

    .line 20
    :goto_0
    or-int v2, p5, v2

    .line 21
    .line 22
    move-object v3, p3

    .line 23
    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    const/16 v5, 0x100

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v5, 0x80

    .line 33
    .line 34
    :goto_1
    or-int/2addr v2, v5

    .line 35
    and-int/lit16 v5, v2, 0x93

    .line 36
    .line 37
    const/16 v6, 0x92

    .line 38
    .line 39
    if-eq v5, v6, :cond_2

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v5, 0x0

    .line 44
    :goto_2
    and-int/lit8 v6, v2, 0x1

    .line 45
    .line 46
    invoke-virtual {v4, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    invoke-static {p2, v4}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    and-int/lit16 v2, v2, 0x38e

    .line 57
    .line 58
    move-object v0, v5

    .line 59
    move v5, v2

    .line 60
    move-object v2, v0

    .line 61
    move-wide v0, p0

    .line 62
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 67
    .line 68
    .line 69
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    new-instance v5, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    const/4 v11, 0x2

    .line 78
    move-wide v6, p0

    .line 79
    move-object v8, p2

    .line 80
    move-object v9, p3

    .line 81
    move/from16 v10, p5

    .line 82
    .line 83
    invoke-direct/range {v5 .. v11}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda2;-><init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;II)V

    .line 84
    .line 85
    .line 86
    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 87
    .line 88
    :cond_4
    return-void
.end method

.method public static final SupportingDecorator-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x354e1c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x100

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x80

    .line 30
    .line 31
    :goto_1
    or-int/2addr v0, v1

    .line 32
    and-int/lit16 v1, v0, 0x93

    .line 33
    .line 34
    const/16 v2, 0x92

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eq v1, v2, :cond_2

    .line 39
    .line 40
    move v1, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v1, v4

    .line 43
    :goto_2
    and-int/2addr v0, v3

    .line 44
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const v0, -0x3b275482

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 61
    .line 62
    .line 63
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    move-wide v1, p0

    .line 73
    move-object v3, p2

    .line 74
    move v4, p4

    .line 75
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;-><init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;II)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method public static final TrailingDecorator-8s8adOk(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x7c5e6c01

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p5

    .line 19
    invoke-virtual {p4, p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x800

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v1, 0x400

    .line 42
    .line 43
    :goto_2
    or-int/2addr v0, v1

    .line 44
    and-int/lit16 v1, v0, 0x493

    .line 45
    .line 46
    const/16 v2, 0x492

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eq v1, v2, :cond_3

    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v1, v4

    .line 55
    :goto_3
    and-int/2addr v0, v3

    .line 56
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const v0, 0x10128f83

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    :goto_4
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    if-eqz p4, :cond_5

    .line 80
    .line 81
    new-instance v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    const/4 v6, 0x2

    .line 84
    move v1, p0

    .line 85
    move-wide v2, p1

    .line 86
    move-object v4, p3

    .line 87
    move v5, p5

    .line 88
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;-><init>(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;II)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method public static final access$calculateHeight-N4Jib3Y(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIJ)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p6, v0, :cond_0

    .line 3
    .line 4
    sget p6, Landroidx/compose/material3/tokens/ListTokens;->ItemOneLineContainerHeight:F

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p6, v0, :cond_1

    .line 9
    .line 10
    sget p6, Landroidx/compose/material3/tokens/ListTokens;->ItemTwoLineContainerHeight:F

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget p6, Landroidx/compose/material3/tokens/ListTokens;->ItemThreeLineContainerHeight:F

    .line 14
    .line 15
    :goto_0
    invoke-static {p8, p9}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p0, p6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    add-int/2addr p3, p4

    .line 28
    add-int/2addr p3, p5

    .line 29
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/2addr p1, p7

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p8, p9}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-le p0, p1, :cond_2

    .line 47
    .line 48
    return p1

    .line 49
    :cond_2
    return p0
.end method
