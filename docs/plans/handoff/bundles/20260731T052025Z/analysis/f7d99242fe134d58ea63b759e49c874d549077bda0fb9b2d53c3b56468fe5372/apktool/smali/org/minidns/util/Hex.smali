.class public abstract Lorg/minidns/util/Hex;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final AccountLabel(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x12e79dba

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x2

    .line 24
    :goto_0
    or-int/2addr v2, v1

    .line 25
    or-int/lit8 v2, v2, 0x30

    .line 26
    .line 27
    and-int/lit8 v3, v2, 0x13

    .line 28
    .line 29
    const/16 v12, 0x12

    .line 30
    .line 31
    const/4 v13, 0x0

    .line 32
    const/4 v14, 0x1

    .line 33
    if-eq v3, v12, :cond_1

    .line 34
    .line 35
    move v3, v14

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, v13

    .line 38
    :goto_1
    and-int/2addr v2, v14

    .line 39
    invoke-virtual {v8, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-static {v0, v8}, Lkotlin/uuid/UuidKt;->getDisplayAccountName(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 50
    .line 51
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v3, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 61
    .line 62
    new-instance v4, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v5, 0x7

    .line 65
    invoke-direct {v4, v5}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    const/high16 v5, 0x40800000    # 4.0f

    .line 69
    .line 70
    invoke-direct {v3, v5, v14, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 71
    .line 72
    .line 73
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 74
    .line 75
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 76
    .line 77
    invoke-static {v3, v5, v8, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-wide v5, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 82
    .line 83
    const/16 v7, 0x20

    .line 84
    .line 85
    ushr-long v9, v5, v7

    .line 86
    .line 87
    xor-long/2addr v5, v9

    .line 88
    long-to-int v5, v5

    .line 89
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-static {v8, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 103
    .line 104
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 105
    .line 106
    .line 107
    iget-boolean v9, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 108
    .line 109
    if-eqz v9, :cond_2

    .line 110
    .line 111
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 116
    .line 117
    .line 118
    :goto_2
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 119
    .line 120
    invoke-static {v8, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    .line 122
    .line 123
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {v8, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 133
    .line 134
    invoke-static {v8, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 138
    .line 139
    invoke-static {v8, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 140
    .line 141
    .line 142
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {v8, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 148
    .line 149
    invoke-direct {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    .line 153
    .line 154
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 155
    .line 156
    const/16 v33, 0x0

    .line 157
    .line 158
    const v34, 0xfffb

    .line 159
    .line 160
    .line 161
    const-wide/16 v16, 0x0

    .line 162
    .line 163
    const-wide/16 v18, 0x0

    .line 164
    .line 165
    const/16 v21, 0x0

    .line 166
    .line 167
    const/16 v22, 0x0

    .line 168
    .line 169
    const/16 v23, 0x0

    .line 170
    .line 171
    const/16 v24, 0x0

    .line 172
    .line 173
    const-wide/16 v25, 0x0

    .line 174
    .line 175
    const/16 v27, 0x0

    .line 176
    .line 177
    const/16 v28, 0x0

    .line 178
    .line 179
    const/16 v29, 0x0

    .line 180
    .line 181
    const-wide/16 v30, 0x0

    .line 182
    .line 183
    const/16 v32, 0x0

    .line 184
    .line 185
    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v15}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    :try_start_0
    invoke-virtual {v3, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const/4 v9, 0x0

    .line 203
    const/16 v10, 0x3e

    .line 204
    .line 205
    const/4 v3, 0x0

    .line 206
    const-wide/16 v4, 0x0

    .line 207
    .line 208
    const/4 v6, 0x0

    .line 209
    const/4 v7, 0x0

    .line 210
    invoke-static/range {v2 .. v10}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 211
    .line 212
    .line 213
    instance-of v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 214
    .line 215
    if-eqz v2, :cond_3

    .line 216
    .line 217
    move-object v2, v0

    .line 218
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 219
    .line 220
    iget-object v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->email:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v2, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_3

    .line 229
    .line 230
    const v2, 0x7b64df4b

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 234
    .line 235
    .line 236
    const/4 v10, 0x0

    .line 237
    const/16 v11, 0x7e

    .line 238
    .line 239
    move-object v2, v3

    .line 240
    const/4 v3, 0x0

    .line 241
    const-wide/16 v4, 0x0

    .line 242
    .line 243
    const/4 v6, 0x0

    .line 244
    const/4 v7, 0x0

    .line 245
    move-object v9, v8

    .line 246
    const/4 v8, 0x0

    .line 247
    invoke-static/range {v2 .. v11}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 248
    .line 249
    .line 250
    move-object v8, v9

    .line 251
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_3
    const v2, 0x7b6634e6

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 262
    .line 263
    .line 264
    :goto_3
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 265
    .line 266
    .line 267
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 276
    .line 277
    .line 278
    move-object/from16 v2, p1

    .line 279
    .line 280
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    if-eqz v3, :cond_5

    .line 285
    .line 286
    new-instance v4, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 287
    .line 288
    invoke-direct {v4, v1, v12, v0, v2}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 292
    .line 293
    :cond_5
    return-void
.end method

.method public static final AccountListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move/from16 v0, p3

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v9, p5

    .line 16
    .line 17
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v4, -0x674e4ad0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x2

    .line 30
    const/4 v6, 0x4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    move v4, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v5

    .line 36
    :goto_0
    or-int v4, p6, v4

    .line 37
    .line 38
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/16 v8, 0x20

    .line 43
    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    move v7, v8

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v7, 0x10

    .line 49
    .line 50
    :goto_1
    or-int/2addr v4, v7

    .line 51
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_2

    .line 56
    .line 57
    const/16 v7, 0x100

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v7, 0x80

    .line 61
    .line 62
    :goto_2
    or-int/2addr v4, v7

    .line 63
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    const/16 v7, 0x800

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v7, 0x400

    .line 73
    .line 74
    :goto_3
    or-int/2addr v4, v7

    .line 75
    or-int/lit16 v4, v4, 0x6000

    .line 76
    .line 77
    and-int/lit16 v7, v4, 0x2493

    .line 78
    .line 79
    const/16 v10, 0x2492

    .line 80
    .line 81
    const/4 v12, 0x1

    .line 82
    if-eq v7, v10, :cond_4

    .line 83
    .line 84
    move v7, v12

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    const/4 v7, 0x0

    .line 87
    :goto_4
    and-int/lit8 v10, v4, 0x1

    .line 88
    .line 89
    invoke-virtual {v9, v10, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_9

    .line 94
    .line 95
    and-int/lit8 v7, v4, 0xe

    .line 96
    .line 97
    invoke-static {v1, v9}, Lkotlin/uuid/UuidKt;->getDisplayAccountColor(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v13

    .line 101
    invoke-static {v1}, Lkotlin/uuid/UuidKt;->getDisplayAccountAvatar(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;)Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    new-instance v15, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    const/4 v11, 0x6

    .line 108
    invoke-direct {v15, v11, v1}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const v11, -0x30cb4615    # -3.0320832E9f

    .line 112
    .line 113
    .line 114
    invoke-static {v11, v15, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    and-int/lit8 v15, v4, 0x70

    .line 119
    .line 120
    if-ne v15, v8, :cond_5

    .line 121
    .line 122
    move v8, v12

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    const/4 v8, 0x0

    .line 125
    :goto_5
    if-eq v7, v6, :cond_6

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    :cond_6
    or-int v6, v8, v12

    .line 129
    .line 130
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-nez v6, :cond_7

    .line 135
    .line 136
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 137
    .line 138
    if-ne v7, v6, :cond_8

    .line 139
    .line 140
    :cond_7
    new-instance v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda3;

    .line 141
    .line 142
    invoke-direct {v7, v2, v1, v5}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_8
    move-object v5, v7

    .line 149
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 150
    .line 151
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 152
    .line 153
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 154
    .line 155
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    const/high16 v7, 0x42800000    # 64.0f

    .line 165
    .line 166
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    new-instance v7, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;

    .line 171
    .line 172
    const/4 v8, 0x3

    .line 173
    invoke-direct {v7, v10, v13, v14, v8}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;JI)V

    .line 174
    .line 175
    .line 176
    const v10, 0x9450967

    .line 177
    .line 178
    .line 179
    invoke-static {v10, v7, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    new-instance v10, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;

    .line 184
    .line 185
    invoke-direct {v10, v1, v3, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;ZZ)V

    .line 186
    .line 187
    .line 188
    const v12, 0x17c91d46

    .line 189
    .line 190
    .line 191
    invoke-static {v12, v10, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    shr-int/2addr v4, v8

    .line 196
    and-int/lit8 v4, v4, 0x70

    .line 197
    .line 198
    const v8, 0x36006

    .line 199
    .line 200
    .line 201
    or-int/2addr v4, v8

    .line 202
    move-object v3, v11

    .line 203
    const/4 v11, 0x0

    .line 204
    move-object v8, v10

    .line 205
    move v10, v4

    .line 206
    move/from16 v4, p2

    .line 207
    .line 208
    invoke-static/range {v3 .. v11}, Landroidx/work/Operation$State;->NavigationDrawerItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 209
    .line 210
    .line 211
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 212
    .line 213
    move-object v5, v3

    .line 214
    goto :goto_6

    .line 215
    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 216
    .line 217
    .line 218
    move-object/from16 v5, p4

    .line 219
    .line 220
    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    if-eqz v7, :cond_a

    .line 225
    .line 226
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;

    .line 227
    .line 228
    move/from16 v3, p2

    .line 229
    .line 230
    move/from16 v4, p3

    .line 231
    .line 232
    move/from16 v6, p6

    .line 233
    .line 234
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/Modifier;I)V

    .line 235
    .line 236
    .line 237
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 238
    .line 239
    :cond_a
    return-void
.end method

.method public static final CreateNewArchiveFolderDialogContent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x451eb248

    .line 14
    .line 15
    .line 16
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p0

    .line 20
    .line 21
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x2

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    or-int v0, p6, v0

    .line 32
    .line 33
    move-object/from16 v5, p1

    .line 34
    .line 35
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v6, 0x20

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    move v3, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v3, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v3

    .line 48
    or-int/lit16 v0, v0, 0x180

    .line 49
    .line 50
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    const/16 v3, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v3, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v3

    .line 62
    move-object/from16 v10, p4

    .line 63
    .line 64
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    const/16 v3, 0x4000

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/16 v3, 0x2000

    .line 74
    .line 75
    :goto_3
    or-int/2addr v0, v3

    .line 76
    and-int/lit16 v3, v0, 0x2493

    .line 77
    .line 78
    const/16 v7, 0x2492

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    if-eq v3, v7, :cond_4

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    move v3, v8

    .line 86
    :goto_4
    and-int/lit8 v7, v0, 0x1

    .line 87
    .line 88
    invoke-virtual {v11, v7, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_9

    .line 93
    .line 94
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 95
    .line 96
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const/high16 v7, 0x41400000    # 12.0f

    .line 106
    .line 107
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 108
    .line 109
    const/4 v13, 0x0

    .line 110
    invoke-static {v12, v7, v13, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    sget-object v14, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 115
    .line 116
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 117
    .line 118
    invoke-static {v14, v15, v11, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    iget-wide v8, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 123
    .line 124
    ushr-long v16, v8, v6

    .line 125
    .line 126
    xor-long v8, v8, v16

    .line 127
    .line 128
    long-to-int v6, v8

    .line 129
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v11, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 138
    .line 139
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 143
    .line 144
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 145
    .line 146
    .line 147
    iget-boolean v13, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 148
    .line 149
    if-eqz v13, :cond_5

    .line 150
    .line 151
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 156
    .line 157
    .line 158
    :goto_5
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 159
    .line 160
    invoke-static {v11, v14, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 161
    .line 162
    .line 163
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 164
    .line 165
    invoke-static {v11, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 173
    .line 174
    invoke-static {v11, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 175
    .line 176
    .line 177
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 178
    .line 179
    invoke-static {v11, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 180
    .line 181
    .line 182
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 183
    .line 184
    invoke-static {v11, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    const v6, 0x7f1205dc

    .line 188
    .line 189
    .line 190
    invoke-static {v11, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-nez v6, :cond_6

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_6
    const/4 v13, 0x0

    .line 204
    goto :goto_7

    .line 205
    :cond_7
    :goto_6
    const/4 v13, 0x1

    .line 206
    :goto_7
    shr-int/lit8 v6, v0, 0x3

    .line 207
    .line 208
    and-int/lit8 v6, v6, 0xe

    .line 209
    .line 210
    shl-int/lit8 v7, v0, 0x6

    .line 211
    .line 212
    and-int/lit16 v7, v7, 0x380

    .line 213
    .line 214
    or-int/2addr v6, v7

    .line 215
    const/high16 v7, 0x70000

    .line 216
    .line 217
    shl-int/lit8 v0, v0, 0x3

    .line 218
    .line 219
    and-int/2addr v0, v7

    .line 220
    or-int v17, v6, v0

    .line 221
    .line 222
    const/16 v18, 0x6d2

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    const/4 v9, 0x0

    .line 226
    move-object/from16 v16, v11

    .line 227
    .line 228
    const/4 v11, 0x0

    .line 229
    move-object v0, v12

    .line 230
    const/4 v12, 0x0

    .line 231
    const/4 v14, 0x0

    .line 232
    const/4 v7, 0x1

    .line 233
    const/4 v15, 0x0

    .line 234
    move-object v7, v1

    .line 235
    const/4 v1, 0x0

    .line 236
    invoke-static/range {v5 .. v18}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 237
    .line 238
    .line 239
    move-object/from16 v11, v16

    .line 240
    .line 241
    if-eqz v4, :cond_8

    .line 242
    .line 243
    const/4 v5, 0x1

    .line 244
    goto :goto_8

    .line 245
    :cond_8
    const/4 v5, 0x0

    .line 246
    :goto_8
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    const/high16 v3, 0x42000000    # 32.0f

    .line 256
    .line 257
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    new-instance v1, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    const/4 v2, 0x6

    .line 264
    invoke-direct {v1, v4, v2}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    const v2, -0x156d796a

    .line 268
    .line 269
    .line 270
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    const v12, 0x180006

    .line 275
    .line 276
    .line 277
    const/16 v13, 0x1c

    .line 278
    .line 279
    const/4 v7, 0x0

    .line 280
    const/4 v8, 0x0

    .line 281
    const/4 v9, 0x0

    .line 282
    invoke-static/range {v5 .. v13}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 283
    .line 284
    .line 285
    const/4 v15, 0x1

    .line 286
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 287
    .line 288
    .line 289
    move-object v3, v0

    .line 290
    goto :goto_9

    .line 291
    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 292
    .line 293
    .line 294
    move-object/from16 v3, p2

    .line 295
    .line 296
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    if-eqz v8, :cond_a

    .line 301
    .line 302
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 303
    .line 304
    const/16 v7, 0x13

    .line 305
    .line 306
    move-object/from16 v1, p0

    .line 307
    .line 308
    move-object/from16 v2, p1

    .line 309
    .line 310
    move-object/from16 v5, p4

    .line 311
    .line 312
    move/from16 v6, p6

    .line 313
    .line 314
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 315
    .line 316
    .line 317
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 318
    .line 319
    :cond_a
    return-void
.end method

.method public static final IconView-l6Txn0U(Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move/from16 v6, p5

    .line 8
    .line 9
    move/from16 v8, p8

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object/from16 v0, p7

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    const v2, -0x79123e3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    and-int/lit8 v2, v8, 0x6

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    and-int/lit8 v2, v8, 0x8

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    if-eqz v2, :cond_1

    .line 43
    .line 44
    move v2, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v2, 0x2

    .line 47
    :goto_1
    or-int/2addr v2, v8

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v2, v8

    .line 50
    :goto_2
    and-int/lit8 v7, v8, 0x30

    .line 51
    .line 52
    move-wide/from16 v9, p1

    .line 53
    .line 54
    if-nez v7, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    const/16 v7, 0x20

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v7, 0x10

    .line 66
    .line 67
    :goto_3
    or-int/2addr v2, v7

    .line 68
    :cond_4
    and-int/lit16 v7, v8, 0x180

    .line 69
    .line 70
    const/16 v11, 0x100

    .line 71
    .line 72
    if-nez v7, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    move v7, v11

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const/16 v7, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v2, v7

    .line 85
    :cond_6
    and-int/lit16 v7, v8, 0xc00

    .line 86
    .line 87
    if-nez v7, :cond_8

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_7

    .line 94
    .line 95
    const/16 v7, 0x800

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    const/16 v7, 0x400

    .line 99
    .line 100
    :goto_5
    or-int/2addr v2, v7

    .line 101
    :cond_8
    and-int/lit16 v7, v8, 0x6000

    .line 102
    .line 103
    if-nez v7, :cond_a

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_9

    .line 110
    .line 111
    const/16 v7, 0x4000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_9
    const/16 v7, 0x2000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v2, v7

    .line 117
    :cond_a
    const/high16 v7, 0x30000

    .line 118
    .line 119
    and-int/2addr v7, v8

    .line 120
    if-nez v7, :cond_b

    .line 121
    .line 122
    const/high16 v7, 0x10000

    .line 123
    .line 124
    or-int/2addr v2, v7

    .line 125
    :cond_b
    const v7, 0x12493

    .line 126
    .line 127
    .line 128
    and-int/2addr v7, v2

    .line 129
    const v12, 0x12492

    .line 130
    .line 131
    .line 132
    if-eq v7, v12, :cond_c

    .line 133
    .line 134
    const/4 v7, 0x1

    .line 135
    goto :goto_7

    .line 136
    :cond_c
    const/4 v7, 0x0

    .line 137
    :goto_7
    and-int/lit8 v12, v2, 0x1

    .line 138
    .line 139
    invoke-virtual {v0, v12, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_16

    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 146
    .line 147
    .line 148
    and-int/lit8 v7, v8, 0x1

    .line 149
    .line 150
    const v12, -0x70001

    .line 151
    .line 152
    .line 153
    if-eqz v7, :cond_e

    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_d

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 163
    .line 164
    .line 165
    and-int/2addr v2, v12

    .line 166
    move/from16 v7, p6

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_e
    :goto_8
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 170
    .line 171
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    and-int/2addr v2, v12

    .line 181
    const/high16 v7, 0x41c00000    # 24.0f

    .line 182
    .line 183
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 184
    .line 185
    .line 186
    if-eqz v6, :cond_f

    .line 187
    .line 188
    move-wide v15, v9

    .line 189
    goto :goto_a

    .line 190
    :cond_f
    sget-wide v15, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 191
    .line 192
    :goto_a
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    sget-object v13, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 197
    .line 198
    invoke-static {v12, v13}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    if-eqz v4, :cond_10

    .line 203
    .line 204
    const/4 v13, 0x1

    .line 205
    goto :goto_b

    .line 206
    :cond_10
    const/4 v13, 0x0

    .line 207
    :goto_b
    and-int/lit16 v14, v2, 0x380

    .line 208
    .line 209
    if-ne v14, v11, :cond_11

    .line 210
    .line 211
    const/4 v11, 0x1

    .line 212
    goto :goto_c

    .line 213
    :cond_11
    const/4 v11, 0x0

    .line 214
    :goto_c
    and-int/lit8 v14, v2, 0xe

    .line 215
    .line 216
    if-eq v14, v3, :cond_13

    .line 217
    .line 218
    and-int/lit8 v2, v2, 0x8

    .line 219
    .line 220
    if-eqz v2, :cond_12

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_12

    .line 227
    .line 228
    goto :goto_d

    .line 229
    :cond_12
    const/16 v17, 0x0

    .line 230
    .line 231
    goto :goto_e

    .line 232
    :cond_13
    :goto_d
    const/16 v17, 0x1

    .line 233
    .line 234
    :goto_e
    or-int v2, v11, v17

    .line 235
    .line 236
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    if-nez v2, :cond_14

    .line 241
    .line 242
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 243
    .line 244
    if-ne v3, v2, :cond_15

    .line 245
    .line 246
    :cond_14
    new-instance v3, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;

    .line 247
    .line 248
    const/4 v2, 0x7

    .line 249
    invoke-direct {v3, v2, v4, v1}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 256
    .line 257
    const/4 v2, 0x0

    .line 258
    const/16 v11, 0xe

    .line 259
    .line 260
    invoke-static {v12, v13, v2, v3, v11}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    new-instance v3, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;

    .line 265
    .line 266
    invoke-direct {v3, v6, v1, v7}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;-><init>(ZLnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;F)V

    .line 267
    .line 268
    .line 269
    const v11, -0x1cf20786

    .line 270
    .line 271
    .line 272
    invoke-static {v11, v3, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    const/high16 v18, 0x30000

    .line 277
    .line 278
    const/16 v19, 0x1a

    .line 279
    .line 280
    const/4 v10, 0x0

    .line 281
    const-wide/16 v13, 0x0

    .line 282
    .line 283
    move-wide v11, v15

    .line 284
    const/4 v15, 0x0

    .line 285
    move-object/from16 v17, v0

    .line 286
    .line 287
    move-object v9, v2

    .line 288
    move-object/from16 v16, v3

    .line 289
    .line 290
    invoke-static/range {v9 .. v19}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 291
    .line 292
    .line 293
    goto :goto_f

    .line 294
    :cond_16
    move-object/from16 v17, v0

    .line 295
    .line 296
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    move/from16 v7, p6

    .line 300
    .line 301
    :goto_f
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    if-eqz v9, :cond_17

    .line 306
    .line 307
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;

    .line 308
    .line 309
    move-wide/from16 v2, p1

    .line 310
    .line 311
    invoke-direct/range {v0 .. v8}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZFI)V

    .line 312
    .line 313
    .line 314
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 315
    .line 316
    :cond_17
    return-void
.end method

.method public static final SearchSettingContent(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/core/common/provider/AppNameProvider;Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 27

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
    move-object/from16 v10, p3

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    move-object/from16 v14, p5

    .line 12
    .line 13
    move/from16 v15, p8

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
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-object/from16 v11, p7

    .line 34
    .line 35
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    const v4, 0x4e3376ee    # 7.5272896E8f

    .line 38
    .line 39
    .line 40
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    .line 43
    and-int/lit8 v4, v15, 0x6

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    move v4, v6

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v4, 0x2

    .line 57
    :goto_0
    or-int/2addr v4, v15

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v4, v15

    .line 60
    :goto_1
    and-int/lit8 v7, v15, 0x30

    .line 61
    .line 62
    const/16 v8, 0x20

    .line 63
    .line 64
    if-nez v7, :cond_3

    .line 65
    .line 66
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    move v7, v8

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/16 v7, 0x10

    .line 75
    .line 76
    :goto_2
    or-int/2addr v4, v7

    .line 77
    :cond_3
    and-int/lit16 v7, v15, 0x180

    .line 78
    .line 79
    if-nez v7, :cond_5

    .line 80
    .line 81
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    const/16 v7, 0x100

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    const/16 v7, 0x80

    .line 91
    .line 92
    :goto_3
    or-int/2addr v4, v7

    .line 93
    :cond_5
    and-int/lit16 v7, v15, 0xc00

    .line 94
    .line 95
    if-nez v7, :cond_8

    .line 96
    .line 97
    and-int/lit16 v7, v15, 0x1000

    .line 98
    .line 99
    if-nez v7, :cond_6

    .line 100
    .line 101
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    goto :goto_4

    .line 106
    :cond_6
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    :goto_4
    if-eqz v7, :cond_7

    .line 111
    .line 112
    const/16 v7, 0x800

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_7
    const/16 v7, 0x400

    .line 116
    .line 117
    :goto_5
    or-int/2addr v4, v7

    .line 118
    :cond_8
    and-int/lit16 v7, v15, 0x6000

    .line 119
    .line 120
    if-nez v7, :cond_b

    .line 121
    .line 122
    const v7, 0x8000

    .line 123
    .line 124
    .line 125
    and-int/2addr v7, v15

    .line 126
    if-nez v7, :cond_9

    .line 127
    .line 128
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    goto :goto_6

    .line 133
    :cond_9
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    :goto_6
    if-eqz v7, :cond_a

    .line 138
    .line 139
    const/16 v7, 0x4000

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_a
    const/16 v7, 0x2000

    .line 143
    .line 144
    :goto_7
    or-int/2addr v4, v7

    .line 145
    :cond_b
    const/high16 v7, 0x30000

    .line 146
    .line 147
    and-int/2addr v7, v15

    .line 148
    const/high16 v12, 0x20000

    .line 149
    .line 150
    const/high16 v13, 0x40000

    .line 151
    .line 152
    if-nez v7, :cond_e

    .line 153
    .line 154
    and-int v7, v15, v13

    .line 155
    .line 156
    if-nez v7, :cond_c

    .line 157
    .line 158
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    goto :goto_8

    .line 163
    :cond_c
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    :goto_8
    if-eqz v7, :cond_d

    .line 168
    .line 169
    move v7, v12

    .line 170
    goto :goto_9

    .line 171
    :cond_d
    const/high16 v7, 0x10000

    .line 172
    .line 173
    :goto_9
    or-int/2addr v4, v7

    .line 174
    :cond_e
    const/high16 v7, 0x180000

    .line 175
    .line 176
    or-int/2addr v4, v7

    .line 177
    const v16, 0x92493

    .line 178
    .line 179
    .line 180
    and-int v5, v4, v16

    .line 181
    .line 182
    move/from16 v16, v7

    .line 183
    .line 184
    const v7, 0x92492

    .line 185
    .line 186
    .line 187
    const/16 v17, 0x1

    .line 188
    .line 189
    move/from16 v18, v13

    .line 190
    .line 191
    const/4 v13, 0x0

    .line 192
    if-eq v5, v7, :cond_f

    .line 193
    .line 194
    move/from16 v5, v17

    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_f
    move v5, v13

    .line 198
    :goto_a
    and-int/lit8 v7, v4, 0x1

    .line 199
    .line 200
    invoke-virtual {v11, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_23

    .line 205
    .line 206
    and-int/lit8 v5, v4, 0xe

    .line 207
    .line 208
    if-ne v5, v6, :cond_10

    .line 209
    .line 210
    move/from16 v5, v17

    .line 211
    .line 212
    goto :goto_b

    .line 213
    :cond_10
    move v5, v13

    .line 214
    :goto_b
    const/high16 v7, 0x70000

    .line 215
    .line 216
    and-int/2addr v7, v4

    .line 217
    if-eq v7, v12, :cond_12

    .line 218
    .line 219
    and-int v7, v4, v18

    .line 220
    .line 221
    if-eqz v7, :cond_11

    .line 222
    .line 223
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_11

    .line 228
    .line 229
    goto :goto_c

    .line 230
    :cond_11
    move v7, v13

    .line 231
    goto :goto_d

    .line 232
    :cond_12
    :goto_c
    move/from16 v7, v17

    .line 233
    .line 234
    :goto_d
    or-int/2addr v5, v7

    .line 235
    and-int/lit8 v7, v4, 0x70

    .line 236
    .line 237
    if-ne v7, v8, :cond_13

    .line 238
    .line 239
    move/from16 v12, v17

    .line 240
    .line 241
    goto :goto_e

    .line 242
    :cond_13
    move v12, v13

    .line 243
    :goto_e
    or-int/2addr v5, v12

    .line 244
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v12

    .line 248
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 249
    .line 250
    if-nez v5, :cond_14

    .line 251
    .line 252
    if-ne v12, v6, :cond_15

    .line 253
    .line 254
    :cond_14
    new-instance v5, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    iget-object v12, v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 260
    .line 261
    new-instance v19, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 262
    .line 263
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;

    .line 264
    .line 265
    invoke-direct {v9, v14, v13}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;I)V

    .line 266
    .line 267
    .line 268
    new-instance v13, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 269
    .line 270
    const/16 v8, 0x18

    .line 271
    .line 272
    invoke-direct {v13, v8}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 276
    .line 277
    invoke-direct {v0, v8}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 278
    .line 279
    .line 280
    const/16 v24, 0x1

    .line 281
    .line 282
    iget-object v8, v14, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;->selectOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 283
    .line 284
    const-string v20, "server_search_limit"

    .line 285
    .line 286
    move-object/from16 v23, v0

    .line 287
    .line 288
    move-object/from16 v26, v8

    .line 289
    .line 290
    move-object/from16 v21, v9

    .line 291
    .line 292
    move-object/from16 v25, v12

    .line 293
    .line 294
    move-object/from16 v22, v13

    .line 295
    .line 296
    invoke-direct/range {v19 .. v26}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 297
    .line 298
    .line 299
    move-object/from16 v0, v19

    .line 300
    .line 301
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    invoke-static {v5}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :cond_15
    move-object v5, v12

    .line 312
    check-cast v5, Lkotlinx/collections/immutable/ImmutableList;

    .line 313
    .line 314
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    if-ne v0, v6, :cond_16

    .line 319
    .line 320
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 321
    .line 322
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_16
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 330
    .line 331
    const v8, 0x7f12014b

    .line 332
    .line 333
    .line 334
    invoke-static {v11, v8}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    move v9, v4

    .line 339
    move-object v4, v8

    .line 340
    iget-object v8, v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 341
    .line 342
    const/16 v12, 0x20

    .line 343
    .line 344
    if-ne v7, v12, :cond_17

    .line 345
    .line 346
    move/from16 v12, v17

    .line 347
    .line 348
    goto :goto_f

    .line 349
    :cond_17
    const/4 v12, 0x0

    .line 350
    :goto_f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    if-nez v12, :cond_18

    .line 355
    .line 356
    if-ne v13, v6, :cond_19

    .line 357
    .line 358
    :cond_18
    new-instance v13, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 359
    .line 360
    const/16 v12, 0x9

    .line 361
    .line 362
    invoke-direct {v13, v12, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_19
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 369
    .line 370
    const/16 v12, 0x20

    .line 371
    .line 372
    if-ne v7, v12, :cond_1a

    .line 373
    .line 374
    move/from16 v7, v17

    .line 375
    .line 376
    goto :goto_10

    .line 377
    :cond_1a
    const/4 v7, 0x0

    .line 378
    :goto_10
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    if-nez v7, :cond_1b

    .line 383
    .line 384
    if-ne v12, v6, :cond_1c

    .line 385
    .line 386
    :cond_1b
    new-instance v12, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 387
    .line 388
    const/4 v7, 0x4

    .line 389
    invoke-direct {v12, v7, v2}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    :cond_1c
    move-object v7, v12

    .line 396
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 397
    .line 398
    new-instance v12, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;

    .line 399
    .line 400
    const/4 v2, 0x6

    .line 401
    invoke-direct {v12, v0, v2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 402
    .line 403
    .line 404
    const v2, 0x7c9e3ea

    .line 405
    .line 406
    .line 407
    invoke-static {v2, v12, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    shr-int/lit8 v12, v9, 0x6

    .line 412
    .line 413
    const v18, 0xe000

    .line 414
    .line 415
    .line 416
    and-int v12, v12, v18

    .line 417
    .line 418
    or-int v12, v12, v16

    .line 419
    .line 420
    shl-int/lit8 v16, v9, 0xc

    .line 421
    .line 422
    const/high16 v18, 0x1c00000

    .line 423
    .line 424
    and-int v16, v16, v18

    .line 425
    .line 426
    or-int v12, v12, v16

    .line 427
    .line 428
    move-object/from16 v16, v6

    .line 429
    .line 430
    move-object v6, v13

    .line 431
    const/4 v13, 0x0

    .line 432
    move v14, v9

    .line 433
    move-object v9, v2

    .line 434
    move v2, v14

    .line 435
    move-object/from16 v14, v16

    .line 436
    .line 437
    const/4 v15, 0x2

    .line 438
    invoke-static/range {v4 .. v13}, Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;->SettingView$default(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Landroidx/compose/runtime/Composer;II)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    check-cast v4, Ljava/lang/Boolean;

    .line 446
    .line 447
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    if-eqz v4, :cond_22

    .line 452
    .line 453
    const v4, 0x5715dd8e

    .line 454
    .line 455
    .line 456
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 457
    .line 458
    .line 459
    const v4, 0x7f12008a

    .line 460
    .line 461
    .line 462
    invoke-static {v11, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v16

    .line 466
    iget-object v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    move-object/from16 v5, p4

    .line 473
    .line 474
    check-cast v5, Lapp/k9mail/provider/K9AppNameProvider;

    .line 475
    .line 476
    invoke-virtual {v5}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    new-array v6, v15, [Ljava/lang/Object;

    .line 481
    .line 482
    const/4 v7, 0x0

    .line 483
    aput-object v4, v6, v7

    .line 484
    .line 485
    aput-object v5, v6, v17

    .line 486
    .line 487
    const v4, 0x7f120089

    .line 488
    .line 489
    .line 490
    invoke-static {v4, v6, v11}, Landroidx/work/Operation$State;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    const v5, 0x7f120114

    .line 495
    .line 496
    .line 497
    invoke-static {v11, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v18

    .line 501
    const v5, 0x7f1200a1

    .line 502
    .line 503
    .line 504
    invoke-static {v11, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v22

    .line 508
    and-int/lit16 v2, v2, 0x380

    .line 509
    .line 510
    const/16 v5, 0x100

    .line 511
    .line 512
    if-ne v2, v5, :cond_1d

    .line 513
    .line 514
    goto :goto_11

    .line 515
    :cond_1d
    move/from16 v17, v7

    .line 516
    .line 517
    :goto_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    if-nez v17, :cond_1e

    .line 522
    .line 523
    if-ne v2, v14, :cond_1f

    .line 524
    .line 525
    :cond_1e
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda3;

    .line 526
    .line 527
    invoke-direct {v2, v3, v0, v7}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    :cond_1f
    move-object/from16 v19, v2

    .line 534
    .line 535
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 536
    .line 537
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    if-ne v2, v14, :cond_20

    .line 542
    .line 543
    new-instance v2, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 544
    .line 545
    const/16 v5, 0x16

    .line 546
    .line 547
    invoke-direct {v2, v0, v5}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    :cond_20
    move-object/from16 v20, v2

    .line 554
    .line 555
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 556
    .line 557
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    if-ne v2, v14, :cond_21

    .line 562
    .line 563
    new-instance v2, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 564
    .line 565
    const/16 v5, 0x17

    .line 566
    .line 567
    invoke-direct {v2, v0, v5}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    :cond_21
    move-object/from16 v23, v2

    .line 574
    .line 575
    check-cast v23, Lkotlin/jvm/functions/Function0;

    .line 576
    .line 577
    const/16 v24, 0x0

    .line 578
    .line 579
    const v26, 0x6006000

    .line 580
    .line 581
    .line 582
    const/16 v21, 0x0

    .line 583
    .line 584
    move-object/from16 v17, v4

    .line 585
    .line 586
    move-object/from16 v25, v11

    .line 587
    .line 588
    invoke-static/range {v16 .. v26}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->AlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 592
    .line 593
    .line 594
    goto :goto_12

    .line 595
    :cond_22
    const/4 v7, 0x0

    .line 596
    const v0, 0x57205e14

    .line 597
    .line 598
    .line 599
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 603
    .line 604
    .line 605
    :goto_12
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 606
    .line 607
    move-object v7, v0

    .line 608
    goto :goto_13

    .line 609
    :cond_23
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 610
    .line 611
    .line 612
    move-object/from16 v7, p6

    .line 613
    .line 614
    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 615
    .line 616
    .line 617
    move-result-object v10

    .line 618
    if-eqz v10, :cond_24

    .line 619
    .line 620
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    .line 621
    .line 622
    const/4 v9, 0x6

    .line 623
    move-object/from16 v2, p1

    .line 624
    .line 625
    move-object/from16 v4, p3

    .line 626
    .line 627
    move-object/from16 v5, p4

    .line 628
    .line 629
    move-object/from16 v6, p5

    .line 630
    .line 631
    move/from16 v8, p8

    .line 632
    .line 633
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 634
    .line 635
    .line 636
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 637
    .line 638
    :cond_24
    return-void
.end method

.method public static final access$isCaseSensitive(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x80

    .line 14
    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    return v0
.end method

.method public static final access$verify(Lkotlin/text/CharsKt__CharKt;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/serialization/json/JsonDecoder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public static final bannerSlideInSlideOutAnimationSpec(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)Landroidx/compose/animation/ContentTransform;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/16 v3, 0xf

    .line 11
    .line 12
    invoke-static {v3}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v2, v4}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v2, 0x9

    .line 39
    .line 40
    invoke-direct {v1, v2, p0}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Landroidx/compose/animation/SizeTransformImpl;

    .line 44
    .line 45
    invoke-direct {p0, v1}, Landroidx/compose/animation/SizeTransformImpl;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 46
    .line 47
    .line 48
    iput-object p0, v0, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransformImpl;

    .line 49
    .line 50
    return-object v0
.end method

.method public static from([B)Ljava/lang/StringBuilder;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    aget-byte v4, p0, v3

    .line 15
    .line 16
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x1

    .line 21
    new-array v5, v5, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object v4, v5, v2

    .line 24
    .line 25
    const-string v4, "%02X "

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0
.end method

.method public static final getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;
    .locals 2

    .line 1
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final handleAsync(Lnet/thunderbird/core/outcome/Outcome;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {p1, p0, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-ne p0, v1, :cond_1

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    instance-of p1, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 23
    .line 24
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p2, p0, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-ne p0, v1, :cond_1

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Keep-Alive"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "Proxy-Authenticate"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "Proxy-Authorization"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "TE"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "Trailers"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string v0, "Transfer-Encoding"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    const-string v0, "Upgrade"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_0

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method public static final parseColorValue(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/high16 v1, 0x110000

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    const/4 v3, 0x1

    .line 18
    const/high16 v4, -0x1000000

    .line 19
    .line 20
    if-eq v0, v2, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x7

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x9

    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    return v4

    .line 33
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lorg/jsoup/Jsoup;->toUInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lorg/jsoup/Jsoup;->toUInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    or-int/2addr p0, v4

    .line 51
    return p0

    .line 52
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lorg/jsoup/Jsoup;->toUInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    shr-int/lit8 v0, p0, 0xc

    .line 61
    .line 62
    and-int/lit8 v0, v0, 0xf

    .line 63
    .line 64
    const/high16 v2, 0x11000000

    .line 65
    .line 66
    mul-int/2addr v0, v2

    .line 67
    shr-int/lit8 v2, p0, 0x8

    .line 68
    .line 69
    and-int/lit8 v2, v2, 0xf

    .line 70
    .line 71
    mul-int/2addr v2, v1

    .line 72
    or-int/2addr v0, v2

    .line 73
    shr-int/lit8 v1, p0, 0x4

    .line 74
    .line 75
    and-int/lit8 v1, v1, 0xf

    .line 76
    .line 77
    mul-int/lit16 v1, v1, 0x1100

    .line 78
    .line 79
    or-int/2addr v0, v1

    .line 80
    and-int/lit8 p0, p0, 0xf

    .line 81
    .line 82
    mul-int/lit8 p0, p0, 0x11

    .line 83
    .line 84
    or-int/2addr p0, v0

    .line 85
    or-int/2addr p0, v4

    .line 86
    return p0

    .line 87
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lorg/jsoup/Jsoup;->toUInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    shr-int/lit8 v0, p0, 0x8

    .line 96
    .line 97
    and-int/lit8 v0, v0, 0xf

    .line 98
    .line 99
    mul-int/2addr v0, v1

    .line 100
    shr-int/lit8 v1, p0, 0x4

    .line 101
    .line 102
    and-int/lit8 v1, v1, 0xf

    .line 103
    .line 104
    mul-int/lit16 v1, v1, 0x1100

    .line 105
    .line 106
    or-int/2addr v0, v1

    .line 107
    and-int/lit8 p0, p0, 0xf

    .line 108
    .line 109
    mul-int/lit8 p0, p0, 0x11

    .line 110
    .line 111
    or-int/2addr p0, v0

    .line 112
    or-int/2addr p0, v4

    .line 113
    return p0

    .line 114
    :cond_4
    const-string v0, "Invalid color value "

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return v1
.end method

.method public static final parseDp(Ljava/lang/String;Landroidx/compose/ui/unit/Density;)F
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const-string v1, "dp"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    const-string v1, "px"

    .line 27
    .line 28
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_2
    const-string/jumbo p0, "value should ends with dp or px"

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public static final parseTileMode(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x40029441

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const v1, -0x1a08c086

    .line 12
    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const v1, 0x5a5a8bb

    .line 17
    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    const-string v0, "clamp"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    const-string v0, "repeated"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    const-string v0, "mirror"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 p0, 0x2

    .line 49
    return p0

    .line 50
    :cond_2
    const-string v0, "unknown tileMode: "

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v2
.end method

.method public static final toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 8
    .line 9
    iget p0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 10
    .line 11
    int-to-long v2, p0

    .line 12
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lkotlinx/datetime/TimeZone;->zoneId:Lj$/time/ZoneId;

    .line 20
    .line 21
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, Lkotlinx/datetime/LocalDateTime;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lkotlinx/datetime/LocalDateTime;-><init>(Lj$/time/LocalDateTime;)V
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Lorg/jsoup/SerializationException;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
