.class public abstract Lokhttp3/Cookie$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static final FeaturedArticleModule(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 14

    .line 1
    move-object/from16 v11, p8

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
    const v0, -0x79d754b0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p9, v0

    .line 25
    .line 26
    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v1, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr v0, v1

    .line 38
    move-object/from16 v2, p2

    .line 39
    .line 40
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v1, 0x80

    .line 50
    .line 51
    :goto_2
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
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const/16 v1, 0x800

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v1, 0x400

    .line 64
    .line 65
    :goto_3
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
    if-eqz v1, :cond_4

    .line 73
    .line 74
    const/16 v1, 0x4000

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/16 v1, 0x2000

    .line 78
    .line 79
    :goto_4
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
    if-eqz v1, :cond_5

    .line 87
    .line 88
    const/high16 v1, 0x20000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/high16 v1, 0x10000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v1

    .line 94
    move-object/from16 v8, p6

    .line 95
    .line 96
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    const/high16 v1, 0x100000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    const/high16 v1, 0x80000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v0, v1

    .line 108
    move-object/from16 v12, p7

    .line 109
    .line 110
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    const/high16 v1, 0x800000

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_7
    const/high16 v1, 0x400000

    .line 120
    .line 121
    :goto_7
    or-int/2addr v0, v1

    .line 122
    const v1, 0x492493

    .line 123
    .line 124
    .line 125
    and-int/2addr v1, v0

    .line 126
    const v3, 0x492492

    .line 127
    .line 128
    .line 129
    if-eq v1, v3, :cond_8

    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    goto :goto_8

    .line 133
    :cond_8
    const/4 v1, 0x0

    .line 134
    :goto_8
    and-int/lit8 v3, v0, 0x1

    .line 135
    .line 136
    invoke-virtual {v11, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_9

    .line 141
    .line 142
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 143
    .line 144
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    move-object v4, v1

    .line 149
    check-cast v4, Landroid/content/Context;

    .line 150
    .line 151
    new-instance v1, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    const/4 v8, 0x3

    .line 154
    move-object v7, p0

    .line 155
    move-object v3, p1

    .line 156
    move-object/from16 v5, p6

    .line 157
    .line 158
    invoke-direct/range {v1 .. v8}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    const v2, 0x95c4d82

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    shl-int/lit8 v2, v0, 0x3

    .line 169
    .line 170
    and-int/lit8 v3, v2, 0x70

    .line 171
    .line 172
    const/high16 v4, 0x30000000

    .line 173
    .line 174
    or-int/2addr v3, v4

    .line 175
    shl-int/lit8 v0, v0, 0x9

    .line 176
    .line 177
    const/high16 v4, 0x380000

    .line 178
    .line 179
    and-int/2addr v4, v0

    .line 180
    or-int/2addr v3, v4

    .line 181
    const/high16 v4, 0x1c00000

    .line 182
    .line 183
    and-int/2addr v0, v4

    .line 184
    or-int/2addr v0, v3

    .line 185
    const/high16 v3, 0xe000000

    .line 186
    .line 187
    and-int/2addr v2, v3

    .line 188
    or-int/2addr v0, v2

    .line 189
    const/16 v13, 0x31

    .line 190
    .line 191
    move v12, v0

    .line 192
    const/4 v0, 0x0

    .line 193
    const v2, 0x7f1209e5

    .line 194
    .line 195
    .line 196
    const v3, 0x7f1201f9

    .line 197
    .line 198
    .line 199
    const/4 v4, 0x0

    .line 200
    const-wide/16 v5, 0x0

    .line 201
    .line 202
    move-object v7, v9

    .line 203
    move-object v8, v10

    .line 204
    move-object/from16 v9, p7

    .line 205
    .line 206
    move-object v10, v1

    .line 207
    move-object v1, p0

    .line 208
    invoke-static/range {v0 .. v13}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityModuleContainer-Yod850M(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;IILjava/lang/Integer;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 209
    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_9
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 213
    .line 214
    .line 215
    :goto_9
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    new-instance v1, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda5;

    .line 222
    .line 223
    const/4 v11, 0x3

    .line 224
    move-object v2, p0

    .line 225
    move-object v3, p1

    .line 226
    move-object/from16 v4, p2

    .line 227
    .line 228
    move-object/from16 v5, p3

    .line 229
    .line 230
    move-object/from16 v6, p4

    .line 231
    .line 232
    move-object/from16 v7, p5

    .line 233
    .line 234
    move-object/from16 v8, p6

    .line 235
    .line 236
    move-object/from16 v9, p7

    .line 237
    .line 238
    move/from16 v10, p9

    .line 239
    .line 240
    invoke-direct/range {v1 .. v11}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 241
    .line 242
    .line 243
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 244
    .line 245
    :cond_a
    return-void
.end method

.method public static final LanguageListItemView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    const v3, 0x6e4cf1e8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x2

    .line 22
    :goto_0
    or-int v3, p4, v3

    .line 23
    .line 24
    move-object/from16 v4, p1

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/16 v6, 0x20

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    move v5, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v5, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v3, v5

    .line 39
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    const/16 v5, 0x100

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v5, 0x80

    .line 49
    .line 50
    :goto_2
    or-int/2addr v3, v5

    .line 51
    and-int/lit16 v5, v3, 0x93

    .line 52
    .line 53
    const/16 v7, 0x92

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x1

    .line 57
    if-eq v5, v7, :cond_3

    .line 58
    .line 59
    move v5, v9

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v5, v8

    .line 62
    :goto_3
    and-int/lit8 v7, v3, 0x1

    .line 63
    .line 64
    invoke-virtual {v0, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_6

    .line 69
    .line 70
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 71
    .line 72
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 73
    .line 74
    const/4 v10, 0x6

    .line 75
    invoke-static {v5, v7, v0, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 80
    .line 81
    ushr-long v6, v11, v6

    .line 82
    .line 83
    xor-long/2addr v6, v11

    .line 84
    long-to-int v6, v6

    .line 85
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 94
    .line 95
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 101
    .line 102
    .line 103
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 104
    .line 105
    if-eqz v13, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 112
    .line 113
    .line 114
    :goto_4
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {v0, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v0, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 129
    .line 130
    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 134
    .line 135
    invoke-static {v0, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 136
    .line 137
    .line 138
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 139
    .line 140
    invoke-static {v0, v11, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    check-cast v6, Landroidx/compose/material3/Typography;

    .line 150
    .line 151
    iget-object v11, v6, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 152
    .line 153
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 154
    .line 155
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 160
    .line 161
    iget-wide v12, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 162
    .line 163
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 164
    .line 165
    const/16 v22, 0x0

    .line 166
    .line 167
    const v23, 0xfffffa

    .line 168
    .line 169
    .line 170
    const-wide/16 v14, 0x0

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    const-wide/16 v18, 0x0

    .line 175
    .line 176
    const-wide/16 v20, 0x0

    .line 177
    .line 178
    invoke-static/range {v11 .. v23}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 179
    .line 180
    .line 181
    move-result-object v22

    .line 182
    shr-int/lit8 v7, v3, 0x3

    .line 183
    .line 184
    and-int/lit8 v24, v7, 0xe

    .line 185
    .line 186
    const/16 v25, 0x0

    .line 187
    .line 188
    const v26, 0x1fffe

    .line 189
    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    move-object v7, v5

    .line 193
    move-object v11, v6

    .line 194
    const-wide/16 v5, 0x0

    .line 195
    .line 196
    move-object v12, v7

    .line 197
    const/4 v7, 0x0

    .line 198
    move v13, v8

    .line 199
    move v14, v9

    .line 200
    const-wide/16 v8, 0x0

    .line 201
    .line 202
    move v15, v10

    .line 203
    const/4 v10, 0x0

    .line 204
    move-object/from16 v16, v11

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    move-object/from16 v17, v12

    .line 208
    .line 209
    move/from16 v18, v13

    .line 210
    .line 211
    const-wide/16 v12, 0x0

    .line 212
    .line 213
    move/from16 v19, v14

    .line 214
    .line 215
    const/4 v14, 0x0

    .line 216
    move/from16 v21, v15

    .line 217
    .line 218
    move-object/from16 v20, v16

    .line 219
    .line 220
    const-wide/16 v15, 0x0

    .line 221
    .line 222
    move-object/from16 v23, v17

    .line 223
    .line 224
    const/16 v17, 0x0

    .line 225
    .line 226
    move/from16 v27, v18

    .line 227
    .line 228
    const/16 v18, 0x0

    .line 229
    .line 230
    move/from16 v28, v19

    .line 231
    .line 232
    const/16 v19, 0x0

    .line 233
    .line 234
    move-object/from16 v29, v20

    .line 235
    .line 236
    const/16 v20, 0x0

    .line 237
    .line 238
    move/from16 v30, v21

    .line 239
    .line 240
    const/16 v21, 0x0

    .line 241
    .line 242
    move-object/from16 v1, v23

    .line 243
    .line 244
    move-object/from16 v23, v0

    .line 245
    .line 246
    move-object v0, v1

    .line 247
    move/from16 v27, v3

    .line 248
    .line 249
    move-object/from16 v1, v29

    .line 250
    .line 251
    move-object/from16 v3, p1

    .line 252
    .line 253
    invoke-static/range {v3 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v3, v23

    .line 257
    .line 258
    if-eqz v2, :cond_5

    .line 259
    .line 260
    const v4, 0x57479488

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 271
    .line 272
    iget-object v4, v0, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 273
    .line 274
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 279
    .line 280
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 281
    .line 282
    const/16 v0, 0x18

    .line 283
    .line 284
    invoke-static {v0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v13

    .line 288
    const/4 v15, 0x0

    .line 289
    const v16, 0xfd7ffe

    .line 290
    .line 291
    .line 292
    const-wide/16 v7, 0x0

    .line 293
    .line 294
    const/4 v9, 0x0

    .line 295
    const/4 v10, 0x0

    .line 296
    const-wide/16 v11, 0x0

    .line 297
    .line 298
    invoke-static/range {v4 .. v16}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 299
    .line 300
    .line 301
    move-result-object v21

    .line 302
    shr-int/lit8 v0, v27, 0x6

    .line 303
    .line 304
    and-int/lit8 v23, v0, 0xe

    .line 305
    .line 306
    const/16 v24, 0x0

    .line 307
    .line 308
    const v25, 0x1fffe

    .line 309
    .line 310
    .line 311
    const/4 v3, 0x0

    .line 312
    const-wide/16 v4, 0x0

    .line 313
    .line 314
    const/4 v6, 0x0

    .line 315
    const/4 v13, 0x0

    .line 316
    const-wide/16 v14, 0x0

    .line 317
    .line 318
    const/16 v16, 0x0

    .line 319
    .line 320
    const/16 v17, 0x0

    .line 321
    .line 322
    const/16 v18, 0x0

    .line 323
    .line 324
    const/16 v19, 0x0

    .line 325
    .line 326
    const/16 v20, 0x0

    .line 327
    .line 328
    move-object/from16 v22, p3

    .line 329
    .line 330
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v0, v22

    .line 334
    .line 335
    const/4 v13, 0x0

    .line 336
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 337
    .line 338
    .line 339
    :goto_5
    const/4 v14, 0x1

    .line 340
    goto :goto_6

    .line 341
    :cond_5
    move-object v0, v3

    .line 342
    const/4 v13, 0x0

    .line 343
    const v1, 0x574c36c4

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :goto_6
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 354
    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 358
    .line 359
    .line 360
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    if-eqz v6, :cond_7

    .line 365
    .line 366
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 367
    .line 368
    const/16 v5, 0x10

    .line 369
    .line 370
    move-object/from16 v1, p0

    .line 371
    .line 372
    move-object/from16 v2, p1

    .line 373
    .line 374
    move-object/from16 v3, p2

    .line 375
    .line 376
    move/from16 v4, p4

    .line 377
    .line 378
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 379
    .line 380
    .line 381
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 382
    .line 383
    :cond_7
    return-void
.end method

.method public static final LanguagesListScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;Landroidx/compose/runtime/GapComposer;I)V
    .locals 22

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v6, p5

    .line 6
    .line 7
    move-object/from16 v0, p7

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const v1, 0x6dc00a4e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    .line 30
    move-object/from16 v7, p0

    .line 31
    .line 32
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x2

    .line 41
    :goto_0
    or-int v1, p8, v1

    .line 42
    .line 43
    move-object/from16 v8, p1

    .line 44
    .line 45
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const/16 v2, 0x20

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/16 v2, 0x10

    .line 55
    .line 56
    :goto_1
    or-int/2addr v1, v2

    .line 57
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    const/16 v2, 0x100

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/16 v2, 0x80

    .line 67
    .line 68
    :goto_2
    or-int/2addr v1, v2

    .line 69
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    const/16 v2, 0x800

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/16 v2, 0x400

    .line 79
    .line 80
    :goto_3
    or-int/2addr v1, v2

    .line 81
    move-object/from16 v11, p4

    .line 82
    .line 83
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    const/16 v2, 0x4000

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    const/16 v2, 0x2000

    .line 93
    .line 94
    :goto_4
    or-int/2addr v1, v2

    .line 95
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    const/high16 v2, 0x20000

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_5
    const/high16 v2, 0x10000

    .line 105
    .line 106
    :goto_5
    or-int/2addr v1, v2

    .line 107
    move-object/from16 v12, p6

    .line 108
    .line 109
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    const/high16 v2, 0x100000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_6
    const/high16 v2, 0x80000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v1, v2

    .line 121
    const v2, 0x92493

    .line 122
    .line 123
    .line 124
    and-int/2addr v2, v1

    .line 125
    const v5, 0x92492

    .line 126
    .line 127
    .line 128
    if-eq v2, v5, :cond_7

    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    goto :goto_7

    .line 132
    :cond_7
    const/4 v2, 0x0

    .line 133
    :goto_7
    and-int/lit8 v5, v1, 0x1

    .line 134
    .line 135
    invoke-virtual {v0, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_9

    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 146
    .line 147
    if-ne v2, v5, :cond_8

    .line 148
    .line 149
    const-string v2, ""

    .line 150
    .line 151
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_8
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 159
    .line 160
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 161
    .line 162
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    move-object v10, v5

    .line 167
    check-cast v10, Landroid/content/Context;

    .line 168
    .line 169
    new-instance v5, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 170
    .line 171
    invoke-direct {v5, v6, v4, v3, v2}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    .line 172
    .line 173
    .line 174
    const v2, 0x7ccc4712

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 188
    .line 189
    iget-wide v13, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 190
    .line 191
    new-instance v7, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;

    .line 192
    .line 193
    move-object/from16 v9, p0

    .line 194
    .line 195
    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;-><init>(Lorg/wikipedia/util/UiState;Landroidx/compose/ui/Modifier;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;)V

    .line 196
    .line 197
    .line 198
    const v5, 0x7b0043dd

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v7, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 202
    .line 203
    .line 204
    move-result-object v18

    .line 205
    and-int/lit8 v1, v1, 0xe

    .line 206
    .line 207
    const v5, 0x30000030

    .line 208
    .line 209
    .line 210
    or-int v20, v1, v5

    .line 211
    .line 212
    const/16 v21, 0x1bc

    .line 213
    .line 214
    const/4 v9, 0x0

    .line 215
    const/4 v10, 0x0

    .line 216
    const/4 v11, 0x0

    .line 217
    const/4 v12, 0x0

    .line 218
    const-wide/16 v15, 0x0

    .line 219
    .line 220
    const/16 v17, 0x0

    .line 221
    .line 222
    move-object/from16 v7, p0

    .line 223
    .line 224
    move-object/from16 v19, v0

    .line 225
    .line 226
    move-object v8, v2

    .line 227
    invoke-static/range {v7 .. v21}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 228
    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_9
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 232
    .line 233
    .line 234
    :goto_8
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    if-eqz v9, :cond_a

    .line 239
    .line 240
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda22;

    .line 241
    .line 242
    move-object/from16 v1, p0

    .line 243
    .line 244
    move-object/from16 v2, p1

    .line 245
    .line 246
    move-object/from16 v5, p4

    .line 247
    .line 248
    move-object/from16 v7, p6

    .line 249
    .line 250
    move/from16 v8, p8

    .line 251
    .line 252
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda22;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;I)V

    .line 253
    .line 254
    .line 255
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 256
    .line 257
    :cond_a
    return-void
.end method

.method public static final ListHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const v1, 0x79fb6040

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
    const/4 v7, 0x1

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

.method public static final RecommendedReadingListDiscoverCardView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLandroidx/compose/runtime/GapComposer;I)V
    .locals 15

    .line 1
    move-object/from16 v7, p7

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v0, 0x4b624c48    # 1.4830664E7f

    .line 7
    .line 8
    .line 9
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int v0, p8, v0

    .line 22
    .line 23
    move-object/from16 v12, p1

    .line 24
    .line 25
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v1, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v0, v1

    .line 37
    const v1, 0x7f080216

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v1, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v1

    .line 52
    move-object/from16 v14, p2

    .line 53
    .line 54
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const/16 v1, 0x800

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v1, 0x400

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v1

    .line 66
    move-object/from16 v11, p3

    .line 67
    .line 68
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    const/16 v1, 0x4000

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/16 v1, 0x2000

    .line 78
    .line 79
    :goto_4
    or-int/2addr v0, v1

    .line 80
    move-object/from16 v10, p4

    .line 81
    .line 82
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    const/high16 v1, 0x20000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/high16 v1, 0x10000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v1

    .line 94
    move/from16 v13, p5

    .line 95
    .line 96
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    const/high16 v1, 0x100000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    const/high16 v1, 0x80000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v0, v1

    .line 108
    const v1, 0x92493

    .line 109
    .line 110
    .line 111
    and-int/2addr v1, v0

    .line 112
    const v2, 0x92492

    .line 113
    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    if-eq v1, v2, :cond_7

    .line 117
    .line 118
    move v1, v3

    .line 119
    goto :goto_7

    .line 120
    :cond_7
    const/4 v1, 0x0

    .line 121
    :goto_7
    and-int/2addr v0, v3

    .line 122
    invoke-virtual {v7, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    new-instance v8, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    move-object v9, p0

    .line 131
    invoke-direct/range {v8 .. v14}, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const v0, -0x35742745    # -4582493.5f

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v8, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const v8, 0x180030

    .line 142
    .line 143
    .line 144
    const/16 v9, 0x3d

    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    const/high16 v1, 0x40800000    # 4.0f

    .line 148
    .line 149
    const/4 v2, 0x0

    .line 150
    const/4 v3, 0x0

    .line 151
    const/4 v4, 0x0

    .line 152
    const/4 v5, 0x0

    .line 153
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiCard-jfnsLPA(Landroidx/compose/ui/Modifier;FLandroidx/compose/material3/CardColors;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 154
    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_8
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 158
    .line 159
    .line 160
    :goto_8
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_9

    .line 165
    .line 166
    new-instance v1, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;

    .line 167
    .line 168
    move-object v2, p0

    .line 169
    move-object/from16 v3, p1

    .line 170
    .line 171
    move-object/from16 v4, p2

    .line 172
    .line 173
    move-object/from16 v5, p3

    .line 174
    .line 175
    move-object/from16 v6, p4

    .line 176
    .line 177
    move/from16 v7, p5

    .line 178
    .line 179
    move/from16 v8, p6

    .line 180
    .line 181
    move/from16 v9, p8

    .line 182
    .line 183
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZI)V

    .line 184
    .line 185
    .line 186
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 187
    .line 188
    :cond_9
    return-void
.end method

.method public static dateCharacterOffset(IILjava/lang/String;Z)I
    .locals 4

    .line 1
    :goto_0
    if-ge p0, p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    if-ne v0, v1, :cond_5

    .line 15
    .line 16
    :cond_0
    const/16 v1, 0x7f

    .line 17
    .line 18
    if-ge v0, v1, :cond_5

    .line 19
    .line 20
    const/16 v1, 0x30

    .line 21
    .line 22
    const/16 v3, 0x3a

    .line 23
    .line 24
    if-gt v1, v0, :cond_1

    .line 25
    .line 26
    if-ge v0, v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x61

    .line 30
    .line 31
    if-gt v1, v0, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x7b

    .line 34
    .line 35
    if-ge v0, v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/16 v1, 0x41

    .line 39
    .line 40
    if-gt v1, v0, :cond_3

    .line 41
    .line 42
    const/16 v1, 0x5b

    .line 43
    .line 44
    if-ge v0, v1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-ne v0, v3, :cond_4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const/4 v0, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    :goto_1
    move v0, v2

    .line 53
    :goto_2
    xor-int/lit8 v1, p3, 0x1

    .line 54
    .line 55
    if-ne v0, v1, :cond_6

    .line 56
    .line 57
    return p0

    .line 58
    :cond_6
    add-int/lit8 p0, p0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    return p1
.end method

.method public static getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p0, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p9, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p1, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p9, 0x4

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move-object p2, v1

    .line 17
    :cond_2
    and-int/lit8 v0, p9, 0x8

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    move-object p3, v1

    .line 22
    :cond_3
    and-int/lit8 v0, p9, 0x10

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    move-object p4, v1

    .line 27
    :cond_4
    and-int/lit8 v0, p9, 0x20

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    move-object p5, v1

    .line 32
    :cond_5
    and-int/lit16 v0, p9, 0x80

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    move-object p6, v1

    .line 37
    :cond_6
    and-int/lit16 v0, p9, 0x100

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    move-object p7, v1

    .line 42
    :cond_7
    and-int/lit16 p9, p9, 0x200

    .line 43
    .line 44
    if-eqz p9, :cond_8

    .line 45
    .line 46
    move-object p8, v1

    .line 47
    :cond_8
    const-string p9, ", "

    .line 48
    .line 49
    if-eqz p0, :cond_9

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "revision_id: "

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_0

    .line 73
    :cond_9
    move-object p0, v1

    .line 74
    :goto_0
    const-string v0, ""

    .line 75
    .line 76
    if-nez p0, :cond_a

    .line 77
    .line 78
    move-object p0, v0

    .line 79
    :cond_a
    if-eqz p1, :cond_b

    .line 80
    .line 81
    const-string v2, "feedback: "

    .line 82
    .line 83
    invoke-static {v2, p1, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_1

    .line 88
    :cond_b
    move-object p1, v1

    .line 89
    :goto_1
    if-nez p1, :cond_c

    .line 90
    .line 91
    move-object p1, v0

    .line 92
    :cond_c
    if-eqz p2, :cond_d

    .line 93
    .line 94
    const-string v2, "feedback_text: "

    .line 95
    .line 96
    invoke-static {v2, p2, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    goto :goto_2

    .line 101
    :cond_d
    move-object p2, v1

    .line 102
    :goto_2
    if-nez p2, :cond_e

    .line 103
    .line 104
    move-object p2, v0

    .line 105
    :cond_e
    if-eqz p3, :cond_f

    .line 106
    .line 107
    const-string v2, "message_type: "

    .line 108
    .line 109
    invoke-static {v2, p3, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    goto :goto_3

    .line 114
    :cond_f
    move-object p3, v1

    .line 115
    :goto_3
    if-nez p3, :cond_10

    .line 116
    .line 117
    move-object p3, v0

    .line 118
    :cond_10
    if-eqz p4, :cond_11

    .line 119
    .line 120
    const-string v2, "summary_text: "

    .line 121
    .line 122
    invoke-static {v2, p4, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    goto :goto_4

    .line 127
    :cond_11
    move-object v2, v1

    .line 128
    :goto_4
    if-nez v2, :cond_12

    .line 129
    .line 130
    move-object v2, v0

    .line 131
    :cond_12
    if-eqz p4, :cond_14

    .line 132
    .line 133
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result p4

    .line 137
    if-lez p4, :cond_13

    .line 138
    .line 139
    const/4 p4, 0x1

    .line 140
    goto :goto_5

    .line 141
    :cond_13
    const/4 p4, 0x0

    .line 142
    :goto_5
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    goto :goto_6

    .line 147
    :cond_14
    move-object p4, v1

    .line 148
    :goto_6
    if-nez p4, :cond_15

    .line 149
    .line 150
    move-object p4, v0

    .line 151
    :cond_15
    if-eqz p5, :cond_16

    .line 152
    .line 153
    const-string v3, "filter_selected: "

    .line 154
    .line 155
    invoke-static {v3, p5, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p5

    .line 159
    goto :goto_7

    .line 160
    :cond_16
    move-object p5, v1

    .line 161
    :goto_7
    if-nez p5, :cond_17

    .line 162
    .line 163
    move-object p5, v0

    .line 164
    :cond_17
    if-eqz p6, :cond_18

    .line 165
    .line 166
    const-string v3, "filters_list: "

    .line 167
    .line 168
    invoke-static {v3, p6, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p6

    .line 172
    goto :goto_8

    .line 173
    :cond_18
    move-object p6, v1

    .line 174
    :goto_8
    if-nez p6, :cond_19

    .line 175
    .line 176
    move-object p6, v0

    .line 177
    :cond_19
    if-eqz p7, :cond_1a

    .line 178
    .line 179
    const-string v3, "app_language_code_added: "

    .line 180
    .line 181
    invoke-static {v3, p7, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p7

    .line 185
    goto :goto_9

    .line 186
    :cond_1a
    move-object p7, v1

    .line 187
    :goto_9
    if-nez p7, :cond_1b

    .line 188
    .line 189
    move-object p7, v0

    .line 190
    :cond_1b
    if-eqz p8, :cond_1c

    .line 191
    .line 192
    const-string v1, "app_language_codes: "

    .line 193
    .line 194
    invoke-static {v1, p8, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :cond_1c
    if-nez v1, :cond_1d

    .line 199
    .line 200
    move-object v1, v0

    .line 201
    :cond_1d
    invoke-static {p0, p1, p2, p3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {p0, p4, p5, v0, p6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p0, p7, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0
.end method

.method public static getInstance()Lorg/wikipedia/database/AppDatabase;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->instance$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/wikipedia/database/AppDatabase;

    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs getSharedElements(Landroid/content/Context;[Landroid/view/View;)[Landroid/util/Pair;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_3

    .line 13
    .line 14
    aget-object v4, p1, v3

    .line 15
    .line 16
    instance-of v5, v4, Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    move-object v5, v4

    .line 21
    check-cast v5, Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-lez v5, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    instance-of v5, v4, Landroid/widget/ImageView;

    .line 38
    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    move-object v5, v4

    .line 48
    check-cast v5, Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast v5, Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 74
    .line 75
    const/4 v6, 0x2

    .line 76
    if-ne v5, v6, :cond_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 80
    .line 81
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 p1, 0xa

    .line 96
    .line 97
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/view/View;

    .line 119
    .line 120
    new-instance v1, Landroid/util/Pair;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    new-array p1, v2, [Landroid/util/Pair;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    check-cast p0, [Landroid/util/Pair;

    .line 140
    .line 141
    return-object p0
.end method

.method public static log(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Mbgl-HttpRequest"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lorg/maplibre/android/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "intentAction"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 33

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sget-object v0, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v4, 0x3b

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v1, v4, v5, v0}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v6, 0x3d

    .line 27
    .line 28
    invoke-static {v1, v6, v5, v0}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v8, 0x0

    .line 33
    if-ne v7, v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v5, v7, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-static {v9, v7, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-nez v9, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v12}, Lokhttp3/internal/_UtilCommonKt;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    const/4 v10, -0x1

    .line 60
    if-eq v9, v10, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v9, 0x1

    .line 64
    add-int/2addr v7, v9

    .line 65
    invoke-static {v7, v0, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-static {v7, v0, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    invoke-static {v13}, Lokhttp3/internal/_UtilCommonKt;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eq v7, v10, :cond_3

    .line 82
    .line 83
    :goto_0
    return-object v8

    .line 84
    :cond_3
    add-int/2addr v0, v9

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const-wide v14, 0xe677d21fdbffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    move/from16 v20, v5

    .line 95
    .line 96
    move/from16 v22, v20

    .line 97
    .line 98
    move/from16 v26, v22

    .line 99
    .line 100
    move-object/from16 v23, v8

    .line 101
    .line 102
    move/from16 v19, v9

    .line 103
    .line 104
    move/from16 v21, v19

    .line 105
    .line 106
    move-wide/from16 v24, v14

    .line 107
    .line 108
    const-wide/16 v16, -0x1

    .line 109
    .line 110
    move-object/from16 v9, v23

    .line 111
    .line 112
    :goto_1
    const-wide v27, 0x7fffffffffffffffL

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const-wide/high16 v29, -0x8000000000000000L

    .line 118
    .line 119
    if-ge v0, v7, :cond_11

    .line 120
    .line 121
    const-wide/16 v31, -0x1

    .line 122
    .line 123
    invoke-static {v1, v4, v0, v7}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    invoke-static {v1, v6, v0, v10}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    invoke-static {v0, v11, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v0, v11, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-ge v11, v10, :cond_4

    .line 144
    .line 145
    add-int/lit8 v11, v11, 0x1

    .line 146
    .line 147
    invoke-static {v11, v10, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-static {v4, v10, v1}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    goto :goto_2

    .line 160
    :cond_4
    const-string v4, ""

    .line 161
    .line 162
    :goto_2
    const-string v11, "expires"

    .line 163
    .line 164
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-eqz v11, :cond_6

    .line 169
    .line 170
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-static {v0, v4}, Lokhttp3/Cookie$Companion;->parseExpires(ILjava/lang/String;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v24
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :cond_5
    :goto_3
    move/from16 v22, v19

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_6
    const-string v11, "max-age"

    .line 183
    .line 184
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-eqz v11, :cond_9

    .line 189
    .line 190
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    const-wide/16 v27, 0x0

    .line 195
    .line 196
    cmp-long v0, v16, v27

    .line 197
    .line 198
    if-gtz v0, :cond_5

    .line 199
    .line 200
    move-wide/from16 v16, v29

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catch_0
    move-exception v0

    .line 204
    :try_start_2
    const-string v11, "-?\\d+"

    .line 205
    .line 206
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_8

    .line 222
    .line 223
    const-string v0, "-"

    .line 224
    .line 225
    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_7

    .line 230
    .line 231
    move-wide/from16 v27, v29

    .line 232
    .line 233
    :cond_7
    move-wide/from16 v16, v27

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_8
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    :cond_9
    const-string v11, "domain"

    .line 238
    .line 239
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-eqz v11, :cond_c

    .line 244
    .line 245
    :try_start_3
    const-string v0, "."

    .line 246
    .line 247
    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-nez v11, :cond_b

    .line 252
    .line 253
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    if-eqz v0, :cond_a

    .line 262
    .line 263
    move-object v8, v0

    .line 264
    move/from16 v21, v5

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 268
    .line 269
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 270
    .line 271
    .line 272
    throw v0

    .line 273
    :cond_b
    const-string v0, "Failed requirement."

    .line 274
    .line 275
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 276
    .line 277
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 281
    :cond_c
    const-string v11, "path"

    .line 282
    .line 283
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-eqz v11, :cond_d

    .line 288
    .line 289
    move-object v9, v4

    .line 290
    goto :goto_4

    .line 291
    :cond_d
    const-string v11, "secure"

    .line 292
    .line 293
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    if-eqz v11, :cond_e

    .line 298
    .line 299
    move/from16 v26, v19

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_e
    const-string v11, "httponly"

    .line 303
    .line 304
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-eqz v11, :cond_f

    .line 309
    .line 310
    move/from16 v20, v19

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_f
    const-string v11, "samesite"

    .line 314
    .line 315
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_10

    .line 320
    .line 321
    move-object/from16 v23, v4

    .line 322
    .line 323
    :catch_1
    :cond_10
    :goto_4
    add-int/lit8 v0, v10, 0x1

    .line 324
    .line 325
    const/16 v4, 0x3b

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :cond_11
    const-wide/16 v31, -0x1

    .line 330
    .line 331
    cmp-long v0, v16, v29

    .line 332
    .line 333
    if-nez v0, :cond_12

    .line 334
    .line 335
    move-object/from16 v1, p0

    .line 336
    .line 337
    move-wide/from16 v14, v29

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_12
    cmp-long v0, v16, v31

    .line 341
    .line 342
    if-eqz v0, :cond_16

    .line 343
    .line 344
    const-wide v0, 0x20c49ba5e353f7L

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    cmp-long v0, v16, v0

    .line 350
    .line 351
    if-gtz v0, :cond_13

    .line 352
    .line 353
    const-wide/16 v0, 0x3e8

    .line 354
    .line 355
    mul-long v27, v16, v0

    .line 356
    .line 357
    :cond_13
    add-long v27, v2, v27

    .line 358
    .line 359
    cmp-long v0, v27, v2

    .line 360
    .line 361
    if-ltz v0, :cond_15

    .line 362
    .line 363
    cmp-long v0, v27, v14

    .line 364
    .line 365
    if-lez v0, :cond_14

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_14
    move-object/from16 v1, p0

    .line 369
    .line 370
    move-wide/from16 v14, v27

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_15
    :goto_5
    move-object/from16 v1, p0

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_16
    move-object/from16 v1, p0

    .line 377
    .line 378
    move-wide/from16 v14, v24

    .line 379
    .line 380
    :goto_6
    iget-object v0, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 381
    .line 382
    if-nez v8, :cond_17

    .line 383
    .line 384
    move-object v8, v0

    .line 385
    goto :goto_7

    .line 386
    :cond_17
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-eqz v2, :cond_18

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_18
    invoke-static {v0, v8, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-eqz v2, :cond_19

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    sub-int/2addr v2, v3

    .line 408
    add-int/lit8 v2, v2, -0x1

    .line 409
    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    const/16 v3, 0x2e

    .line 415
    .line 416
    if-ne v2, v3, :cond_19

    .line 417
    .line 418
    sget-object v2, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 419
    .line 420
    invoke-virtual {v2, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-nez v2, :cond_19

    .line 425
    .line 426
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-eq v0, v2, :cond_1a

    .line 435
    .line 436
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 437
    .line 438
    invoke-virtual {v0, v8}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    if-nez v0, :cond_1a

    .line 443
    .line 444
    :cond_19
    const/4 v8, 0x0

    .line 445
    goto :goto_b

    .line 446
    :cond_1a
    const-string v0, "/"

    .line 447
    .line 448
    if-eqz v9, :cond_1c

    .line 449
    .line 450
    invoke-static {v9, v0, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-nez v2, :cond_1b

    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_1b
    :goto_8
    move-object/from16 v17, v9

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_1c
    :goto_9
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    const/16 v2, 0x2f

    .line 465
    .line 466
    const/4 v3, 0x6

    .line 467
    invoke-static {v1, v2, v5, v3}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CII)I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-eqz v2, :cond_1d

    .line 472
    .line 473
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    :cond_1d
    move-object v9, v0

    .line 478
    goto :goto_8

    .line 479
    :goto_a
    new-instance v11, Lokhttp3/Cookie;

    .line 480
    .line 481
    move-object/from16 v16, v8

    .line 482
    .line 483
    move/from16 v19, v20

    .line 484
    .line 485
    move/from16 v20, v22

    .line 486
    .line 487
    move-object/from16 v22, v23

    .line 488
    .line 489
    move/from16 v18, v26

    .line 490
    .line 491
    invoke-direct/range {v11 .. v22}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 492
    .line 493
    .line 494
    move-object v8, v11

    .line 495
    :goto_b
    return-object v8
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;
    .locals 8

    .line 496
    const-string v0, "HTTP/1."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x4

    const/16 v3, 0x20

    .line 497
    const-string v4, "Unexpected status line: "

    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x7

    .line 499
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 500
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto :goto_0

    .line 501
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    goto :goto_0

    .line 503
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_3
    const-string v0, "ICY "

    .line 505
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 506
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    move v1, v2

    goto :goto_0

    .line 507
    :cond_4
    const-string v0, "SOURCETABLE "

    .line 508
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 509
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/16 v1, 0xc

    .line 510
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v1, 0x3

    if-lt v5, v6, :cond_8

    .line 511
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 512
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 513
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_5

    add-int/2addr v1, v2

    .line 514
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 515
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_6
    const-string p0, ""

    .line 517
    :goto_1
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    invoke-direct {v1, v0, v5, p0}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    return-object v1

    .line 518
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 519
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 520
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseExpires(ILjava/lang/String;)J
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, v0}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(IILjava/lang/String;Z)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sget-object v2, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, -0x1

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    move v9, v8

    .line 19
    :goto_0
    const/4 v10, 0x2

    .line 20
    const/4 v11, 0x1

    .line 21
    if-ge v1, p0, :cond_4

    .line 22
    .line 23
    add-int/lit8 v12, v1, 0x1

    .line 24
    .line 25
    invoke-static {v12, p0, p1, v11}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(IILjava/lang/String;Z)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    invoke-virtual {v2, v1, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    if-ne v5, v3, :cond_0

    .line 33
    .line 34
    sget-object v1, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/4 v1, 0x3

    .line 69
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    if-ne v6, v3, :cond_1

    .line 82
    .line 83
    sget-object v1, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    if-ne v7, v3, :cond_2

    .line 108
    .line 109
    sget-object v1, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_2

    .line 120
    .line 121
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    const/4 v10, 0x6

    .line 148
    invoke-static {v1, v7, v0, v0, v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    div-int/lit8 v7, v1, 0x4

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    if-ne v4, v3, :cond_3

    .line 156
    .line 157
    sget-object v1, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 181
    .line 182
    invoke-static {v12, p0, p1, v0}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(IILjava/lang/String;Z)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_4
    const/16 p0, 0x46

    .line 189
    .line 190
    if-gt p0, v4, :cond_5

    .line 191
    .line 192
    const/16 p1, 0x64

    .line 193
    .line 194
    if-ge v4, p1, :cond_5

    .line 195
    .line 196
    add-int/lit16 v4, v4, 0x76c

    .line 197
    .line 198
    :cond_5
    if-ltz v4, :cond_6

    .line 199
    .line 200
    if-ge v4, p0, :cond_6

    .line 201
    .line 202
    add-int/lit16 v4, v4, 0x7d0

    .line 203
    .line 204
    :cond_6
    const/16 p0, 0x641

    .line 205
    .line 206
    const-wide/16 v1, 0x0

    .line 207
    .line 208
    const-string p1, "Failed requirement."

    .line 209
    .line 210
    if-lt v4, p0, :cond_c

    .line 211
    .line 212
    if-eq v7, v3, :cond_b

    .line 213
    .line 214
    if-gt v11, v6, :cond_a

    .line 215
    .line 216
    const/16 p0, 0x20

    .line 217
    .line 218
    if-ge v6, p0, :cond_a

    .line 219
    .line 220
    if-ltz v5, :cond_9

    .line 221
    .line 222
    const/16 p0, 0x18

    .line 223
    .line 224
    if-ge v5, p0, :cond_9

    .line 225
    .line 226
    if-ltz v8, :cond_8

    .line 227
    .line 228
    const/16 p0, 0x3c

    .line 229
    .line 230
    if-ge v8, p0, :cond_8

    .line 231
    .line 232
    if-ltz v9, :cond_7

    .line 233
    .line 234
    if-ge v9, p0, :cond_7

    .line 235
    .line 236
    new-instance p0, Ljava/util/GregorianCalendar;

    .line 237
    .line 238
    sget-object p1, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 239
    .line 240
    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 247
    .line 248
    .line 249
    sub-int/2addr v7, v11

    .line 250
    invoke-virtual {p0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 251
    .line 252
    .line 253
    const/4 p1, 0x5

    .line 254
    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 255
    .line 256
    .line 257
    const/16 p1, 0xb

    .line 258
    .line 259
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    .line 260
    .line 261
    .line 262
    const/16 p1, 0xc

    .line 263
    .line 264
    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    .line 265
    .line 266
    .line 267
    const/16 p1, 0xd

    .line 268
    .line 269
    invoke-virtual {p0, p1, v9}, Ljava/util/Calendar;->set(II)V

    .line 270
    .line 271
    .line 272
    const/16 p1, 0xe

    .line 273
    .line 274
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 278
    .line 279
    .line 280
    move-result-wide p0

    .line 281
    return-wide p0

    .line 282
    :cond_7
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-wide v1

    .line 286
    :cond_8
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-wide v1

    .line 290
    :cond_9
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-wide v1

    .line 294
    :cond_a
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-wide v1

    .line 298
    :cond_b
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-wide v1

    .line 302
    :cond_c
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-wide v1
.end method

.method public static submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 2
    .line 3
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const-string v7, "app_patroller_experience"

    .line 18
    .line 19
    move-object v2, p0

    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
