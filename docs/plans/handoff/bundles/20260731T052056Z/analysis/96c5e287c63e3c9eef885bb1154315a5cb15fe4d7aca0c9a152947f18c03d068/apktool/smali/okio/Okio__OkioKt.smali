.class public abstract synthetic Lokio/Okio__OkioKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static _implementation:Lokio/ByteString$Companion;


# direct methods
.method public static final FeedConfigurationContent(Lorg/wikipedia/settings/homefeed/FeedConfigurationState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 19

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
    move-object/from16 v0, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const v5, -0x4fe78252

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    and-int/lit8 v5, v4, 0x6

    .line 27
    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v5, 0x2

    .line 39
    :goto_0
    or-int/2addr v5, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v4

    .line 42
    :goto_1
    and-int/lit8 v6, v4, 0x30

    .line 43
    .line 44
    if-nez v6, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    const/16 v6, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v6, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v5, v6

    .line 58
    :cond_3
    and-int/lit16 v6, v4, 0x180

    .line 59
    .line 60
    if-nez v6, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    const/16 v6, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v6, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v5, v6

    .line 74
    :cond_5
    and-int/lit16 v6, v5, 0x93

    .line 75
    .line 76
    const/16 v7, 0x92

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x1

    .line 80
    if-eq v6, v7, :cond_6

    .line 81
    .line 82
    move v6, v9

    .line 83
    goto :goto_4

    .line 84
    :cond_6
    move v6, v8

    .line 85
    :goto_4
    and-int/2addr v5, v9

    .line 86
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_7

    .line 91
    .line 92
    new-instance v5, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;

    .line 93
    .line 94
    const/4 v6, 0x6

    .line 95
    invoke-direct {v5, v2, v6, v8}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function0;IB)V

    .line 96
    .line 97
    .line 98
    const v6, -0x37d67796

    .line 99
    .line 100
    .line 101
    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 106
    .line 107
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 112
    .line 113
    iget-wide v10, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 114
    .line 115
    new-instance v6, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 116
    .line 117
    const/16 v7, 0x13

    .line 118
    .line 119
    invoke-direct {v6, v7, v1, v3}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    const v7, 0x3b71da3f

    .line 123
    .line 124
    .line 125
    invoke-static {v7, v6, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    const v17, 0x30000030

    .line 130
    .line 131
    .line 132
    const/16 v18, 0x1bd

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v9, 0x0

    .line 139
    const-wide/16 v12, 0x0

    .line 140
    .line 141
    const/4 v14, 0x0

    .line 142
    move-object/from16 v16, v0

    .line 143
    .line 144
    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 149
    .line 150
    .line 151
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-eqz v6, :cond_8

    .line 156
    .line 157
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 158
    .line 159
    const/16 v5, 0x13

    .line 160
    .line 161
    move/from16 v4, p4

    .line 162
    .line 163
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 164
    .line 165
    .line 166
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    :cond_8
    return-void
.end method

.method public static final FeedConfigurationItemView(Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const v2, -0x6396dd8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x2

    .line 28
    :goto_0
    or-int v2, p3, v2

    .line 29
    .line 30
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v10, 0x20

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    move v3, v10

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v3, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v2, v3

    .line 43
    and-int/lit8 v3, v2, 0x13

    .line 44
    .line 45
    const/16 v4, 0x12

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v11, 0x1

    .line 49
    if-eq v3, v4, :cond_2

    .line 50
    .line 51
    move v3, v11

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v3, v5

    .line 54
    :goto_2
    and-int/2addr v2, v11

    .line 55
    invoke-virtual {v7, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    const/16 v3, 0xf

    .line 63
    .line 64
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 65
    .line 66
    invoke-static {v3, v12, v2, v1, v5}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 71
    .line 72
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 77
    .line 78
    ushr-long v13, v8, v10

    .line 79
    .line 80
    xor-long/2addr v8, v13

    .line 81
    long-to-int v4, v8

    .line 82
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v7, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 96
    .line 97
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 98
    .line 99
    .line 100
    iget-boolean v8, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 101
    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 109
    .line 110
    .line 111
    :goto_3
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 112
    .line 113
    invoke-static {v7, v3, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 117
    .line 118
    invoke-static {v7, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 126
    .line 127
    invoke-static {v7, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 131
    .line 132
    invoke-static {v7, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 133
    .line 134
    .line 135
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 136
    .line 137
    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 138
    .line 139
    .line 140
    const/high16 v2, 0x3f800000    # 1.0f

    .line 141
    .line 142
    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const/high16 v8, 0x41800000    # 16.0f

    .line 147
    .line 148
    invoke-static {v2, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 153
    .line 154
    new-instance v9, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    move/from16 v16, v10

    .line 157
    .line 158
    const/16 v10, 0xa

    .line 159
    .line 160
    invoke-direct {v9, v10}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 161
    .line 162
    .line 163
    const/high16 v10, 0x40800000    # 4.0f

    .line 164
    .line 165
    invoke-direct {v8, v10, v11, v9}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 166
    .line 167
    .line 168
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 169
    .line 170
    const/4 v10, 0x6

    .line 171
    invoke-static {v8, v9, v7, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    iget-wide v10, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 176
    .line 177
    ushr-long v21, v10, v16

    .line 178
    .line 179
    xor-long v10, v10, v21

    .line 180
    .line 181
    long-to-int v9, v10

    .line 182
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-static {v7, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 191
    .line 192
    .line 193
    iget-boolean v11, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 194
    .line 195
    if-eqz v11, :cond_4

    .line 196
    .line 197
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 202
    .line 203
    .line 204
    :goto_4
    invoke-static {v7, v8, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v10, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v9, v7, v4, v7, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    const/high16 v2, 0x41b00000    # 22.0f

    .line 217
    .line 218
    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget v8, v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->icon:I

    .line 223
    .line 224
    invoke-static {v8, v5, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    sget-object v10, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 229
    .line 230
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 235
    .line 236
    iget-wide v8, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 237
    .line 238
    move-object v11, v4

    .line 239
    move-object v4, v2

    .line 240
    move-object v2, v5

    .line 241
    move-wide/from16 v28, v8

    .line 242
    .line 243
    move-object v9, v6

    .line 244
    move-wide/from16 v5, v28

    .line 245
    .line 246
    const/16 v8, 0x1b8

    .line 247
    .line 248
    move-object/from16 v21, v9

    .line 249
    .line 250
    const/4 v9, 0x0

    .line 251
    move-object/from16 v22, v3

    .line 252
    .line 253
    const/4 v3, 0x0

    .line 254
    move-object/from16 v1, v21

    .line 255
    .line 256
    move-object/from16 v21, v10

    .line 257
    .line 258
    move-object v10, v1

    .line 259
    move-object/from16 v1, v22

    .line 260
    .line 261
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 262
    .line 263
    .line 264
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 265
    .line 266
    new-instance v3, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    const/16 v4, 0xa

    .line 269
    .line 270
    invoke-direct {v3, v4}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 271
    .line 272
    .line 273
    const/4 v4, 0x1

    .line 274
    const/high16 v5, 0x40800000    # 4.0f

    .line 275
    .line 276
    invoke-direct {v2, v5, v4, v3}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 277
    .line 278
    .line 279
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 280
    .line 281
    const/4 v5, 0x6

    .line 282
    invoke-static {v2, v3, v7, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    iget-wide v5, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 287
    .line 288
    ushr-long v8, v5, v16

    .line 289
    .line 290
    xor-long/2addr v5, v8

    .line 291
    long-to-int v3, v5

    .line 292
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-static {v7, v12}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 301
    .line 302
    .line 303
    iget-boolean v8, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 304
    .line 305
    if-eqz v8, :cond_5

    .line 306
    .line 307
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 312
    .line 313
    .line 314
    :goto_5
    invoke-static {v7, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v7, v5, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v3, v7, v11, v7, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v7, v6, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 324
    .line 325
    .line 326
    iget v1, v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->title:I

    .line 327
    .line 328
    invoke-static {v1, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 333
    .line 334
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 339
    .line 340
    iget-object v3, v3, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 341
    .line 342
    move-object/from16 v5, v21

    .line 343
    .line 344
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 349
    .line 350
    iget-wide v8, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 351
    .line 352
    const/16 v24, 0x0

    .line 353
    .line 354
    const v25, 0x1fffa

    .line 355
    .line 356
    .line 357
    move-object/from16 v21, v3

    .line 358
    .line 359
    const/4 v3, 0x0

    .line 360
    const/4 v6, 0x0

    .line 361
    move/from16 v19, v4

    .line 362
    .line 363
    move-wide/from16 v28, v8

    .line 364
    .line 365
    move-object v9, v5

    .line 366
    move-wide/from16 v4, v28

    .line 367
    .line 368
    const-wide/16 v7, 0x0

    .line 369
    .line 370
    move-object v10, v9

    .line 371
    const/4 v9, 0x0

    .line 372
    move-object v11, v10

    .line 373
    const/4 v10, 0x0

    .line 374
    move-object v13, v11

    .line 375
    const-wide/16 v11, 0x0

    .line 376
    .line 377
    move-object v14, v13

    .line 378
    const/4 v13, 0x0

    .line 379
    move-object/from16 v16, v14

    .line 380
    .line 381
    const-wide/16 v14, 0x0

    .line 382
    .line 383
    move-object/from16 v17, v16

    .line 384
    .line 385
    const/16 v16, 0x0

    .line 386
    .line 387
    move-object/from16 v18, v17

    .line 388
    .line 389
    const/16 v17, 0x0

    .line 390
    .line 391
    move-object/from16 v20, v18

    .line 392
    .line 393
    const/16 v18, 0x0

    .line 394
    .line 395
    move/from16 v22, v19

    .line 396
    .line 397
    const/16 v19, 0x0

    .line 398
    .line 399
    move-object/from16 v23, v20

    .line 400
    .line 401
    const/16 v20, 0x0

    .line 402
    .line 403
    move-object/from16 v26, v23

    .line 404
    .line 405
    const/16 v23, 0x0

    .line 406
    .line 407
    move-object/from16 v22, p2

    .line 408
    .line 409
    move-object/from16 v27, v26

    .line 410
    .line 411
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 412
    .line 413
    .line 414
    move-object/from16 v7, v22

    .line 415
    .line 416
    iget v2, v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->description:I

    .line 417
    .line 418
    invoke-static {v2, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 427
    .line 428
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 429
    .line 430
    move-object/from16 v5, v27

    .line 431
    .line 432
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 437
    .line 438
    iget-wide v4, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 439
    .line 440
    const/4 v3, 0x0

    .line 441
    const-wide/16 v7, 0x0

    .line 442
    .line 443
    move-object/from16 v21, v1

    .line 444
    .line 445
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 446
    .line 447
    .line 448
    move-object/from16 v7, v22

    .line 449
    .line 450
    const/4 v4, 0x1

    .line 451
    invoke-static {v7, v4, v4, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 452
    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 456
    .line 457
    .line 458
    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    if-eqz v1, :cond_7

    .line 463
    .line 464
    new-instance v2, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 465
    .line 466
    const/16 v3, 0xd

    .line 467
    .line 468
    move-object/from16 v4, p1

    .line 469
    .line 470
    move/from16 v5, p3

    .line 471
    .line 472
    invoke-direct {v2, v0, v4, v5, v3}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 473
    .line 474
    .line 475
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 476
    .line 477
    :cond_7
    return-void
.end method

.method public static final FeedConfigurationScreen(Lorg/wikipedia/settings/homefeed/ModulesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 25

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v0, p6

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const v1, 0x12761fee

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    or-int/lit8 v1, p7, 0x2

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/16 v3, 0x20

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v3, 0x10

    .line 38
    .line 39
    :goto_0
    or-int/2addr v1, v3

    .line 40
    move-object/from16 v3, p2

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const/16 v4, 0x100

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/16 v4, 0x80

    .line 52
    .line 53
    :goto_1
    or-int/2addr v1, v4

    .line 54
    move-object/from16 v4, p3

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    const/16 v6, 0x800

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v6, 0x400

    .line 66
    .line 67
    :goto_2
    or-int/2addr v1, v6

    .line 68
    move-object/from16 v6, p4

    .line 69
    .line 70
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_3

    .line 75
    .line 76
    const/16 v8, 0x4000

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    const/16 v8, 0x2000

    .line 80
    .line 81
    :goto_3
    or-int/2addr v1, v8

    .line 82
    move-object/from16 v8, p5

    .line 83
    .line 84
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_4

    .line 89
    .line 90
    const/high16 v10, 0x20000

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    const/high16 v10, 0x10000

    .line 94
    .line 95
    :goto_4
    or-int/2addr v1, v10

    .line 96
    const v10, 0x12493

    .line 97
    .line 98
    .line 99
    and-int/2addr v10, v1

    .line 100
    const v12, 0x12492

    .line 101
    .line 102
    .line 103
    if-eq v10, v12, :cond_5

    .line 104
    .line 105
    const/4 v10, 0x1

    .line 106
    goto :goto_5

    .line 107
    :cond_5
    const/4 v10, 0x0

    .line 108
    :goto_5
    and-int/lit8 v12, v1, 0x1

    .line 109
    .line 110
    invoke-virtual {v0, v12, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-eqz v10, :cond_14

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 117
    .line 118
    .line 119
    and-int/lit8 v10, p7, 0x1

    .line 120
    .line 121
    const/4 v12, 0x0

    .line 122
    if-eqz v10, :cond_7

    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_6

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 132
    .line 133
    .line 134
    and-int/lit8 v1, v1, -0xf

    .line 135
    .line 136
    move-object/from16 v10, p0

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const/16 v17, 0x1

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_7
    :goto_6
    invoke-static {v0}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/GapComposer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    if-eqz v10, :cond_13

    .line 148
    .line 149
    invoke-static {v10}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    const/16 v16, 0x0

    .line 154
    .line 155
    const-class v13, Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 156
    .line 157
    const/16 v17, 0x1

    .line 158
    .line 159
    sget-object v14, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 160
    .line 161
    invoke-virtual {v14, v13}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    invoke-static {v13, v10, v12, v15, v0}, Lkotlin/UnsignedKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/GapComposer;)Landroidx/lifecycle/ViewModel;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 170
    .line 171
    and-int/lit8 v1, v1, -0xf

    .line 172
    .line 173
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 174
    .line 175
    .line 176
    iget-object v13, v10, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->feedConfigurationState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 177
    .line 178
    sget-object v14, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 179
    .line 180
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    check-cast v14, Landroidx/lifecycle/LifecycleOwner;

    .line 185
    .line 186
    sget-object v20, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 187
    .line 188
    iget-object v15, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 189
    .line 190
    invoke-virtual {v15}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    invoke-interface {v14}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    const/4 v11, 0x4

    .line 199
    new-array v7, v11, [Ljava/lang/Object;

    .line 200
    .line 201
    aput-object v13, v7, v16

    .line 202
    .line 203
    aput-object v14, v7, v17

    .line 204
    .line 205
    const/4 v9, 0x2

    .line 206
    aput-object v20, v7, v9

    .line 207
    .line 208
    const/16 v18, 0x3

    .line 209
    .line 210
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 211
    .line 212
    aput-object v5, v7, v18

    .line 213
    .line 214
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v18

    .line 218
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    or-int v9, v18, v9

    .line 227
    .line 228
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v18

    .line 232
    or-int v9, v9, v18

    .line 233
    .line 234
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v18

    .line 238
    or-int v9, v9, v18

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 245
    .line 246
    if-nez v9, :cond_8

    .line 247
    .line 248
    if-ne v12, v11, :cond_9

    .line 249
    .line 250
    :cond_8
    new-instance v18, Lcoil3/RealImageLoader$execute$result$1;

    .line 251
    .line 252
    const/16 v23, 0x0

    .line 253
    .line 254
    const/16 v24, 0xb

    .line 255
    .line 256
    move-object/from16 v21, v5

    .line 257
    .line 258
    move-object/from16 v22, v13

    .line 259
    .line 260
    move-object/from16 v19, v14

    .line 261
    .line 262
    invoke-direct/range {v18 .. v24}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v12, v18

    .line 266
    .line 267
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_9
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    if-ne v5, v11, :cond_a

    .line 277
    .line 278
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_a
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 286
    .line 287
    const/4 v9, 0x4

    .line 288
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    if-nez v9, :cond_b

    .line 301
    .line 302
    if-ne v13, v11, :cond_c

    .line 303
    .line 304
    :cond_b
    new-instance v13, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;

    .line 305
    .line 306
    const/4 v9, 0x0

    .line 307
    const/4 v14, 0x2

    .line 308
    invoke-direct {v13, v12, v5, v9, v14}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_c
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 315
    .line 316
    invoke-static {v7, v13, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;)V

    .line 317
    .line 318
    .line 319
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    move-object v9, v5

    .line 324
    check-cast v9, Lorg/wikipedia/settings/homefeed/FeedConfigurationState;

    .line 325
    .line 326
    and-int/lit16 v5, v1, 0x380

    .line 327
    .line 328
    const/16 v7, 0x100

    .line 329
    .line 330
    if-ne v5, v7, :cond_d

    .line 331
    .line 332
    move/from16 v5, v17

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_d
    move/from16 v5, v16

    .line 336
    .line 337
    :goto_8
    const v7, 0xe000

    .line 338
    .line 339
    .line 340
    and-int/2addr v7, v1

    .line 341
    const/16 v12, 0x4000

    .line 342
    .line 343
    if-ne v7, v12, :cond_e

    .line 344
    .line 345
    move/from16 v7, v17

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_e
    move/from16 v7, v16

    .line 349
    .line 350
    :goto_9
    or-int/2addr v5, v7

    .line 351
    and-int/lit16 v7, v1, 0x1c00

    .line 352
    .line 353
    const/16 v12, 0x800

    .line 354
    .line 355
    if-ne v7, v12, :cond_f

    .line 356
    .line 357
    move/from16 v7, v17

    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_f
    move/from16 v7, v16

    .line 361
    .line 362
    :goto_a
    or-int/2addr v5, v7

    .line 363
    const/high16 v7, 0x70000

    .line 364
    .line 365
    and-int/2addr v7, v1

    .line 366
    const/high16 v12, 0x20000

    .line 367
    .line 368
    if-ne v7, v12, :cond_10

    .line 369
    .line 370
    move/from16 v13, v17

    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_10
    move/from16 v13, v16

    .line 374
    .line 375
    :goto_b
    or-int/2addr v5, v13

    .line 376
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    if-nez v5, :cond_11

    .line 381
    .line 382
    if-ne v7, v11, :cond_12

    .line 383
    .line 384
    :cond_11
    new-instance v3, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;

    .line 385
    .line 386
    const/16 v8, 0xf

    .line 387
    .line 388
    move-object/from16 v7, p5

    .line 389
    .line 390
    move-object v5, v6

    .line 391
    move-object v6, v4

    .line 392
    move-object/from16 v4, p2

    .line 393
    .line 394
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    move-object v7, v3

    .line 401
    :cond_12
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 402
    .line 403
    and-int/lit8 v1, v1, 0x70

    .line 404
    .line 405
    invoke-static {v9, v2, v7, v0, v1}, Lokio/Okio__OkioKt;->FeedConfigurationContent(Lorg/wikipedia/settings/homefeed/FeedConfigurationState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 406
    .line 407
    .line 408
    move-object v1, v10

    .line 409
    goto :goto_c

    .line 410
    :cond_13
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 411
    .line 412
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :cond_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 417
    .line 418
    .line 419
    move-object/from16 v1, p0

    .line 420
    .line 421
    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    if-eqz v9, :cond_15

    .line 426
    .line 427
    new-instance v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda2;

    .line 428
    .line 429
    const/4 v8, 0x4

    .line 430
    move-object/from16 v3, p2

    .line 431
    .line 432
    move-object/from16 v4, p3

    .line 433
    .line 434
    move-object/from16 v5, p4

    .line 435
    .line 436
    move-object/from16 v6, p5

    .line 437
    .line 438
    move/from16 v7, p7

    .line 439
    .line 440
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 441
    .line 442
    .line 443
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 444
    .line 445
    :cond_15
    return-void
.end method

.method public static final PageOverflowMenu(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;Ljava/util/List;Landroidx/compose/runtime/GapComposer;I)V
    .locals 21

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
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v0, p5

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const v1, -0x6ab3b805

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    or-int/lit8 v1, p6, 0x6

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/16 v7, 0x20

    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    move v6, v7

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v6, 0x10

    .line 33
    .line 34
    :goto_0
    or-int/2addr v1, v6

    .line 35
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    const/16 v6, 0x100

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v6, 0x80

    .line 45
    .line 46
    :goto_1
    or-int/2addr v1, v6

    .line 47
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const/16 v8, 0x800

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    move v6, v8

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v6, 0x400

    .line 58
    .line 59
    :goto_2
    or-int/2addr v1, v6

    .line 60
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    const/16 v6, 0x4000

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v6, 0x2000

    .line 70
    .line 71
    :goto_3
    or-int/2addr v1, v6

    .line 72
    and-int/lit16 v6, v1, 0x2493

    .line 73
    .line 74
    const/16 v9, 0x2492

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v11, 0x1

    .line 78
    if-eq v6, v9, :cond_4

    .line 79
    .line 80
    move v6, v11

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move v6, v10

    .line 83
    :goto_4
    and-int/lit8 v9, v1, 0x1

    .line 84
    .line 85
    invoke-virtual {v0, v9, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_10

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    iget-object v9, v3, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;->menuKey:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    move-object v9, v6

    .line 98
    :goto_5
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    and-int/lit8 v12, v1, 0x70

    .line 103
    .line 104
    if-ne v12, v7, :cond_6

    .line 105
    .line 106
    move v7, v11

    .line 107
    goto :goto_6

    .line 108
    :cond_6
    move v7, v10

    .line 109
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 114
    .line 115
    if-nez v7, :cond_7

    .line 116
    .line 117
    if-ne v12, v13, :cond_8

    .line 118
    .line 119
    :cond_7
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_8
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 129
    .line 130
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    or-int/2addr v14, v15

    .line 143
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    if-nez v14, :cond_9

    .line 148
    .line 149
    if-ne v15, v13, :cond_a

    .line 150
    .line 151
    :cond_9
    new-instance v15, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 152
    .line 153
    invoke-direct {v15, v9, v12, v6}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 160
    .line 161
    invoke-static {v0, v7, v15}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    check-cast v7, Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 182
    .line 183
    .line 184
    move-result v16

    .line 185
    or-int v15, v15, v16

    .line 186
    .line 187
    and-int/lit16 v1, v1, 0x1c00

    .line 188
    .line 189
    if-ne v1, v8, :cond_b

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_b
    move v11, v10

    .line 193
    :goto_7
    or-int v1, v15, v11

    .line 194
    .line 195
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    if-nez v1, :cond_c

    .line 200
    .line 201
    if-ne v8, v13, :cond_d

    .line 202
    .line 203
    :cond_c
    new-instance v8, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 204
    .line 205
    invoke-direct {v8, v9, v4, v12, v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 212
    .line 213
    invoke-static {v7, v14, v8, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 233
    .line 234
    iget-wide v14, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 235
    .line 236
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    if-nez v1, :cond_e

    .line 245
    .line 246
    if-ne v7, v13, :cond_f

    .line 247
    .line 248
    :cond_e
    new-instance v7, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 249
    .line 250
    const/16 v1, 0xc

    .line 251
    .line 252
    invoke-direct {v7, v12, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_f
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 259
    .line 260
    new-instance v1, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;

    .line 261
    .line 262
    invoke-direct {v1, v5, v12, v10}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;I)V

    .line 263
    .line 264
    .line 265
    const v8, -0x7039be0

    .line 266
    .line 267
    .line 268
    invoke-static {v8, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 269
    .line 270
    .line 271
    move-result-object v17

    .line 272
    const/16 v19, 0x180

    .line 273
    .line 274
    const/16 v20, 0x778

    .line 275
    .line 276
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 277
    .line 278
    const-wide/16 v9, 0x0

    .line 279
    .line 280
    const/4 v11, 0x0

    .line 281
    const/4 v12, 0x0

    .line 282
    const/4 v13, 0x0

    .line 283
    const/16 v16, 0x0

    .line 284
    .line 285
    move-object/from16 v18, v0

    .line 286
    .line 287
    invoke-static/range {v6 .. v20}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 288
    .line 289
    .line 290
    move-object v1, v8

    .line 291
    goto :goto_8

    .line 292
    :cond_10
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 293
    .line 294
    .line 295
    move-object/from16 v1, p0

    .line 296
    .line 297
    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    if-eqz v7, :cond_11

    .line 302
    .line 303
    new-instance v0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;

    .line 304
    .line 305
    move/from16 v6, p6

    .line 306
    .line 307
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;Ljava/util/List;I)V

    .line 308
    .line 309
    .line 310
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 311
    .line 312
    :cond_11
    return-void
.end method

.method public static final TopReadItem(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;IZLorg/wikipedia/dataclient/page/PageSummary;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 57

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    move-object/from16 v14, p8

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const v0, -0x6e840310

    .line 28
    .line 29
    .line 30
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x2

    .line 42
    :goto_0
    or-int v0, p9, v0

    .line 43
    .line 44
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/16 v33, 0x20

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    move/from16 v3, v33

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/16 v3, 0x10

    .line 56
    .line 57
    :goto_1
    or-int/2addr v0, v3

    .line 58
    move/from16 v3, p2

    .line 59
    .line 60
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_2

    .line 65
    .line 66
    const/16 v9, 0x100

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/16 v9, 0x80

    .line 70
    .line 71
    :goto_2
    or-int/2addr v0, v9

    .line 72
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_3

    .line 77
    .line 78
    const/16 v9, 0x800

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const/16 v9, 0x400

    .line 82
    .line 83
    :goto_3
    or-int/2addr v0, v9

    .line 84
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_4

    .line 89
    .line 90
    const/16 v9, 0x4000

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    const/16 v9, 0x2000

    .line 94
    .line 95
    :goto_4
    or-int/2addr v0, v9

    .line 96
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/high16 v10, 0x100000

    .line 101
    .line 102
    if-eqz v9, :cond_5

    .line 103
    .line 104
    move v9, v10

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    const/high16 v9, 0x80000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v0, v9

    .line 109
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_6

    .line 114
    .line 115
    const/high16 v9, 0x800000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_6
    const/high16 v9, 0x400000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v0, v9

    .line 121
    const v9, 0x492493

    .line 122
    .line 123
    .line 124
    and-int/2addr v9, v0

    .line 125
    const v12, 0x492492

    .line 126
    .line 127
    .line 128
    const/4 v15, 0x0

    .line 129
    if-eq v9, v12, :cond_7

    .line 130
    .line 131
    const/4 v9, 0x1

    .line 132
    goto :goto_7

    .line 133
    :cond_7
    move v9, v15

    .line 134
    :goto_7
    and-int/lit8 v12, v0, 0x1

    .line 135
    .line 136
    invoke-virtual {v14, v12, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_18

    .line 141
    .line 142
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 143
    .line 144
    const/high16 v12, 0x3f800000    # 1.0f

    .line 145
    .line 146
    const/16 v16, 0x10

    .line 147
    .line 148
    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    const/high16 v17, 0x380000

    .line 153
    .line 154
    and-int v11, v0, v17

    .line 155
    .line 156
    if-ne v11, v10, :cond_8

    .line 157
    .line 158
    const/4 v10, 0x1

    .line 159
    goto :goto_8

    .line 160
    :cond_8
    move v10, v15

    .line 161
    :goto_8
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    or-int/2addr v10, v11

    .line 166
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    move/from16 v17, v10

    .line 171
    .line 172
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 173
    .line 174
    if-nez v17, :cond_9

    .line 175
    .line 176
    if-ne v11, v10, :cond_a

    .line 177
    .line 178
    :cond_9
    new-instance v11, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;

    .line 179
    .line 180
    invoke-direct {v11, v7, v5, v15}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/page/PageSummary;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_a
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 187
    .line 188
    const/16 v13, 0xf

    .line 189
    .line 190
    const/4 v12, 0x0

    .line 191
    invoke-static {v13, v6, v12, v11, v15}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    sget-object v11, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 196
    .line 197
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 198
    .line 199
    invoke-static {v11, v12, v14, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    iget-wide v3, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 204
    .line 205
    ushr-long v20, v3, v33

    .line 206
    .line 207
    xor-long v3, v3, v20

    .line 208
    .line 209
    long-to-int v3, v3

    .line 210
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-static {v14, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 219
    .line 220
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    move-object/from16 v20, v10

    .line 224
    .line 225
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 226
    .line 227
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 228
    .line 229
    .line 230
    iget-boolean v15, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 231
    .line 232
    if-eqz v15, :cond_b

    .line 233
    .line 234
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 235
    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 239
    .line 240
    .line 241
    :goto_9
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 242
    .line 243
    invoke-static {v14, v13, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 247
    .line 248
    invoke-static {v14, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 256
    .line 257
    invoke-static {v14, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 258
    .line 259
    .line 260
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 261
    .line 262
    invoke-static {v14, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 263
    .line 264
    .line 265
    move/from16 v34, v0

    .line 266
    .line 267
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 268
    .line 269
    invoke-static {v14, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 270
    .line 271
    .line 272
    const/high16 v6, 0x3f800000    # 1.0f

    .line 273
    .line 274
    invoke-static {v9, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    iget-wide v1, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 287
    .line 288
    sget-object v6, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 289
    .line 290
    invoke-static {v7, v1, v2, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    const/4 v2, 0x0

    .line 295
    invoke-static {v1, v14, v2}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 296
    .line 297
    .line 298
    const/high16 v1, 0x40800000    # 4.0f

    .line 299
    .line 300
    invoke-static {v9, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-static {v14, v6}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 305
    .line 306
    .line 307
    const/high16 v6, 0x3f800000    # 1.0f

    .line 308
    .line 309
    invoke-static {v9, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    const/high16 v6, 0x41400000    # 12.0f

    .line 314
    .line 315
    move/from16 v35, v1

    .line 316
    .line 317
    const/4 v1, 0x0

    .line 318
    const/4 v2, 0x1

    .line 319
    invoke-static {v7, v1, v6, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 324
    .line 325
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 326
    .line 327
    const/4 v7, 0x0

    .line 328
    invoke-static {v2, v6, v14, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    move-object v7, v6

    .line 333
    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 334
    .line 335
    ushr-long v22, v5, v33

    .line 336
    .line 337
    xor-long v5, v5, v22

    .line 338
    .line 339
    long-to-int v5, v5

    .line 340
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 349
    .line 350
    .line 351
    move-object/from16 v22, v7

    .line 352
    .line 353
    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 354
    .line 355
    if-eqz v7, :cond_c

    .line 356
    .line 357
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 358
    .line 359
    .line 360
    goto :goto_a

    .line 361
    :cond_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 362
    .line 363
    .line 364
    :goto_a
    invoke-static {v14, v8, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v14, v6, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v5, v14, v4, v14, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 371
    .line 372
    .line 373
    const/4 v5, 0x1

    .line 374
    const/high16 v6, 0x3f800000    # 1.0f

    .line 375
    .line 376
    invoke-static {v14, v1, v0, v6, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const/4 v7, 0x0

    .line 381
    invoke-static {v11, v12, v14, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iget-wide v7, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 386
    .line 387
    ushr-long v11, v7, v33

    .line 388
    .line 389
    xor-long/2addr v7, v11

    .line 390
    long-to-int v7, v7

    .line 391
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 400
    .line 401
    .line 402
    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 403
    .line 404
    if-eqz v11, :cond_d

    .line 405
    .line 406
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 407
    .line 408
    .line 409
    goto :goto_b

    .line 410
    :cond_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 411
    .line 412
    .line 413
    :goto_b
    invoke-static {v14, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v14, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 417
    .line 418
    .line 419
    invoke-static {v7, v14, v4, v14, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 420
    .line 421
    .line 422
    invoke-static {v14, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 423
    .line 424
    .line 425
    move-object/from16 v7, v22

    .line 426
    .line 427
    const/4 v1, 0x0

    .line 428
    invoke-static {v2, v7, v14, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    iget-wide v7, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 433
    .line 434
    ushr-long v11, v7, v33

    .line 435
    .line 436
    xor-long/2addr v7, v11

    .line 437
    long-to-int v1, v7

    .line 438
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-static {v14, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 443
    .line 444
    .line 445
    move-result-object v8

    .line 446
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 447
    .line 448
    .line 449
    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 450
    .line 451
    if-eqz v11, :cond_e

    .line 452
    .line 453
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 454
    .line 455
    .line 456
    goto :goto_c

    .line 457
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 458
    .line 459
    .line 460
    :goto_c
    invoke-static {v14, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    .line 462
    .line 463
    invoke-static {v14, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    .line 465
    .line 466
    invoke-static {v1, v14, v4, v14, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 467
    .line 468
    .line 469
    invoke-static {v14, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 470
    .line 471
    .line 472
    const/high16 v1, 0x41c00000    # 24.0f

    .line 473
    .line 474
    invoke-static {v9, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    iget-wide v7, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 483
    .line 484
    invoke-static/range {v35 .. v35}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 485
    .line 486
    .line 487
    move-result-object v11

    .line 488
    invoke-static {v6, v7, v8, v11}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 493
    .line 494
    const/4 v8, 0x0

    .line 495
    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    iget-wide v11, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 500
    .line 501
    ushr-long v21, v11, v33

    .line 502
    .line 503
    xor-long v11, v11, v21

    .line 504
    .line 505
    long-to-int v11, v11

    .line 506
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 507
    .line 508
    .line 509
    move-result-object v12

    .line 510
    invoke-static {v14, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 515
    .line 516
    .line 517
    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 518
    .line 519
    if-eqz v5, :cond_f

    .line 520
    .line 521
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 522
    .line 523
    .line 524
    goto :goto_d

    .line 525
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 526
    .line 527
    .line 528
    :goto_d
    invoke-static {v14, v7, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 529
    .line 530
    .line 531
    invoke-static {v14, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 532
    .line 533
    .line 534
    invoke-static {v11, v14, v4, v14, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 535
    .line 536
    .line 537
    invoke-static {v14, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 538
    .line 539
    .line 540
    move-object v5, v9

    .line 541
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 546
    .line 547
    .line 548
    move-result-wide v6

    .line 549
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 554
    .line 555
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 556
    .line 557
    const/16 v31, 0x0

    .line 558
    .line 559
    const v32, 0x3ff2a

    .line 560
    .line 561
    .line 562
    move-object/from16 v19, v10

    .line 563
    .line 564
    const/4 v10, 0x0

    .line 565
    move-object/from16 v21, v13

    .line 566
    .line 567
    const/4 v13, 0x0

    .line 568
    const/16 v22, 0x1

    .line 569
    .line 570
    sget-object v17, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 571
    .line 572
    move-object/from16 v23, v19

    .line 573
    .line 574
    const/high16 v24, 0x800000

    .line 575
    .line 576
    const-wide/16 v18, 0x0

    .line 577
    .line 578
    move-object/from16 v25, v20

    .line 579
    .line 580
    const/16 v20, 0x0

    .line 581
    .line 582
    move-object/from16 v26, v21

    .line 583
    .line 584
    move/from16 v27, v22

    .line 585
    .line 586
    const-wide/16 v21, 0x0

    .line 587
    .line 588
    move-object/from16 v28, v23

    .line 589
    .line 590
    const/16 v23, 0x0

    .line 591
    .line 592
    move/from16 v29, v24

    .line 593
    .line 594
    const/16 v24, 0x0

    .line 595
    .line 596
    move-object/from16 v30, v25

    .line 597
    .line 598
    const/16 v25, 0x0

    .line 599
    .line 600
    move-object/from16 v36, v26

    .line 601
    .line 602
    const/16 v26, 0x0

    .line 603
    .line 604
    move/from16 v37, v27

    .line 605
    .line 606
    const/16 v27, 0x0

    .line 607
    .line 608
    move-object/from16 v38, v28

    .line 609
    .line 610
    const/16 v28, 0x0

    .line 611
    .line 612
    move-object/from16 v39, v30

    .line 613
    .line 614
    const v30, 0x186000

    .line 615
    .line 616
    .line 617
    move-object v1, v5

    .line 618
    move-object/from16 v29, v14

    .line 619
    .line 620
    move-object/from16 v8, v36

    .line 621
    .line 622
    move/from16 v5, v37

    .line 623
    .line 624
    move-object/from16 v40, v39

    .line 625
    .line 626
    move-wide/from16 v55, v6

    .line 627
    .line 628
    move-object v7, v15

    .line 629
    move-wide/from16 v14, v55

    .line 630
    .line 631
    move-object/from16 v6, v38

    .line 632
    .line 633
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 634
    .line 635
    .line 636
    move-object/from16 v25, v16

    .line 637
    .line 638
    move-object/from16 v14, v29

    .line 639
    .line 640
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 641
    .line 642
    .line 643
    const/high16 v9, 0x41800000    # 16.0f

    .line 644
    .line 645
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 646
    .line 647
    .line 648
    move-result-object v10

    .line 649
    invoke-static {v14, v10}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 650
    .line 651
    .line 652
    move v10, v9

    .line 653
    invoke-virtual/range {p4 .. p4}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v9

    .line 657
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 658
    .line 659
    .line 660
    move-result-object v11

    .line 661
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 662
    .line 663
    sget-object v13, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 664
    .line 665
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v15

    .line 669
    check-cast v15, Landroidx/compose/material3/Typography;

    .line 670
    .line 671
    iget-object v15, v15, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 672
    .line 673
    sget-object v46, Landroidx/compose/ui/text/font/FontWeight;->SemiBold:Landroidx/compose/ui/text/font/FontWeight;

    .line 674
    .line 675
    const/16 v52, 0x0

    .line 676
    .line 677
    const v53, 0xfffffb

    .line 678
    .line 679
    .line 680
    const-wide/16 v42, 0x0

    .line 681
    .line 682
    const-wide/16 v44, 0x0

    .line 683
    .line 684
    const/16 v47, 0x0

    .line 685
    .line 686
    const-wide/16 v48, 0x0

    .line 687
    .line 688
    const-wide/16 v50, 0x0

    .line 689
    .line 690
    move-object/from16 v41, v15

    .line 691
    .line 692
    invoke-static/range {v41 .. v53}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 693
    .line 694
    .line 695
    move-result-object v15

    .line 696
    const/16 v24, 0xfe6

    .line 697
    .line 698
    move/from16 v16, v10

    .line 699
    .line 700
    const/4 v10, 0x0

    .line 701
    move-wide/from16 v55, v11

    .line 702
    .line 703
    move-object v12, v13

    .line 704
    move-wide/from16 v13, v55

    .line 705
    .line 706
    const/4 v11, 0x0

    .line 707
    move-object/from16 v17, v12

    .line 708
    .line 709
    move-object v12, v15

    .line 710
    const/4 v15, 0x0

    .line 711
    move/from16 v18, v16

    .line 712
    .line 713
    const/16 v16, 0x0

    .line 714
    .line 715
    move-object/from16 v19, v17

    .line 716
    .line 717
    move/from16 v20, v18

    .line 718
    .line 719
    const-wide/16 v17, 0x0

    .line 720
    .line 721
    move-object/from16 v21, v19

    .line 722
    .line 723
    const/16 v19, 0x0

    .line 724
    .line 725
    move/from16 v22, v20

    .line 726
    .line 727
    const/16 v20, 0x0

    .line 728
    .line 729
    move-object/from16 v26, v21

    .line 730
    .line 731
    const/16 v21, 0x0

    .line 732
    .line 733
    move-object/from16 v22, p8

    .line 734
    .line 735
    move-object/from16 v54, v26

    .line 736
    .line 737
    invoke-static/range {v9 .. v24}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 738
    .line 739
    .line 740
    move-object/from16 v14, v22

    .line 741
    .line 742
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 743
    .line 744
    .line 745
    const/high16 v9, 0x41000000    # 8.0f

    .line 746
    .line 747
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 748
    .line 749
    .line 750
    move-result-object v10

    .line 751
    invoke-static {v14, v10}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 752
    .line 753
    .line 754
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 755
    .line 756
    const/16 v11, 0x30

    .line 757
    .line 758
    invoke-static {v2, v10, v14, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 763
    .line 764
    ushr-long v12, v10, v33

    .line 765
    .line 766
    xor-long/2addr v10, v12

    .line 767
    long-to-int v10, v10

    .line 768
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 769
    .line 770
    .line 771
    move-result-object v11

    .line 772
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 773
    .line 774
    .line 775
    move-result-object v12

    .line 776
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 777
    .line 778
    .line 779
    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 780
    .line 781
    if-eqz v13, :cond_10

    .line 782
    .line 783
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 784
    .line 785
    .line 786
    goto :goto_e

    .line 787
    :cond_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 788
    .line 789
    .line 790
    :goto_e
    invoke-static {v14, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 791
    .line 792
    .line 793
    invoke-static {v14, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 794
    .line 795
    .line 796
    invoke-static {v10, v14, v4, v14, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 797
    .line 798
    .line 799
    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 800
    .line 801
    .line 802
    if-eqz p3, :cond_11

    .line 803
    .line 804
    const v2, 0x7f080204

    .line 805
    .line 806
    .line 807
    goto :goto_f

    .line 808
    :cond_11
    const v2, 0x7f080203

    .line 809
    .line 810
    .line 811
    :goto_f
    if-eqz p3, :cond_12

    .line 812
    .line 813
    const v10, -0x52915e2f

    .line 814
    .line 815
    .line 816
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 817
    .line 818
    .line 819
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 820
    .line 821
    .line 822
    move-result-object v10

    .line 823
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 824
    .line 825
    const/4 v12, 0x0

    .line 826
    :goto_10
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 827
    .line 828
    .line 829
    const/high16 v13, 0x41c00000    # 24.0f

    .line 830
    .line 831
    goto :goto_11

    .line 832
    :cond_12
    const/4 v12, 0x0

    .line 833
    const v10, -0x5291592b

    .line 834
    .line 835
    .line 836
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 837
    .line 838
    .line 839
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 840
    .line 841
    .line 842
    move-result-object v10

    .line 843
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 844
    .line 845
    goto :goto_10

    .line 846
    :goto_11
    invoke-static {v1, v13}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 847
    .line 848
    .line 849
    move-result-object v13

    .line 850
    invoke-static {v2, v12, v14}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    const/16 v15, 0x1b8

    .line 855
    .line 856
    const/16 v16, 0x0

    .line 857
    .line 858
    move-wide/from16 v55, v10

    .line 859
    .line 860
    move-object v11, v13

    .line 861
    move-wide/from16 v12, v55

    .line 862
    .line 863
    const/4 v10, 0x0

    .line 864
    move/from16 v55, v9

    .line 865
    .line 866
    move-object v9, v2

    .line 867
    move/from16 v2, v55

    .line 868
    .line 869
    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 870
    .line 871
    .line 872
    const/high16 v10, 0x41800000    # 16.0f

    .line 873
    .line 874
    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 875
    .line 876
    .line 877
    move-result-object v9

    .line 878
    invoke-static {v14, v9}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 879
    .line 880
    .line 881
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 882
    .line 883
    move-object/from16 v9, p4

    .line 884
    .line 885
    iget-wide v10, v9, Lorg/wikipedia/dataclient/page/PageSummary;->views:J

    .line 886
    .line 887
    move-object/from16 v12, p0

    .line 888
    .line 889
    invoke-static {v12, v10, v11}, Lorg/wikipedia/util/StringUtil;->getPageViewText(Landroid/content/Context;J)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v10

    .line 893
    move-object/from16 v11, v54

    .line 894
    .line 895
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v13

    .line 899
    check-cast v13, Landroidx/compose/material3/Typography;

    .line 900
    .line 901
    iget-object v13, v13, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 902
    .line 903
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 904
    .line 905
    .line 906
    move-result-object v15

    .line 907
    move/from16 v38, v2

    .line 908
    .line 909
    move-object/from16 v36, v3

    .line 910
    .line 911
    iget-wide v2, v15, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 912
    .line 913
    const/16 v31, 0x0

    .line 914
    .line 915
    const v32, 0x1ffba

    .line 916
    .line 917
    .line 918
    move-object v9, v10

    .line 919
    const/4 v10, 0x0

    .line 920
    move-object/from16 v28, v13

    .line 921
    .line 922
    const/4 v13, 0x0

    .line 923
    const-wide/16 v14, 0x0

    .line 924
    .line 925
    const/16 v17, 0x0

    .line 926
    .line 927
    const-wide/16 v18, 0x0

    .line 928
    .line 929
    const/16 v20, 0x0

    .line 930
    .line 931
    const-wide/16 v21, 0x0

    .line 932
    .line 933
    const/16 v23, 0x0

    .line 934
    .line 935
    const/16 v24, 0x0

    .line 936
    .line 937
    move-object/from16 v16, v25

    .line 938
    .line 939
    const/16 v25, 0x0

    .line 940
    .line 941
    const/16 v26, 0x0

    .line 942
    .line 943
    const/16 v27, 0x0

    .line 944
    .line 945
    const/high16 v30, 0x180000

    .line 946
    .line 947
    move-object/from16 v29, p8

    .line 948
    .line 949
    move-object v5, v11

    .line 950
    move-wide/from16 v55, v2

    .line 951
    .line 952
    move-object/from16 v3, p4

    .line 953
    .line 954
    move-object v2, v12

    .line 955
    move-wide/from16 v11, v55

    .line 956
    .line 957
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 958
    .line 959
    .line 960
    move-object/from16 v14, v29

    .line 961
    .line 962
    move/from16 v9, v35

    .line 963
    .line 964
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 965
    .line 966
    .line 967
    move-result-object v9

    .line 968
    invoke-static {v14, v9}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 969
    .line 970
    .line 971
    move-object/from16 v9, p1

    .line 972
    .line 973
    iget-object v10, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 974
    .line 975
    const v11, 0x7f1209f7

    .line 976
    .line 977
    .line 978
    const/4 v12, 0x0

    .line 979
    new-array v13, v12, [Ljava/lang/Object;

    .line 980
    .line 981
    invoke-static {v2, v10, v11, v13}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v10

    .line 985
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v5

    .line 989
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 990
    .line 991
    iget-object v5, v5, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 992
    .line 993
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 994
    .line 995
    invoke-static {v14}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 996
    .line 997
    .line 998
    move-result-object v11

    .line 999
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1000
    .line 1001
    move-object v9, v10

    .line 1002
    const/4 v10, 0x0

    .line 1003
    const/4 v13, 0x0

    .line 1004
    const-wide/16 v14, 0x0

    .line 1005
    .line 1006
    move-object/from16 v28, v5

    .line 1007
    .line 1008
    move-object/from16 v5, p1

    .line 1009
    .line 1010
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1011
    .line 1012
    .line 1013
    move-object/from16 v14, v29

    .line 1014
    .line 1015
    const/4 v9, 0x1

    .line 1016
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v9

    .line 1026
    if-nez v9, :cond_13

    .line 1027
    .line 1028
    const v9, 0x117c9daa

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1032
    .line 1033
    .line 1034
    const/4 v12, 0x0

    .line 1035
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_12

    .line 1039
    :cond_13
    const/4 v12, 0x0

    .line 1040
    const v9, 0x117c9dab

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v9

    .line 1050
    const/high16 v10, 0x42600000    # 56.0f

    .line 1051
    .line 1052
    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v10

    .line 1056
    invoke-static/range {v38 .. v38}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v11

    .line 1060
    invoke-static {v10, v11}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v10

    .line 1064
    invoke-static {v9, v10, v14}, Lcoil3/compose/AsyncImageKt;->AsyncImage-10Xjiaw(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1068
    .line 1069
    .line 1070
    :goto_12
    const/high16 v9, 0x42400000    # 48.0f

    .line 1071
    .line 1072
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1077
    .line 1078
    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v9

    .line 1082
    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1083
    .line 1084
    ushr-long v15, v10, v33

    .line 1085
    .line 1086
    xor-long/2addr v10, v15

    .line 1087
    long-to-int v10, v10

    .line 1088
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v11

    .line 1092
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1097
    .line 1098
    .line 1099
    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1100
    .line 1101
    if-eqz v13, :cond_14

    .line 1102
    .line 1103
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_13

    .line 1107
    :cond_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1108
    .line 1109
    .line 1110
    :goto_13
    invoke-static {v14, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v14, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1114
    .line 1115
    .line 1116
    move-object/from16 v6, v36

    .line 1117
    .line 1118
    invoke-static {v10, v14, v4, v14, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-static {v14, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1122
    .line 1123
    .line 1124
    const/high16 v0, 0x1c00000

    .line 1125
    .line 1126
    and-int v0, v34, v0

    .line 1127
    .line 1128
    const/high16 v1, 0x800000

    .line 1129
    .line 1130
    if-ne v0, v1, :cond_15

    .line 1131
    .line 1132
    const/4 v13, 0x1

    .line 1133
    goto :goto_14

    .line 1134
    :cond_15
    move v13, v12

    .line 1135
    :goto_14
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v0

    .line 1139
    or-int/2addr v0, v13

    .line 1140
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    const/4 v4, 0x6

    .line 1145
    if-nez v0, :cond_17

    .line 1146
    .line 1147
    move-object/from16 v0, v40

    .line 1148
    .line 1149
    if-ne v1, v0, :cond_16

    .line 1150
    .line 1151
    goto :goto_15

    .line 1152
    :cond_16
    move-object/from16 v8, p7

    .line 1153
    .line 1154
    goto :goto_16

    .line 1155
    :cond_17
    :goto_15
    new-instance v1, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;

    .line 1156
    .line 1157
    move-object/from16 v8, p7

    .line 1158
    .line 1159
    invoke-direct {v1, v8, v3, v4}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/page/PageSummary;I)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    :goto_16
    move-object v9, v1

    .line 1166
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1167
    .line 1168
    new-instance v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 1169
    .line 1170
    const/16 v1, 0xc

    .line 1171
    .line 1172
    invoke-direct {v0, v2, v5, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 1173
    .line 1174
    .line 1175
    const v1, 0x27439532

    .line 1176
    .line 1177
    .line 1178
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    const/high16 v16, 0x180000

    .line 1183
    .line 1184
    const/16 v17, 0x3e

    .line 1185
    .line 1186
    const/4 v10, 0x0

    .line 1187
    const/4 v11, 0x0

    .line 1188
    const/4 v12, 0x0

    .line 1189
    const/4 v13, 0x0

    .line 1190
    move-object v15, v14

    .line 1191
    move-object v14, v0

    .line 1192
    invoke-static/range {v9 .. v17}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 1193
    .line 1194
    .line 1195
    move-object v14, v15

    .line 1196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    move-object/from16 v6, p5

    .line 1201
    .line 1202
    invoke-virtual {v6, v14, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    const/4 v9, 0x1

    .line 1206
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1213
    .line 1214
    .line 1215
    goto :goto_17

    .line 1216
    :cond_18
    move-object/from16 v6, p5

    .line 1217
    .line 1218
    move-object v3, v5

    .line 1219
    move-object v5, v2

    .line 1220
    move-object v2, v1

    .line 1221
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1222
    .line 1223
    .line 1224
    :goto_17
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v10

    .line 1228
    if-eqz v10, :cond_19

    .line 1229
    .line 1230
    new-instance v0, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda6;

    .line 1231
    .line 1232
    move/from16 v4, p3

    .line 1233
    .line 1234
    move-object/from16 v7, p6

    .line 1235
    .line 1236
    move/from16 v9, p9

    .line 1237
    .line 1238
    move-object v1, v2

    .line 1239
    move-object v2, v5

    .line 1240
    move-object v5, v3

    .line 1241
    move/from16 v3, p2

    .line 1242
    .line 1243
    invoke-direct/range {v0 .. v9}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;IZLorg/wikipedia/dataclient/page/PageSummary;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 1244
    .line 1245
    .line 1246
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1247
    .line 1248
    :cond_19
    return-void
.end method

.method public static final TopReadModule(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/topread/TopRead;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 15

    .line 1
    move-object/from16 v11, p9

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const v0, -0x69491e1f

    .line 22
    .line 23
    .line 24
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int v0, p10, v0

    .line 37
    .line 38
    move-object/from16 v3, p1

    .line 39
    .line 40
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/16 v1, 0x20

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v1, 0x10

    .line 50
    .line 51
    :goto_1
    or-int/2addr v0, v1

    .line 52
    move-object/from16 v9, p3

    .line 53
    .line 54
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const/16 v1, 0x800

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/16 v1, 0x400

    .line 64
    .line 65
    :goto_2
    or-int/2addr v0, v1

    .line 66
    move-object/from16 v10, p4

    .line 67
    .line 68
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const/16 v1, 0x4000

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    const/16 v1, 0x2000

    .line 78
    .line 79
    :goto_3
    or-int/2addr v0, v1

    .line 80
    move-object/from16 v6, p5

    .line 81
    .line 82
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    const/high16 v1, 0x20000

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    const/high16 v1, 0x10000

    .line 92
    .line 93
    :goto_4
    or-int/2addr v0, v1

    .line 94
    move-object/from16 v7, p6

    .line 95
    .line 96
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    const/high16 v1, 0x100000

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    const/high16 v1, 0x80000

    .line 106
    .line 107
    :goto_5
    or-int/2addr v0, v1

    .line 108
    move-object/from16 v2, p7

    .line 109
    .line 110
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_6

    .line 115
    .line 116
    const/high16 v1, 0x800000

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_6
    const/high16 v1, 0x400000

    .line 120
    .line 121
    :goto_6
    or-int/2addr v0, v1

    .line 122
    move-object/from16 v12, p8

    .line 123
    .line 124
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    const/high16 v1, 0x4000000

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_7
    const/high16 v1, 0x2000000

    .line 134
    .line 135
    :goto_7
    or-int/2addr v0, v1

    .line 136
    const v1, 0x2492493

    .line 137
    .line 138
    .line 139
    and-int/2addr v1, v0

    .line 140
    const v4, 0x2492492

    .line 141
    .line 142
    .line 143
    if-eq v1, v4, :cond_8

    .line 144
    .line 145
    const/4 v1, 0x1

    .line 146
    goto :goto_8

    .line 147
    :cond_8
    const/4 v1, 0x0

    .line 148
    :goto_8
    and-int/lit8 v4, v0, 0x1

    .line 149
    .line 150
    invoke-virtual {v11, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_9

    .line 155
    .line 156
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 157
    .line 158
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object v4, v1

    .line 163
    check-cast v4, Landroid/content/Context;

    .line 164
    .line 165
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    .line 167
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 172
    .line 173
    iget-wide v13, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 174
    .line 175
    new-instance v1, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    move-object v5, p0

    .line 178
    move-object/from16 v8, p2

    .line 179
    .line 180
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lorg/wikipedia/feed/topread/TopRead;Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 181
    .line 182
    .line 183
    const v2, 0x64d316f

    .line 184
    .line 185
    .line 186
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    shl-int/lit8 v2, v0, 0x3

    .line 191
    .line 192
    and-int/lit8 v2, v2, 0x70

    .line 193
    .line 194
    const/high16 v3, 0x30000000

    .line 195
    .line 196
    or-int/2addr v2, v3

    .line 197
    shl-int/lit8 v3, v0, 0x9

    .line 198
    .line 199
    const/high16 v4, 0x380000

    .line 200
    .line 201
    and-int/2addr v4, v3

    .line 202
    or-int/2addr v2, v4

    .line 203
    const/high16 v4, 0x1c00000

    .line 204
    .line 205
    and-int/2addr v3, v4

    .line 206
    or-int/2addr v2, v3

    .line 207
    const/high16 v3, 0xe000000

    .line 208
    .line 209
    and-int/2addr v0, v3

    .line 210
    or-int/2addr v0, v2

    .line 211
    move-wide v5, v13

    .line 212
    const/16 v13, 0x11

    .line 213
    .line 214
    move v12, v0

    .line 215
    const/4 v0, 0x0

    .line 216
    const v2, 0x7f1209f8

    .line 217
    .line 218
    .line 219
    const v3, 0x7f1209f4

    .line 220
    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    move-object v7, v9

    .line 224
    move-object v8, v10

    .line 225
    move-object/from16 v9, p8

    .line 226
    .line 227
    move-object v10, v1

    .line 228
    move-object v1, p0

    .line 229
    invoke-static/range {v0 .. v13}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityModuleContainer-Yod850M(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;IILjava/lang/Integer;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 230
    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_9
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 234
    .line 235
    .line 236
    :goto_9
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;

    .line 243
    .line 244
    const/4 v12, 0x3

    .line 245
    move-object v2, p0

    .line 246
    move-object/from16 v3, p1

    .line 247
    .line 248
    move-object/from16 v4, p2

    .line 249
    .line 250
    move-object/from16 v5, p3

    .line 251
    .line 252
    move-object/from16 v6, p4

    .line 253
    .line 254
    move-object/from16 v7, p5

    .line 255
    .line 256
    move-object/from16 v8, p6

    .line 257
    .line 258
    move-object/from16 v9, p7

    .line 259
    .line 260
    move-object/from16 v10, p8

    .line 261
    .line 262
    move/from16 v11, p10

    .line 263
    .line 264
    invoke-direct/range {v1 .. v12}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/Function;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 265
    .line 266
    .line 267
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 268
    .line 269
    :cond_a
    return-void
.end method

.method public static bbox(Lorg/maplibre/geojson/Geometry;)[D
    .locals 8

    .line 1
    instance-of v0, p0, Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/maplibre/geojson/Point;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lokio/Okio__OkioKt;->bboxCalculator(Ljava/util/ArrayList;)[D

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    instance-of v0, p0, Lorg/maplibre/geojson/MultiPoint;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p0, Lorg/maplibre/geojson/MultiPoint;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPoint;->coordinates()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lokio/Okio__OkioKt;->bboxCalculator(Ljava/util/ArrayList;)[D

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    instance-of v0, p0, Lorg/maplibre/geojson/LineString;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    check-cast p0, Lorg/maplibre/geojson/LineString;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lokio/Okio__OkioKt;->bboxCalculator(Ljava/util/ArrayList;)[D

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    instance-of v0, p0, Lorg/maplibre/geojson/MultiLineString;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    check-cast p0, Lorg/maplibre/geojson/MultiLineString;

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiLineString;->coordinates()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-ge v1, v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiLineString;->coordinates()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/util/Collection;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-static {v0}, Lokio/Okio__OkioKt;->bboxCalculator(Ljava/util/ArrayList;)[D

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_4
    instance-of v0, p0, Lorg/maplibre/geojson/Polygon;

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    check-cast p0, Lorg/maplibre/geojson/Polygon;

    .line 114
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    move v2, v1

    .line 121
    :goto_1
    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-ge v2, v3, :cond_6

    .line 130
    .line 131
    move v3, v1

    .line 132
    :goto_2
    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-ge v3, v4, :cond_5

    .line 147
    .line 148
    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    add-int/lit8 v3, v3, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    invoke-static {v0}, Lokio/Okio__OkioKt;->bboxCalculator(Ljava/util/ArrayList;)[D

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :cond_7
    instance-of v0, p0, Lorg/maplibre/geojson/MultiPolygon;

    .line 177
    .line 178
    if-eqz v0, :cond_b

    .line 179
    .line 180
    check-cast p0, Lorg/maplibre/geojson/MultiPolygon;

    .line 181
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    move v2, v1

    .line 188
    :goto_3
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-ge v2, v3, :cond_a

    .line 197
    .line 198
    move v3, v1

    .line 199
    :goto_4
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-ge v3, v4, :cond_9

    .line 214
    .line 215
    move v4, v1

    .line 216
    :goto_5
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    check-cast v5, Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    check-cast v5, Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-ge v4, v5, :cond_8

    .line 237
    .line 238
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    check-cast v5, Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    check-cast v5, Ljava/util/List;

    .line 253
    .line 254
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    add-int/lit8 v4, v4, 0x1

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_a
    invoke-static {v0}, Lokio/Okio__OkioKt;->bboxCalculator(Ljava/util/ArrayList;)[D

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :cond_b
    instance-of v0, p0, Lorg/maplibre/geojson/GeometryCollection;

    .line 276
    .line 277
    if-eqz v0, :cond_d

    .line 278
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .line 283
    .line 284
    check-cast p0, Lorg/maplibre/geojson/GeometryCollection;

    .line 285
    .line 286
    invoke-virtual {p0}, Lorg/maplibre/geojson/GeometryCollection;->geometries()Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_c

    .line 299
    .line 300
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Lorg/maplibre/geojson/Geometry;

    .line 305
    .line 306
    invoke-static {v2}, Lokio/Okio__OkioKt;->bbox(Lorg/maplibre/geojson/Geometry;)[D

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    aget-wide v3, v2, v1

    .line 311
    .line 312
    const/4 v5, 0x1

    .line 313
    aget-wide v6, v2, v5

    .line 314
    .line 315
    invoke-static {v3, v4, v6, v7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    const/4 v3, 0x2

    .line 323
    aget-wide v6, v2, v3

    .line 324
    .line 325
    aget-wide v4, v2, v5

    .line 326
    .line 327
    invoke-static {v6, v7, v4, v5}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    aget-wide v3, v2, v3

    .line 335
    .line 336
    const/4 v5, 0x3

    .line 337
    aget-wide v6, v2, v5

    .line 338
    .line 339
    invoke-static {v3, v4, v6, v7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    aget-wide v3, v2, v1

    .line 347
    .line 348
    aget-wide v5, v2, v5

    .line 349
    .line 350
    invoke-static {v3, v4, v5, v6}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_c
    invoke-static {v0}, Lorg/maplibre/geojson/MultiPoint;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/MultiPoint;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPoint;->coordinates()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    .line 373
    .line 374
    invoke-static {v0}, Lokio/Okio__OkioKt;->bboxCalculator(Ljava/util/ArrayList;)[D

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    return-object p0

    .line 379
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 380
    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v2, "Unknown geometry class: "

    .line 388
    .line 389
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0
.end method

.method public static bboxCalculator(Ljava/util/ArrayList;)[D
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [D

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 6
    .line 7
    aput-wide v2, v0, v1

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    aput-wide v2, v0, v4

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 14
    .line 15
    aput-wide v5, v0, v2

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    aput-wide v5, v0, v3

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_4

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lorg/maplibre/geojson/Point;

    .line 35
    .line 36
    aget-wide v6, v0, v1

    .line 37
    .line 38
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    cmpl-double v6, v6, v8

    .line 43
    .line 44
    if-lez v6, :cond_1

    .line 45
    .line 46
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    aput-wide v6, v0, v1

    .line 51
    .line 52
    :cond_1
    aget-wide v6, v0, v4

    .line 53
    .line 54
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    cmpl-double v6, v6, v8

    .line 59
    .line 60
    if-lez v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    aput-wide v6, v0, v4

    .line 67
    .line 68
    :cond_2
    aget-wide v6, v0, v2

    .line 69
    .line 70
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    cmpg-double v6, v6, v8

    .line 75
    .line 76
    if-gez v6, :cond_3

    .line 77
    .line 78
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    aput-wide v6, v0, v2

    .line 83
    .line 84
    :cond_3
    aget-wide v6, v0, v3

    .line 85
    .line 86
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    cmpg-double v6, v6, v8

    .line 91
    .line 92
    if-gez v6, :cond_0

    .line 93
    .line 94
    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    aput-wide v5, v0, v3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-object v0
.end method

.method public static final buffer(Lokio/Sink;)Lokio/RealBufferedSink;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    return-object v0
.end method

.method public static final buffer(Lokio/Source;)Lokio/RealBufferedSource;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/RealBufferedSource;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static dpToPx(F)F
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static getDimension(I)F
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 21
    .line 22
    .line 23
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 24
    .line 25
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static getToolbarHeightPx(Landroid/content/Context;)I
    .locals 1

    .line 1
    const v0, 0x7f040006

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    .line 26
    .line 27
    return v0
.end method

.method public static htmlPxToInt(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "px"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-static {p0, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p0

    .line 28
    :goto_0
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return v1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public static final isStarted(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/core/app/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static leadImageHeightForDevice(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-static {p0}, Lokio/Okio__OkioKt;->isLandscape(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    const v1, 0x7f070056

    .line 7
    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    .line 17
    int-to-float p0, p0

    .line 18
    new-instance v2, Landroid/util/TypedValue;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 24
    .line 25
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_0
    mul-float/2addr v0, p0

    .line 44
    float-to-int p0, v0

    .line 45
    return p0

    .line 46
    :cond_0
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    .line 52
    int-to-float p0, p0

    .line 53
    new-instance v2, Landroid/util/TypedValue;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 59
    .line 60
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    goto :goto_0
.end method

.method public static roundedDpToPx(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static roundedPxToDp(F)I
    .locals 1

    .line 1
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 6
    .line 7
    div-float/2addr p0, v0

    .line 8
    invoke-static {p0}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "bottom_sheet_fragment"

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 36
    :goto_1
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public abstract get(Lkotlin/reflect/KClass;)Ljava/lang/Object;
.end method

.method public abstract plus(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokio/Okio__OkioKt;
.end method
