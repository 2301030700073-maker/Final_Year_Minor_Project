.class public abstract Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-1338710573:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$-938015037:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$462738596:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$571120867:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x4fcb1a2d

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$-1338710573:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    const v2, -0x37e8f93d

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$-938015037:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v1, 0xf

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 44
    .line 45
    const v2, 0x1b94d4a4

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$462738596:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 52
    .line 53
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/16 v1, 0x10

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 61
    .line 62
    const v2, 0x220a9ce3

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$571120867:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 69
    .line 70
    return-void
.end method

.method public static final CompactContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x42e331f6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p3

    .line 25
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v1, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v1

    .line 42
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 43
    .line 44
    const/16 v3, 0x12

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    if-eq v1, v3, :cond_4

    .line 49
    .line 50
    move v1, v5

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    move v1, v4

    .line 53
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 62
    .line 63
    invoke-interface {v1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 68
    .line 69
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-wide v6, p2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 74
    .line 75
    ushr-long v8, v6, v2

    .line 76
    .line 77
    xor-long/2addr v6, v8

    .line 78
    long-to-int v2, v6

    .line 79
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {p2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 95
    .line 96
    .line 97
    iget-boolean v8, p2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 98
    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 106
    .line 107
    .line 108
    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 109
    .line 110
    invoke-static {p2, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 111
    .line 112
    .line 113
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 114
    .line 115
    invoke-static {p2, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 123
    .line 124
    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 128
    .line 129
    invoke-static {p2, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 130
    .line 131
    .line 132
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 133
    .line 134
    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p2}, Lkotlin/text/StringsKt__IndentKt;->calculateResponsiveWidthPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    and-int/lit8 v0, v0, 0x70

    .line 142
    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v1, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 155
    .line 156
    .line 157
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-eqz p2, :cond_7

    .line 162
    .line 163
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda1;

    .line 164
    .line 165
    invoke-direct {v0, p0, p1, p3, v4}, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 169
    .line 170
    :cond_7
    return-void
.end method

.method public static final ExpandedContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v11, p2

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v3, 0x2829f0bc

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v3, v2, 0x6

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    move v3, v4

    .line 31
    :goto_0
    or-int/2addr v3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v3, v2

    .line 34
    :goto_1
    and-int/lit8 v5, v2, 0x30

    .line 35
    .line 36
    const/16 v6, 0x20

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    move v5, v6

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v5, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v3, v5

    .line 51
    :cond_3
    and-int/lit8 v5, v3, 0x13

    .line 52
    .line 53
    const/16 v7, 0x12

    .line 54
    .line 55
    const/4 v14, 0x0

    .line 56
    const/4 v15, 0x1

    .line 57
    if-eq v5, v7, :cond_4

    .line 58
    .line 59
    move v5, v15

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    move v5, v14

    .line 62
    :goto_3
    and-int/lit8 v7, v3, 0x1

    .line 63
    .line 64
    invoke-virtual {v11, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/4 v7, 0x7

    .line 69
    if-eqz v5, :cond_b

    .line 70
    .line 71
    invoke-static {v11}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget-object v5, v5, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 76
    .line 77
    iget-object v5, v5, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->heightSizeClass:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_a

    .line 84
    .line 85
    if-eq v5, v15, :cond_9

    .line 86
    .line 87
    if-eq v5, v4, :cond_7

    .line 88
    .line 89
    const/4 v3, 0x3

    .line 90
    if-ne v5, v3, :cond_6

    .line 91
    .line 92
    const v3, -0x174d298f

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 96
    .line 97
    .line 98
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 99
    .line 100
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 105
    .line 106
    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-wide v8, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 111
    .line 112
    ushr-long v5, v8, v6

    .line 113
    .line 114
    xor-long/2addr v5, v8

    .line 115
    long-to-int v5, v5

    .line 116
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v11, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 130
    .line 131
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 132
    .line 133
    .line 134
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 135
    .line 136
    if-eqz v9, :cond_5

    .line 137
    .line 138
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 143
    .line 144
    .line 145
    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 146
    .line 147
    invoke-static {v11, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 148
    .line 149
    .line 150
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 160
    .line 161
    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 165
    .line 166
    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 167
    .line 168
    .line 169
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 170
    .line 171
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    sget-object v3, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Companion:Lcom/bumptech/glide/load/Option$1;

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    sget v3, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->BREAKPOINT_MEDIUM:F

    .line 180
    .line 181
    invoke-static {v3}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 186
    .line 187
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    new-instance v4, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 197
    .line 198
    invoke-direct {v4, v1, v7}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 199
    .line 200
    .line 201
    const v5, -0x5b9b0a86

    .line 202
    .line 203
    .line 204
    invoke-static {v5, v4, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    const/high16 v12, 0x30000

    .line 209
    .line 210
    const/16 v13, 0xe

    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    const-wide/16 v5, 0x0

    .line 214
    .line 215
    move v9, v7

    .line 216
    const-wide/16 v7, 0x0

    .line 217
    .line 218
    move/from16 v16, v9

    .line 219
    .line 220
    const/high16 v9, 0x3f800000    # 1.0f

    .line 221
    .line 222
    invoke-static/range {v3 .. v13}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_6

    .line 232
    .line 233
    :cond_6
    const v0, -0x3a8f34b0

    .line 234
    .line 235
    .line 236
    invoke-static {v11, v0, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    throw v0

    .line 241
    :cond_7
    const v3, -0x175426b8

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 245
    .line 246
    .line 247
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 248
    .line 249
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 254
    .line 255
    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 260
    .line 261
    ushr-long v5, v7, v6

    .line 262
    .line 263
    xor-long/2addr v5, v7

    .line 264
    long-to-int v5, v5

    .line 265
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-static {v11, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 279
    .line 280
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 281
    .line 282
    .line 283
    iget-boolean v8, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 284
    .line 285
    if-eqz v8, :cond_8

    .line 286
    .line 287
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 292
    .line 293
    .line 294
    :goto_5
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 295
    .line 296
    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 297
    .line 298
    .line 299
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 300
    .line 301
    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 309
    .line 310
    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 311
    .line 312
    .line 313
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 314
    .line 315
    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 316
    .line 317
    .line 318
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 319
    .line 320
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 324
    .line 325
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    new-instance v3, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 335
    .line 336
    const/4 v4, 0x6

    .line 337
    invoke-direct {v3, v1, v4}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 338
    .line 339
    .line 340
    const v4, -0x2652ad47

    .line 341
    .line 342
    .line 343
    invoke-static {v4, v3, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    const/high16 v12, 0x30000

    .line 348
    .line 349
    const/16 v13, 0xf

    .line 350
    .line 351
    const/4 v3, 0x0

    .line 352
    const/4 v4, 0x0

    .line 353
    const-wide/16 v5, 0x0

    .line 354
    .line 355
    const-wide/16 v7, 0x0

    .line 356
    .line 357
    const/high16 v9, 0x3f800000    # 1.0f

    .line 358
    .line 359
    invoke-static/range {v3 .. v13}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_9
    const v4, -0x3a8f24c4

    .line 370
    .line 371
    .line 372
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 373
    .line 374
    .line 375
    and-int/lit8 v3, v3, 0x7e

    .line 376
    .line 377
    invoke-static {v0, v1, v11, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->MediumContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 381
    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_a
    const v4, -0x3a8f2e43

    .line 385
    .line 386
    .line 387
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 388
    .line 389
    .line 390
    and-int/lit8 v3, v3, 0x7e

    .line 391
    .line 392
    invoke-static {v0, v1, v11, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->CompactContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 400
    .line 401
    .line 402
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    if-eqz v3, :cond_c

    .line 407
    .line 408
    new-instance v4, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda1;

    .line 409
    .line 410
    const/4 v9, 0x7

    .line 411
    invoke-direct {v4, v0, v1, v2, v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 412
    .line 413
    .line 414
    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 415
    .line 416
    :cond_c
    return-void
.end method

.method public static final LazyColumnWithHeaderFooter(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v8, p7

    .line 8
    .line 9
    move/from16 v9, p9

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object/from16 v0, p8

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    const v1, -0x3442be0a    # -2.480638E7f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    and-int/lit8 v1, v9, 0x6

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    move-object/from16 v1, p0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x2

    .line 39
    :goto_0
    or-int/2addr v2, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object/from16 v1, p0

    .line 42
    .line 43
    move v2, v9

    .line 44
    :goto_1
    and-int/lit8 v3, v9, 0x30

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    or-int/lit8 v2, v2, 0x10

    .line 49
    .line 50
    :cond_2
    and-int/lit16 v3, v9, 0x180

    .line 51
    .line 52
    move-object/from16 v15, p2

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    const/16 v3, 0x100

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/16 v3, 0x80

    .line 66
    .line 67
    :goto_2
    or-int/2addr v2, v3

    .line 68
    :cond_4
    and-int/lit16 v3, v9, 0xc00

    .line 69
    .line 70
    if-nez v3, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    const/16 v3, 0x800

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    const/16 v3, 0x400

    .line 82
    .line 83
    :goto_3
    or-int/2addr v2, v3

    .line 84
    :cond_6
    or-int/lit16 v2, v2, 0x6000

    .line 85
    .line 86
    const/high16 v3, 0x30000

    .line 87
    .line 88
    and-int/2addr v3, v9

    .line 89
    const/high16 v5, 0x20000

    .line 90
    .line 91
    if-nez v3, :cond_8

    .line 92
    .line 93
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    move v3, v5

    .line 100
    goto :goto_4

    .line 101
    :cond_7
    const/high16 v3, 0x10000

    .line 102
    .line 103
    :goto_4
    or-int/2addr v2, v3

    .line 104
    :cond_8
    const/high16 v3, 0x180000

    .line 105
    .line 106
    and-int/2addr v3, v9

    .line 107
    const/high16 v10, 0x100000

    .line 108
    .line 109
    if-nez v3, :cond_a

    .line 110
    .line 111
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_9

    .line 116
    .line 117
    move v3, v10

    .line 118
    goto :goto_5

    .line 119
    :cond_9
    const/high16 v3, 0x80000

    .line 120
    .line 121
    :goto_5
    or-int/2addr v2, v3

    .line 122
    :cond_a
    const/high16 v3, 0xc00000

    .line 123
    .line 124
    and-int/2addr v3, v9

    .line 125
    const/high16 v11, 0x800000

    .line 126
    .line 127
    if-nez v3, :cond_c

    .line 128
    .line 129
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_b

    .line 134
    .line 135
    move v3, v11

    .line 136
    goto :goto_6

    .line 137
    :cond_b
    const/high16 v3, 0x400000

    .line 138
    .line 139
    :goto_6
    or-int/2addr v2, v3

    .line 140
    :cond_c
    const v3, 0x492493

    .line 141
    .line 142
    .line 143
    and-int/2addr v3, v2

    .line 144
    const v12, 0x492492

    .line 145
    .line 146
    .line 147
    const/4 v14, 0x1

    .line 148
    if-eq v3, v12, :cond_d

    .line 149
    .line 150
    move v3, v14

    .line 151
    goto :goto_7

    .line 152
    :cond_d
    const/4 v3, 0x0

    .line 153
    :goto_7
    and-int/lit8 v12, v2, 0x1

    .line 154
    .line 155
    invoke-virtual {v0, v12, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_16

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 162
    .line 163
    .line 164
    and-int/lit8 v3, v9, 0x1

    .line 165
    .line 166
    if-eqz v3, :cond_f

    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_e

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 176
    .line 177
    .line 178
    and-int/lit8 v2, v2, -0x71

    .line 179
    .line 180
    move-object/from16 v16, p1

    .line 181
    .line 182
    move-object/from16 v18, p4

    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_f
    :goto_8
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    and-int/lit8 v2, v2, -0x71

    .line 190
    .line 191
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 192
    .line 193
    move-object/from16 v16, v3

    .line 194
    .line 195
    move-object/from16 v18, v12

    .line 196
    .line 197
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 205
    .line 206
    if-ne v3, v12, :cond_10

    .line 207
    .line 208
    new-instance v3, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1;

    .line 209
    .line 210
    invoke-direct {v3, v4}, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1;-><init>(Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_10
    check-cast v3, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1;

    .line 217
    .line 218
    const/high16 v17, 0x70000

    .line 219
    .line 220
    and-int v13, v2, v17

    .line 221
    .line 222
    if-ne v13, v5, :cond_11

    .line 223
    .line 224
    move v5, v14

    .line 225
    goto :goto_a

    .line 226
    :cond_11
    const/4 v5, 0x0

    .line 227
    :goto_a
    const/high16 v13, 0x1c00000

    .line 228
    .line 229
    and-int/2addr v13, v2

    .line 230
    if-ne v13, v11, :cond_12

    .line 231
    .line 232
    move v11, v14

    .line 233
    goto :goto_b

    .line 234
    :cond_12
    const/4 v11, 0x0

    .line 235
    :goto_b
    or-int/2addr v5, v11

    .line 236
    const/high16 v11, 0x380000

    .line 237
    .line 238
    and-int/2addr v11, v2

    .line 239
    if-ne v11, v10, :cond_13

    .line 240
    .line 241
    move v13, v14

    .line 242
    goto :goto_c

    .line 243
    :cond_13
    const/4 v13, 0x0

    .line 244
    :goto_c
    or-int/2addr v5, v13

    .line 245
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    if-nez v5, :cond_14

    .line 250
    .line 251
    if-ne v10, v12, :cond_15

    .line 252
    .line 253
    :cond_14
    new-instance v10, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    const/16 v5, 0x18

    .line 256
    .line 257
    invoke-direct {v10, v8, v6, v7, v5}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_15
    move-object/from16 v20, v10

    .line 264
    .line 265
    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 266
    .line 267
    and-int/lit16 v5, v2, 0x3fe

    .line 268
    .line 269
    shl-int/lit8 v2, v2, 0x3

    .line 270
    .line 271
    and-int v2, v2, v17

    .line 272
    .line 273
    or-int v10, v5, v2

    .line 274
    .line 275
    const/16 v11, 0x1c8

    .line 276
    .line 277
    const/4 v12, 0x0

    .line 278
    const/4 v13, 0x0

    .line 279
    const/16 v21, 0x0

    .line 280
    .line 281
    move-object/from16 v17, v0

    .line 282
    .line 283
    move-object/from16 v19, v1

    .line 284
    .line 285
    move-object v14, v3

    .line 286
    invoke-static/range {v10 .. v21}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 287
    .line 288
    .line 289
    move-object/from16 v2, v16

    .line 290
    .line 291
    move-object/from16 v5, v18

    .line 292
    .line 293
    goto :goto_d

    .line 294
    :cond_16
    move-object/from16 v17, v0

    .line 295
    .line 296
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    move-object/from16 v2, p1

    .line 300
    .line 301
    move-object/from16 v5, p4

    .line 302
    .line 303
    :goto_d
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    if-eqz v10, :cond_17

    .line 308
    .line 309
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;

    .line 310
    .line 311
    move-object/from16 v1, p0

    .line 312
    .line 313
    move-object/from16 v3, p2

    .line 314
    .line 315
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;I)V

    .line 316
    .line 317
    .line 318
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 319
    .line 320
    :cond_17
    return-void
.end method

.method public static final MediumContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x16cf62f8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p3

    .line 25
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v1, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v1

    .line 42
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 43
    .line 44
    const/16 v3, 0x12

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    if-eq v1, v3, :cond_4

    .line 49
    .line 50
    move v1, v5

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    move v1, v4

    .line 53
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 62
    .line 63
    invoke-interface {v1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 68
    .line 69
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-wide v6, p2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 74
    .line 75
    ushr-long v8, v6, v2

    .line 76
    .line 77
    xor-long/2addr v6, v8

    .line 78
    long-to-int v2, v6

    .line 79
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {p2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 95
    .line 96
    .line 97
    iget-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 98
    .line 99
    if-eqz v7, :cond_5

    .line 100
    .line 101
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 106
    .line 107
    .line 108
    :goto_4
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 109
    .line 110
    invoke-static {p2, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 111
    .line 112
    .line 113
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 114
    .line 115
    invoke-static {p2, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 123
    .line 124
    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 128
    .line 129
    invoke-static {p2, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 130
    .line 131
    .line 132
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 133
    .line 134
    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p2}, Lkotlin/text/StringsKt__IndentKt;->calculateResponsiveWidthPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    and-int/lit8 v0, v0, 0x70

    .line 142
    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v1, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 155
    .line 156
    .line 157
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-eqz p2, :cond_7

    .line 162
    .line 163
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda1;

    .line 164
    .line 165
    const/4 v1, 0x6

    .line 166
    invoke-direct {v0, p0, p1, p3, v1}, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 170
    .line 171
    :cond_7
    return-void
.end method

.method public static final ResponsiveContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 10

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v1, 0x2969f137

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v1, p4, 0x1

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    or-int/lit8 v4, p3, 0x6

    .line 16
    .line 17
    move v5, v4

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    and-int/lit8 v4, p3, 0x6

    .line 20
    .line 21
    if-nez v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v5, v3

    .line 32
    :goto_0
    or-int/2addr v5, p3

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v5, p3

    .line 35
    :goto_1
    and-int/lit8 v6, v5, 0x13

    .line 36
    .line 37
    const/16 v7, 0x12

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x1

    .line 41
    if-eq v6, v7, :cond_3

    .line 42
    .line 43
    move v6, v9

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move v6, v8

    .line 46
    :goto_2
    and-int/lit8 v7, v5, 0x1

    .line 47
    .line 48
    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_9

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    move-object v1, p0

    .line 60
    :goto_3
    invoke-static {v0}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-object v4, v4, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 65
    .line 66
    iget-object v4, v4, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->widthSizeClass:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_8

    .line 73
    .line 74
    if-eq v4, v9, :cond_7

    .line 75
    .line 76
    if-eq v4, v3, :cond_6

    .line 77
    .line 78
    const/4 v3, 0x3

    .line 79
    if-ne v4, v3, :cond_5

    .line 80
    .line 81
    const v3, 0x76b2c30e

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 85
    .line 86
    .line 87
    and-int/lit8 v3, v5, 0x7e

    .line 88
    .line 89
    invoke-static {v1, p1, v0, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ExpandedContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    const v1, 0x76b29627

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    throw v0

    .line 104
    :cond_6
    const v3, 0x76b2b72c

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 108
    .line 109
    .line 110
    and-int/lit8 v3, v5, 0x7e

    .line 111
    .line 112
    invoke-static {v1, p1, v0, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->MediumContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_7
    const v3, 0x76b2ab6d

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 123
    .line 124
    .line 125
    and-int/lit8 v3, v5, 0x7e

    .line 126
    .line 127
    invoke-static {v1, p1, v0, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->CompactContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    const v3, 0x76b29f8d

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 138
    .line 139
    .line 140
    and-int/lit8 v3, v5, 0x7e

    .line 141
    .line 142
    invoke-static {v1, p1, v0, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->CompactContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 150
    .line 151
    .line 152
    move-object v1, p0

    .line 153
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-eqz v6, :cond_a

    .line 158
    .line 159
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    move-object v2, p1

    .line 163
    move v3, p3

    .line 164
    move v4, p4

    .line 165
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;III)V

    .line 166
    .line 167
    .line 168
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 169
    .line 170
    :cond_a
    return-void
.end method

.method public static final ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 13

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v1, -0x23ac09d7

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v1, p4, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    or-int/lit8 v2, p3, 0x6

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    and-int/lit8 v2, p3, 0x6

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int v2, p3, v2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move/from16 v2, p3

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v3, v2, 0x13

    .line 36
    .line 37
    const/16 v4, 0x12

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    if-eq v3, v4, :cond_3

    .line 42
    .line 43
    move v3, v6

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move v3, v5

    .line 46
    :goto_2
    and-int/2addr v2, v6

    .line 47
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_6

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 56
    .line 57
    :cond_4
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 58
    .line 59
    invoke-interface {v1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 64
    .line 65
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-wide v3, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 70
    .line 71
    const/16 v5, 0x20

    .line 72
    .line 73
    ushr-long v7, v3, v5

    .line 74
    .line 75
    xor-long/2addr v3, v7

    .line 76
    long-to-int v3, v3

    .line 77
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 93
    .line 94
    .line 95
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 96
    .line 97
    if-eqz v7, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 104
    .line 105
    .line 106
    :goto_3
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 107
    .line 108
    invoke-static {v0, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 112
    .line 113
    invoke-static {v0, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 121
    .line 122
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 126
    .line 127
    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 131
    .line 132
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->calculateResponsiveWidthPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const/16 v2, 0x30

    .line 140
    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p1, v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 149
    .line 150
    .line 151
    :goto_4
    move-object v8, p0

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-eqz p0, :cond_7

    .line 162
    .line 163
    new-instance v7, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    const/4 v12, 0x1

    .line 166
    move-object v9, p1

    .line 167
    move/from16 v10, p3

    .line 168
    .line 169
    move/from16 v11, p4

    .line 170
    .line 171
    invoke-direct/range {v7 .. v12}, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;III)V

    .line 172
    .line 173
    .line 174
    iput-object v7, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 175
    .line 176
    :cond_7
    return-void
.end method

.method public static final Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x33dacca1    # -4.3306364E7f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v8, 0x6

    .line 14
    .line 15
    move-object/from16 v9, p0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v1, v8

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v8

    .line 31
    :goto_1
    and-int/lit8 v3, p9, 0x2

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    or-int/lit8 v1, v1, 0x30

    .line 36
    .line 37
    :cond_2
    move-object/from16 v4, p1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    and-int/lit8 v4, v8, 0x30

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    move-object/from16 v4, p1

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    const/16 v5, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/16 v5, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v1, v5

    .line 58
    :goto_3
    and-int/lit8 v5, p9, 0x4

    .line 59
    .line 60
    if-eqz v5, :cond_6

    .line 61
    .line 62
    or-int/lit16 v1, v1, 0x180

    .line 63
    .line 64
    :cond_5
    move-object/from16 v6, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v6, v8, 0x180

    .line 68
    .line 69
    if-nez v6, :cond_5

    .line 70
    .line 71
    move-object/from16 v6, p2

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_7

    .line 78
    .line 79
    const/16 v7, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    const/16 v7, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v1, v7

    .line 85
    :goto_5
    and-int/lit8 v7, p9, 0x8

    .line 86
    .line 87
    if-eqz v7, :cond_9

    .line 88
    .line 89
    or-int/lit16 v1, v1, 0xc00

    .line 90
    .line 91
    :cond_8
    move-object/from16 v10, p3

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_9
    and-int/lit16 v10, v8, 0xc00

    .line 95
    .line 96
    if-nez v10, :cond_8

    .line 97
    .line 98
    move-object/from16 v10, p3

    .line 99
    .line 100
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_a

    .line 105
    .line 106
    const/16 v11, 0x800

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    const/16 v11, 0x400

    .line 110
    .line 111
    :goto_6
    or-int/2addr v1, v11

    .line 112
    :goto_7
    and-int/lit8 v11, p9, 0x10

    .line 113
    .line 114
    if-eqz v11, :cond_c

    .line 115
    .line 116
    or-int/lit16 v1, v1, 0x6000

    .line 117
    .line 118
    :cond_b
    move-object/from16 v12, p4

    .line 119
    .line 120
    goto :goto_9

    .line 121
    :cond_c
    and-int/lit16 v12, v8, 0x6000

    .line 122
    .line 123
    if-nez v12, :cond_b

    .line 124
    .line 125
    move-object/from16 v12, p4

    .line 126
    .line 127
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_d

    .line 132
    .line 133
    const/16 v13, 0x4000

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_d
    const/16 v13, 0x2000

    .line 137
    .line 138
    :goto_8
    or-int/2addr v1, v13

    .line 139
    :goto_9
    and-int/lit8 v13, p9, 0x20

    .line 140
    .line 141
    const/high16 v14, 0x30000

    .line 142
    .line 143
    if-eqz v13, :cond_e

    .line 144
    .line 145
    :goto_a
    or-int/2addr v1, v14

    .line 146
    goto :goto_c

    .line 147
    :cond_e
    and-int/2addr v14, v8

    .line 148
    if-nez v14, :cond_11

    .line 149
    .line 150
    if-nez p5, :cond_f

    .line 151
    .line 152
    const/4 v14, -0x1

    .line 153
    goto :goto_b

    .line 154
    :cond_f
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    :goto_b
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_10

    .line 163
    .line 164
    const/high16 v14, 0x20000

    .line 165
    .line 166
    goto :goto_a

    .line 167
    :cond_10
    const/high16 v14, 0x10000

    .line 168
    .line 169
    goto :goto_a

    .line 170
    :cond_11
    :goto_c
    const/high16 v14, 0x180000

    .line 171
    .line 172
    and-int/2addr v14, v8

    .line 173
    if-nez v14, :cond_13

    .line 174
    .line 175
    move-object/from16 v14, p6

    .line 176
    .line 177
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    if-eqz v15, :cond_12

    .line 182
    .line 183
    const/high16 v15, 0x100000

    .line 184
    .line 185
    goto :goto_d

    .line 186
    :cond_12
    const/high16 v15, 0x80000

    .line 187
    .line 188
    :goto_d
    or-int/2addr v1, v15

    .line 189
    goto :goto_e

    .line 190
    :cond_13
    move-object/from16 v14, p6

    .line 191
    .line 192
    :goto_e
    const v15, 0x92493

    .line 193
    .line 194
    .line 195
    and-int/2addr v15, v1

    .line 196
    const v2, 0x92492

    .line 197
    .line 198
    .line 199
    const/16 v16, 0x0

    .line 200
    .line 201
    move/from16 v17, v1

    .line 202
    .line 203
    const/4 v1, 0x1

    .line 204
    if-eq v15, v2, :cond_14

    .line 205
    .line 206
    move v2, v1

    .line 207
    goto :goto_f

    .line 208
    :cond_14
    move/from16 v2, v16

    .line 209
    .line 210
    :goto_f
    and-int/lit8 v15, v17, 0x1

    .line 211
    .line 212
    invoke-virtual {v0, v15, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_1e

    .line 217
    .line 218
    if-eqz v3, :cond_15

    .line 219
    .line 220
    sget-object v2, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$-1338710573:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 221
    .line 222
    move-object v10, v2

    .line 223
    goto :goto_10

    .line 224
    :cond_15
    move-object v10, v4

    .line 225
    :goto_10
    if-eqz v5, :cond_16

    .line 226
    .line 227
    sget-object v2, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$-938015037:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 228
    .line 229
    move/from16 v23, v11

    .line 230
    .line 231
    move-object v11, v2

    .line 232
    move/from16 v2, v23

    .line 233
    .line 234
    goto :goto_11

    .line 235
    :cond_16
    move v2, v11

    .line 236
    move-object v11, v6

    .line 237
    :goto_11
    if-eqz v7, :cond_17

    .line 238
    .line 239
    sget-object v3, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$462738596:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 240
    .line 241
    move-object v12, v3

    .line 242
    goto :goto_12

    .line 243
    :cond_17
    move-object/from16 v12, p3

    .line 244
    .line 245
    :goto_12
    if-eqz v2, :cond_18

    .line 246
    .line 247
    sget-object v2, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->lambda$571120867:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 248
    .line 249
    move/from16 v23, v13

    .line 250
    .line 251
    move-object v13, v2

    .line 252
    move/from16 v2, v23

    .line 253
    .line 254
    goto :goto_13

    .line 255
    :cond_18
    move v2, v13

    .line 256
    move-object/from16 v13, p4

    .line 257
    .line 258
    :goto_13
    if-eqz v2, :cond_19

    .line 259
    .line 260
    sget-object v2, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;->End:Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 261
    .line 262
    goto :goto_14

    .line 263
    :cond_19
    move-object/from16 v2, p5

    .line 264
    .line 265
    :goto_14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_1c

    .line 270
    .line 271
    if-eq v3, v1, :cond_1d

    .line 272
    .line 273
    const/4 v4, 0x2

    .line 274
    if-eq v3, v4, :cond_1b

    .line 275
    .line 276
    const/4 v1, 0x3

    .line 277
    if-ne v3, v1, :cond_1a

    .line 278
    .line 279
    goto :goto_15

    .line 280
    :cond_1a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_1b
    move v1, v4

    .line 285
    goto :goto_15

    .line 286
    :cond_1c
    move/from16 v1, v16

    .line 287
    .line 288
    :cond_1d
    :goto_15
    const v3, 0xfffe

    .line 289
    .line 290
    .line 291
    and-int v3, v17, v3

    .line 292
    .line 293
    shl-int/lit8 v4, v17, 0x9

    .line 294
    .line 295
    const/high16 v5, 0x70000000

    .line 296
    .line 297
    and-int/2addr v4, v5

    .line 298
    or-int v22, v3, v4

    .line 299
    .line 300
    const-wide/16 v15, 0x0

    .line 301
    .line 302
    const-wide/16 v17, 0x0

    .line 303
    .line 304
    const/16 v19, 0x0

    .line 305
    .line 306
    move-object/from16 v21, v0

    .line 307
    .line 308
    move-object/from16 v20, v14

    .line 309
    .line 310
    move v14, v1

    .line 311
    invoke-static/range {v9 .. v22}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 312
    .line 313
    .line 314
    move-object v6, v2

    .line 315
    move-object v2, v10

    .line 316
    move-object v3, v11

    .line 317
    move-object v4, v12

    .line 318
    move-object v5, v13

    .line 319
    goto :goto_16

    .line 320
    :cond_1e
    move-object/from16 v21, v0

    .line 321
    .line 322
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 323
    .line 324
    .line 325
    move-object/from16 v5, p4

    .line 326
    .line 327
    move-object v2, v4

    .line 328
    move-object v3, v6

    .line 329
    move-object/from16 v4, p3

    .line 330
    .line 331
    move-object/from16 v6, p5

    .line 332
    .line 333
    :goto_16
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    if-eqz v11, :cond_1f

    .line 338
    .line 339
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;

    .line 340
    .line 341
    const/4 v10, 0x0

    .line 342
    move-object/from16 v1, p0

    .line 343
    .line 344
    move-object/from16 v7, p6

    .line 345
    .line 346
    move/from16 v9, p9

    .line 347
    .line 348
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 349
    .line 350
    .line 351
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 352
    .line 353
    :cond_1f
    return-void
.end method
