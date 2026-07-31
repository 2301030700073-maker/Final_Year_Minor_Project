.class public abstract Lorg/wikipedia/util/TabUtil;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static PAGEVIEW_ID:Ljava/lang/String;

.field public static SESSION_ID:Ljava/lang/String;


# direct methods
.method public static final ComposeLangLinksScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 15

    .line 1
    move-object/from16 v12, p6

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
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v0, -0xd7bbdbe

    .line 16
    .line 17
    .line 18
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int v0, p7, v0

    .line 31
    .line 32
    move-object/from16 v2, p1

    .line 33
    .line 34
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v1, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v0, v1

    .line 46
    move-object/from16 v4, p2

    .line 47
    .line 48
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const/16 v1, 0x100

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v1, 0x80

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v1

    .line 60
    move-object/from16 v5, p3

    .line 61
    .line 62
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const/16 v1, 0x800

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v1, 0x400

    .line 72
    .line 73
    :goto_3
    or-int/2addr v0, v1

    .line 74
    move-object/from16 v10, p4

    .line 75
    .line 76
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    const/16 v1, 0x4000

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/16 v1, 0x2000

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v1

    .line 88
    move-object/from16 v9, p5

    .line 89
    .line 90
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    const/high16 v1, 0x20000

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    const/high16 v1, 0x10000

    .line 100
    .line 101
    :goto_5
    or-int/2addr v0, v1

    .line 102
    const v1, 0x12493

    .line 103
    .line 104
    .line 105
    and-int/2addr v1, v0

    .line 106
    const v3, 0x12492

    .line 107
    .line 108
    .line 109
    if-eq v1, v3, :cond_6

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    goto :goto_6

    .line 113
    :cond_6
    const/4 v1, 0x0

    .line 114
    :goto_6
    and-int/lit8 v3, v0, 0x1

    .line 115
    .line 116
    invoke-virtual {v12, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 127
    .line 128
    if-ne v1, v3, :cond_7

    .line 129
    .line 130
    const-string v1, ""

    .line 131
    .line 132
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    move-object v11, v1

    .line 140
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 141
    .line 142
    const v1, 0x7f120329

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    const v1, 0x7f12032b

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    const v1, 0x7f12032c

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v6, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;

    .line 164
    .line 165
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    .line 166
    .line 167
    .line 168
    const v3, -0x2ec6b002

    .line 169
    .line 170
    .line 171
    invoke-static {v3, v6, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 176
    .line 177
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 182
    .line 183
    iget-wide v9, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 184
    .line 185
    move-object v6, v1

    .line 186
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;

    .line 187
    .line 188
    const/4 v7, 0x3

    .line 189
    move-object v3, p0

    .line 190
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    const v2, -0x752fd1ed

    .line 194
    .line 195
    .line 196
    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    and-int/lit8 v0, v0, 0xe

    .line 201
    .line 202
    const v1, 0x30000030

    .line 203
    .line 204
    .line 205
    or-int v13, v0, v1

    .line 206
    .line 207
    const/16 v14, 0x1bc

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    const/4 v3, 0x0

    .line 211
    const/4 v4, 0x0

    .line 212
    const/4 v5, 0x0

    .line 213
    move-object v1, v8

    .line 214
    move-wide v6, v9

    .line 215
    const-wide/16 v8, 0x0

    .line 216
    .line 217
    const/4 v10, 0x0

    .line 218
    move-object v0, p0

    .line 219
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 224
    .line 225
    .line 226
    :goto_7
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    new-instance v1, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda2;

    .line 233
    .line 234
    move-object v2, p0

    .line 235
    move-object/from16 v3, p1

    .line 236
    .line 237
    move-object/from16 v4, p2

    .line 238
    .line 239
    move-object/from16 v5, p3

    .line 240
    .line 241
    move-object/from16 v6, p4

    .line 242
    .line 243
    move-object/from16 v7, p5

    .line 244
    .line 245
    move/from16 v8, p7

    .line 246
    .line 247
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 248
    .line 249
    .line 250
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 251
    .line 252
    :cond_9
    return-void
.end method

.method public static final DidYouKnowListItem(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 47

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move-object/from16 v0, p5

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v2, 0xc233688

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x2

    .line 33
    :goto_0
    or-int v2, p6, v2

    .line 34
    .line 35
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/16 v32, 0x20

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    move/from16 v5, v32

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v5, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v2, v5

    .line 49
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    const/16 v5, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v5, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v2, v5

    .line 61
    move-object/from16 v5, p4

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_3

    .line 68
    .line 69
    const/16 v10, 0x4000

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v10, 0x2000

    .line 73
    .line 74
    :goto_3
    or-int/2addr v2, v10

    .line 75
    and-int/lit16 v10, v2, 0x2493

    .line 76
    .line 77
    const/16 v12, 0x2492

    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    if-eq v10, v12, :cond_4

    .line 81
    .line 82
    const/4 v10, 0x1

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    move v10, v14

    .line 85
    :goto_4
    and-int/lit8 v12, v2, 0x1

    .line 86
    .line 87
    invoke-virtual {v0, v12, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_12

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 98
    .line 99
    if-ne v10, v12, :cond_5

    .line 100
    .line 101
    new-instance v10, Landroidx/compose/ui/unit/DpOffset;

    .line 102
    .line 103
    const/16 v15, 0x10

    .line 104
    .line 105
    const-wide/16 v8, 0x0

    .line 106
    .line 107
    invoke-direct {v10, v8, v9}, Landroidx/compose/ui/unit/DpOffset;-><init>(J)V

    .line 108
    .line 109
    .line 110
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    const/16 v15, 0x10

    .line 119
    .line 120
    :goto_5
    move-object/from16 v33, v10

    .line 121
    .line 122
    check-cast v33, Landroidx/compose/runtime/MutableState;

    .line 123
    .line 124
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 125
    .line 126
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 131
    .line 132
    sget-object v9, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 133
    .line 134
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 135
    .line 136
    invoke-static {v9, v10, v0, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    move-object/from16 v17, v12

    .line 141
    .line 142
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 143
    .line 144
    ushr-long v18, v11, v32

    .line 145
    .line 146
    xor-long v11, v11, v18

    .line 147
    .line 148
    long-to-int v11, v11

    .line 149
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 154
    .line 155
    invoke-static {v0, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 160
    .line 161
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 167
    .line 168
    .line 169
    const/16 v20, 0x1

    .line 170
    .line 171
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 172
    .line 173
    if-eqz v13, :cond_6

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 180
    .line 181
    .line 182
    :goto_6
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 183
    .line 184
    invoke-static {v0, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 188
    .line 189
    invoke-static {v0, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 197
    .line 198
    invoke-static {v0, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 202
    .line 203
    invoke-static {v0, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 204
    .line 205
    .line 206
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 207
    .line 208
    invoke-static {v0, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    .line 210
    .line 211
    const/high16 v10, 0x3f800000    # 1.0f

    .line 212
    .line 213
    invoke-static {v5, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    move/from16 v22, v15

    .line 218
    .line 219
    sget-object v15, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 220
    .line 221
    move-object/from16 v23, v8

    .line 222
    .line 223
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 224
    .line 225
    invoke-static {v15, v8, v0, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    move/from16 v24, v14

    .line 230
    .line 231
    iget-wide v14, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 232
    .line 233
    ushr-long v25, v14, v32

    .line 234
    .line 235
    xor-long v14, v14, v25

    .line 236
    .line 237
    long-to-int v14, v14

    .line 238
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    invoke-static {v0, v10}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 247
    .line 248
    .line 249
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 250
    .line 251
    if-eqz v7, :cond_7

    .line 252
    .line 253
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 258
    .line 259
    .line 260
    :goto_7
    invoke-static {v0, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v15, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v14, v0, v12, v0, v11}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v0, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 270
    .line 271
    .line 272
    const/high16 v7, 0x41c00000    # 24.0f

    .line 273
    .line 274
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    const v10, 0x7f06002b

    .line 279
    .line 280
    .line 281
    invoke-static {v10, v0}, Lkotlin/TuplesKt;->colorResource(ILandroidx/compose/runtime/GapComposer;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v14

    .line 285
    new-instance v10, Landroidx/compose/ui/graphics/Color;

    .line 286
    .line 287
    invoke-direct {v10, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 288
    .line 289
    .line 290
    const v14, 0x7f0600a9

    .line 291
    .line 292
    .line 293
    invoke-static {v14, v0}, Lkotlin/TuplesKt;->colorResource(ILandroidx/compose/runtime/GapComposer;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v14

    .line 297
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 298
    .line 299
    invoke-direct {v7, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 300
    .line 301
    .line 302
    const/4 v14, 0x2

    .line 303
    new-array v14, v14, [Landroidx/compose/ui/graphics/Color;

    .line 304
    .line 305
    aput-object v10, v14, v24

    .line 306
    .line 307
    aput-object v7, v14, v20

    .line 308
    .line 309
    invoke-static {v14}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-static {v7}, Landroidx/collection/internal/Lock;->verticalGradient-8A-3gB4$default(Ljava/util/List;)Landroidx/compose/ui/graphics/LinearGradient;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    sget-object v10, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 318
    .line 319
    const/4 v14, 0x4

    .line 320
    invoke-static {v8, v7, v10, v14}, Landroidx/compose/foundation/ImageKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/LinearGradient;Landroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 325
    .line 326
    move/from16 v10, v24

    .line 327
    .line 328
    invoke-static {v8, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    iget-wide v14, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 333
    .line 334
    ushr-long v24, v14, v32

    .line 335
    .line 336
    xor-long v14, v14, v24

    .line 337
    .line 338
    long-to-int v14, v14

    .line 339
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 348
    .line 349
    .line 350
    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 351
    .line 352
    if-eqz v10, :cond_8

    .line 353
    .line 354
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 355
    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 359
    .line 360
    .line 361
    :goto_8
    invoke-static {v0, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v0, v15, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v14, v0, v12, v0, v11}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 371
    .line 372
    .line 373
    invoke-static/range {v22 .. v22}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 374
    .line 375
    .line 376
    move-result-wide v7

    .line 377
    move-object v14, v11

    .line 378
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->White:J

    .line 379
    .line 380
    sget-object v15, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 381
    .line 382
    const/16 v30, 0x0

    .line 383
    .line 384
    const v31, 0x3ff2a

    .line 385
    .line 386
    .line 387
    move-object/from16 v19, v14

    .line 388
    .line 389
    move-wide/from16 v45, v7

    .line 390
    .line 391
    move-object v7, v13

    .line 392
    move-wide/from16 v13, v45

    .line 393
    .line 394
    const-string v8, "?"

    .line 395
    .line 396
    move-object/from16 v21, v9

    .line 397
    .line 398
    const/4 v9, 0x0

    .line 399
    move-object/from16 v22, v12

    .line 400
    .line 401
    const/4 v12, 0x0

    .line 402
    const/16 v25, 0x100

    .line 403
    .line 404
    sget-object v16, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 405
    .line 406
    move-object/from16 v26, v17

    .line 407
    .line 408
    const/16 v27, 0x4000

    .line 409
    .line 410
    const-wide/16 v17, 0x0

    .line 411
    .line 412
    move-object/from16 v28, v19

    .line 413
    .line 414
    const/16 v19, 0x0

    .line 415
    .line 416
    move/from16 v34, v20

    .line 417
    .line 418
    move-object/from16 v29, v21

    .line 419
    .line 420
    const-wide/16 v20, 0x0

    .line 421
    .line 422
    move-object/from16 v35, v22

    .line 423
    .line 424
    const/16 v22, 0x0

    .line 425
    .line 426
    move-object/from16 v36, v23

    .line 427
    .line 428
    const/16 v23, 0x0

    .line 429
    .line 430
    const/16 v37, 0x0

    .line 431
    .line 432
    const/16 v24, 0x0

    .line 433
    .line 434
    move/from16 v38, v25

    .line 435
    .line 436
    const/16 v25, 0x0

    .line 437
    .line 438
    move-object/from16 v39, v26

    .line 439
    .line 440
    const/16 v26, 0x0

    .line 441
    .line 442
    move/from16 v40, v27

    .line 443
    .line 444
    const/16 v27, 0x0

    .line 445
    .line 446
    move-object/from16 v41, v29

    .line 447
    .line 448
    const v29, 0x186186

    .line 449
    .line 450
    .line 451
    move-object/from16 v6, v28

    .line 452
    .line 453
    move-object/from16 v42, v39

    .line 454
    .line 455
    move-object/from16 v1, v41

    .line 456
    .line 457
    move-object/from16 v28, v0

    .line 458
    .line 459
    move-object v0, v7

    .line 460
    move/from16 v7, v34

    .line 461
    .line 462
    move/from16 v34, v2

    .line 463
    .line 464
    move-object/from16 v2, v35

    .line 465
    .line 466
    move-object/from16 v35, v4

    .line 467
    .line 468
    move/from16 v4, v37

    .line 469
    .line 470
    invoke-static/range {v8 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v8, v28

    .line 474
    .line 475
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 476
    .line 477
    .line 478
    const/high16 v9, 0x41000000    # 8.0f

    .line 479
    .line 480
    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 485
    .line 486
    .line 487
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 488
    .line 489
    invoke-static {v9, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 490
    .line 491
    .line 492
    move-result-object v10

    .line 493
    iget-wide v11, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 494
    .line 495
    ushr-long v13, v11, v32

    .line 496
    .line 497
    xor-long/2addr v11, v13

    .line 498
    long-to-int v11, v11

    .line 499
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 500
    .line 501
    .line 502
    move-result-object v12

    .line 503
    invoke-static {v8, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 504
    .line 505
    .line 506
    move-result-object v13

    .line 507
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 508
    .line 509
    .line 510
    iget-boolean v14, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 511
    .line 512
    if-eqz v14, :cond_9

    .line 513
    .line 514
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 515
    .line 516
    .line 517
    goto :goto_9

    .line 518
    :cond_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 519
    .line 520
    .line 521
    :goto_9
    invoke-static {v8, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 522
    .line 523
    .line 524
    invoke-static {v8, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 525
    .line 526
    .line 527
    invoke-static {v11, v8, v2, v8, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 528
    .line 529
    .line 530
    move-object/from16 v10, v35

    .line 531
    .line 532
    invoke-static {v8, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 533
    .line 534
    .line 535
    sget-object v11, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 536
    .line 537
    const-string v11, "</?b(?:\\s+[^>]*)?>"

    .line 538
    .line 539
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    const-string v12, ""

    .line 547
    .line 548
    move-object/from16 v13, p1

    .line 549
    .line 550
    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 551
    .line 552
    .line 553
    move-result-object v11

    .line 554
    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v11

    .line 558
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    sget-object v12, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 562
    .line 563
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v12

    .line 567
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 568
    .line 569
    iget-wide v14, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 570
    .line 571
    sget-object v12, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 572
    .line 573
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v12

    .line 577
    check-cast v12, Landroidx/compose/material3/Typography;

    .line 578
    .line 579
    iget-object v12, v12, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 580
    .line 581
    move/from16 v7, v34

    .line 582
    .line 583
    and-int/lit16 v4, v7, 0x380

    .line 584
    .line 585
    move-object/from16 v16, v0

    .line 586
    .line 587
    const/16 v0, 0x100

    .line 588
    .line 589
    if-ne v4, v0, :cond_a

    .line 590
    .line 591
    const/4 v0, 0x1

    .line 592
    :goto_a
    move-object/from16 v35, v2

    .line 593
    .line 594
    move-object/from16 v2, p0

    .line 595
    .line 596
    goto :goto_b

    .line 597
    :cond_a
    const/4 v0, 0x0

    .line 598
    goto :goto_a

    .line 599
    :goto_b
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    or-int/2addr v0, v4

    .line 604
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    if-nez v0, :cond_c

    .line 609
    .line 610
    move-object/from16 v0, v42

    .line 611
    .line 612
    if-ne v4, v0, :cond_b

    .line 613
    .line 614
    goto :goto_c

    .line 615
    :cond_b
    move-object/from16 v21, v1

    .line 616
    .line 617
    move-object/from16 v17, v9

    .line 618
    .line 619
    const/4 v1, 0x0

    .line 620
    move-object/from16 v9, p2

    .line 621
    .line 622
    goto :goto_d

    .line 623
    :cond_c
    move-object/from16 v0, v42

    .line 624
    .line 625
    :goto_c
    new-instance v4, Lorg/wikipedia/feed/didyouknow/DidYouKnowModuleKt$$ExternalSyntheticLambda5;

    .line 626
    .line 627
    move-object/from16 v21, v1

    .line 628
    .line 629
    move-object/from16 v17, v9

    .line 630
    .line 631
    const/4 v1, 0x0

    .line 632
    move-object/from16 v9, p2

    .line 633
    .line 634
    invoke-direct {v4, v1, v2, v9}, Lorg/wikipedia/feed/didyouknow/DidYouKnowModuleKt$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Lkotlin/Function;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    :goto_d
    move-object/from16 v18, v4

    .line 641
    .line 642
    check-cast v18, Landroidx/compose/ui/text/LinkInteractionListener;

    .line 643
    .line 644
    move-object/from16 v4, v36

    .line 645
    .line 646
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v19

    .line 650
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v20

    .line 654
    or-int v19, v19, v20

    .line 655
    .line 656
    const v20, 0xe000

    .line 657
    .line 658
    .line 659
    and-int v7, v7, v20

    .line 660
    .line 661
    const/16 v1, 0x4000

    .line 662
    .line 663
    if-ne v7, v1, :cond_d

    .line 664
    .line 665
    const/4 v1, 0x1

    .line 666
    goto :goto_e

    .line 667
    :cond_d
    const/4 v1, 0x0

    .line 668
    :goto_e
    or-int v1, v19, v1

    .line 669
    .line 670
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    if-nez v1, :cond_e

    .line 675
    .line 676
    if-ne v7, v0, :cond_f

    .line 677
    .line 678
    :cond_e
    move-object/from16 v26, v0

    .line 679
    .line 680
    goto :goto_f

    .line 681
    :cond_f
    move-object/from16 v43, v0

    .line 682
    .line 683
    move-object/from16 v44, v5

    .line 684
    .line 685
    move-object v0, v7

    .line 686
    move-object/from16 v4, v33

    .line 687
    .line 688
    move-object v7, v3

    .line 689
    goto :goto_10

    .line 690
    :goto_f
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 691
    .line 692
    move-object v1, v5

    .line 693
    const/4 v5, 0x6

    .line 694
    move-object/from16 v44, v1

    .line 695
    .line 696
    move-object v7, v3

    .line 697
    move-object v1, v4

    .line 698
    move-object/from16 v43, v26

    .line 699
    .line 700
    move-object/from16 v4, v33

    .line 701
    .line 702
    move-object/from16 v3, p4

    .line 703
    .line 704
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;I)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    :goto_10
    move-object/from16 v19, v0

    .line 711
    .line 712
    check-cast v19, Lkotlin/jvm/functions/Function2;

    .line 713
    .line 714
    const/16 v22, 0x0

    .line 715
    .line 716
    const/16 v23, 0xce6

    .line 717
    .line 718
    const/4 v9, 0x0

    .line 719
    move-object v0, v10

    .line 720
    const/4 v10, 0x0

    .line 721
    move-object v8, v11

    .line 722
    move-object v11, v12

    .line 723
    move-wide v12, v14

    .line 724
    const/4 v14, 0x0

    .line 725
    const/4 v15, 0x0

    .line 726
    move-object/from16 v1, v16

    .line 727
    .line 728
    move-object/from16 v2, v17

    .line 729
    .line 730
    const-wide/16 v16, 0x0

    .line 731
    .line 732
    const/16 v20, 0x0

    .line 733
    .line 734
    move-object v3, v0

    .line 735
    move-object v0, v1

    .line 736
    move-object v5, v2

    .line 737
    move-object/from16 v1, v21

    .line 738
    .line 739
    move-object/from16 v2, v35

    .line 740
    .line 741
    move-object/from16 v21, p5

    .line 742
    .line 743
    invoke-static/range {v8 .. v23}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 744
    .line 745
    .line 746
    move-object/from16 v8, v21

    .line 747
    .line 748
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v9

    .line 752
    move-object/from16 v10, v43

    .line 753
    .line 754
    if-ne v9, v10, :cond_10

    .line 755
    .line 756
    new-instance v9, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 757
    .line 758
    const/16 v10, 0xc

    .line 759
    .line 760
    invoke-direct {v9, v4, v10}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 764
    .line 765
    .line 766
    :cond_10
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 767
    .line 768
    move-object/from16 v4, v44

    .line 769
    .line 770
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 771
    .line 772
    .line 773
    move-result-object v9

    .line 774
    const/4 v10, 0x0

    .line 775
    invoke-static {v5, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    iget-wide v10, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 780
    .line 781
    ushr-long v12, v10, v32

    .line 782
    .line 783
    xor-long/2addr v10, v12

    .line 784
    long-to-int v10, v10

    .line 785
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 786
    .line 787
    .line 788
    move-result-object v11

    .line 789
    invoke-static {v8, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 790
    .line 791
    .line 792
    move-result-object v9

    .line 793
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 794
    .line 795
    .line 796
    iget-boolean v12, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 797
    .line 798
    if-eqz v12, :cond_11

    .line 799
    .line 800
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 801
    .line 802
    .line 803
    goto :goto_11

    .line 804
    :cond_11
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 805
    .line 806
    .line 807
    :goto_11
    invoke-static {v8, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 808
    .line 809
    .line 810
    invoke-static {v8, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 811
    .line 812
    .line 813
    invoke-static {v10, v8, v2, v8, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 814
    .line 815
    .line 816
    invoke-static {v8, v9, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 817
    .line 818
    .line 819
    const/4 v0, 0x6

    .line 820
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    move-object/from16 v1, p3

    .line 825
    .line 826
    invoke-virtual {v1, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    const/4 v7, 0x1

    .line 830
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 837
    .line 838
    .line 839
    const/high16 v0, 0x41c00000    # 24.0f

    .line 840
    .line 841
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 849
    .line 850
    .line 851
    goto :goto_12

    .line 852
    :cond_12
    move-object/from16 v1, p3

    .line 853
    .line 854
    move-object v8, v0

    .line 855
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 856
    .line 857
    .line 858
    :goto_12
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 859
    .line 860
    .line 861
    move-result-object v8

    .line 862
    if-eqz v8, :cond_13

    .line 863
    .line 864
    new-instance v0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;

    .line 865
    .line 866
    const/4 v7, 0x6

    .line 867
    move-object/from16 v2, p1

    .line 868
    .line 869
    move-object/from16 v3, p2

    .line 870
    .line 871
    move-object/from16 v5, p4

    .line 872
    .line 873
    move/from16 v6, p6

    .line 874
    .line 875
    move-object v4, v1

    .line 876
    move-object/from16 v1, p0

    .line 877
    .line 878
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    .line 879
    .line 880
    .line 881
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 882
    .line 883
    :cond_13
    return-void
.end method

.method public static final DidYouKnowModule(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V
    .locals 14

    .line 1
    move-object/from16 v11, p9

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
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v0, 0x3179ede2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int v0, p10, v0

    .line 34
    .line 35
    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/16 v2, 0x20

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v2, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v2

    .line 47
    move-object/from16 v9, p2

    .line 48
    .line 49
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const/16 v2, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v2, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v2

    .line 61
    move-object/from16 v10, p3

    .line 62
    .line 63
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    const/16 v2, 0x800

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v2, 0x400

    .line 73
    .line 74
    :goto_3
    or-int/2addr v0, v2

    .line 75
    move-object/from16 v5, p4

    .line 76
    .line 77
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    const/16 v2, 0x4000

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    const/16 v2, 0x2000

    .line 87
    .line 88
    :goto_4
    or-int/2addr v0, v2

    .line 89
    move-object/from16 v7, p5

    .line 90
    .line 91
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    const/high16 v2, 0x20000

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_5
    const/high16 v2, 0x10000

    .line 101
    .line 102
    :goto_5
    or-int/2addr v0, v2

    .line 103
    move-object/from16 v12, p6

    .line 104
    .line 105
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    const/high16 v2, 0x100000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_6
    const/high16 v2, 0x80000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v0, v2

    .line 117
    move-object/from16 v6, p8

    .line 118
    .line 119
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    const/high16 v2, 0x4000000

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_7
    const/high16 v2, 0x2000000

    .line 129
    .line 130
    :goto_7
    or-int/2addr v0, v2

    .line 131
    const v2, 0x2492493

    .line 132
    .line 133
    .line 134
    and-int/2addr v2, v0

    .line 135
    const v4, 0x2492492

    .line 136
    .line 137
    .line 138
    if-eq v2, v4, :cond_8

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    goto :goto_8

    .line 142
    :cond_8
    const/4 v2, 0x0

    .line 143
    :goto_8
    and-int/lit8 v4, v0, 0x1

    .line 144
    .line 145
    invoke-virtual {v11, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_9

    .line 150
    .line 151
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 152
    .line 153
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    move-object v8, v2

    .line 158
    check-cast v8, Landroid/content/Context;

    .line 159
    .line 160
    new-instance v1, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    move-object v4, p0

    .line 163
    move-object v3, p1

    .line 164
    move-object v2, v7

    .line 165
    move-object/from16 v7, p7

    .line 166
    .line 167
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    const v2, 0x7c8ddaf0

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    shl-int/lit8 v2, v0, 0x3

    .line 178
    .line 179
    and-int/lit8 v2, v2, 0x70

    .line 180
    .line 181
    const/high16 v3, 0x30000000

    .line 182
    .line 183
    or-int/2addr v2, v3

    .line 184
    shl-int/lit8 v3, v0, 0xc

    .line 185
    .line 186
    const/high16 v4, 0x380000

    .line 187
    .line 188
    and-int/2addr v4, v3

    .line 189
    or-int/2addr v2, v4

    .line 190
    const/high16 v4, 0x1c00000

    .line 191
    .line 192
    and-int/2addr v3, v4

    .line 193
    or-int/2addr v2, v3

    .line 194
    const/high16 v3, 0xe000000

    .line 195
    .line 196
    shl-int/lit8 v0, v0, 0x6

    .line 197
    .line 198
    and-int/2addr v0, v3

    .line 199
    or-int/2addr v0, v2

    .line 200
    const/16 v13, 0x31

    .line 201
    .line 202
    move v12, v0

    .line 203
    const/4 v0, 0x0

    .line 204
    const v2, 0x7f120273

    .line 205
    .line 206
    .line 207
    const v3, 0x7f120272

    .line 208
    .line 209
    .line 210
    const/4 v4, 0x0

    .line 211
    const-wide/16 v5, 0x0

    .line 212
    .line 213
    move-object v7, v9

    .line 214
    move-object v8, v10

    .line 215
    move-object/from16 v9, p6

    .line 216
    .line 217
    move-object v10, v1

    .line 218
    move-object v1, p0

    .line 219
    invoke-static/range {v0 .. v13}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityModuleContainer-Yod850M(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;IILjava/lang/Integer;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 220
    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_9
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 224
    .line 225
    .line 226
    :goto_9
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_a

    .line 231
    .line 232
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;

    .line 233
    .line 234
    move-object v2, p0

    .line 235
    move-object v3, p1

    .line 236
    move-object/from16 v4, p2

    .line 237
    .line 238
    move-object/from16 v5, p3

    .line 239
    .line 240
    move-object/from16 v6, p4

    .line 241
    .line 242
    move-object/from16 v7, p5

    .line 243
    .line 244
    move-object/from16 v8, p6

    .line 245
    .line 246
    move-object/from16 v9, p7

    .line 247
    .line 248
    move-object/from16 v10, p8

    .line 249
    .line 250
    move/from16 v11, p10

    .line 251
    .line 252
    invoke-direct/range {v1 .. v11}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;I)V

    .line 253
    .line 254
    .line 255
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 256
    .line 257
    :cond_a
    return-void
.end method

.method public static final LangLinksItemView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V
    .locals 41

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    const v2, 0x13d36791

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v2, 0x10

    .line 24
    .line 25
    :goto_0
    or-int v2, p5, v2

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    const/16 v5, 0x100

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v5, 0x80

    .line 37
    .line 38
    :goto_1
    or-int/2addr v2, v5

    .line 39
    move-object/from16 v5, p3

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    const/16 v6, 0x800

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v6, 0x400

    .line 51
    .line 52
    :goto_2
    or-int/2addr v2, v6

    .line 53
    and-int/lit16 v6, v2, 0x493

    .line 54
    .line 55
    const/16 v7, 0x492

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x1

    .line 59
    if-eq v6, v7, :cond_3

    .line 60
    .line 61
    move v6, v9

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move v6, v8

    .line 64
    :goto_3
    and-int/lit8 v7, v2, 0x1

    .line 65
    .line 66
    invoke-virtual {v1, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_7

    .line 71
    .line 72
    sget-object v6, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroidx/compose/material3/Typography;

    .line 79
    .line 80
    iget-object v10, v7, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 81
    .line 82
    sget-object v7, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 83
    .line 84
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 89
    .line 90
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 91
    .line 92
    const/16 v13, 0x18

    .line 93
    .line 94
    invoke-static {v13}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v19

    .line 98
    const/16 v21, 0x0

    .line 99
    .line 100
    const v22, 0xfdfffe

    .line 101
    .line 102
    .line 103
    const-wide/16 v13, 0x0

    .line 104
    .line 105
    const/4 v15, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    const-wide/16 v17, 0x0

    .line 109
    .line 110
    invoke-static/range {v10 .. v22}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 111
    .line 112
    .line 113
    move-result-object v25

    .line 114
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 115
    .line 116
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 117
    .line 118
    const/4 v12, 0x6

    .line 119
    invoke-static {v10, v11, v1, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    iget-wide v11, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 124
    .line 125
    ushr-long v13, v11, v3

    .line 126
    .line 127
    xor-long/2addr v11, v13

    .line 128
    long-to-int v3, v11

    .line 129
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    move-object/from16 v12, p0

    .line 134
    .line 135
    invoke-static {v1, v12}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 140
    .line 141
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 147
    .line 148
    .line 149
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 150
    .line 151
    if-eqz v15, :cond_4

    .line 152
    .line 153
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 158
    .line 159
    .line 160
    :goto_4
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 161
    .line 162
    invoke-static {v1, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v1, v11, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v1, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 180
    .line 181
    invoke-static {v1, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 182
    .line 183
    .line 184
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 185
    .line 186
    invoke-static {v1, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 190
    .line 191
    const/high16 v10, 0x3f800000    # 1.0f

    .line 192
    .line 193
    move v11, v2

    .line 194
    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Landroidx/compose/material3/Typography;

    .line 203
    .line 204
    iget-object v6, v6, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 205
    .line 206
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 211
    .line 212
    iget-wide v13, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 213
    .line 214
    sget-object v31, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 215
    .line 216
    const/16 v37, 0x0

    .line 217
    .line 218
    const v38, 0xfffffa

    .line 219
    .line 220
    .line 221
    const-wide/16 v29, 0x0

    .line 222
    .line 223
    const/16 v32, 0x0

    .line 224
    .line 225
    const-wide/16 v33, 0x0

    .line 226
    .line 227
    const-wide/16 v35, 0x0

    .line 228
    .line 229
    move-object/from16 v26, v6

    .line 230
    .line 231
    move-wide/from16 v27, v13

    .line 232
    .line 233
    invoke-static/range {v26 .. v38}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 234
    .line 235
    .line 236
    move-result-object v20

    .line 237
    shr-int/lit8 v6, v11, 0x3

    .line 238
    .line 239
    and-int/lit8 v6, v6, 0xe

    .line 240
    .line 241
    or-int/lit8 v22, v6, 0x30

    .line 242
    .line 243
    const/16 v23, 0x0

    .line 244
    .line 245
    const v24, 0x1fffc

    .line 246
    .line 247
    .line 248
    move-object v6, v3

    .line 249
    const-wide/16 v3, 0x0

    .line 250
    .line 251
    const/4 v5, 0x0

    .line 252
    move-object v13, v6

    .line 253
    const-wide/16 v6, 0x0

    .line 254
    .line 255
    move v14, v8

    .line 256
    const/4 v8, 0x0

    .line 257
    move v15, v9

    .line 258
    const/4 v9, 0x0

    .line 259
    move/from16 v17, v10

    .line 260
    .line 261
    move/from16 v16, v11

    .line 262
    .line 263
    const-wide/16 v10, 0x0

    .line 264
    .line 265
    const/4 v12, 0x0

    .line 266
    move-object/from16 v18, v13

    .line 267
    .line 268
    move/from16 v19, v14

    .line 269
    .line 270
    const-wide/16 v13, 0x0

    .line 271
    .line 272
    move/from16 v21, v15

    .line 273
    .line 274
    const/4 v15, 0x0

    .line 275
    move/from16 v26, v16

    .line 276
    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    move/from16 v27, v17

    .line 280
    .line 281
    const/16 v17, 0x0

    .line 282
    .line 283
    move-object/from16 v28, v18

    .line 284
    .line 285
    const/16 v18, 0x0

    .line 286
    .line 287
    move/from16 v29, v19

    .line 288
    .line 289
    const/16 v19, 0x0

    .line 290
    .line 291
    move-object/from16 v21, v1

    .line 292
    .line 293
    move/from16 v0, v27

    .line 294
    .line 295
    move-object/from16 v39, v28

    .line 296
    .line 297
    move-object/from16 v1, p1

    .line 298
    .line 299
    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 300
    .line 301
    .line 302
    move-object/from16 v1, v21

    .line 303
    .line 304
    if-eqz p2, :cond_5

    .line 305
    .line 306
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_6

    .line 311
    .line 312
    :cond_5
    move-object/from16 v19, v25

    .line 313
    .line 314
    move-object/from16 v40, v39

    .line 315
    .line 316
    const/4 v14, 0x0

    .line 317
    goto :goto_6

    .line 318
    :cond_6
    const v2, -0x7e302d1

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 322
    .line 323
    .line 324
    move-object/from16 v2, v39

    .line 325
    .line 326
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    shr-int/lit8 v3, v26, 0x6

    .line 331
    .line 332
    and-int/lit8 v3, v3, 0xe

    .line 333
    .line 334
    or-int/lit8 v21, v3, 0x30

    .line 335
    .line 336
    const/16 v22, 0x0

    .line 337
    .line 338
    const v23, 0x1fffc

    .line 339
    .line 340
    .line 341
    move-object/from16 v28, v2

    .line 342
    .line 343
    const-wide/16 v2, 0x0

    .line 344
    .line 345
    const/4 v4, 0x0

    .line 346
    const-wide/16 v5, 0x0

    .line 347
    .line 348
    const/4 v7, 0x0

    .line 349
    const/4 v8, 0x0

    .line 350
    const-wide/16 v9, 0x0

    .line 351
    .line 352
    const/4 v11, 0x0

    .line 353
    const-wide/16 v12, 0x0

    .line 354
    .line 355
    const/4 v14, 0x0

    .line 356
    const/4 v15, 0x0

    .line 357
    const/16 v16, 0x0

    .line 358
    .line 359
    const/16 v17, 0x0

    .line 360
    .line 361
    const/16 v18, 0x0

    .line 362
    .line 363
    move-object/from16 v0, p2

    .line 364
    .line 365
    move-object/from16 v20, p4

    .line 366
    .line 367
    move-object/from16 v19, v25

    .line 368
    .line 369
    move-object/from16 v40, v28

    .line 370
    .line 371
    invoke-static/range {v0 .. v23}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v1, v20

    .line 375
    .line 376
    const/4 v14, 0x0

    .line 377
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 378
    .line 379
    .line 380
    :goto_5
    move-object/from16 v13, v40

    .line 381
    .line 382
    const/high16 v0, 0x3f800000    # 1.0f

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :goto_6
    const v0, -0x7e05665

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :goto_7
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    shr-int/lit8 v2, v26, 0x9

    .line 400
    .line 401
    and-int/lit8 v2, v2, 0xe

    .line 402
    .line 403
    or-int/lit8 v21, v2, 0x30

    .line 404
    .line 405
    const/16 v22, 0x0

    .line 406
    .line 407
    const v23, 0x1fffc

    .line 408
    .line 409
    .line 410
    const-wide/16 v2, 0x0

    .line 411
    .line 412
    const/4 v4, 0x0

    .line 413
    const-wide/16 v5, 0x0

    .line 414
    .line 415
    const/4 v7, 0x0

    .line 416
    const/4 v8, 0x0

    .line 417
    const-wide/16 v9, 0x0

    .line 418
    .line 419
    const/4 v11, 0x0

    .line 420
    const-wide/16 v12, 0x0

    .line 421
    .line 422
    const/4 v14, 0x0

    .line 423
    const/4 v15, 0x0

    .line 424
    const/16 v16, 0x0

    .line 425
    .line 426
    const/16 v17, 0x0

    .line 427
    .line 428
    const/16 v18, 0x0

    .line 429
    .line 430
    move-object/from16 v20, v1

    .line 431
    .line 432
    move-object v1, v0

    .line 433
    move-object/from16 v0, p3

    .line 434
    .line 435
    invoke-static/range {v0 .. v23}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 436
    .line 437
    .line 438
    move-object/from16 v1, v20

    .line 439
    .line 440
    const/4 v15, 0x1

    .line 441
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 442
    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 446
    .line 447
    .line 448
    :goto_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    if-eqz v8, :cond_8

    .line 453
    .line 454
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 455
    .line 456
    const/16 v2, 0x9

    .line 457
    .line 458
    const/4 v7, 0x0

    .line 459
    move-object/from16 v3, p0

    .line 460
    .line 461
    move-object/from16 v4, p1

    .line 462
    .line 463
    move-object/from16 v5, p2

    .line 464
    .line 465
    move-object/from16 v6, p3

    .line 466
    .line 467
    move/from16 v1, p5

    .line 468
    .line 469
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 470
    .line 471
    .line 472
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 473
    .line 474
    :cond_8
    return-void
.end method

.method public static final ListHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const v1, 0x37ccf1f9

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    move-object/from16 v3, p0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    :goto_0
    or-int v1, p4, v1

    .line 21
    .line 22
    or-int/lit16 v1, v1, 0x80

    .line 23
    .line 24
    and-int/lit16 v2, v1, 0x93

    .line 25
    .line 26
    const/16 v4, 0x92

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v2, v4, :cond_1

    .line 31
    .line 32
    move v2, v6

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v2, v5

    .line 35
    :goto_1
    and-int/lit8 v4, v1, 0x1

    .line 36
    .line 37
    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 44
    .line 45
    .line 46
    and-int/lit8 v2, p4, 0x1

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 58
    .line 59
    .line 60
    and-int/lit16 v1, v1, -0x381

    .line 61
    .line 62
    move-object/from16 v19, p2

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 72
    .line 73
    iget-object v7, v2, Landroidx/compose/material3/Typography;->titleSmall:Landroidx/compose/ui/text/TextStyle;

    .line 74
    .line 75
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 82
    .line 83
    iget-wide v8, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 84
    .line 85
    sget-object v12, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 86
    .line 87
    const/16 v2, 0x18

    .line 88
    .line 89
    invoke-static {v2}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v16

    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    const v19, 0xfdfffa

    .line 96
    .line 97
    .line 98
    const-wide/16 v10, 0x0

    .line 99
    .line 100
    const/4 v13, 0x0

    .line 101
    const-wide/16 v14, 0x0

    .line 102
    .line 103
    invoke-static/range {v7 .. v19}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    and-int/lit16 v1, v1, -0x381

    .line 108
    .line 109
    move-object/from16 v19, v2

    .line 110
    .line 111
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 112
    .line 113
    .line 114
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 115
    .line 116
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 121
    .line 122
    const/16 v7, 0x20

    .line 123
    .line 124
    ushr-long v7, v4, v7

    .line 125
    .line 126
    xor-long/2addr v4, v7

    .line 127
    long-to-int v4, v4

    .line 128
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    move-object/from16 v7, p1

    .line 133
    .line 134
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 146
    .line 147
    .line 148
    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 149
    .line 150
    if-eqz v10, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 157
    .line 158
    .line 159
    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 160
    .line 161
    invoke-static {v0, v2, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 174
    .line 175
    invoke-static {v0, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 176
    .line 177
    .line 178
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 179
    .line 180
    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 181
    .line 182
    .line 183
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 184
    .line 185
    invoke-static {v0, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    .line 187
    .line 188
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 189
    .line 190
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    .line 191
    .line 192
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 193
    .line 194
    invoke-virtual {v2, v5, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    and-int/lit8 v21, v1, 0xe

    .line 199
    .line 200
    const/16 v22, 0x0

    .line 201
    .line 202
    const v23, 0x1fffc

    .line 203
    .line 204
    .line 205
    move-object v1, v2

    .line 206
    const-wide/16 v2, 0x0

    .line 207
    .line 208
    const/4 v4, 0x0

    .line 209
    move v8, v6

    .line 210
    const-wide/16 v5, 0x0

    .line 211
    .line 212
    const/4 v7, 0x0

    .line 213
    move v9, v8

    .line 214
    const/4 v8, 0x0

    .line 215
    move v11, v9

    .line 216
    const-wide/16 v9, 0x0

    .line 217
    .line 218
    move v12, v11

    .line 219
    const/4 v11, 0x0

    .line 220
    move v14, v12

    .line 221
    const-wide/16 v12, 0x0

    .line 222
    .line 223
    move v15, v14

    .line 224
    const/4 v14, 0x0

    .line 225
    move/from16 v16, v15

    .line 226
    .line 227
    const/4 v15, 0x0

    .line 228
    move/from16 v17, v16

    .line 229
    .line 230
    const/16 v16, 0x0

    .line 231
    .line 232
    move/from16 v18, v17

    .line 233
    .line 234
    const/16 v17, 0x0

    .line 235
    .line 236
    move/from16 v20, v18

    .line 237
    .line 238
    const/16 v18, 0x0

    .line 239
    .line 240
    move-object/from16 v20, v0

    .line 241
    .line 242
    move-object/from16 v0, p0

    .line 243
    .line 244
    invoke-static/range {v0 .. v23}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 245
    .line 246
    .line 247
    move-object/from16 v0, v20

    .line 248
    .line 249
    const/4 v11, 0x1

    .line 250
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 251
    .line 252
    .line 253
    move-object/from16 v5, v19

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 257
    .line 258
    .line 259
    move-object/from16 v5, p2

    .line 260
    .line 261
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_6

    .line 266
    .line 267
    new-instance v2, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;

    .line 268
    .line 269
    const/4 v7, 0x0

    .line 270
    move-object/from16 v3, p0

    .line 271
    .line 272
    move-object/from16 v4, p1

    .line 273
    .line 274
    move/from16 v6, p4

    .line 275
    .line 276
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;II)V

    .line 277
    .line 278
    .line 279
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 280
    .line 281
    :cond_6
    return-void
.end method

.method public static generateRandomId()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v1, v3, v4

    .line 19
    .line 20
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "%08x"

    .line 25
    .line 26
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    new-array v6, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v5, v6, v4

    .line 41
    .line 42
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const v5, 0xffff

    .line 55
    .line 56
    .line 57
    and-int/2addr v0, v5

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-array v5, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object v0, v5, v4

    .line 65
    .line 66
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "%04x"

    .line 71
    .line 72
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v3, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/util/TabUtil;->SESSION_ID:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const v1, 0x7f1205f9

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/wikipedia/util/TabUtil;->SESSION_ID:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lorg/wikipedia/util/TabUtil;->generateRandomId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/wikipedia/util/TabUtil;->SESSION_ID:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v0, Lorg/wikipedia/util/TabUtil;->SESSION_ID:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static final invalidatesCache(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "POST"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "PATCH"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "PUT"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "DELETE"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const-string v0, "MOVE"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public static final newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 5
    .line 6
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 7
    .line 8
    iget-object v1, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 9
    .line 10
    iget-wide v4, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    .line 11
    .line 12
    iget-wide v6, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 13
    .line 14
    iget-wide v8, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    .line 15
    .line 16
    iget-wide v10, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    .line 17
    .line 18
    iget-wide v12, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 19
    .line 20
    iget-object v14, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 21
    .line 22
    invoke-direct/range {v0 .. v14}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object p0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Companion;

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    :goto_0
    const-string p1, "imageTagPage"

    .line 41
    .line 42
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "invokeSource"

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public static openInNewBackgroundTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/wikipedia/page/tabs/Tab;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lorg/wikipedia/page/tabs/Tab;

    .line 27
    .line 28
    invoke-direct {v2}, Lorg/wikipedia/page/tabs/Tab;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-lez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/16 v5, 0x64

    .line 45
    .line 46
    if-le v4, v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v1, v2, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 53
    .line 54
    new-instance v2, Lorg/wikipedia/page/PageBackStackItem;

    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/page/PageBackStackItem;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->commitTabState()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x1

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v9, 0x0

    .line 11
    const/4 v10, 0x0

    .line 12
    const/4 v11, -0x1

    .line 13
    const/4 v12, -0x1

    .line 14
    const/4 v13, 0x0

    .line 15
    const/4 v14, 0x0

    .line 16
    const/4 v15, 0x0

    .line 17
    const/16 v16, -0x1

    .line 18
    .line 19
    const/16 v17, -0x1

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    const/16 v20, 0x0

    .line 26
    .line 27
    :goto_0
    if-ge v6, v1, :cond_18

    .line 28
    .line 29
    invoke-static {v0, v6}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/16 v22, 0x1

    .line 34
    .line 35
    invoke-static {v0, v6}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "Cache-Control"

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    :goto_1
    const/4 v7, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    move-object v8, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const-string v5, "Pragma"

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_17

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :goto_2
    const/4 v2, 0x0

    .line 63
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-ge v2, v5, :cond_17

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    move v3, v2

    .line 74
    :goto_4
    if-ge v3, v5, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    move/from16 v23, v1

    .line 81
    .line 82
    const-string v1, "=,;"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    move-object/from16 v0, p0

    .line 94
    .line 95
    move/from16 v1, v23

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_3
    move/from16 v23, v1

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    :goto_5
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eq v3, v1, :cond_a

    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const/16 v2, 0x2c

    .line 127
    .line 128
    if-eq v1, v2, :cond_a

    .line 129
    .line 130
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/16 v2, 0x3b

    .line 135
    .line 136
    if-ne v1, v2, :cond_4

    .line 137
    .line 138
    goto/16 :goto_a

    .line 139
    .line 140
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    sget-object v1, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    :goto_6
    if-ge v3, v1, :cond_6

    .line 149
    .line 150
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/16 v5, 0x20

    .line 155
    .line 156
    if-eq v2, v5, :cond_5

    .line 157
    .line 158
    const/16 v5, 0x9

    .line 159
    .line 160
    if-eq v2, v5, :cond_5

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-ge v3, v1, :cond_7

    .line 175
    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    const/16 v2, 0x22

    .line 181
    .line 182
    if-ne v1, v2, :cond_7

    .line 183
    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    const/4 v1, 0x4

    .line 187
    invoke-static {v4, v2, v3, v1}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    goto :goto_b

    .line 198
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    move v2, v3

    .line 203
    :goto_8
    if-ge v2, v1, :cond_9

    .line 204
    .line 205
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    move/from16 v24, v1

    .line 210
    .line 211
    const-string v1, ",;"

    .line 212
    .line 213
    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_8

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 221
    .line 222
    move/from16 v1, v24

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    :goto_9
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    move/from16 v25, v2

    .line 242
    .line 243
    move-object v2, v1

    .line 244
    move/from16 v1, v25

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_a
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 248
    .line 249
    move v1, v3

    .line 250
    const/4 v2, 0x0

    .line 251
    :goto_b
    const-string v3, "no-cache"

    .line 252
    .line 253
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_b

    .line 258
    .line 259
    move-object/from16 v0, p0

    .line 260
    .line 261
    move v2, v1

    .line 262
    move/from16 v9, v22

    .line 263
    .line 264
    :goto_c
    move/from16 v1, v23

    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_b
    const-string v3, "no-store"

    .line 269
    .line 270
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_c

    .line 275
    .line 276
    move-object/from16 v0, p0

    .line 277
    .line 278
    move v2, v1

    .line 279
    move/from16 v10, v22

    .line 280
    .line 281
    goto :goto_c

    .line 282
    :cond_c
    const-string v3, "max-age"

    .line 283
    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_e

    .line 289
    .line 290
    const/4 v3, -0x1

    .line 291
    invoke-static {v3, v2}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    .line 296
    .line 297
    move v2, v1

    .line 298
    goto :goto_c

    .line 299
    :cond_e
    const/4 v3, -0x1

    .line 300
    const-string v5, "s-maxage"

    .line 301
    .line 302
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    if-eqz v5, :cond_f

    .line 307
    .line 308
    invoke-static {v3, v2}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v12

    .line 312
    goto :goto_d

    .line 313
    :cond_f
    const-string v3, "private"

    .line 314
    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_10

    .line 320
    .line 321
    move-object/from16 v0, p0

    .line 322
    .line 323
    move v2, v1

    .line 324
    move/from16 v13, v22

    .line 325
    .line 326
    goto :goto_c

    .line 327
    :cond_10
    const-string v3, "public"

    .line 328
    .line 329
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_11

    .line 334
    .line 335
    move-object/from16 v0, p0

    .line 336
    .line 337
    move v2, v1

    .line 338
    move/from16 v14, v22

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_11
    const-string v3, "must-revalidate"

    .line 342
    .line 343
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_12

    .line 348
    .line 349
    move-object/from16 v0, p0

    .line 350
    .line 351
    move v2, v1

    .line 352
    move/from16 v15, v22

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_12
    const-string v3, "max-stale"

    .line 356
    .line 357
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_13

    .line 362
    .line 363
    const v0, 0x7fffffff

    .line 364
    .line 365
    .line 366
    invoke-static {v0, v2}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v16

    .line 370
    goto :goto_d

    .line 371
    :cond_13
    const-string v3, "min-fresh"

    .line 372
    .line 373
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-eqz v3, :cond_14

    .line 378
    .line 379
    const/4 v3, -0x1

    .line 380
    invoke-static {v3, v2}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move-result v17

    .line 384
    goto :goto_d

    .line 385
    :cond_14
    const/4 v3, -0x1

    .line 386
    const-string v2, "only-if-cached"

    .line 387
    .line 388
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_15

    .line 393
    .line 394
    move-object/from16 v0, p0

    .line 395
    .line 396
    move v2, v1

    .line 397
    move/from16 v18, v22

    .line 398
    .line 399
    goto/16 :goto_c

    .line 400
    .line 401
    :cond_15
    const-string v2, "no-transform"

    .line 402
    .line 403
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_16

    .line 408
    .line 409
    move-object/from16 v0, p0

    .line 410
    .line 411
    move v2, v1

    .line 412
    move/from16 v19, v22

    .line 413
    .line 414
    goto/16 :goto_c

    .line 415
    .line 416
    :cond_16
    const-string v2, "immutable"

    .line 417
    .line 418
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_d

    .line 423
    .line 424
    move-object/from16 v0, p0

    .line 425
    .line 426
    move v2, v1

    .line 427
    move/from16 v20, v22

    .line 428
    .line 429
    goto/16 :goto_c

    .line 430
    .line 431
    :cond_17
    move/from16 v23, v1

    .line 432
    .line 433
    const/4 v3, -0x1

    .line 434
    add-int/lit8 v6, v6, 0x1

    .line 435
    .line 436
    move-object/from16 v0, p0

    .line 437
    .line 438
    move/from16 v1, v23

    .line 439
    .line 440
    goto/16 :goto_0

    .line 441
    .line 442
    :cond_18
    if-nez v7, :cond_19

    .line 443
    .line 444
    const/16 v21, 0x0

    .line 445
    .line 446
    goto :goto_e

    .line 447
    :cond_19
    move-object/from16 v21, v8

    .line 448
    .line 449
    :goto_e
    new-instance v8, Lokhttp3/CacheControl;

    .line 450
    .line 451
    invoke-direct/range {v8 .. v21}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return-object v8
.end method

.method public static final permitsRequestBody(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "GET"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "HEAD"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static readingListTitleDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;
    .locals 17

    .line 1
    new-instance v0, Lorg/wikipedia/views/TextInputDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object/from16 v2, p0

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v1}, Lorg/wikipedia/views/TextInputDialog;-><init>(Landroid/content/Context;II)V

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const v3, 0x7f0c0189

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f0905db

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    move-object v8, v5

    .line 29
    check-cast v8, Lorg/wikipedia/views/PlainPasteEditText;

    .line 30
    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    const v3, 0x7f0905dc

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move-object v9, v5

    .line 41
    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 42
    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    const v3, 0x7f0906a1

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v10, v5

    .line 53
    check-cast v10, Lorg/wikipedia/views/PlainPasteEditText;

    .line 54
    .line 55
    if-eqz v10, :cond_0

    .line 56
    .line 57
    const v3, 0x7f0906a2

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    move-object v11, v5

    .line 65
    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 66
    .line 67
    if-eqz v11, :cond_0

    .line 68
    .line 69
    new-instance v6, Lokio/internal/DefaultSocket;

    .line 70
    .line 71
    move-object v7, v2

    .line 72
    check-cast v7, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    const/16 v12, 0xe

    .line 75
    .line 76
    invoke-direct/range {v6 .. v12}, Lokio/internal/DefaultSocket;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iput-object v6, v0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 80
    .line 81
    iget-object v2, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 84
    .line 85
    iput-object v7, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    invoke-virtual {v11, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 92
    .line 93
    const/16 v3, 0x12

    .line 94
    .line 95
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const v3, 0x7f1209ad

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 105
    .line 106
    invoke-direct {v2, v0}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/views/TextInputDialog;)V

    .line 107
    .line 108
    .line 109
    const v3, 0x7f1209ac

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Landroidx/appcompat/widget/SearchView$10;

    .line 116
    .line 117
    const/16 v3, 0xd

    .line 118
    .line 119
    invoke-direct {v2, v3, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    .line 124
    .line 125
    new-instance v11, Lokio/internal/DefaultSocket;

    .line 126
    .line 127
    const/16 v16, 0x1b

    .line 128
    .line 129
    move-object/from16 v12, p1

    .line 130
    .line 131
    move-object/from16 v13, p2

    .line 132
    .line 133
    move-object/from16 v14, p3

    .line 134
    .line 135
    move-object/from16 v15, p4

    .line 136
    .line 137
    invoke-direct/range {v11 .. v16}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    iput-object v11, v0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "Missing required view with ID: "

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v4
.end method

.method public static validateInput(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->INVALID_USERNAME:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    .line 36
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->PASSWORD_TOO_SHORT:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-static {v0, p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->PASSWORD_IS_USERNAME:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_3

    .line 70
    .line 71
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->PASSWORD_MISMATCH:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-lez p0, :cond_4

    .line 79
    .line 80
    sget-object p0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 81
    .line 82
    invoke-virtual {p0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_4

    .line 91
    .line 92
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->INVALID_EMAIL:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_5

    .line 100
    .line 101
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->NO_EMAIL:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_5
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->SUCCESS:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 105
    .line 106
    return-object p0
.end method
