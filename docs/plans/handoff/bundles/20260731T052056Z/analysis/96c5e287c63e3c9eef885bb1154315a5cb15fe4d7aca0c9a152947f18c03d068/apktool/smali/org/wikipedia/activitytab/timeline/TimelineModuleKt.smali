.class public abstract Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final lambda$1828866402:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const v3, 0x6d024962

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->lambda$1828866402:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final TimelineButtonView(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    move/from16 v12, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v1, 0x4f259e36

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    or-int/lit8 v1, v12, 0x6

    .line 17
    .line 18
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int v7, v1, v2

    .line 31
    .line 32
    and-int/lit8 v1, v7, 0x13

    .line 33
    .line 34
    const/16 v2, 0x12

    .line 35
    .line 36
    const/4 v13, 0x1

    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    .line 39
    move v1, v13

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_1
    and-int/lit8 v2, v7, 0x1

    .line 43
    .line 44
    invoke-virtual {v5, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v14, 0x2

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    new-instance v1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 52
    .line 53
    new-instance v2, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/16 v4, 0xa

    .line 56
    .line 57
    invoke-direct {v2, v4}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const/high16 v4, 0x41800000    # 16.0f

    .line 61
    .line 62
    invoke-direct {v1, v4, v13, v2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 63
    .line 64
    .line 65
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 66
    .line 67
    const/4 v4, 0x6

    .line 68
    invoke-static {v1, v2, v5, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-wide v8, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 73
    .line 74
    ushr-long v2, v8, v3

    .line 75
    .line 76
    xor-long/2addr v2, v8

    .line 77
    long-to-int v2, v2

    .line 78
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 83
    .line 84
    invoke-static {v5, v15}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 96
    .line 97
    .line 98
    iget-boolean v9, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 99
    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 107
    .line 108
    .line 109
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 110
    .line 111
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 112
    .line 113
    .line 114
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 129
    .line 130
    invoke-static {v5, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 131
    .line 132
    .line 133
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 134
    .line 135
    invoke-static {v5, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    const/high16 v1, 0x41c00000    # 24.0f

    .line 139
    .line 140
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1, v5, v4}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 145
    .line 146
    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    const/16 v20, 0xd

    .line 150
    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    const/high16 v17, 0x41000000    # 8.0f

    .line 154
    .line 155
    const/16 v18, 0x0

    .line 156
    .line 157
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    const/high16 v1, 0x41900000    # 18.0f

    .line 162
    .line 163
    invoke-static {v14, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 168
    .line 169
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 170
    .line 171
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 176
    .line 177
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 178
    .line 179
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 184
    .line 185
    iget-wide v10, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 186
    .line 187
    const/16 v6, 0xc

    .line 188
    .line 189
    move-wide v1, v2

    .line 190
    move-wide v3, v10

    .line 191
    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    shr-int/lit8 v1, v7, 0x3

    .line 196
    .line 197
    and-int/lit8 v1, v1, 0xe

    .line 198
    .line 199
    const v2, 0x30c00030

    .line 200
    .line 201
    .line 202
    or-int v10, v1, v2

    .line 203
    .line 204
    const/16 v11, 0x16c

    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    const/4 v5, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    move-object v1, v8

    .line 211
    sget-object v8, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->lambda$1828866402:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 212
    .line 213
    move-object v7, v9

    .line 214
    move-object/from16 v9, p2

    .line 215
    .line 216
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 217
    .line 218
    .line 219
    move-object v5, v9

    .line 220
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 225
    .line 226
    .line 227
    move-object/from16 v15, p0

    .line 228
    .line 229
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_4

    .line 234
    .line 235
    new-instance v2, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda9;

    .line 236
    .line 237
    invoke-direct {v2, v12, v15, v0, v14}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda9;-><init>(ILandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;I)V

    .line 238
    .line 239
    .line 240
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 241
    .line 242
    :cond_4
    return-void
.end method

.method public static final TimelineContent(Lorg/wikipedia/activitytab/timeline/TimelineItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v2, -0x5a60a5d6

    .line 11
    .line 12
    .line 13
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x4

    .line 21
    const/4 v4, 0x2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v4

    .line 27
    :goto_0
    or-int v2, p3, v2

    .line 28
    .line 29
    and-int/lit8 v5, v2, 0x13

    .line 30
    .line 31
    const/16 v6, 0x12

    .line 32
    .line 33
    const/4 v10, 0x1

    .line 34
    const/4 v11, 0x0

    .line 35
    if-eq v5, v6, :cond_1

    .line 36
    .line 37
    move v5, v10

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v5, v11

    .line 40
    :goto_1
    and-int/2addr v2, v10

    .line 41
    invoke-virtual {v15, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_10

    .line 46
    .line 47
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 48
    .line 49
    new-instance v5, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/16 v6, 0xa

    .line 52
    .line 53
    invoke-direct {v5, v6}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const/high16 v6, 0x41800000    # 16.0f

    .line 57
    .line 58
    invoke-direct {v2, v6, v10, v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 59
    .line 60
    .line 61
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 62
    .line 63
    const/16 v6, 0x36

    .line 64
    .line 65
    invoke-static {v2, v5, v15, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-wide v5, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 70
    .line 71
    const/16 v12, 0x20

    .line 72
    .line 73
    ushr-long v7, v5, v12

    .line 74
    .line 75
    xor-long/2addr v5, v7

    .line 76
    long-to-int v5, v5

    .line 77
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v15, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 91
    .line 92
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 93
    .line 94
    .line 95
    iget-boolean v8, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 96
    .line 97
    if-eqz v8, :cond_2

    .line 98
    .line 99
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 104
    .line 105
    .line 106
    :goto_2
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 107
    .line 108
    invoke-static {v15, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 112
    .line 113
    invoke-static {v15, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 121
    .line 122
    invoke-static {v15, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 126
    .line 127
    invoke-static {v15, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 131
    .line 132
    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    iget-object v7, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 136
    .line 137
    const/4 v9, -0x1

    .line 138
    if-nez v7, :cond_3

    .line 139
    .line 140
    move v7, v9

    .line 141
    goto :goto_3

    .line 142
    :cond_3
    sget-object v16, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    aget v7, v16, v7

    .line 149
    .line 150
    :goto_3
    if-eq v7, v9, :cond_8

    .line 151
    .line 152
    if-eq v7, v10, :cond_7

    .line 153
    .line 154
    if-eq v7, v4, :cond_6

    .line 155
    .line 156
    const/4 v4, 0x3

    .line 157
    if-eq v7, v4, :cond_5

    .line 158
    .line 159
    if-ne v7, v3, :cond_4

    .line 160
    .line 161
    const v3, 0x7f08012c

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    goto :goto_4

    .line 169
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_5
    const v3, 0x7f080199

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    goto :goto_4

    .line 181
    :cond_6
    const v3, 0x7f0802d9

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    goto :goto_4

    .line 189
    :cond_7
    const v3, 0x7f0801a4

    .line 190
    .line 191
    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    const/4 v3, 0x0

    .line 198
    :goto_4
    if-eqz v3, :cond_9

    .line 199
    .line 200
    const v4, 0x5307a853

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-static {v3, v11, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 215
    .line 216
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 221
    .line 222
    move/from16 v16, v12

    .line 223
    .line 224
    move-object/from16 v17, v13

    .line 225
    .line 226
    iget-wide v12, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 227
    .line 228
    move-object v4, v8

    .line 229
    const/16 v8, 0x38

    .line 230
    .line 231
    const/4 v9, 0x4

    .line 232
    move-object v7, v2

    .line 233
    move-object v2, v3

    .line 234
    const/4 v3, 0x0

    .line 235
    move-object/from16 v18, v4

    .line 236
    .line 237
    const/4 v4, 0x0

    .line 238
    move-object/from16 v26, v18

    .line 239
    .line 240
    move-object/from16 v29, v15

    .line 241
    .line 242
    move-object v15, v5

    .line 243
    move-wide/from16 v30, v12

    .line 244
    .line 245
    move-object v13, v6

    .line 246
    move-object v12, v7

    .line 247
    move-wide/from16 v5, v30

    .line 248
    .line 249
    move-object/from16 v7, v29

    .line 250
    .line 251
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_9
    move-object/from16 v26, v8

    .line 259
    .line 260
    move/from16 v16, v12

    .line 261
    .line 262
    move-object/from16 v17, v13

    .line 263
    .line 264
    move-object v7, v15

    .line 265
    move-object v12, v2

    .line 266
    move-object v15, v5

    .line 267
    move-object v13, v6

    .line 268
    const v2, 0x530a497c

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 275
    .line 276
    .line 277
    :goto_5
    new-instance v2, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 278
    .line 279
    const/high16 v3, 0x3f800000    # 1.0f

    .line 280
    .line 281
    invoke-direct {v2, v3, v10}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 282
    .line 283
    .line 284
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 285
    .line 286
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 287
    .line 288
    const/4 v5, 0x6

    .line 289
    invoke-static {v3, v4, v7, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    iget-wide v4, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 294
    .line 295
    ushr-long v8, v4, v16

    .line 296
    .line 297
    xor-long/2addr v4, v8

    .line 298
    long-to-int v4, v4

    .line 299
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-static {v7, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 308
    .line 309
    .line 310
    iget-boolean v6, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 311
    .line 312
    if-eqz v6, :cond_a

    .line 313
    .line 314
    move-object/from16 v6, v17

    .line 315
    .line 316
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 321
    .line 322
    .line 323
    :goto_6
    invoke-static {v7, v3, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v7, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v4, v7, v13, v7, v15}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 330
    .line 331
    .line 332
    move-object/from16 v4, v26

    .line 333
    .line 334
    invoke-static {v7, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 335
    .line 336
    .line 337
    iget-object v2, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 338
    .line 339
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 340
    .line 341
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 346
    .line 347
    iget-object v12, v4, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 348
    .line 349
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 350
    .line 351
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 356
    .line 357
    iget-wide v13, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 358
    .line 359
    const/16 v23, 0x0

    .line 360
    .line 361
    const v24, 0xffffde

    .line 362
    .line 363
    .line 364
    const-wide/16 v15, 0x0

    .line 365
    .line 366
    const/16 v17, 0x0

    .line 367
    .line 368
    sget-object v18, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 369
    .line 370
    const-wide/16 v19, 0x0

    .line 371
    .line 372
    const-wide/16 v21, 0x0

    .line 373
    .line 374
    invoke-static/range {v12 .. v24}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    const/high16 v16, 0x1b0000

    .line 379
    .line 380
    const/16 v17, 0xf96

    .line 381
    .line 382
    move-object v6, v3

    .line 383
    const/4 v3, 0x0

    .line 384
    move-object v8, v4

    .line 385
    const/4 v4, 0x0

    .line 386
    move-object v9, v6

    .line 387
    const-wide/16 v6, 0x0

    .line 388
    .line 389
    move-object v12, v8

    .line 390
    const/4 v8, 0x1

    .line 391
    move-object v13, v9

    .line 392
    const/4 v9, 0x2

    .line 393
    move v14, v10

    .line 394
    move v15, v11

    .line 395
    const-wide/16 v10, 0x0

    .line 396
    .line 397
    move-object/from16 v18, v12

    .line 398
    .line 399
    const/4 v12, 0x0

    .line 400
    move-object/from16 v19, v13

    .line 401
    .line 402
    const/4 v13, 0x0

    .line 403
    move/from16 v20, v14

    .line 404
    .line 405
    const/4 v14, 0x0

    .line 406
    move-object/from16 v15, p2

    .line 407
    .line 408
    move-object/from16 v27, v18

    .line 409
    .line 410
    move-object/from16 v1, v19

    .line 411
    .line 412
    invoke-static/range {v2 .. v17}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 413
    .line 414
    .line 415
    iget-object v2, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 416
    .line 417
    if-eqz v2, :cond_b

    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-nez v2, :cond_c

    .line 424
    .line 425
    :cond_b
    move-object/from16 v1, v27

    .line 426
    .line 427
    const/4 v14, 0x0

    .line 428
    goto :goto_8

    .line 429
    :cond_c
    const v2, 0x54d9da0c

    .line 430
    .line 431
    .line 432
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 433
    .line 434
    .line 435
    iget-object v2, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 442
    .line 443
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 444
    .line 445
    move-object/from16 v3, v27

    .line 446
    .line 447
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 452
    .line 453
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 454
    .line 455
    const/16 v24, 0x6180

    .line 456
    .line 457
    const v25, 0x1affa

    .line 458
    .line 459
    .line 460
    move-object v12, v3

    .line 461
    const/4 v3, 0x0

    .line 462
    const/4 v6, 0x0

    .line 463
    const-wide/16 v7, 0x0

    .line 464
    .line 465
    const/4 v9, 0x0

    .line 466
    const/4 v10, 0x0

    .line 467
    move-object/from16 v18, v12

    .line 468
    .line 469
    const-wide/16 v11, 0x0

    .line 470
    .line 471
    const/4 v13, 0x0

    .line 472
    const-wide/16 v14, 0x0

    .line 473
    .line 474
    const/16 v16, 0x2

    .line 475
    .line 476
    const/16 v17, 0x0

    .line 477
    .line 478
    move-object/from16 v27, v18

    .line 479
    .line 480
    const/16 v18, 0x1

    .line 481
    .line 482
    const/16 v19, 0x0

    .line 483
    .line 484
    const/16 v20, 0x0

    .line 485
    .line 486
    const/16 v23, 0x0

    .line 487
    .line 488
    move-object/from16 v22, p2

    .line 489
    .line 490
    move-object/from16 v21, v1

    .line 491
    .line 492
    move-object/from16 v1, v27

    .line 493
    .line 494
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 495
    .line 496
    .line 497
    move-object/from16 v15, v22

    .line 498
    .line 499
    const/4 v14, 0x0

    .line 500
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 501
    .line 502
    .line 503
    :goto_7
    const/4 v2, 0x1

    .line 504
    goto :goto_9

    .line 505
    :goto_8
    const v2, 0x54de5ff2

    .line 506
    .line 507
    .line 508
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 512
    .line 513
    .line 514
    goto :goto_7

    .line 515
    :goto_9
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 516
    .line 517
    .line 518
    iget-object v3, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 519
    .line 520
    if-eqz v3, :cond_d

    .line 521
    .line 522
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-nez v3, :cond_e

    .line 527
    .line 528
    :cond_d
    move v1, v2

    .line 529
    goto/16 :goto_a

    .line 530
    .line 531
    :cond_e
    const v3, 0x531989ab

    .line 532
    .line 533
    .line 534
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 535
    .line 536
    .line 537
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 538
    .line 539
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    move-object v4, v3

    .line 544
    check-cast v4, Landroid/content/Context;

    .line 545
    .line 546
    iget-object v5, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 547
    .line 548
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 549
    .line 550
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    sget-object v3, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 554
    .line 555
    const/4 v8, 0x0

    .line 556
    if-eqz v3, :cond_f

    .line 557
    .line 558
    move-object v7, v6

    .line 559
    move-object v9, v8

    .line 560
    invoke-static/range {v4 .. v9}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-virtual {v3}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    :cond_f
    new-instance v5, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 569
    .line 570
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 571
    .line 572
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 577
    .line 578
    iget-wide v6, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 579
    .line 580
    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 581
    .line 582
    .line 583
    invoke-direct {v5, v3}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 584
    .line 585
    .line 586
    new-instance v6, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 587
    .line 588
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 589
    .line 590
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 595
    .line 596
    iget-wide v9, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 597
    .line 598
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 599
    .line 600
    .line 601
    invoke-direct {v6, v3}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 602
    .line 603
    .line 604
    const/high16 v1, 0x42600000    # 56.0f

    .line 605
    .line 606
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 607
    .line 608
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    const/high16 v3, 0x41000000    # 8.0f

    .line 613
    .line 614
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-static {v1, v3}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    const/4 v12, 0x6

    .line 623
    const/16 v13, 0x7be0

    .line 624
    .line 625
    const/4 v3, 0x0

    .line 626
    const/4 v7, 0x0

    .line 627
    move/from16 v28, v2

    .line 628
    .line 629
    move-object v2, v8

    .line 630
    const/4 v8, 0x0

    .line 631
    sget-object v9, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 632
    .line 633
    const v11, 0x9030

    .line 634
    .line 635
    .line 636
    move-object v10, v15

    .line 637
    move/from16 v1, v28

    .line 638
    .line 639
    invoke-static/range {v2 .. v13}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 643
    .line 644
    .line 645
    goto :goto_b

    .line 646
    :goto_a
    const v2, 0x53223bbc

    .line 647
    .line 648
    .line 649
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 653
    .line 654
    .line 655
    :goto_b
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 656
    .line 657
    .line 658
    goto :goto_c

    .line 659
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 660
    .line 661
    .line 662
    :goto_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    if-eqz v1, :cond_11

    .line 667
    .line 668
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 669
    .line 670
    const/16 v3, 0x14

    .line 671
    .line 672
    move-object/from16 v4, p1

    .line 673
    .line 674
    move/from16 v5, p3

    .line 675
    .line 676
    invoke-direct {v2, v0, v4, v5, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 677
    .line 678
    .line 679
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 680
    .line 681
    :cond_11
    return-void
.end method

.method public static final TimelineDateSeparator(Ljava/util/Date;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v2, 0x12a16406

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x2

    .line 23
    :goto_0
    or-int v2, p3, v2

    .line 24
    .line 25
    and-int/lit8 v3, p4, 0x2

    .line 26
    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    or-int/lit8 v2, v2, 0x30

    .line 32
    .line 33
    :cond_1
    move-object/from16 v5, p1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    and-int/lit8 v5, p3, 0x30

    .line 37
    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    move-object/from16 v5, p1

    .line 41
    .line 42
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    move v6, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/16 v6, 0x10

    .line 51
    .line 52
    :goto_1
    or-int/2addr v2, v6

    .line 53
    :goto_2
    and-int/lit8 v6, v2, 0x13

    .line 54
    .line 55
    const/16 v7, 0x12

    .line 56
    .line 57
    const/4 v8, 0x1

    .line 58
    const/4 v9, 0x0

    .line 59
    if-eq v6, v7, :cond_4

    .line 60
    .line 61
    move v6, v8

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v6, v9

    .line 64
    :goto_3
    and-int/2addr v2, v8

    .line 65
    invoke-virtual {v0, v2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_a

    .line 70
    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    move-object v2, v5

    .line 77
    :goto_4
    invoke-static {v1}, Lcoil3/util/BitmapsKt;->toLocalDate(Ljava/util/Date;)Lj$/time/LocalDate;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    const v3, -0x1027713e

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 95
    .line 96
    .line 97
    const v3, 0x7f120071

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 105
    .line 106
    new-instance v6, Lkotlin/Pair;

    .line 107
    .line 108
    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_6
    invoke-static {v1}, Lcoil3/util/BitmapsKt;->toLocalDate(Ljava/util/Date;)Lj$/time/LocalDate;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const-wide/16 v6, 0x1

    .line 124
    .line 125
    invoke-virtual {v5, v6, v7}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_7

    .line 134
    .line 135
    const v3, -0x102765da

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 139
    .line 140
    .line 141
    const v3, 0x7f120073

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 149
    .line 150
    new-instance v6, Lkotlin/Pair;

    .line 151
    .line 152
    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_7
    const v3, -0x10275bcf

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 166
    .line 167
    .line 168
    sget-object v3, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 169
    .line 170
    invoke-static {v1, v9}, Lorg/wikipedia/util/DateUtil;->getMMMMdYYYY(Ljava/util/Date;Z)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 175
    .line 176
    new-instance v6, Lkotlin/Pair;

    .line 177
    .line 178
    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :goto_5
    iget-object v3, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v3, Ljava/lang/String;

    .line 184
    .line 185
    iget-object v5, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v5, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v26

    .line 193
    const/high16 v5, 0x3f800000    # 1.0f

    .line 194
    .line 195
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 200
    .line 201
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 202
    .line 203
    invoke-static {v6, v7, v0, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 208
    .line 209
    ushr-long v12, v10, v4

    .line 210
    .line 211
    xor-long/2addr v10, v12

    .line 212
    long-to-int v4, v10

    .line 213
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-static {v0, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 222
    .line 223
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 229
    .line 230
    .line 231
    iget-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 232
    .line 233
    if-eqz v11, :cond_8

    .line 234
    .line 235
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 240
    .line 241
    .line 242
    :goto_6
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 243
    .line 244
    invoke-static {v0, v6, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 248
    .line 249
    invoke-static {v0, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 257
    .line 258
    invoke-static {v0, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 259
    .line 260
    .line 261
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 262
    .line 263
    invoke-static {v0, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 264
    .line 265
    .line 266
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 267
    .line 268
    invoke-static {v0, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    .line 270
    .line 271
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 272
    .line 273
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 278
    .line 279
    iget-object v5, v5, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 280
    .line 281
    move v6, v9

    .line 282
    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 283
    .line 284
    sget-object v7, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 285
    .line 286
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 291
    .line 292
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 293
    .line 294
    const/16 v24, 0x0

    .line 295
    .line 296
    const v25, 0x1ffba

    .line 297
    .line 298
    .line 299
    move-object v12, v2

    .line 300
    move-object v2, v3

    .line 301
    const/4 v3, 0x0

    .line 302
    move v13, v6

    .line 303
    const/4 v6, 0x0

    .line 304
    move-object v14, v7

    .line 305
    move v15, v8

    .line 306
    const-wide/16 v7, 0x0

    .line 307
    .line 308
    move-object/from16 v21, v5

    .line 309
    .line 310
    move-wide/from16 v32, v10

    .line 311
    .line 312
    move-object v11, v4

    .line 313
    move-wide/from16 v4, v32

    .line 314
    .line 315
    const/4 v10, 0x0

    .line 316
    move-object/from16 v17, v11

    .line 317
    .line 318
    move-object/from16 v16, v12

    .line 319
    .line 320
    const-wide/16 v11, 0x0

    .line 321
    .line 322
    move/from16 v18, v13

    .line 323
    .line 324
    const/4 v13, 0x0

    .line 325
    move-object/from16 v19, v14

    .line 326
    .line 327
    move/from16 v20, v15

    .line 328
    .line 329
    const-wide/16 v14, 0x0

    .line 330
    .line 331
    move-object/from16 v22, v16

    .line 332
    .line 333
    const/16 v16, 0x0

    .line 334
    .line 335
    move-object/from16 v23, v17

    .line 336
    .line 337
    const/16 v17, 0x0

    .line 338
    .line 339
    move/from16 v27, v18

    .line 340
    .line 341
    const/16 v18, 0x0

    .line 342
    .line 343
    move-object/from16 v28, v19

    .line 344
    .line 345
    const/16 v19, 0x0

    .line 346
    .line 347
    move/from16 v29, v20

    .line 348
    .line 349
    const/16 v20, 0x0

    .line 350
    .line 351
    move-object/from16 v30, v23

    .line 352
    .line 353
    const/high16 v23, 0x180000

    .line 354
    .line 355
    move-object/from16 p1, v22

    .line 356
    .line 357
    move-object/from16 v31, v28

    .line 358
    .line 359
    move-object/from16 v22, v0

    .line 360
    .line 361
    move/from16 v0, v27

    .line 362
    .line 363
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 364
    .line 365
    .line 366
    move-object/from16 v2, v22

    .line 367
    .line 368
    if-eqz v26, :cond_9

    .line 369
    .line 370
    const v3, 0x438b180b

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 374
    .line 375
    .line 376
    sget-object v3, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 377
    .line 378
    invoke-static {v1, v0}, Lorg/wikipedia/util/DateUtil;->getMMMMdYYYY(Ljava/util/Date;Z)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    move-object/from16 v11, v30

    .line 383
    .line 384
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 389
    .line 390
    iget-object v4, v4, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 391
    .line 392
    move-object/from16 v14, v31

    .line 393
    .line 394
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 399
    .line 400
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 401
    .line 402
    const/16 v24, 0x0

    .line 403
    .line 404
    const v25, 0x1fffa

    .line 405
    .line 406
    .line 407
    move-object v2, v3

    .line 408
    const/4 v3, 0x0

    .line 409
    move-object/from16 v21, v4

    .line 410
    .line 411
    move-wide v4, v5

    .line 412
    const/4 v6, 0x0

    .line 413
    const-wide/16 v7, 0x0

    .line 414
    .line 415
    const/4 v9, 0x0

    .line 416
    const/4 v10, 0x0

    .line 417
    const-wide/16 v11, 0x0

    .line 418
    .line 419
    const/4 v13, 0x0

    .line 420
    const-wide/16 v14, 0x0

    .line 421
    .line 422
    const/16 v16, 0x0

    .line 423
    .line 424
    const/16 v17, 0x0

    .line 425
    .line 426
    const/16 v18, 0x0

    .line 427
    .line 428
    const/16 v19, 0x0

    .line 429
    .line 430
    const/16 v20, 0x0

    .line 431
    .line 432
    const/16 v23, 0x0

    .line 433
    .line 434
    move-object/from16 v22, p2

    .line 435
    .line 436
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v2, v22

    .line 440
    .line 441
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 442
    .line 443
    .line 444
    :goto_7
    const/4 v15, 0x1

    .line 445
    goto :goto_8

    .line 446
    :cond_9
    const v3, 0x438e29d2

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 453
    .line 454
    .line 455
    goto :goto_7

    .line 456
    :goto_8
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 457
    .line 458
    .line 459
    move-object/from16 v5, p1

    .line 460
    .line 461
    goto :goto_9

    .line 462
    :cond_a
    move-object v2, v0

    .line 463
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 464
    .line 465
    .line 466
    :goto_9
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    if-eqz v6, :cond_b

    .line 471
    .line 472
    new-instance v0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;

    .line 473
    .line 474
    move-object v2, v5

    .line 475
    const/4 v5, 0x1

    .line 476
    move/from16 v3, p3

    .line 477
    .line 478
    move/from16 v4, p4

    .line 479
    .line 480
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 481
    .line 482
    .line 483
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 484
    .line 485
    :cond_b
    return-void
.end method

.method public static final TimelineModule(Lorg/wikipedia/activitytab/timeline/TimelineItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v4, 0x3d454b4d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x2

    .line 30
    :goto_0
    or-int/2addr v4, v3

    .line 31
    and-int/lit8 v5, v3, 0x30

    .line 32
    .line 33
    const/16 v6, 0x20

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    move v5, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v5, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v4, v5

    .line 48
    :cond_2
    and-int/lit8 v5, v4, 0x13

    .line 49
    .line 50
    const/16 v7, 0x12

    .line 51
    .line 52
    const/4 v8, 0x1

    .line 53
    const/4 v9, 0x0

    .line 54
    if-eq v5, v7, :cond_3

    .line 55
    .line 56
    move v5, v8

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v5, v9

    .line 59
    :goto_2
    and-int/lit8 v7, v4, 0x1

    .line 60
    .line 61
    invoke-virtual {v2, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_c

    .line 66
    .line 67
    and-int/lit8 v5, v4, 0x70

    .line 68
    .line 69
    if-ne v5, v6, :cond_4

    .line 70
    .line 71
    move v7, v8

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move v7, v9

    .line 74
    :goto_3
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    or-int/2addr v7, v10

    .line 79
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 84
    .line 85
    if-nez v7, :cond_5

    .line 86
    .line 87
    if-ne v10, v11, :cond_6

    .line 88
    .line 89
    :cond_5
    new-instance v10, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt$$ExternalSyntheticLambda1;

    .line 90
    .line 91
    invoke-direct {v10, v1, v0, v9}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/activitytab/timeline/TimelineItem;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    const/16 v7, 0xf

    .line 100
    .line 101
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 102
    .line 103
    const/4 v13, 0x0

    .line 104
    invoke-static {v7, v12, v13, v10, v9}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const/high16 v10, 0x41800000    # 16.0f

    .line 109
    .line 110
    const/high16 v14, 0x41000000    # 8.0f

    .line 111
    .line 112
    invoke-static {v7, v10, v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 117
    .line 118
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 119
    .line 120
    invoke-static {v10, v14, v2, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    iget-wide v14, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 125
    .line 126
    ushr-long v16, v14, v6

    .line 127
    .line 128
    xor-long v14, v14, v16

    .line 129
    .line 130
    long-to-int v14, v14

    .line 131
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    invoke-static {v2, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 140
    .line 141
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 145
    .line 146
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 147
    .line 148
    .line 149
    iget-boolean v13, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 150
    .line 151
    if-eqz v13, :cond_7

    .line 152
    .line 153
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 158
    .line 159
    .line 160
    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 161
    .line 162
    invoke-static {v2, v10, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v2, v15, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 180
    .line 181
    invoke-static {v2, v9}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 182
    .line 183
    .line 184
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 185
    .line 186
    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    const/high16 v7, 0x3f800000    # 1.0f

    .line 190
    .line 191
    invoke-static {v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    and-int/lit8 v4, v4, 0xe

    .line 196
    .line 197
    or-int/lit8 v4, v4, 0x30

    .line 198
    .line 199
    invoke-static {v0, v7, v2, v4}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->TimelineContent(Lorg/wikipedia/activitytab/timeline/TimelineItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 200
    .line 201
    .line 202
    iget-object v4, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 203
    .line 204
    sget-object v7, Lorg/wikipedia/activitytab/timeline/ActivitySource;->EDIT:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 205
    .line 206
    if-ne v4, v7, :cond_b

    .line 207
    .line 208
    const v4, -0x78198bf4

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 212
    .line 213
    .line 214
    if-ne v5, v6, :cond_8

    .line 215
    .line 216
    move v4, v8

    .line 217
    goto :goto_5

    .line 218
    :cond_8
    const/4 v4, 0x0

    .line 219
    :goto_5
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    or-int/2addr v4, v5

    .line 224
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    if-nez v4, :cond_9

    .line 229
    .line 230
    if-ne v5, v11, :cond_a

    .line 231
    .line 232
    :cond_9
    new-instance v5, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt$$ExternalSyntheticLambda1;

    .line 233
    .line 234
    invoke-direct {v5, v1, v0, v8}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/activitytab/timeline/TimelineItem;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 241
    .line 242
    const/4 v4, 0x0

    .line 243
    const/4 v6, 0x0

    .line 244
    invoke-static {v4, v5, v2, v6}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->TimelineButtonView(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_b
    const/4 v6, 0x0

    .line 252
    const v4, -0x7817af35

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 259
    .line 260
    .line 261
    :goto_6
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 266
    .line 267
    .line 268
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    if-eqz v2, :cond_d

    .line 273
    .line 274
    new-instance v4, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;

    .line 275
    .line 276
    const/16 v5, 0xc

    .line 277
    .line 278
    invoke-direct {v4, v0, v1, v3, v5}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 279
    .line 280
    .line 281
    iput-object v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 282
    .line 283
    :cond_d
    return-void
.end method

.method public static final TimelineModuleEmptyView(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const v1, -0x1009aa2d

    .line 6
    .line 7
    .line 8
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p2, 0x6

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    or-int v1, p2, v1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move/from16 v1, p2

    .line 29
    .line 30
    :goto_1
    and-int/lit8 v3, v1, 0x3

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eq v3, v2, :cond_2

    .line 35
    .line 36
    move v3, v5

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v3, v4

    .line 39
    :goto_2
    and-int/2addr v1, v5

    .line 40
    invoke-virtual {v8, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 47
    .line 48
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 49
    .line 50
    const/16 v6, 0x30

    .line 51
    .line 52
    invoke-static {v3, v1, v8, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-wide v6, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 57
    .line 58
    const/16 v3, 0x20

    .line 59
    .line 60
    ushr-long v9, v6, v3

    .line 61
    .line 62
    xor-long/2addr v6, v9

    .line 63
    long-to-int v3, v6

    .line 64
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v8, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 73
    .line 74
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 80
    .line 81
    .line 82
    iget-boolean v10, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 83
    .line 84
    if-eqz v10, :cond_3

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 91
    .line 92
    .line 93
    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 94
    .line 95
    invoke-static {v8, v1, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 96
    .line 97
    .line 98
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 99
    .line 100
    invoke-static {v8, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 108
    .line 109
    invoke-static {v8, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 113
    .line 114
    invoke-static {v8, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 118
    .line 119
    invoke-static {v8, v7, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 120
    .line 121
    .line 122
    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    .line 124
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 125
    .line 126
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    const/high16 v13, 0x42400000    # 48.0f

    .line 131
    .line 132
    const/4 v14, 0x7

    .line 133
    const/4 v10, 0x0

    .line 134
    const/4 v11, 0x0

    .line 135
    const/4 v12, 0x0

    .line 136
    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const v6, 0x7f120071

    .line 141
    .line 142
    .line 143
    invoke-static {v6, v8}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 148
    .line 149
    sget-object v9, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 150
    .line 151
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    check-cast v10, Landroidx/compose/material3/Typography;

    .line 156
    .line 157
    iget-object v10, v10, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 158
    .line 159
    sget-object v11, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 160
    .line 161
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 166
    .line 167
    iget-wide v12, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 168
    .line 169
    const/16 v23, 0x0

    .line 170
    .line 171
    const v24, 0x1ffb8

    .line 172
    .line 173
    .line 174
    move v14, v5

    .line 175
    const/4 v5, 0x0

    .line 176
    move v15, v2

    .line 177
    move-object v8, v7

    .line 178
    move-object v2, v1

    .line 179
    move-object v1, v6

    .line 180
    const-wide/16 v6, 0x0

    .line 181
    .line 182
    move-object/from16 v16, v9

    .line 183
    .line 184
    const/4 v9, 0x0

    .line 185
    move-object/from16 v20, v10

    .line 186
    .line 187
    move-object/from16 v17, v11

    .line 188
    .line 189
    const-wide/16 v10, 0x0

    .line 190
    .line 191
    move/from16 v18, v4

    .line 192
    .line 193
    move-wide/from16 v33, v12

    .line 194
    .line 195
    move-object v13, v3

    .line 196
    move-wide/from16 v3, v33

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    move-object/from16 v19, v13

    .line 200
    .line 201
    move/from16 v21, v14

    .line 202
    .line 203
    const-wide/16 v13, 0x0

    .line 204
    .line 205
    move/from16 v22, v15

    .line 206
    .line 207
    const/4 v15, 0x0

    .line 208
    move-object/from16 v25, v16

    .line 209
    .line 210
    const/16 v16, 0x0

    .line 211
    .line 212
    move-object/from16 v26, v17

    .line 213
    .line 214
    const/16 v17, 0x0

    .line 215
    .line 216
    move/from16 v27, v18

    .line 217
    .line 218
    const/16 v18, 0x0

    .line 219
    .line 220
    move-object/from16 v28, v19

    .line 221
    .line 222
    const/16 v19, 0x0

    .line 223
    .line 224
    move/from16 v29, v22

    .line 225
    .line 226
    const v22, 0x180030

    .line 227
    .line 228
    .line 229
    move-object/from16 v21, p1

    .line 230
    .line 231
    move-object/from16 v30, v26

    .line 232
    .line 233
    move-object/from16 v0, v28

    .line 234
    .line 235
    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v8, v21

    .line 239
    .line 240
    const/high16 v1, 0x43240000    # 164.0f

    .line 241
    .line 242
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    const v1, 0x7f08021b

    .line 247
    .line 248
    .line 249
    const/4 v12, 0x0

    .line 250
    invoke-static {v1, v12, v8}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const/16 v9, 0x1b8

    .line 255
    .line 256
    const/16 v10, 0x78

    .line 257
    .line 258
    const/4 v2, 0x0

    .line 259
    const/4 v4, 0x0

    .line 260
    const/4 v6, 0x0

    .line 261
    const/4 v7, 0x0

    .line 262
    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 263
    .line 264
    .line 265
    move-object v1, v8

    .line 266
    const/4 v10, 0x0

    .line 267
    const/16 v11, 0xd

    .line 268
    .line 269
    const/4 v7, 0x0

    .line 270
    const/high16 v8, 0x41800000    # 16.0f

    .line 271
    .line 272
    const/4 v9, 0x0

    .line 273
    move-object v6, v0

    .line 274
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    const v3, 0x7f120070

    .line 279
    .line 280
    .line 281
    invoke-static {v3, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    move-object/from16 v4, v25

    .line 286
    .line 287
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 292
    .line 293
    iget-object v5, v5, Landroidx/compose/material3/Typography;->titleSmall:Landroidx/compose/ui/text/TextStyle;

    .line 294
    .line 295
    move-object/from16 v6, v30

    .line 296
    .line 297
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 302
    .line 303
    iget-wide v7, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 304
    .line 305
    move/from16 v31, v12

    .line 306
    .line 307
    new-instance v12, Landroidx/compose/ui/text/style/TextAlign;

    .line 308
    .line 309
    const/4 v9, 0x3

    .line 310
    invoke-direct {v12, v9}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 311
    .line 312
    .line 313
    const v24, 0x1fbf8

    .line 314
    .line 315
    .line 316
    move-object/from16 v20, v5

    .line 317
    .line 318
    const/4 v5, 0x0

    .line 319
    move-object v1, v3

    .line 320
    move-wide v3, v7

    .line 321
    const-wide/16 v6, 0x0

    .line 322
    .line 323
    const/4 v8, 0x0

    .line 324
    const/4 v9, 0x0

    .line 325
    const-wide/16 v10, 0x0

    .line 326
    .line 327
    const/16 v22, 0x30

    .line 328
    .line 329
    move-object/from16 v0, v25

    .line 330
    .line 331
    move-object/from16 v32, v30

    .line 332
    .line 333
    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v1, v21

    .line 337
    .line 338
    const/4 v10, 0x0

    .line 339
    const/16 v11, 0xd

    .line 340
    .line 341
    const/4 v7, 0x0

    .line 342
    const/high16 v8, 0x40800000    # 4.0f

    .line 343
    .line 344
    const/4 v9, 0x0

    .line 345
    move-object/from16 v6, v28

    .line 346
    .line 347
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    const v3, 0x7f12006f

    .line 352
    .line 353
    .line 354
    invoke-static {v3, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 363
    .line 364
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 365
    .line 366
    move-object/from16 v6, v32

    .line 367
    .line 368
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 373
    .line 374
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 375
    .line 376
    new-instance v12, Landroidx/compose/ui/text/style/TextAlign;

    .line 377
    .line 378
    const/4 v6, 0x3

    .line 379
    invoke-direct {v12, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 380
    .line 381
    .line 382
    move-object v1, v3

    .line 383
    move-wide v3, v4

    .line 384
    const/4 v5, 0x0

    .line 385
    const-wide/16 v6, 0x0

    .line 386
    .line 387
    const/4 v8, 0x0

    .line 388
    const/4 v9, 0x0

    .line 389
    const-wide/16 v10, 0x0

    .line 390
    .line 391
    move-object/from16 v20, v0

    .line 392
    .line 393
    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 394
    .line 395
    .line 396
    move-object/from16 v8, v21

    .line 397
    .line 398
    const/4 v14, 0x1

    .line 399
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 400
    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 404
    .line 405
    .line 406
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-eqz v0, :cond_5

    .line 411
    .line 412
    new-instance v1, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;

    .line 413
    .line 414
    const/4 v12, 0x0

    .line 415
    const/4 v15, 0x2

    .line 416
    move-object/from16 v2, p0

    .line 417
    .line 418
    move/from16 v3, p2

    .line 419
    .line 420
    invoke-direct {v1, v2, v3, v15, v12}, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;IIB)V

    .line 421
    .line 422
    .line 423
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 424
    .line 425
    :cond_5
    return-void
.end method
