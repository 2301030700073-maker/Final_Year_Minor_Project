.class public abstract Lorg/slf4j/helpers/Util;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager; = null

.field public static SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z = false

.field public static _inbox:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static asyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field public static asyncTraceEndMethod:Ljava/lang/reflect/Method;

.field public static isTagEnabledMethod:Ljava/lang/reflect/Method;

.field public static traceCounterMethod:Ljava/lang/reflect/Method;

.field public static traceTagApp:J


# direct methods
.method public static final AccountTopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v4, p2

    .line 5
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p2, -0x577b1cdc

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x2

    .line 22
    :goto_0
    or-int/2addr p2, p3

    .line 23
    or-int/lit8 p2, p2, 0x30

    .line 24
    .line 25
    and-int/lit8 v0, p2, 0x13

    .line 26
    .line 27
    const/16 v1, 0x12

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    move v0, v7

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_1
    and-int/lit8 v1, p2, 0x1

    .line 36
    .line 37
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    and-int/lit8 v5, p2, 0x7e

    .line 44
    .line 45
    const/16 v6, 0xc

    .line 46
    .line 47
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    move-object v0, p0

    .line 52
    invoke-static/range {v0 .. v6}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 53
    .line 54
    .line 55
    move-object p1, v1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move-object v0, p0

    .line 58
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    new-instance p2, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    invoke-direct {p2, v0, p1, p3, v7}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public static final AttachmentListContent(Lkotlinx/collections/immutable/ImmutableList;Lcom/fsck/k9/ui/helper/SizeFormatter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v11, p5

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x29b33901

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p0

    .line 18
    .line 19
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p6, v0

    .line 29
    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/16 v7, 0x20

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    move v6, v7

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v6, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v0, v6

    .line 45
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/16 v13, 0x100

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    move v6, v13

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v6, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, v6

    .line 58
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/16 v14, 0x800

    .line 63
    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    move v6, v14

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    const/16 v6, 0x400

    .line 69
    .line 70
    :goto_3
    or-int/2addr v0, v6

    .line 71
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    const/16 v6, 0x4000

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    const/16 v6, 0x2000

    .line 81
    .line 82
    :goto_4
    or-int/2addr v0, v6

    .line 83
    and-int/lit16 v6, v0, 0x2493

    .line 84
    .line 85
    const/16 v8, 0x2492

    .line 86
    .line 87
    const/4 v15, 0x0

    .line 88
    if-eq v6, v8, :cond_5

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    goto :goto_5

    .line 92
    :cond_5
    move v6, v15

    .line 93
    :goto_5
    and-int/lit8 v8, v0, 0x1

    .line 94
    .line 95
    invoke-virtual {v11, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_e

    .line 100
    .line 101
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 102
    .line 103
    invoke-static {v11}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-static {v6, v8}, Landroidx/compose/foundation/ImageKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 112
    .line 113
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 114
    .line 115
    invoke-static {v8, v10, v11, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget-wide v9, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 120
    .line 121
    ushr-long v16, v9, v7

    .line 122
    .line 123
    xor-long v9, v9, v16

    .line 124
    .line 125
    long-to-int v7, v9

    .line 126
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-static {v11, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 135
    .line 136
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 140
    .line 141
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 142
    .line 143
    .line 144
    iget-boolean v12, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 145
    .line 146
    if-eqz v12, :cond_6

    .line 147
    .line 148
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 149
    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 153
    .line 154
    .line 155
    :goto_6
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 156
    .line 157
    invoke-static {v11, v8, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 161
    .line 162
    invoke-static {v11, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 170
    .line 171
    invoke-static {v11, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 175
    .line 176
    invoke-static {v11, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 177
    .line 178
    .line 179
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v11, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    shr-int/lit8 v6, v0, 0xc

    .line 185
    .line 186
    and-int/lit8 v6, v6, 0xe

    .line 187
    .line 188
    invoke-static {v5, v11, v6}, Lorg/slf4j/helpers/Util;->AttachmentListHeader(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 189
    .line 190
    .line 191
    const v6, -0x141b3b05

    .line 192
    .line 193
    .line 194
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v16

    .line 201
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_d

    .line 206
    .line 207
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;

    .line 212
    .line 213
    iget-object v7, v6, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 214
    .line 215
    move-object v8, v7

    .line 216
    iget-boolean v7, v6, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;->isLocked:Z

    .line 217
    .line 218
    and-int/lit16 v9, v0, 0x380

    .line 219
    .line 220
    if-ne v9, v13, :cond_7

    .line 221
    .line 222
    const/4 v9, 0x1

    .line 223
    goto :goto_8

    .line 224
    :cond_7
    move v9, v15

    .line 225
    :goto_8
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    or-int/2addr v9, v10

    .line 230
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 235
    .line 236
    if-nez v9, :cond_8

    .line 237
    .line 238
    if-ne v10, v12, :cond_9

    .line 239
    .line 240
    :cond_8
    new-instance v10, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;

    .line 241
    .line 242
    invoke-direct {v10, v3, v6, v15}, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_9
    move-object v9, v10

    .line 249
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 250
    .line 251
    and-int/lit16 v10, v0, 0x1c00

    .line 252
    .line 253
    if-ne v10, v14, :cond_a

    .line 254
    .line 255
    const/4 v10, 0x1

    .line 256
    goto :goto_9

    .line 257
    :cond_a
    move v10, v15

    .line 258
    :goto_9
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v17

    .line 262
    or-int v10, v10, v17

    .line 263
    .line 264
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    if-nez v10, :cond_c

    .line 269
    .line 270
    if-ne v13, v12, :cond_b

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_b
    const/4 v10, 0x1

    .line 274
    goto :goto_b

    .line 275
    :cond_c
    :goto_a
    new-instance v13, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;

    .line 276
    .line 277
    const/4 v10, 0x1

    .line 278
    invoke-direct {v13, v4, v6, v10}, Lcom/fsck/k9/ui/messageview/AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :goto_b
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 285
    .line 286
    shl-int/lit8 v6, v0, 0x3

    .line 287
    .line 288
    and-int/lit16 v6, v6, 0x380

    .line 289
    .line 290
    const/16 v12, 0x200

    .line 291
    .line 292
    or-int/2addr v12, v6

    .line 293
    move-object v6, v8

    .line 294
    move-object v8, v2

    .line 295
    move v2, v10

    .line 296
    move-object v10, v13

    .line 297
    invoke-static/range {v6 .. v12}, Lorg/slf4j/helpers/Util;->AttachmentListItem(Lcom/fsck/k9/mailstore/AttachmentViewInfo;ZLcom/fsck/k9/ui/helper/SizeFormatter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 298
    .line 299
    .line 300
    move-object/from16 v2, p1

    .line 301
    .line 302
    const/16 v13, 0x100

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_d
    const/4 v2, 0x1

    .line 306
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 310
    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 314
    .line 315
    .line 316
    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    if-eqz v8, :cond_f

    .line 321
    .line 322
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 323
    .line 324
    const/16 v7, 0xd

    .line 325
    .line 326
    move-object/from16 v2, p1

    .line 327
    .line 328
    move/from16 v6, p6

    .line 329
    .line 330
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 331
    .line 332
    .line 333
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 334
    .line 335
    :cond_f
    return-void
.end method

.method public static final AttachmentListHeader(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v2, -0x9efdce8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v2, p2, 0x6

    .line 14
    .line 15
    const/4 v12, 0x2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v12

    .line 27
    :goto_0
    or-int v2, p2, v2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v2, p2

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v3, v2, 0x3

    .line 33
    .line 34
    const/4 v14, 0x1

    .line 35
    if-eq v3, v12, :cond_2

    .line 36
    .line 37
    move v3, v14

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v3, 0x0

    .line 40
    :goto_2
    and-int/2addr v2, v14

    .line 41
    invoke-virtual {v5, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 48
    .line 49
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const/high16 v15, 0x41800000    # 16.0f

    .line 78
    .line 79
    const/high16 v8, 0x41000000    # 8.0f

    .line 80
    .line 81
    invoke-static {v2, v15, v15, v15, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 86
    .line 87
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 88
    .line 89
    const/16 v11, 0x30

    .line 90
    .line 91
    invoke-static {v10, v9, v5, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-wide v6, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 96
    .line 97
    const/16 v16, 0x20

    .line 98
    .line 99
    ushr-long v17, v6, v16

    .line 100
    .line 101
    xor-long v6, v6, v17

    .line 102
    .line 103
    long-to-int v4, v6

    .line 104
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-static {v5, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 120
    .line 121
    .line 122
    iget-boolean v11, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 123
    .line 124
    if-eqz v11, :cond_3

    .line 125
    .line 126
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 131
    .line 132
    .line 133
    :goto_3
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 134
    .line 135
    invoke-static {v5, v3, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 139
    .line 140
    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 148
    .line 149
    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 153
    .line 154
    invoke-static {v5, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 155
    .line 156
    .line 157
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 158
    .line 159
    invoke-static {v5, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    sget-object v2, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Attachment:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 163
    .line 164
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    iget-wide v13, v15, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 169
    .line 170
    sget-object v15, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 171
    .line 172
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v19

    .line 176
    check-cast v19, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 177
    .line 178
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const/high16 v8, 0x41c00000    # 24.0f

    .line 182
    .line 183
    move-object/from16 v20, v10

    .line 184
    .line 185
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 186
    .line 187
    invoke-static {v10, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    move-object/from16 v21, v4

    .line 192
    .line 193
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 194
    .line 195
    invoke-direct {v4, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 196
    .line 197
    .line 198
    move-object v13, v6

    .line 199
    const/16 v6, 0x180

    .line 200
    .line 201
    move-object v14, v7

    .line 202
    const/4 v7, 0x0

    .line 203
    move-object/from16 v22, v13

    .line 204
    .line 205
    move-object v13, v3

    .line 206
    move-object v3, v8

    .line 207
    move-object/from16 v8, v22

    .line 208
    .line 209
    move-object/from16 v22, v21

    .line 210
    .line 211
    invoke-static/range {v2 .. v7}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 212
    .line 213
    .line 214
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    const/high16 v2, 0x41000000    # 8.0f

    .line 222
    .line 223
    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 228
    .line 229
    .line 230
    const v2, 0x7f120460

    .line 231
    .line 232
    .line 233
    invoke-static {v5, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    new-instance v3, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 238
    .line 239
    const/high16 v4, 0x3f800000    # 1.0f

    .line 240
    .line 241
    const/4 v6, 0x1

    .line 242
    invoke-direct {v3, v4, v6}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 243
    .line 244
    .line 245
    move-object v4, v10

    .line 246
    const/4 v10, 0x0

    .line 247
    move-object v6, v11

    .line 248
    const/16 v11, 0x3c

    .line 249
    .line 250
    move-object/from16 v19, v4

    .line 251
    .line 252
    move-object v7, v9

    .line 253
    move-object v9, v5

    .line 254
    const-wide/16 v4, 0x0

    .line 255
    .line 256
    move-object/from16 v21, v6

    .line 257
    .line 258
    const/4 v6, 0x0

    .line 259
    move-object/from16 v23, v7

    .line 260
    .line 261
    const/4 v7, 0x0

    .line 262
    move-object/from16 v24, v8

    .line 263
    .line 264
    const/4 v8, 0x0

    .line 265
    move-object/from16 p1, v15

    .line 266
    .line 267
    move-object/from16 v15, v20

    .line 268
    .line 269
    move-object/from16 v1, v23

    .line 270
    .line 271
    move-object/from16 v25, v24

    .line 272
    .line 273
    move-object/from16 v20, v13

    .line 274
    .line 275
    move-object/from16 v13, v19

    .line 276
    .line 277
    move-object/from16 v19, v12

    .line 278
    .line 279
    const/16 v12, 0x30

    .line 280
    .line 281
    invoke-static/range {v2 .. v11}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 282
    .line 283
    .line 284
    move-object v5, v9

    .line 285
    const/4 v2, 0x0

    .line 286
    const/16 v3, 0xf

    .line 287
    .line 288
    const/4 v4, 0x0

    .line 289
    invoke-static {v13, v4, v2, v0, v3}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v15, v1, v5, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    iget-wide v3, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 298
    .line 299
    ushr-long v6, v3, v16

    .line 300
    .line 301
    xor-long/2addr v3, v6

    .line 302
    long-to-int v3, v3

    .line 303
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-static {v5, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 312
    .line 313
    .line 314
    iget-boolean v6, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 315
    .line 316
    if-eqz v6, :cond_4

    .line 317
    .line 318
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 319
    .line 320
    .line 321
    :goto_4
    move-object/from16 v6, v21

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :goto_5
    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 329
    .line 330
    .line 331
    move-object/from16 v1, v20

    .line 332
    .line 333
    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v1, v22

    .line 337
    .line 338
    move-object/from16 v8, v25

    .line 339
    .line 340
    invoke-static {v3, v5, v8, v5, v1}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 341
    .line 342
    .line 343
    move-object/from16 v1, v19

    .line 344
    .line 345
    invoke-static {v5, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 346
    .line 347
    .line 348
    sget-object v2, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Download:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 349
    .line 350
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    iget-wide v3, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 355
    .line 356
    move-object/from16 v1, p1

    .line 357
    .line 358
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    const/high16 v1, 0x41800000    # 16.0f

    .line 368
    .line 369
    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 374
    .line 375
    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 376
    .line 377
    .line 378
    move-object v4, v6

    .line 379
    const/16 v6, 0x180

    .line 380
    .line 381
    const/4 v7, 0x0

    .line 382
    move-object v3, v1

    .line 383
    invoke-static/range {v2 .. v7}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 384
    .line 385
    .line 386
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    const/high16 v1, 0x40800000    # 4.0f

    .line 394
    .line 395
    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 400
    .line 401
    .line 402
    const v1, 0x7f12045f

    .line 403
    .line 404
    .line 405
    invoke-static {v5, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    iget-wide v3, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 414
    .line 415
    const/4 v9, 0x0

    .line 416
    const/16 v10, 0x3a

    .line 417
    .line 418
    move-object v8, v5

    .line 419
    move-wide v4, v3

    .line 420
    const/4 v3, 0x0

    .line 421
    const/4 v6, 0x0

    .line 422
    invoke-static/range {v2 .. v10}, Lorg/jsoup/helper/Validate;->TextLabelLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 423
    .line 424
    .line 425
    move-object v5, v8

    .line 426
    const/4 v6, 0x1

    .line 427
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 435
    .line 436
    .line 437
    :goto_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    if-eqz v1, :cond_6

    .line 442
    .line 443
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$$ExternalSyntheticLambda0;

    .line 444
    .line 445
    move/from16 v3, p2

    .line 446
    .line 447
    const/4 v4, 0x2

    .line 448
    invoke-direct {v2, v3, v4, v0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 452
    .line 453
    :cond_6
    return-void
.end method

.method public static final AttachmentListItem(Lcom/fsck/k9/mailstore/AttachmentViewInfo;ZLcom/fsck/k9/ui/helper/SizeFormatter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v0, p6

    .line 10
    .line 11
    move-object/from16 v12, p5

    .line 12
    .line 13
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v5, 0x41d06c97

    .line 16
    .line 17
    .line 18
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v5, v0, 0x6

    .line 22
    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    const/4 v5, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v5, 0x2

    .line 34
    :goto_0
    or-int/2addr v5, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v5, v0

    .line 37
    :goto_1
    and-int/lit8 v6, v0, 0x30

    .line 38
    .line 39
    const/16 v11, 0x20

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    move v6, v11

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v6, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v5, v6

    .line 54
    :cond_3
    and-int/lit16 v6, v0, 0x180

    .line 55
    .line 56
    if-nez v6, :cond_6

    .line 57
    .line 58
    and-int/lit16 v6, v0, 0x200

    .line 59
    .line 60
    if-nez v6, :cond_4

    .line 61
    .line 62
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    :goto_3
    if-eqz v6, :cond_5

    .line 72
    .line 73
    const/16 v6, 0x100

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    const/16 v6, 0x80

    .line 77
    .line 78
    :goto_4
    or-int/2addr v5, v6

    .line 79
    :cond_6
    and-int/lit16 v6, v0, 0xc00

    .line 80
    .line 81
    if-nez v6, :cond_8

    .line 82
    .line 83
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_7

    .line 88
    .line 89
    const/16 v6, 0x800

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_7
    const/16 v6, 0x400

    .line 93
    .line 94
    :goto_5
    or-int/2addr v5, v6

    .line 95
    :cond_8
    and-int/lit16 v6, v0, 0x6000

    .line 96
    .line 97
    move-object/from16 v15, p4

    .line 98
    .line 99
    if-nez v6, :cond_a

    .line 100
    .line 101
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_9

    .line 106
    .line 107
    const/16 v6, 0x4000

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_9
    const/16 v6, 0x2000

    .line 111
    .line 112
    :goto_6
    or-int/2addr v5, v6

    .line 113
    :cond_a
    move v13, v5

    .line 114
    and-int/lit16 v5, v13, 0x2493

    .line 115
    .line 116
    const/16 v6, 0x2492

    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    if-eq v5, v6, :cond_b

    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    goto :goto_7

    .line 123
    :cond_b
    move v5, v7

    .line 124
    :goto_7
    and-int/lit8 v6, v13, 0x1

    .line 125
    .line 126
    invoke-virtual {v12, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_15

    .line 131
    .line 132
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    const/16 v8, 0xf

    .line 136
    .line 137
    invoke-static {v5, v7, v6, v4, v8}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const/high16 v6, 0x41800000    # 16.0f

    .line 170
    .line 171
    const/high16 v8, 0x41000000    # 8.0f

    .line 172
    .line 173
    invoke-static {v5, v6, v8, v8, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 178
    .line 179
    sget-object v9, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 180
    .line 181
    const/16 v10, 0x30

    .line 182
    .line 183
    invoke-static {v9, v8, v12, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    iget-wide v9, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 188
    .line 189
    ushr-long v16, v9, v11

    .line 190
    .line 191
    xor-long v9, v9, v16

    .line 192
    .line 193
    long-to-int v9, v9

    .line 194
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-static {v12, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 203
    .line 204
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    move/from16 p5, v11

    .line 208
    .line 209
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 210
    .line 211
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 212
    .line 213
    .line 214
    iget-boolean v6, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 215
    .line 216
    if-eqz v6, :cond_c

    .line 217
    .line 218
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 219
    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 223
    .line 224
    .line 225
    :goto_8
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 226
    .line 227
    invoke-static {v12, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 228
    .line 229
    .line 230
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 231
    .line 232
    invoke-static {v12, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 240
    .line 241
    invoke-static {v12, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 245
    .line 246
    invoke-static {v12, v9}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 247
    .line 248
    .line 249
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 250
    .line 251
    invoke-static {v12, v5, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 252
    .line 253
    .line 254
    if-eqz v2, :cond_d

    .line 255
    .line 256
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Lock:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_d
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Description:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 260
    .line 261
    :goto_9
    if-eqz v2, :cond_e

    .line 262
    .line 263
    const v0, -0x7e5ca75a    # -6.000395E-38f

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 270
    .line 271
    .line 272
    const-wide v18, 0xffcc0000L

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 278
    .line 279
    .line 280
    move-result-wide v18

    .line 281
    move-wide/from16 v21, v18

    .line 282
    .line 283
    move-object/from16 v18, v5

    .line 284
    .line 285
    move-wide/from16 v4, v21

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_e
    const v0, -0x7e5ca21d

    .line 289
    .line 290
    .line 291
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 292
    .line 293
    .line 294
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    move-object/from16 v18, v5

    .line 299
    .line 300
    iget-wide v4, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 301
    .line 302
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 303
    .line 304
    .line 305
    :goto_a
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 306
    .line 307
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    const/high16 v0, 0x41c00000    # 24.0f

    .line 317
    .line 318
    move-object/from16 v19, v9

    .line 319
    .line 320
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 321
    .line 322
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    move/from16 v20, v7

    .line 327
    .line 328
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 329
    .line 330
    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 331
    .line 332
    .line 333
    move-object v4, v9

    .line 334
    const/16 v9, 0x180

    .line 335
    .line 336
    move-object v5, v10

    .line 337
    const/4 v10, 0x0

    .line 338
    move-object v2, v6

    .line 339
    move-object v6, v0

    .line 340
    move-object v0, v2

    .line 341
    move-object v15, v4

    .line 342
    move-object v4, v8

    .line 343
    move-object v8, v12

    .line 344
    move/from16 v16, v13

    .line 345
    .line 346
    move-object/from16 v2, v19

    .line 347
    .line 348
    const/high16 v13, 0x41800000    # 16.0f

    .line 349
    .line 350
    move-object v12, v5

    .line 351
    move-object/from16 v5, v18

    .line 352
    .line 353
    invoke-static/range {v5 .. v10}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 354
    .line 355
    .line 356
    move-object v10, v8

    .line 357
    invoke-static {v10}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    invoke-static {v15, v13}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-static {v10, v5}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 369
    .line 370
    .line 371
    new-instance v5, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 372
    .line 373
    const/high16 v6, 0x3f800000    # 1.0f

    .line 374
    .line 375
    const/4 v7, 0x1

    .line 376
    invoke-direct {v5, v6, v7}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 377
    .line 378
    .line 379
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 380
    .line 381
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 382
    .line 383
    const/4 v15, 0x0

    .line 384
    invoke-static {v6, v8, v10, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    iget-wide v8, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 389
    .line 390
    ushr-long v17, v8, p5

    .line 391
    .line 392
    xor-long v8, v8, v17

    .line 393
    .line 394
    long-to-int v8, v8

    .line 395
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    invoke-static {v10, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 404
    .line 405
    .line 406
    iget-boolean v13, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 407
    .line 408
    if-eqz v13, :cond_f

    .line 409
    .line 410
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 411
    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 415
    .line 416
    .line 417
    :goto_b
    invoke-static {v10, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v10, v9, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 421
    .line 422
    .line 423
    invoke-static {v8, v10, v12, v10, v2}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v10, v5, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 430
    .line 431
    iget-wide v4, v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    .line 432
    .line 433
    if-nez v0, :cond_10

    .line 434
    .line 435
    const v0, 0x1ffe76db

    .line 436
    .line 437
    .line 438
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 439
    .line 440
    .line 441
    const v0, 0x7f120654

    .line 442
    .line 443
    .line 444
    invoke-static {v10, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 449
    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_10
    if-eqz p1, :cond_11

    .line 453
    .line 454
    const v0, 0x1ffe83bd

    .line 455
    .line 456
    .line 457
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 458
    .line 459
    .line 460
    const v0, 0x7f1202c2

    .line 461
    .line 462
    .line 463
    invoke-static {v10, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 468
    .line 469
    .line 470
    goto :goto_c

    .line 471
    :cond_11
    const v2, 0x1ffe8f28

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 478
    .line 479
    .line 480
    :goto_c
    const v13, 0x36000

    .line 481
    .line 482
    .line 483
    const/16 v14, 0x4e

    .line 484
    .line 485
    const/4 v6, 0x0

    .line 486
    move/from16 v17, v7

    .line 487
    .line 488
    const-wide/16 v7, 0x0

    .line 489
    .line 490
    const/4 v9, 0x2

    .line 491
    move-object v12, v10

    .line 492
    const/4 v10, 0x1

    .line 493
    const/4 v11, 0x0

    .line 494
    move-wide/from16 v21, v4

    .line 495
    .line 496
    move-object v5, v0

    .line 497
    move-wide/from16 v0, v21

    .line 498
    .line 499
    move/from16 v2, v17

    .line 500
    .line 501
    invoke-static/range {v5 .. v14}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 502
    .line 503
    .line 504
    if-eqz p1, :cond_12

    .line 505
    .line 506
    const v0, -0x202a4969

    .line 507
    .line 508
    .line 509
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 510
    .line 511
    .line 512
    const v0, 0x7f12039e

    .line 513
    .line 514
    .line 515
    invoke-static {v12, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    iget-wide v7, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 524
    .line 525
    const/4 v13, 0x0

    .line 526
    const/16 v14, 0x3a

    .line 527
    .line 528
    const/4 v6, 0x0

    .line 529
    const/4 v9, 0x0

    .line 530
    const/4 v10, 0x0

    .line 531
    const/4 v11, 0x0

    .line 532
    invoke-static/range {v5 .. v14}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 536
    .line 537
    .line 538
    goto :goto_d

    .line 539
    :cond_12
    const-wide/16 v4, -0x1

    .line 540
    .line 541
    cmp-long v4, v0, v4

    .line 542
    .line 543
    if-eqz v4, :cond_13

    .line 544
    .line 545
    const v4, -0x20263c00

    .line 546
    .line 547
    .line 548
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3, v0, v1}, Lcom/fsck/k9/ui/helper/SizeFormatter;->formatSize(J)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    iget-wide v7, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 560
    .line 561
    const/4 v13, 0x0

    .line 562
    const/16 v14, 0x3a

    .line 563
    .line 564
    const/4 v6, 0x0

    .line 565
    const/4 v9, 0x0

    .line 566
    const/4 v10, 0x0

    .line 567
    const/4 v11, 0x0

    .line 568
    invoke-static/range {v5 .. v14}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 572
    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_13
    const v0, -0x2023587b

    .line 576
    .line 577
    .line 578
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 582
    .line 583
    .line 584
    :goto_d
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 585
    .line 586
    .line 587
    if-eqz p1, :cond_14

    .line 588
    .line 589
    const v0, -0x4d25abb2

    .line 590
    .line 591
    .line 592
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 593
    .line 594
    .line 595
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Visibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 596
    .line 597
    const v0, 0x7f12039f

    .line 598
    .line 599
    .line 600
    invoke-static {v12, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    shr-int/lit8 v0, v16, 0x9

    .line 605
    .line 606
    and-int/lit8 v11, v0, 0xe

    .line 607
    .line 608
    move-object v10, v12

    .line 609
    const/16 v12, 0x2c

    .line 610
    .line 611
    const/4 v6, 0x0

    .line 612
    const/4 v7, 0x0

    .line 613
    const/4 v9, 0x0

    .line 614
    move-object/from16 v4, p3

    .line 615
    .line 616
    invoke-static/range {v4 .. v12}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 617
    .line 618
    .line 619
    move-object v12, v10

    .line 620
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 621
    .line 622
    .line 623
    goto :goto_e

    .line 624
    :cond_14
    const v0, -0x4d225f11

    .line 625
    .line 626
    .line 627
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 631
    .line 632
    .line 633
    :goto_e
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Download:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 634
    .line 635
    const v0, 0x7f12056f

    .line 636
    .line 637
    .line 638
    invoke-static {v12, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    shr-int/lit8 v0, v16, 0xc

    .line 643
    .line 644
    and-int/lit8 v11, v0, 0xe

    .line 645
    .line 646
    move-object v10, v12

    .line 647
    const/16 v12, 0x2c

    .line 648
    .line 649
    const/4 v6, 0x0

    .line 650
    const/4 v7, 0x0

    .line 651
    const/4 v9, 0x0

    .line 652
    move-object/from16 v4, p4

    .line 653
    .line 654
    invoke-static/range {v4 .. v12}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 655
    .line 656
    .line 657
    move-object v12, v10

    .line 658
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 659
    .line 660
    .line 661
    goto :goto_f

    .line 662
    :cond_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 663
    .line 664
    .line 665
    :goto_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 666
    .line 667
    .line 668
    move-result-object v8

    .line 669
    if-eqz v8, :cond_16

    .line 670
    .line 671
    new-instance v0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;

    .line 672
    .line 673
    const/4 v7, 0x2

    .line 674
    move-object/from16 v1, p0

    .line 675
    .line 676
    move/from16 v2, p1

    .line 677
    .line 678
    move-object/from16 v4, p3

    .line 679
    .line 680
    move-object/from16 v5, p4

    .line 681
    .line 682
    move/from16 v6, p6

    .line 683
    .line 684
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 685
    .line 686
    .line 687
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 688
    .line 689
    :cond_16
    return-void
.end method

.method public static final AttachmentListModalBottomSheet(Lkotlinx/collections/immutable/ImmutableList;Lcom/fsck/k9/ui/helper/SizeFormatter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p6

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v1, -0x76845599

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x2

    .line 35
    :goto_0
    or-int v2, p7, v2

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    const/16 v4, 0x20

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v4, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v2, v4

    .line 49
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    const/16 v4, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v4, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v2, v4

    .line 61
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    const/16 v5, 0x800

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v5, 0x400

    .line 71
    .line 72
    :goto_3
    or-int/2addr v2, v5

    .line 73
    invoke-virtual {v0, p4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    const/16 v5, 0x4000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    const/16 v5, 0x2000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v2, v5

    .line 85
    invoke-virtual {v0, p5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_5

    .line 90
    .line 91
    const/high16 v5, 0x20000

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_5
    const/high16 v5, 0x10000

    .line 95
    .line 96
    :goto_5
    or-int/2addr v2, v5

    .line 97
    const v5, 0x12493

    .line 98
    .line 99
    .line 100
    and-int/2addr v5, v2

    .line 101
    const v7, 0x12492

    .line 102
    .line 103
    .line 104
    if-eq v5, v7, :cond_6

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    goto :goto_6

    .line 108
    :cond_6
    const/4 v5, 0x0

    .line 109
    :goto_6
    and-int/lit8 v7, v2, 0x1

    .line 110
    .line 111
    invoke-virtual {v0, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_7

    .line 116
    .line 117
    new-instance v4, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    move-object v5, p0

    .line 120
    move-object v6, p1

    .line 121
    move-object v7, p3

    .line 122
    move-object v8, p4

    .line 123
    move-object v9, p5

    .line 124
    invoke-direct/range {v4 .. v9}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/collections/immutable/ImmutableList;Lcom/fsck/k9/ui/helper/SizeFormatter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 125
    .line 126
    .line 127
    const v1, 0x718edf8d

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    shr-int/lit8 v2, v2, 0x6

    .line 135
    .line 136
    and-int/lit8 v2, v2, 0xe

    .line 137
    .line 138
    or-int/lit16 v2, v2, 0x180

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-static {p2, v4, v1, v0, v2}, Lokio/Options$Companion;->ModalBottomSheet(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 142
    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 146
    .line 147
    .line 148
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    if-eqz v9, :cond_8

    .line 153
    .line 154
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;

    .line 155
    .line 156
    const/4 v8, 0x2

    .line 157
    move-object v1, p0

    .line 158
    move-object v2, p1

    .line 159
    move-object v3, p2

    .line 160
    move-object v4, p3

    .line 161
    move-object v5, p4

    .line 162
    move-object v6, p5

    .line 163
    move/from16 v7, p7

    .line 164
    .line 165
    invoke-direct/range {v0 .. v8}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 169
    .line 170
    :cond_8
    return-void
.end method

.method public static final ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v15, p6

    .line 12
    .line 13
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x6abfd3fb

    .line 16
    .line 17
    .line 18
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v7, 0x6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v7

    .line 37
    :goto_1
    and-int/lit8 v2, v7, 0x30

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    move-object/from16 v2, p1

    .line 42
    .line 43
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const/16 v3, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v3, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v3

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move-object/from16 v2, p1

    .line 57
    .line 58
    :goto_3
    and-int/lit8 v3, p8, 0x4

    .line 59
    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    or-int/lit16 v0, v0, 0x180

    .line 63
    .line 64
    :cond_4
    move-object/from16 v4, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    and-int/lit16 v4, v7, 0x180

    .line 68
    .line 69
    if-nez v4, :cond_4

    .line 70
    .line 71
    move-object/from16 v4, p2

    .line 72
    .line 73
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_6

    .line 78
    .line 79
    const/16 v5, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v5, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v5

    .line 85
    :goto_5
    and-int/lit8 v5, p8, 0x8

    .line 86
    .line 87
    if-eqz v5, :cond_8

    .line 88
    .line 89
    or-int/lit16 v0, v0, 0xc00

    .line 90
    .line 91
    :cond_7
    move/from16 v6, p3

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_8
    and-int/lit16 v6, v7, 0xc00

    .line 95
    .line 96
    if-nez v6, :cond_7

    .line 97
    .line 98
    move/from16 v6, p3

    .line 99
    .line 100
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_9

    .line 105
    .line 106
    const/16 v8, 0x800

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_9
    const/16 v8, 0x400

    .line 110
    .line 111
    :goto_6
    or-int/2addr v0, v8

    .line 112
    :goto_7
    and-int/lit8 v8, p8, 0x10

    .line 113
    .line 114
    if-eqz v8, :cond_b

    .line 115
    .line 116
    or-int/lit16 v0, v0, 0x6000

    .line 117
    .line 118
    :cond_a
    move-object/from16 v9, p4

    .line 119
    .line 120
    goto :goto_9

    .line 121
    :cond_b
    and-int/lit16 v9, v7, 0x6000

    .line 122
    .line 123
    if-nez v9, :cond_a

    .line 124
    .line 125
    move-object/from16 v9, p4

    .line 126
    .line 127
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_c

    .line 132
    .line 133
    const/16 v10, 0x4000

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_c
    const/16 v10, 0x2000

    .line 137
    .line 138
    :goto_8
    or-int/2addr v0, v10

    .line 139
    :goto_9
    and-int/lit8 v10, p8, 0x20

    .line 140
    .line 141
    const/high16 v11, 0x30000

    .line 142
    .line 143
    if-eqz v10, :cond_e

    .line 144
    .line 145
    or-int/2addr v0, v11

    .line 146
    :cond_d
    move-object/from16 v11, p5

    .line 147
    .line 148
    goto :goto_b

    .line 149
    :cond_e
    and-int/2addr v11, v7

    .line 150
    if-nez v11, :cond_d

    .line 151
    .line 152
    move-object/from16 v11, p5

    .line 153
    .line 154
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-eqz v12, :cond_f

    .line 159
    .line 160
    const/high16 v12, 0x20000

    .line 161
    .line 162
    goto :goto_a

    .line 163
    :cond_f
    const/high16 v12, 0x10000

    .line 164
    .line 165
    :goto_a
    or-int/2addr v0, v12

    .line 166
    :goto_b
    const v12, 0x12493

    .line 167
    .line 168
    .line 169
    and-int/2addr v12, v0

    .line 170
    const v13, 0x12492

    .line 171
    .line 172
    .line 173
    const/4 v14, 0x0

    .line 174
    const/16 v16, 0x1

    .line 175
    .line 176
    if-eq v12, v13, :cond_10

    .line 177
    .line 178
    move/from16 v12, v16

    .line 179
    .line 180
    goto :goto_c

    .line 181
    :cond_10
    move v12, v14

    .line 182
    :goto_c
    and-int/lit8 v13, v0, 0x1

    .line 183
    .line 184
    invoke-virtual {v15, v13, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-eqz v12, :cond_16

    .line 189
    .line 190
    if-eqz v3, :cond_11

    .line 191
    .line 192
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 193
    .line 194
    goto :goto_d

    .line 195
    :cond_11
    move-object v3, v4

    .line 196
    :goto_d
    if-eqz v5, :cond_12

    .line 197
    .line 198
    move/from16 v6, v16

    .line 199
    .line 200
    :cond_12
    const/4 v4, 0x0

    .line 201
    if-eqz v8, :cond_13

    .line 202
    .line 203
    move-object v5, v4

    .line 204
    goto :goto_e

    .line 205
    :cond_13
    move-object v5, v9

    .line 206
    :goto_e
    if-eqz v10, :cond_14

    .line 207
    .line 208
    goto :goto_f

    .line 209
    :cond_14
    move-object v4, v11

    .line 210
    :goto_f
    sget-object v8, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 211
    .line 212
    if-nez v5, :cond_15

    .line 213
    .line 214
    const v8, 0x45e572ac

    .line 215
    .line 216
    .line 217
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 218
    .line 219
    .line 220
    sget-object v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 221
    .line 222
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 227
    .line 228
    iget-wide v8, v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 229
    .line 230
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 231
    .line 232
    .line 233
    :goto_10
    move-wide v10, v8

    .line 234
    goto :goto_11

    .line 235
    :cond_15
    const v8, 0x45e56f86

    .line 236
    .line 237
    .line 238
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 242
    .line 243
    .line 244
    iget-wide v8, v5, Landroidx/compose/ui/graphics/Color;->value:J

    .line 245
    .line 246
    goto :goto_10

    .line 247
    :goto_11
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 248
    .line 249
    const/16 v17, 0x0

    .line 250
    .line 251
    move-wide v12, v8

    .line 252
    move-object/from16 v16, v15

    .line 253
    .line 254
    move-wide v14, v8

    .line 255
    invoke-static/range {v8 .. v17}, Landroidx/compose/material3/ButtonDefaults;->textButtonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    move-object/from16 v15, v16

    .line 260
    .line 261
    iget-wide v9, v8, Landroidx/compose/material3/ButtonColors;->containerColor:J

    .line 262
    .line 263
    iget-wide v11, v8, Landroidx/compose/material3/ButtonColors;->contentColor:J

    .line 264
    .line 265
    iget-wide v13, v8, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    .line 266
    .line 267
    move-object/from16 p2, v3

    .line 268
    .line 269
    iget-wide v2, v8, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    .line 270
    .line 271
    new-instance v16, Landroidx/compose/material3/ButtonColors;

    .line 272
    .line 273
    move-wide/from16 v23, v2

    .line 274
    .line 275
    move-wide/from16 v17, v9

    .line 276
    .line 277
    move-wide/from16 v19, v11

    .line 278
    .line 279
    move-wide/from16 v21, v13

    .line 280
    .line 281
    invoke-direct/range {v16 .. v24}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 282
    .line 283
    .line 284
    move-object/from16 v12, v16

    .line 285
    .line 286
    new-instance v2, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 287
    .line 288
    const/4 v3, 0x7

    .line 289
    invoke-direct {v2, v3, v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    const v3, 0x717784e8

    .line 293
    .line 294
    .line 295
    invoke-static {v3, v2, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 296
    .line 297
    .line 298
    move-result-object v14

    .line 299
    shr-int/lit8 v0, v0, 0x3

    .line 300
    .line 301
    and-int/lit8 v2, v0, 0xe

    .line 302
    .line 303
    const/high16 v3, 0x30000000

    .line 304
    .line 305
    or-int/2addr v2, v3

    .line 306
    and-int/lit8 v3, v0, 0x70

    .line 307
    .line 308
    or-int/2addr v2, v3

    .line 309
    and-int/lit16 v0, v0, 0x380

    .line 310
    .line 311
    or-int v16, v2, v0

    .line 312
    .line 313
    const/16 v17, 0x1e8

    .line 314
    .line 315
    const/4 v11, 0x0

    .line 316
    const/4 v13, 0x0

    .line 317
    move-object/from16 v8, p1

    .line 318
    .line 319
    move-object/from16 v9, p2

    .line 320
    .line 321
    move v10, v6

    .line 322
    invoke-static/range {v8 .. v17}, Landroidx/compose/material3/CardKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 323
    .line 324
    .line 325
    move-object v6, v4

    .line 326
    move-object v3, v9

    .line 327
    move v4, v10

    .line 328
    goto :goto_12

    .line 329
    :cond_16
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 330
    .line 331
    .line 332
    move-object v3, v4

    .line 333
    move v4, v6

    .line 334
    move-object v5, v9

    .line 335
    move-object v6, v11

    .line 336
    :goto_12
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    if-eqz v9, :cond_17

    .line 341
    .line 342
    new-instance v0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;

    .line 343
    .line 344
    move-object/from16 v2, p1

    .line 345
    .line 346
    move/from16 v8, p8

    .line 347
    .line 348
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;II)V

    .line 349
    .line 350
    .line 351
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 352
    .line 353
    :cond_17
    return-void
.end method

.method public static final HandlePopup(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    move-object v9, p3

    .line 4
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const p3, -0x40fab302

    .line 7
    .line 8
    .line 9
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 p3, v4, 0x6

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    and-int/lit8 p3, v4, 0x8

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    :goto_0
    if-eqz p3, :cond_1

    .line 31
    .line 32
    move p3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p3, 0x2

    .line 35
    :goto_1
    or-int/2addr p3, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move p3, v4

    .line 38
    :goto_2
    and-int/lit8 v1, v4, 0x30

    .line 39
    .line 40
    const/16 v2, 0x20

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    move v1, v2

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/16 v1, 0x10

    .line 53
    .line 54
    :goto_3
    or-int/2addr p3, v1

    .line 55
    :cond_4
    and-int/lit16 v1, v4, 0x180

    .line 56
    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    const/16 v1, 0x100

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    const/16 v1, 0x80

    .line 69
    .line 70
    :goto_4
    or-int/2addr p3, v1

    .line 71
    :cond_6
    and-int/lit16 v1, p3, 0x93

    .line 72
    .line 73
    const/16 v3, 0x92

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x1

    .line 77
    if-eq v1, v3, :cond_7

    .line 78
    .line 79
    move v1, v6

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    move v1, v5

    .line 82
    :goto_5
    and-int/lit8 v3, p3, 0x1

    .line 83
    .line 84
    invoke-virtual {v9, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_d

    .line 89
    .line 90
    and-int/lit8 v1, p3, 0x70

    .line 91
    .line 92
    if-ne v1, v2, :cond_8

    .line 93
    .line 94
    move v1, v6

    .line 95
    goto :goto_6

    .line 96
    :cond_8
    move v1, v5

    .line 97
    :goto_6
    and-int/lit8 v2, p3, 0xe

    .line 98
    .line 99
    if-eq v2, v0, :cond_a

    .line 100
    .line 101
    and-int/lit8 v0, p3, 0x8

    .line 102
    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_9
    move v6, v5

    .line 113
    :cond_a
    :goto_7
    or-int v0, v1, v6

    .line 114
    .line 115
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v0, :cond_b

    .line 120
    .line 121
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 122
    .line 123
    if-ne v1, v0, :cond_c

    .line 124
    .line 125
    :cond_b
    new-instance v1, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    .line 126
    .line 127
    invoke-direct {v1, p1, p0}, Landroidx/compose/foundation/text/selection/HandlePositionProvider;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/text/selection/OffsetProvider;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_c
    check-cast v1, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    .line 134
    .line 135
    new-instance v7, Landroidx/compose/ui/window/PopupProperties;

    .line 136
    .line 137
    sget-object v0, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 138
    .line 139
    invoke-direct {v7, v5, v0, v5, v5}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZLandroidx/compose/ui/window/SecureFlagPolicy;ZI)V

    .line 140
    .line 141
    .line 142
    shl-int/lit8 p3, p3, 0x3

    .line 143
    .line 144
    and-int/lit16 p3, p3, 0x1c00

    .line 145
    .line 146
    or-int/lit16 v10, p3, 0x180

    .line 147
    .line 148
    const/4 v11, 0x2

    .line 149
    const/4 v6, 0x0

    .line 150
    move-object v8, p2

    .line 151
    move-object v5, v1

    .line 152
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 153
    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 157
    .line 158
    .line 159
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    if-eqz p3, :cond_e

    .line 164
    .line 165
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 166
    .line 167
    const/16 v5, 0x8

    .line 168
    .line 169
    move-object v1, p0

    .line 170
    move-object v2, p1

    .line 171
    move-object v3, p2

    .line 172
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 173
    .line 174
    .line 175
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 176
    .line 177
    :cond_e
    return-void
.end method

.method public static final ProtectedTextFieldOutlinedPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/account/server/settings/ui/common/Authenticator;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZLandroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v8, p9

    .line 14
    .line 15
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, 0x20053e6c

    .line 18
    .line 19
    .line 20
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    move-object/from16 v10, p0

    .line 24
    .line 25
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p10, v0

    .line 35
    .line 36
    move-object/from16 v11, p1

    .line 37
    .line 38
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x20

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v1, 0x10

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v1

    .line 50
    move-object/from16 v13, p3

    .line 51
    .line 52
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/16 v2, 0x800

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    move v1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v1, 0x400

    .line 63
    .line 64
    :goto_2
    or-int/2addr v0, v1

    .line 65
    move-object/from16 v5, p5

    .line 66
    .line 67
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const/high16 v1, 0x20000

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/high16 v1, 0x10000

    .line 77
    .line 78
    :goto_3
    or-int/2addr v0, v1

    .line 79
    const/high16 v1, 0xd80000

    .line 80
    .line 81
    or-int/2addr v0, v1

    .line 82
    move/from16 v6, p7

    .line 83
    .line 84
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const/high16 v1, 0x4000000

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    const/high16 v1, 0x2000000

    .line 94
    .line 95
    :goto_4
    or-int/2addr v0, v1

    .line 96
    move/from16 v7, p8

    .line 97
    .line 98
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    const/high16 v1, 0x20000000

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_5
    const/high16 v1, 0x10000000

    .line 108
    .line 109
    :goto_5
    or-int/2addr v0, v1

    .line 110
    const v1, 0x12492493

    .line 111
    .line 112
    .line 113
    and-int/2addr v1, v0

    .line 114
    const v3, 0x12492492

    .line 115
    .line 116
    .line 117
    const/16 v20, 0x1

    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    if-eq v1, v3, :cond_6

    .line 121
    .line 122
    move/from16 v1, v20

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_6
    move v1, v4

    .line 126
    :goto_6
    and-int/lit8 v3, v0, 0x1

    .line 127
    .line 128
    invoke-virtual {v8, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_f

    .line 133
    .line 134
    new-array v1, v4, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 141
    .line 142
    if-ne v3, v9, :cond_7

    .line 143
    .line 144
    new-instance v3, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    const/16 v12, 0xa

    .line 147
    .line 148
    invoke-direct {v3, v12}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 155
    .line 156
    const/16 v12, 0x30

    .line 157
    .line 158
    invoke-static {v1, v3, v8, v12}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 163
    .line 164
    new-array v3, v4, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    if-ne v14, v9, :cond_8

    .line 171
    .line 172
    new-instance v14, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    const/16 v15, 0xb

    .line 175
    .line 176
    invoke-direct {v14, v15}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 183
    .line 184
    invoke-static {v3, v14, v8, v12}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    move-object v15, v3

    .line 189
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 190
    .line 191
    sget-object v3, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 192
    .line 193
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    check-cast v3, Landroid/app/Activity;

    .line 201
    .line 202
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    if-ne v12, v9, :cond_9

    .line 207
    .line 208
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    move-object v14, v12

    .line 216
    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    .line 217
    .line 218
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    check-cast v12, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v21

    .line 228
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v16

    .line 236
    or-int v12, v12, v16

    .line 237
    .line 238
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v16

    .line 242
    or-int v12, v12, v16

    .line 243
    .line 244
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v16

    .line 248
    or-int v12, v12, v16

    .line 249
    .line 250
    and-int/lit16 v4, v0, 0x1c00

    .line 251
    .line 252
    if-eq v4, v2, :cond_a

    .line 253
    .line 254
    const/4 v4, 0x0

    .line 255
    goto :goto_7

    .line 256
    :cond_a
    move/from16 v4, v20

    .line 257
    .line 258
    :goto_7
    or-int v2, v12, v4

    .line 259
    .line 260
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    if-nez v2, :cond_c

    .line 265
    .line 266
    if-ne v4, v9, :cond_b

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_b
    move-object v13, v1

    .line 270
    move-object v14, v3

    .line 271
    goto :goto_9

    .line 272
    :cond_c
    :goto_8
    new-instance v12, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;

    .line 273
    .line 274
    const/16 v19, 0x2

    .line 275
    .line 276
    move-object/from16 v18, p2

    .line 277
    .line 278
    move-object/from16 v16, v1

    .line 279
    .line 280
    move-object/from16 v17, v13

    .line 281
    .line 282
    move-object v13, v3

    .line 283
    invoke-direct/range {v12 .. v19}, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 284
    .line 285
    .line 286
    move-object v14, v13

    .line 287
    move-object/from16 v13, v16

    .line 288
    .line 289
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    move-object v4, v12

    .line 293
    :goto_9
    move-object v3, v4

    .line 294
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 295
    .line 296
    const v1, 0x7fffe07e

    .line 297
    .line 298
    .line 299
    and-int/2addr v0, v1

    .line 300
    move-object v1, v9

    .line 301
    move v9, v0

    .line 302
    move-object v0, v10

    .line 303
    move-object v10, v1

    .line 304
    move-object/from16 v4, p4

    .line 305
    .line 306
    move-object v1, v11

    .line 307
    move/from16 v2, v21

    .line 308
    .line 309
    invoke-static/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->TextFieldOutlinedPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLandroidx/compose/runtime/Composer;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    or-int/2addr v0, v1

    .line 321
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    if-nez v0, :cond_d

    .line 326
    .line 327
    if-ne v1, v10, :cond_e

    .line 328
    .line 329
    :cond_d
    new-instance v1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    const/16 v0, 0xc

    .line 332
    .line 333
    invoke-direct {v1, v0, v14, v13}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :cond_e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 340
    .line 341
    const-string v0, "secureWindow"

    .line 342
    .line 343
    invoke-static {v0, v1, v8}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 344
    .line 345
    .line 346
    move/from16 v16, v20

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_f
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 350
    .line 351
    .line 352
    move/from16 v16, p6

    .line 353
    .line 354
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    if-eqz v0, :cond_10

    .line 359
    .line 360
    new-instance v9, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda0;

    .line 361
    .line 362
    move-object/from16 v10, p0

    .line 363
    .line 364
    move-object/from16 v11, p1

    .line 365
    .line 366
    move-object/from16 v12, p2

    .line 367
    .line 368
    move-object/from16 v13, p3

    .line 369
    .line 370
    move-object/from16 v14, p4

    .line 371
    .line 372
    move-object/from16 v15, p5

    .line 373
    .line 374
    move/from16 v17, p7

    .line 375
    .line 376
    move/from16 v18, p8

    .line 377
    .line 378
    move/from16 v19, p10

    .line 379
    .line 380
    invoke-direct/range {v9 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/account/server/settings/ui/common/Authenticator;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZI)V

    .line 381
    .line 382
    .line 383
    iput-object v9, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 384
    .line 385
    :cond_10
    return-void
.end method

.method public static final QrCodeScannerBottomContent(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v7, p2

    .line 14
    .line 15
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v1, 0x5684283b

    .line 18
    .line 19
    .line 20
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v1, v11, 0x6

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x2

    .line 36
    :goto_0
    or-int/2addr v1, v11

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v11

    .line 39
    :goto_1
    and-int/lit8 v2, v11, 0x30

    .line 40
    .line 41
    const/16 v3, 0x20

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    move v2, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v2, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v1, v2

    .line 56
    :cond_3
    move v12, v1

    .line 57
    and-int/lit8 v1, v12, 0x13

    .line 58
    .line 59
    const/16 v2, 0x12

    .line 60
    .line 61
    const/4 v13, 0x1

    .line 62
    if-eq v1, v2, :cond_4

    .line 63
    .line 64
    move v1, v13

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 v1, 0x0

    .line 67
    :goto_3
    and-int/lit8 v2, v12, 0x1

    .line 68
    .line 69
    invoke-virtual {v7, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 76
    .line 77
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 78
    .line 79
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 80
    .line 81
    const/16 v5, 0x30

    .line 82
    .line 83
    invoke-static {v4, v2, v7, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-wide v4, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 88
    .line 89
    ushr-long v8, v4, v3

    .line 90
    .line 91
    xor-long/2addr v4, v8

    .line 92
    long-to-int v3, v4

    .line 93
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v7, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 107
    .line 108
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 109
    .line 110
    .line 111
    iget-boolean v6, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 112
    .line 113
    if-eqz v6, :cond_5

    .line 114
    .line 115
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 120
    .line 121
    .line 122
    :goto_4
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 123
    .line 124
    invoke-static {v7, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 128
    .line 129
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 137
    .line 138
    invoke-static {v7, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 142
    .line 143
    invoke-static {v7, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 144
    .line 145
    .line 146
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 147
    .line 148
    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    const-string v1, "ScannedStatus"

    .line 152
    .line 153
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 154
    .line 155
    invoke-static {v14, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget-object v15, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 160
    .line 161
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    const/high16 v3, 0x41800000    # 16.0f

    .line 172
    .line 173
    invoke-static {v1, v2, v3, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 174
    .line 175
    .line 176
    move-result-object v16

    .line 177
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    const/16 v20, 0x0

    .line 187
    .line 188
    const/16 v21, 0xe

    .line 189
    .line 190
    const/high16 v17, 0x41800000    # 16.0f

    .line 191
    .line 192
    const/16 v18, 0x0

    .line 193
    .line 194
    const/16 v19, 0x0

    .line 195
    .line 196
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v2, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 201
    .line 202
    const/high16 v4, 0x3f800000    # 1.0f

    .line 203
    .line 204
    invoke-direct {v2, v4, v13}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    and-int/lit8 v8, v12, 0xe

    .line 212
    .line 213
    const/16 v9, 0x3c

    .line 214
    .line 215
    move v4, v3

    .line 216
    const-wide/16 v2, 0x0

    .line 217
    .line 218
    move v5, v4

    .line 219
    const/4 v4, 0x0

    .line 220
    move v6, v5

    .line 221
    const/4 v5, 0x0

    .line 222
    move/from16 v16, v6

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    move/from16 v13, v16

    .line 226
    .line 227
    invoke-static/range {v0 .. v9}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 228
    .line 229
    .line 230
    const v0, 0x7f120477

    .line 231
    .line 232
    .line 233
    invoke-static {v7, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const-string v1, "DoneButton"

    .line 238
    .line 239
    invoke-static {v14, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    and-int/lit8 v9, v12, 0x70

    .line 257
    .line 258
    const/16 v10, 0xf8

    .line 259
    .line 260
    const/4 v3, 0x0

    .line 261
    const/4 v5, 0x0

    .line 262
    const/4 v6, 0x0

    .line 263
    move-object v8, v7

    .line 264
    const/4 v7, 0x0

    .line 265
    move-object/from16 v12, p0

    .line 266
    .line 267
    move-object/from16 v1, p1

    .line 268
    .line 269
    invoke-static/range {v0 .. v10}, Lorg/jsoup/helper/Validate;->ButtonOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 270
    .line 271
    .line 272
    move-object v7, v8

    .line 273
    const/4 v0, 0x1

    .line 274
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_6
    move-object v12, v0

    .line 279
    move-object v1, v10

    .line 280
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 281
    .line 282
    .line 283
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-eqz v0, :cond_7

    .line 288
    .line 289
    new-instance v2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    .line 290
    .line 291
    const/16 v3, 0xc

    .line 292
    .line 293
    invoke-direct {v2, v11, v3, v12, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 297
    .line 298
    :cond_7
    return-void
.end method

.method public static final Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 8

    .line 1
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    shr-long v2, p0, v1

    .line 6
    .line 7
    long-to-int v2, v2

    .line 8
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const-wide v4, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr p0, v4

    .line 18
    long-to-int p0, p0

    .line 19
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    shr-long v6, p2, v1

    .line 28
    .line 29
    long-to-int v1, v6

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-float/2addr v1, v2

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    and-long/2addr p2, v4

    .line 40
    long-to-int p2, p2

    .line 41
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    add-float/2addr p2, p0

    .line 46
    invoke-direct {v0, v3, p1, v1, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static final SelectionHandle-wLIcFTc(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    move/from16 v11, p9

    .line 12
    .line 13
    move-object/from16 v12, p8

    .line 14
    .line 15
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, -0x1bcadee8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, v11, 0x6

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    and-int/lit8 v0, v11, 0x8

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move v0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    :goto_1
    or-int/2addr v0, v11

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v0, v11

    .line 49
    :goto_2
    and-int/lit8 v2, v11, 0x30

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    move v2, v3

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v2, 0x10

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v2

    .line 66
    :cond_4
    and-int/lit16 v2, v11, 0x180

    .line 67
    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    const/16 v2, 0x100

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    const/16 v2, 0x80

    .line 84
    .line 85
    :goto_4
    or-int/2addr v0, v2

    .line 86
    :cond_6
    and-int/lit16 v2, v11, 0xc00

    .line 87
    .line 88
    if-nez v2, :cond_8

    .line 89
    .line 90
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    const/16 v2, 0x800

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/16 v2, 0x400

    .line 100
    .line 101
    :goto_5
    or-int/2addr v0, v2

    .line 102
    :cond_8
    and-int/lit16 v2, v11, 0x6000

    .line 103
    .line 104
    if-nez v2, :cond_9

    .line 105
    .line 106
    or-int/lit16 v0, v0, 0x2000

    .line 107
    .line 108
    :cond_9
    const/high16 v2, 0x180000

    .line 109
    .line 110
    and-int/2addr v2, v11

    .line 111
    if-nez v2, :cond_b

    .line 112
    .line 113
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_a

    .line 118
    .line 119
    const/high16 v2, 0x100000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v2, 0x80000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v0, v2

    .line 125
    :cond_b
    const v2, 0x82493

    .line 126
    .line 127
    .line 128
    and-int/2addr v2, v0

    .line 129
    const v4, 0x82492

    .line 130
    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    if-eq v2, v4, :cond_c

    .line 134
    .line 135
    const/4 v2, 0x1

    .line 136
    goto :goto_7

    .line 137
    :cond_c
    move v2, v5

    .line 138
    :goto_7
    and-int/lit8 v4, v0, 0x1

    .line 139
    .line 140
    invoke-virtual {v12, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_1c

    .line 145
    .line 146
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 147
    .line 148
    .line 149
    and-int/lit8 v2, v11, 0x1

    .line 150
    .line 151
    const v4, -0xe001

    .line 152
    .line 153
    .line 154
    if-eqz v2, :cond_e

    .line 155
    .line 156
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_d

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 164
    .line 165
    .line 166
    and-int/2addr v0, v4

    .line 167
    move-wide/from16 v14, p4

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_e
    :goto_8
    and-int/2addr v0, v4

    .line 171
    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 177
    .line 178
    .line 179
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 180
    .line 181
    sget-object v4, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 182
    .line 183
    if-eqz v7, :cond_12

    .line 184
    .line 185
    sget-object v16, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 186
    .line 187
    if-ne v8, v4, :cond_f

    .line 188
    .line 189
    if-eqz v9, :cond_10

    .line 190
    .line 191
    :cond_f
    if-ne v8, v2, :cond_11

    .line 192
    .line 193
    if-eqz v9, :cond_11

    .line 194
    .line 195
    :cond_10
    const/4 v2, 0x1

    .line 196
    goto :goto_a

    .line 197
    :cond_11
    move v2, v5

    .line 198
    :goto_a
    move v4, v2

    .line 199
    goto :goto_b

    .line 200
    :cond_12
    sget-object v16, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 201
    .line 202
    if-ne v8, v4, :cond_13

    .line 203
    .line 204
    if-eqz v9, :cond_14

    .line 205
    .line 206
    :cond_13
    if-ne v8, v2, :cond_15

    .line 207
    .line 208
    if-eqz v9, :cond_15

    .line 209
    .line 210
    :cond_14
    move v4, v5

    .line 211
    goto :goto_b

    .line 212
    :cond_15
    const/4 v4, 0x1

    .line 213
    :goto_b
    if-eqz v4, :cond_16

    .line 214
    .line 215
    sget-object v2, Landroidx/compose/ui/AbsoluteAlignment;->TopRight:Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_16
    sget-object v2, Landroidx/compose/ui/AbsoluteAlignment;->TopLeft:Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 219
    .line 220
    :goto_c
    and-int/lit8 v13, v0, 0xe

    .line 221
    .line 222
    if-eq v13, v1, :cond_18

    .line 223
    .line 224
    and-int/lit8 v1, v0, 0x8

    .line 225
    .line 226
    if-eqz v1, :cond_17

    .line 227
    .line 228
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_17

    .line 233
    .line 234
    goto :goto_d

    .line 235
    :cond_17
    move v1, v5

    .line 236
    goto :goto_e

    .line 237
    :cond_18
    :goto_d
    const/4 v1, 0x1

    .line 238
    :goto_e
    and-int/lit8 v0, v0, 0x70

    .line 239
    .line 240
    if-ne v0, v3, :cond_19

    .line 241
    .line 242
    const/4 v0, 0x1

    .line 243
    goto :goto_f

    .line 244
    :cond_19
    move v0, v5

    .line 245
    :goto_f
    or-int/2addr v0, v1

    .line 246
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    or-int/2addr v0, v1

    .line 251
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-nez v0, :cond_1a

    .line 256
    .line 257
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 258
    .line 259
    if-ne v1, v0, :cond_1b

    .line 260
    .line 261
    :cond_1a
    new-instance v1, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda1;

    .line 262
    .line 263
    invoke-direct {v1, v6, v7, v4}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZZ)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_1b
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 270
    .line 271
    invoke-static {v10, v5, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 276
    .line 277
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    move-object v1, v0

    .line 282
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 283
    .line 284
    new-instance v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda2;

    .line 285
    .line 286
    move-wide/from16 v17, v14

    .line 287
    .line 288
    move-object v14, v2

    .line 289
    move-wide/from16 v2, v17

    .line 290
    .line 291
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/platform/ViewConfiguration;JZLandroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/OffsetProvider;)V

    .line 292
    .line 293
    .line 294
    const v1, 0x515e2041

    .line 295
    .line 296
    .line 297
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    or-int/lit16 v1, v13, 0x180

    .line 302
    .line 303
    invoke-static {v6, v14, v0, v12, v1}, Lorg/slf4j/helpers/Util;->HandlePopup(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 304
    .line 305
    .line 306
    goto :goto_10

    .line 307
    :cond_1c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 308
    .line 309
    .line 310
    move-wide/from16 v2, p4

    .line 311
    .line 312
    :goto_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    if-eqz v12, :cond_1d

    .line 317
    .line 318
    new-instance v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda3;

    .line 319
    .line 320
    move-object v1, v6

    .line 321
    move v4, v9

    .line 322
    move v9, v11

    .line 323
    move-wide v5, v2

    .line 324
    move v2, v7

    .line 325
    move-object v3, v8

    .line 326
    move-object v8, v10

    .line 327
    move/from16 v7, p6

    .line 328
    .line 329
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;I)V

    .line 330
    .line 331
    .line 332
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 333
    .line 334
    :cond_1d
    return-void
.end method

.method public static final SelectionHandleIcon(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 5

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x7ddd909a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/16 v1, 0x10

    .line 35
    .line 36
    :goto_2
    or-int/2addr v0, v1

    .line 37
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const/16 v1, 0x100

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    const/16 v1, 0x80

    .line 47
    .line 48
    :goto_3
    or-int/2addr v0, v1

    .line 49
    and-int/lit16 v1, v0, 0x93

    .line 50
    .line 51
    const/16 v2, 0x92

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x1

    .line 55
    if-eq v1, v2, :cond_4

    .line 56
    .line 57
    move v1, v4

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move v1, v3

    .line 60
    :goto_4
    and-int/2addr v0, v4

    .line 61
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 68
    .line 69
    const/high16 v0, 0x41c80000    # 25.0f

    .line 70
    .line 71
    invoke-static {p0, v0, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;

    .line 76
    .line 77
    invoke-direct {v1, p1, p2, v3}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;ZI)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 85
    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 89
    .line 90
    .line 91
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    if-eqz p3, :cond_6

    .line 96
    .line 97
    new-instance v0, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;

    .line 98
    .line 99
    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZI)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    :cond_6
    return-void
.end method

.method public static final TextLabelSmall-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 198
    move-object/from16 v0, p6

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, -0x65e5b28d

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p7, v1

    or-int/lit8 v1, v1, 0x30

    move-wide/from16 v5, p2

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x100

    goto :goto_1

    :cond_1
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v1, v2

    const v2, 0x36c00

    or-int/2addr v1, v2

    const v2, 0x12493

    and-int/2addr v2, v1

    const v4, 0x12492

    if-eq v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 200
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 201
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 202
    iget-object v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->labelSmall:Landroidx/compose/ui/text/TextStyle;

    and-int/lit16 v1, v1, 0x3fe

    const/16 v20, 0x6186

    const v21, 0x3abf8

    move/from16 v19, v1

    .line 203
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v0

    move-object/from16 v17, v2

    move-object v0, v3

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v4, v1

    move v7, v11

    move v8, v13

    goto :goto_3

    :cond_3
    move-object/from16 v18, v0

    .line 204
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    .line 205
    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p2

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIIII)V

    .line 206
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final TextLabelSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V
    .locals 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p6

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v1, 0x1ec1ad2f

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    move-object/from16 v3, p0

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    const/4 v1, 0x2

    .line 25
    :goto_0
    or-int v1, p7, v1

    .line 26
    .line 27
    and-int/lit8 v2, p8, 0x2

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    or-int/lit8 v1, v1, 0x30

    .line 32
    .line 33
    :cond_1
    move-object/from16 v4, p1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    and-int/lit8 v4, p7, 0x30

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    move-object/from16 v4, p1

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    const/16 v5, 0x20

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/16 v5, 0x10

    .line 52
    .line 53
    :goto_1
    or-int/2addr v1, v5

    .line 54
    :goto_2
    and-int/lit8 v5, p8, 0x4

    .line 55
    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    or-int/lit16 v1, v1, 0x180

    .line 59
    .line 60
    move-wide/from16 v6, p2

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_4
    move-wide/from16 v6, p2

    .line 64
    .line 65
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_5

    .line 70
    .line 71
    const/16 v8, 0x100

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    const/16 v8, 0x80

    .line 75
    .line 76
    :goto_3
    or-int/2addr v1, v8

    .line 77
    :goto_4
    const v8, 0x36c00

    .line 78
    .line 79
    .line 80
    or-int/2addr v1, v8

    .line 81
    const v8, 0x12493

    .line 82
    .line 83
    .line 84
    and-int/2addr v8, v1

    .line 85
    const v9, 0x12492

    .line 86
    .line 87
    .line 88
    if-eq v8, v9, :cond_6

    .line 89
    .line 90
    const/4 v8, 0x1

    .line 91
    goto :goto_5

    .line 92
    :cond_6
    const/4 v8, 0x0

    .line 93
    :goto_5
    and-int/lit8 v9, v1, 0x1

    .line 94
    .line 95
    invoke-virtual {v0, v9, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_9

    .line 100
    .line 101
    if-eqz v2, :cond_7

    .line 102
    .line 103
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_7
    move-object v2, v4

    .line 107
    :goto_6
    if-eqz v5, :cond_8

    .line 108
    .line 109
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 110
    .line 111
    move-wide/from16 v21, v4

    .line 112
    .line 113
    move-object v4, v2

    .line 114
    move-wide/from16 v2, v21

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_8
    move-object v4, v2

    .line 118
    move-wide v2, v6

    .line 119
    :goto_7
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 120
    .line 121
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 126
    .line 127
    iget-object v5, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->labelSmall:Landroidx/compose/ui/text/TextStyle;

    .line 128
    .line 129
    and-int/lit16 v1, v1, 0x3fe

    .line 130
    .line 131
    const/16 v19, 0x6186

    .line 132
    .line 133
    const v20, 0x1abf8

    .line 134
    .line 135
    .line 136
    move/from16 v18, v1

    .line 137
    .line 138
    move-object v1, v4

    .line 139
    move-object/from16 v16, v5

    .line 140
    .line 141
    const-wide/16 v4, 0x0

    .line 142
    .line 143
    const-wide/16 v6, 0x0

    .line 144
    .line 145
    const/4 v8, 0x0

    .line 146
    const-wide/16 v9, 0x0

    .line 147
    .line 148
    const/4 v11, 0x1

    .line 149
    const/4 v12, 0x0

    .line 150
    const v13, 0x7fffffff

    .line 151
    .line 152
    .line 153
    const/4 v14, 0x0

    .line 154
    const/4 v15, 0x0

    .line 155
    move-object/from16 v17, v0

    .line 156
    .line 157
    move-object/from16 v0, p0

    .line 158
    .line 159
    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 160
    .line 161
    .line 162
    move-object v4, v1

    .line 163
    move-wide v5, v2

    .line 164
    move v7, v11

    .line 165
    move v8, v13

    .line 166
    goto :goto_8

    .line 167
    :cond_9
    move-object/from16 v17, v0

    .line 168
    .line 169
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    move/from16 v8, p5

    .line 173
    .line 174
    move-wide v5, v6

    .line 175
    move/from16 v7, p4

    .line 176
    .line 177
    :goto_8
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_a

    .line 182
    .line 183
    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;

    .line 184
    .line 185
    const/4 v11, 0x2

    .line 186
    move-object/from16 v3, p0

    .line 187
    .line 188
    move/from16 v9, p7

    .line 189
    .line 190
    move/from16 v10, p8

    .line 191
    .line 192
    invoke-direct/range {v2 .. v11}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIIIII)V

    .line 193
    .line 194
    .line 195
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 196
    .line 197
    :cond_a
    return-void
.end method

.method public static final Velocity(FF)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    int-to-long p0, p0

    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shl-long/2addr v0, v2

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p0, v2

    .line 20
    or-long/2addr p0, v0

    .line 21
    return-wide p0
.end method

.method public static final buildErrorString(Landroid/content/res/Resources;IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object p3, v0, v1

    .line 15
    .line 16
    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, "\n\n"

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    return-object p1
.end method

.method public static final varargs bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;
    .locals 10

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1d

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    instance-of v6, v3, Ljava/lang/Boolean;

    .line 28
    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    check-cast v3, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_1
    instance-of v6, v3, Ljava/lang/Byte;

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    check-cast v3, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_2
    instance-of v6, v3, Ljava/lang/Character;

    .line 58
    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    check-cast v3, Ljava/lang/Character;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_3
    instance-of v6, v3, Ljava/lang/Double;

    .line 73
    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    check-cast v3, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_4
    instance-of v6, v3, Ljava/lang/Float;

    .line 88
    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    check-cast v3, Ljava/lang/Number;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_5
    instance-of v6, v3, Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    check-cast v3, Ljava/lang/Number;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_6
    instance-of v6, v3, Ljava/lang/Long;

    .line 118
    .line 119
    if-eqz v6, :cond_7

    .line 120
    .line 121
    check-cast v3, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_7
    instance-of v6, v3, Ljava/lang/Short;

    .line 133
    .line 134
    if-eqz v6, :cond_8

    .line 135
    .line 136
    check-cast v3, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_8
    instance-of v6, v3, Landroid/os/Bundle;

    .line 148
    .line 149
    if-eqz v6, :cond_9

    .line 150
    .line 151
    check-cast v3, Landroid/os/Bundle;

    .line 152
    .line 153
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_9
    instance-of v6, v3, Ljava/lang/CharSequence;

    .line 159
    .line 160
    if-eqz v6, :cond_a

    .line 161
    .line 162
    check-cast v3, Ljava/lang/CharSequence;

    .line 163
    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :cond_a
    instance-of v6, v3, Landroid/os/Parcelable;

    .line 170
    .line 171
    if-eqz v6, :cond_b

    .line 172
    .line 173
    check-cast v3, Landroid/os/Parcelable;

    .line 174
    .line 175
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_b
    instance-of v6, v3, [Z

    .line 181
    .line 182
    if-eqz v6, :cond_c

    .line 183
    .line 184
    check-cast v3, [Z

    .line 185
    .line 186
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_c
    instance-of v6, v3, [B

    .line 192
    .line 193
    if-eqz v6, :cond_d

    .line 194
    .line 195
    check-cast v3, [B

    .line 196
    .line 197
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_d
    instance-of v6, v3, [C

    .line 203
    .line 204
    if-eqz v6, :cond_e

    .line 205
    .line 206
    check-cast v3, [C

    .line 207
    .line 208
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_e
    instance-of v6, v3, [D

    .line 214
    .line 215
    if-eqz v6, :cond_f

    .line 216
    .line 217
    check-cast v3, [D

    .line 218
    .line 219
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_f
    instance-of v6, v3, [F

    .line 225
    .line 226
    if-eqz v6, :cond_10

    .line 227
    .line 228
    check-cast v3, [F

    .line 229
    .line 230
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :cond_10
    instance-of v6, v3, [I

    .line 236
    .line 237
    if-eqz v6, :cond_11

    .line 238
    .line 239
    check-cast v3, [I

    .line 240
    .line 241
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :cond_11
    instance-of v6, v3, [J

    .line 247
    .line 248
    if-eqz v6, :cond_12

    .line 249
    .line 250
    check-cast v3, [J

    .line 251
    .line 252
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :cond_12
    instance-of v6, v3, [S

    .line 258
    .line 259
    if-eqz v6, :cond_13

    .line 260
    .line 261
    check-cast v3, [S

    .line 262
    .line 263
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :cond_13
    instance-of v6, v3, [Ljava/lang/Object;

    .line 269
    .line 270
    const/16 v7, 0x22

    .line 271
    .line 272
    const-string v8, " for key \""

    .line 273
    .line 274
    if-eqz v6, :cond_18

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    const-class v9, Landroid/os/Parcelable;

    .line 288
    .line 289
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    if-eqz v9, :cond_14

    .line 294
    .line 295
    check-cast v3, [Landroid/os/Parcelable;

    .line 296
    .line 297
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_14
    const-class v9, Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    if-eqz v9, :cond_15

    .line 308
    .line 309
    check-cast v3, [Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_15
    const-class v9, Ljava/lang/CharSequence;

    .line 316
    .line 317
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-eqz v9, :cond_16

    .line 322
    .line 323
    check-cast v3, [Ljava/lang/CharSequence;

    .line 324
    .line 325
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    goto :goto_1

    .line 329
    :cond_16
    const-class v9, Ljava/io/Serializable;

    .line 330
    .line 331
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    if-eqz v9, :cond_17

    .line 336
    .line 337
    check-cast v3, Ljava/io/Serializable;

    .line 338
    .line 339
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 340
    .line 341
    .line 342
    goto :goto_1

    .line 343
    :cond_17
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    const-string v0, "Illegal value array type "

    .line 348
    .line 349
    invoke-static {v0, p0, v8, v4, v7}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 350
    .line 351
    .line 352
    return-object v5

    .line 353
    :cond_18
    instance-of v6, v3, Ljava/io/Serializable;

    .line 354
    .line 355
    if-eqz v6, :cond_19

    .line 356
    .line 357
    check-cast v3, Ljava/io/Serializable;

    .line 358
    .line 359
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_19
    instance-of v6, v3, Landroid/os/IBinder;

    .line 364
    .line 365
    if-eqz v6, :cond_1a

    .line 366
    .line 367
    check-cast v3, Landroid/os/IBinder;

    .line 368
    .line 369
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 370
    .line 371
    .line 372
    goto :goto_1

    .line 373
    :cond_1a
    instance-of v6, v3, Landroid/util/Size;

    .line 374
    .line 375
    if-eqz v6, :cond_1b

    .line 376
    .line 377
    check-cast v3, Landroid/util/Size;

    .line 378
    .line 379
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 380
    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_1b
    instance-of v6, v3, Landroid/util/SizeF;

    .line 384
    .line 385
    if-eqz v6, :cond_1c

    .line 386
    .line 387
    check-cast v3, Landroid/util/SizeF;

    .line 388
    .line 389
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    .line 390
    .line 391
    .line 392
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    const-string v0, "Illegal value type "

    .line 405
    .line 406
    invoke-static {v0, p0, v8, v4, v7}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 407
    .line 408
    .line 409
    return-object v5

    .line 410
    :cond_1d
    return-object v0
.end method

.method public static compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final createFontFamilyResolver(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamilyResolverImpl;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 2
    .line 3
    new-instance v1, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x1f

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->fontWeightAdjustment(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    new-instance v2, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Lcom/mikepenz/fastadapter/VerboseLogger;Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static final createHandleImage(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    float-to-double v1, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    double-to-float v1, v1

    .line 11
    float-to-int v1, v1

    .line 12
    mul-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    sget-object v2, Landroidx/room/util/DBUtil;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 15
    .line 16
    sget-object v4, Landroidx/room/util/DBUtil;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 17
    .line 18
    sget-object v5, Landroidx/room/util/DBUtil;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v6, v2, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-gt v1, v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-le v1, v6, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    move-object v8, v2

    .line 40
    move-object v9, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 43
    const/16 v4, 0x18

    .line 44
    .line 45
    invoke-static {v1, v1, v2, v4}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(IIII)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sput-object v2, Landroidx/room/util/DBUtil;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 50
    .line 51
    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Canvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    sput-object v4, Landroidx/room/util/DBUtil;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_2
    if-nez v5, :cond_2

    .line 59
    .line 60
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 61
    .line 62
    invoke-direct {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v5, Landroidx/room/util/DBUtil;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 66
    .line 67
    :cond_2
    move-object v10, v5

    .line 68
    iget-object v1, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 71
    .line 72
    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v4, v8, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    int-to-float v5, v5

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    int-to-float v4, v4

    .line 88
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    int-to-long v5, v5

    .line 93
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    int-to-long v11, v4

    .line 98
    const/16 v4, 0x20

    .line 99
    .line 100
    shl-long/2addr v5, v4

    .line 101
    const-wide v18, 0xffffffffL

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    and-long v11, v11, v18

    .line 107
    .line 108
    or-long/2addr v5, v11

    .line 109
    iget-object v7, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 110
    .line 111
    iget-object v11, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 112
    .line 113
    iget-object v12, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 114
    .line 115
    iget-wide v13, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 116
    .line 117
    iput-object v0, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 118
    .line 119
    iput-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 120
    .line 121
    iput-object v9, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 122
    .line 123
    iput-wide v5, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 124
    .line 125
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    .line 126
    .line 127
    .line 128
    move-object v0, v11

    .line 129
    move-object v2, v12

    .line 130
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 131
    .line 132
    iget-object v5, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const/16 v17, 0x3a

    .line 141
    .line 142
    const/4 v15, 0x0

    .line 143
    move-wide/from16 v25, v13

    .line 144
    .line 145
    move-wide v13, v5

    .line 146
    move-wide/from16 v5, v25

    .line 147
    .line 148
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 149
    .line 150
    .line 151
    const-wide v20, 0xff000000L

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    int-to-long v13, v13

    .line 165
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    move/from16 v22, v4

    .line 170
    .line 171
    move-wide/from16 v23, v5

    .line 172
    .line 173
    int-to-long v4, v15

    .line 174
    shl-long v13, v13, v22

    .line 175
    .line 176
    and-long v4, v4, v18

    .line 177
    .line 178
    or-long/2addr v13, v4

    .line 179
    const/16 v17, 0x78

    .line 180
    .line 181
    const/4 v15, 0x0

    .line 182
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 183
    .line 184
    .line 185
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    int-to-long v11, v6

    .line 194
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    int-to-long v13, v6

    .line 199
    shl-long v11, v11, v22

    .line 200
    .line 201
    and-long v13, v13, v18

    .line 202
    .line 203
    or-long/2addr v11, v13

    .line 204
    const/4 v6, 0x0

    .line 205
    move-object v13, v7

    .line 206
    const/16 v7, 0x78

    .line 207
    .line 208
    move-wide/from16 v14, v23

    .line 209
    .line 210
    move-wide/from16 v25, v11

    .line 211
    .line 212
    move-object v11, v0

    .line 213
    move-object v12, v2

    .line 214
    move-object v0, v10

    .line 215
    move-object v10, v1

    .line 216
    move-wide v1, v4

    .line 217
    move-wide/from16 v4, v25

    .line 218
    .line 219
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/Modifier$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 223
    .line 224
    .line 225
    iput-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 226
    .line 227
    iput-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 228
    .line 229
    iput-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 230
    .line 231
    iput-wide v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 232
    .line 233
    return-object v8
.end method

.method public static directExecutor()Lcom/bumptech/glide/util/Executors$1;
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/util/Executors$1;->sDirectExecutor:Lcom/bumptech/glide/util/Executors$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/bumptech/glide/util/Executors$1;->sDirectExecutor:Lcom/bumptech/glide/util/Executors$1;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lcom/bumptech/glide/util/Executors$1;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/util/Executors$1;->sDirectExecutor:Lcom/bumptech/glide/util/Executors$1;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/bumptech/glide/util/Executors$1;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2}, Lcom/bumptech/glide/util/Executors$1;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/bumptech/glide/util/Executors$1;->sDirectExecutor:Lcom/bumptech/glide/util/Executors$1;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    sget-object v0, Lcom/bumptech/glide/util/Executors$1;->sDirectExecutor:Lcom/bumptech/glide/util/Executors$1;

    .line 28
    .line 29
    return-object v0

    .line 30
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v1
.end method

.method public static final findNavController(Landroid/view/View;)Landroidx/navigation/NavHostController;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v2, 0x11

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lkotlin/sequences/TakeWhileSequence;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-direct {v2, v0, v1, v3}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/FilteringSequence;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    const-string v0, "View "

    .line 42
    .line 43
    const-string v1, " does not have a NavController set"

    .line 44
    .line 45
    invoke-static {p0, v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static final getInbox()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 14

    .line 1
    sget-object v0, Lorg/slf4j/helpers/Util;->_inbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const-string v2, "Outlined.Inbox"

    .line 12
    .line 13
    const/high16 v3, 0x41c00000    # 24.0f

    .line 14
    .line 15
    const/high16 v4, 0x41c00000    # 24.0f

    .line 16
    .line 17
    const/high16 v5, 0x41c00000    # 24.0f

    .line 18
    .line 19
    const/high16 v6, 0x41c00000    # 24.0f

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 32
    .line 33
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {v6, v0}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const/high16 v0, 0x41980000    # 19.0f

    .line 43
    .line 44
    const/high16 v2, 0x40400000    # 3.0f

    .line 45
    .line 46
    invoke-virtual {v6, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 47
    .line 48
    .line 49
    const/high16 v4, 0x40a00000    # 5.0f

    .line 50
    .line 51
    invoke-virtual {v6, v4, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 52
    .line 53
    .line 54
    const/high16 v11, -0x40000000    # -2.0f

    .line 55
    .line 56
    const/high16 v12, 0x40000000    # 2.0f

    .line 57
    .line 58
    const v7, -0x40733333    # -1.1f

    .line 59
    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    const/high16 v9, -0x40000000    # -2.0f

    .line 63
    .line 64
    const v10, 0x3f666666    # 0.9f

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 68
    .line 69
    .line 70
    const/high16 v5, 0x41600000    # 14.0f

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 73
    .line 74
    .line 75
    const/high16 v11, 0x40000000    # 2.0f

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    const v8, 0x3f8ccccd    # 1.1f

    .line 79
    .line 80
    .line 81
    const v9, 0x3f63d70a    # 0.89f

    .line 82
    .line 83
    .line 84
    const/high16 v10, 0x40000000    # 2.0f

    .line 85
    .line 86
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v5}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 90
    .line 91
    .line 92
    const/high16 v12, -0x40000000    # -2.0f

    .line 93
    .line 94
    const v7, 0x3f8ccccd    # 1.1f

    .line 95
    .line 96
    .line 97
    const/4 v8, 0x0

    .line 98
    const/high16 v9, 0x40000000    # 2.0f

    .line 99
    .line 100
    const v10, -0x4099999a    # -0.9f

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 104
    .line 105
    .line 106
    const/high16 v7, 0x41a80000    # 21.0f

    .line 107
    .line 108
    invoke-virtual {v6, v7, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 109
    .line 110
    .line 111
    const/high16 v11, -0x40000000    # -2.0f

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    const v8, -0x40733333    # -1.1f

    .line 115
    .line 116
    .line 117
    const v9, -0x4099999a    # -0.9f

    .line 118
    .line 119
    .line 120
    const/high16 v10, -0x40000000    # -2.0f

    .line 121
    .line 122
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v0, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v4, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 132
    .line 133
    .line 134
    const/high16 v7, -0x3fc00000    # -3.0f

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 137
    .line 138
    .line 139
    const v7, 0x4063d70a    # 3.56f

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v7}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 143
    .line 144
    .line 145
    const v11, 0x405ccccd    # 3.45f

    .line 146
    .line 147
    .line 148
    const/high16 v12, 0x40000000    # 2.0f

    .line 149
    .line 150
    const v7, 0x3f30a3d7    # 0.69f

    .line 151
    .line 152
    .line 153
    const v8, 0x3f9851ec    # 1.19f

    .line 154
    .line 155
    .line 156
    const v9, 0x3ffc28f6    # 1.97f

    .line 157
    .line 158
    .line 159
    const/high16 v10, 0x40000000    # 2.0f

    .line 160
    .line 161
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 162
    .line 163
    .line 164
    const v7, -0x40b0a3d7    # -0.81f

    .line 165
    .line 166
    .line 167
    const v8, 0x405ccccd    # 3.45f

    .line 168
    .line 169
    .line 170
    const/high16 v9, 0x40300000    # 2.75f

    .line 171
    .line 172
    const/high16 v13, -0x40000000    # -2.0f

    .line 173
    .line 174
    invoke-virtual {v6, v9, v7, v8, v13}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 175
    .line 176
    .line 177
    const/high16 v7, 0x41800000    # 16.0f

    .line 178
    .line 179
    invoke-virtual {v6, v0, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v2}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, v0, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 189
    .line 190
    .line 191
    const v0, -0x3f6051ec    # -4.99f

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 195
    .line 196
    .line 197
    const/high16 v11, -0x40000000    # -2.0f

    .line 198
    .line 199
    const/4 v7, 0x0

    .line 200
    const v8, 0x3f8ccccd    # 1.1f

    .line 201
    .line 202
    .line 203
    const v9, -0x4099999a    # -0.9f

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 207
    .line 208
    .line 209
    const v0, -0x4099999a    # -0.9f

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v13, v0, v13, v13}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v4, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6, v4, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v5}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 222
    .line 223
    .line 224
    const/high16 v0, 0x41100000    # 9.0f

    .line 225
    .line 226
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 230
    .line 231
    .line 232
    iget-object v2, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 233
    .line 234
    const/high16 v4, 0x3f800000    # 1.0f

    .line 235
    .line 236
    const/high16 v5, 0x3f800000    # 1.0f

    .line 237
    .line 238
    const/high16 v6, 0x3f800000    # 1.0f

    .line 239
    .line 240
    const/4 v7, 0x2

    .line 241
    const/high16 v8, 0x3f800000    # 1.0f

    .line 242
    .line 243
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    sput-object v0, Lorg/slf4j/helpers/Util;->_inbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 251
    .line 252
    return-object v0
.end method

.method public static final getIntOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static final getLongOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static final getLongOrThrow(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->getLongOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-string p0, "Column "

    .line 13
    .line 14
    const-string v0, " must not be null"

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 p0, 0x0

    .line 20
    .line 21
    return-wide p0
.end method

.method public static final getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, -0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static final getStringOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const-string p0, "Column "

    .line 12
    .line 13
    const-string v0, " must not be null"

    .line 14
    .line 15
    invoke-static {p1, v0, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static final getVisibilityOff()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Lorg/slf4j/helpers/Util;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/high16 v3, 0x41c00000    # 24.0f

    .line 13
    .line 14
    const/high16 v4, 0x41c00000    # 24.0f

    .line 15
    .line 16
    const/high16 v5, 0x41c00000    # 24.0f

    .line 17
    .line 18
    const/high16 v6, 0x41c00000    # 24.0f

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    .line 22
    const-string v2, "Filled.VisibilityOff"

    .line 23
    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 32
    .line 33
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    const/high16 v0, 0x41400000    # 12.0f

    .line 37
    .line 38
    const/high16 v2, 0x40e00000    # 7.0f

    .line 39
    .line 40
    invoke-static {v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/high16 v9, 0x40a00000    # 5.0f

    .line 45
    .line 46
    const/high16 v10, 0x40a00000    # 5.0f

    .line 47
    .line 48
    const v5, 0x4030a3d7    # 2.76f

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/high16 v7, 0x40a00000    # 5.0f

    .line 53
    .line 54
    const v8, 0x400f5c29    # 2.24f

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 58
    .line 59
    .line 60
    const v9, -0x4147ae14    # -0.36f

    .line 61
    .line 62
    .line 63
    const v10, 0x3fea3d71    # 1.83f

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    const v6, 0x3f266666    # 0.65f

    .line 68
    .line 69
    .line 70
    const v7, -0x41fae148    # -0.13f

    .line 71
    .line 72
    .line 73
    const v8, 0x3fa147ae    # 1.26f

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 77
    .line 78
    .line 79
    const v0, 0x403ae148    # 2.92f

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 83
    .line 84
    .line 85
    const v9, 0x405b851f    # 3.43f

    .line 86
    .line 87
    .line 88
    const/high16 v10, -0x3f680000    # -4.75f

    .line 89
    .line 90
    const v5, 0x3fc147ae    # 1.51f

    .line 91
    .line 92
    .line 93
    const v6, -0x405eb852    # -1.26f

    .line 94
    .line 95
    .line 96
    const v7, 0x402ccccd    # 2.7f

    .line 97
    .line 98
    .line 99
    const v8, -0x3fc70a3d    # -2.89f

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 103
    .line 104
    .line 105
    const/high16 v9, -0x3ed00000    # -11.0f

    .line 106
    .line 107
    const/high16 v10, -0x3f100000    # -7.5f

    .line 108
    .line 109
    const v5, -0x40228f5c    # -1.73f

    .line 110
    .line 111
    .line 112
    const v6, -0x3f73851f    # -4.39f

    .line 113
    .line 114
    .line 115
    const/high16 v7, -0x3f400000    # -6.0f

    .line 116
    .line 117
    const/high16 v8, -0x3f100000    # -7.5f

    .line 118
    .line 119
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 120
    .line 121
    .line 122
    const v9, -0x3f8147ae    # -3.98f

    .line 123
    .line 124
    .line 125
    const v10, 0x3f333333    # 0.7f

    .line 126
    .line 127
    .line 128
    const v5, -0x404ccccd    # -1.4f

    .line 129
    .line 130
    .line 131
    const/4 v6, 0x0

    .line 132
    const v7, -0x3fd0a3d7    # -2.74f

    .line 133
    .line 134
    .line 135
    const/high16 v8, 0x3e800000    # 0.25f

    .line 136
    .line 137
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 138
    .line 139
    .line 140
    const v0, 0x400a3d71    # 2.16f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 144
    .line 145
    .line 146
    const/high16 v9, 0x41400000    # 12.0f

    .line 147
    .line 148
    const/high16 v10, 0x40e00000    # 7.0f

    .line 149
    .line 150
    const v5, 0x412bd70a    # 10.74f

    .line 151
    .line 152
    .line 153
    const v6, 0x40e428f6    # 7.13f

    .line 154
    .line 155
    .line 156
    const v7, 0x4135999a    # 11.35f

    .line 157
    .line 158
    .line 159
    const/high16 v8, 0x40e00000    # 7.0f

    .line 160
    .line 161
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 165
    .line 166
    .line 167
    const v0, 0x4088a3d7    # 4.27f

    .line 168
    .line 169
    .line 170
    const/high16 v2, 0x40000000    # 2.0f

    .line 171
    .line 172
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 173
    .line 174
    .line 175
    const v0, 0x4011eb85    # 2.28f

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 179
    .line 180
    .line 181
    const v0, 0x3eeb851f    # 0.46f

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 185
    .line 186
    .line 187
    const/high16 v9, 0x3f800000    # 1.0f

    .line 188
    .line 189
    const/high16 v10, 0x41400000    # 12.0f

    .line 190
    .line 191
    const v5, 0x40451eb8    # 3.08f

    .line 192
    .line 193
    .line 194
    const v6, 0x4104cccd    # 8.3f

    .line 195
    .line 196
    .line 197
    const v7, 0x3fe3d70a    # 1.78f

    .line 198
    .line 199
    .line 200
    const v8, 0x412051ec    # 10.02f

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 204
    .line 205
    .line 206
    const/high16 v9, 0x41300000    # 11.0f

    .line 207
    .line 208
    const/high16 v10, 0x40f00000    # 7.5f

    .line 209
    .line 210
    const v5, 0x3fdd70a4    # 1.73f

    .line 211
    .line 212
    .line 213
    const v6, 0x408c7ae1    # 4.39f

    .line 214
    .line 215
    .line 216
    const/high16 v7, 0x40c00000    # 6.0f

    .line 217
    .line 218
    const/high16 v8, 0x40f00000    # 7.5f

    .line 219
    .line 220
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 221
    .line 222
    .line 223
    const v9, 0x408c28f6    # 4.38f

    .line 224
    .line 225
    .line 226
    const v10, -0x40a8f5c3    # -0.84f

    .line 227
    .line 228
    .line 229
    const v5, 0x3fc66666    # 1.55f

    .line 230
    .line 231
    .line 232
    const/4 v6, 0x0

    .line 233
    const v7, 0x4041eb85    # 3.03f

    .line 234
    .line 235
    .line 236
    const v8, -0x41666666    # -0.3f

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 240
    .line 241
    .line 242
    const v0, 0x3ed70a3d    # 0.42f

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 246
    .line 247
    .line 248
    const v0, 0x419dd70a    # 19.73f

    .line 249
    .line 250
    .line 251
    const/high16 v2, 0x41b00000    # 22.0f

    .line 252
    .line 253
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 254
    .line 255
    .line 256
    const/high16 v0, 0x41a80000    # 21.0f

    .line 257
    .line 258
    const v2, 0x41a5d70a    # 20.73f

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 262
    .line 263
    .line 264
    const v0, 0x405147ae    # 3.27f

    .line 265
    .line 266
    .line 267
    const/high16 v2, 0x40400000    # 3.0f

    .line 268
    .line 269
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 270
    .line 271
    .line 272
    const v0, 0x4088a3d7    # 4.27f

    .line 273
    .line 274
    .line 275
    const/high16 v2, 0x40000000    # 2.0f

    .line 276
    .line 277
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 281
    .line 282
    .line 283
    const v0, 0x40f0f5c3    # 7.53f

    .line 284
    .line 285
    .line 286
    const v2, 0x411ccccd    # 9.8f

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 290
    .line 291
    .line 292
    const v0, 0x3fc66666    # 1.55f

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 296
    .line 297
    .line 298
    const v9, -0x425c28f6    # -0.08f

    .line 299
    .line 300
    .line 301
    const v10, 0x3f266666    # 0.65f

    .line 302
    .line 303
    .line 304
    const v5, -0x42b33333    # -0.05f

    .line 305
    .line 306
    .line 307
    const v6, 0x3e570a3d    # 0.21f

    .line 308
    .line 309
    .line 310
    const v7, -0x425c28f6    # -0.08f

    .line 311
    .line 312
    .line 313
    const v8, 0x3edc28f6    # 0.43f

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 317
    .line 318
    .line 319
    const/high16 v9, 0x40400000    # 3.0f

    .line 320
    .line 321
    const/high16 v10, 0x40400000    # 3.0f

    .line 322
    .line 323
    const/4 v5, 0x0

    .line 324
    const v6, 0x3fd47ae1    # 1.66f

    .line 325
    .line 326
    .line 327
    const v7, 0x3fab851f    # 1.34f

    .line 328
    .line 329
    .line 330
    const/high16 v8, 0x40400000    # 3.0f

    .line 331
    .line 332
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 333
    .line 334
    .line 335
    const v9, 0x3f266666    # 0.65f

    .line 336
    .line 337
    .line 338
    const v10, -0x425c28f6    # -0.08f

    .line 339
    .line 340
    .line 341
    const v5, 0x3e6147ae    # 0.22f

    .line 342
    .line 343
    .line 344
    const/4 v6, 0x0

    .line 345
    const v7, 0x3ee147ae    # 0.44f

    .line 346
    .line 347
    .line 348
    const v8, -0x430a3d71    # -0.03f

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 355
    .line 356
    .line 357
    const v9, -0x3ff33333    # -2.2f

    .line 358
    .line 359
    .line 360
    const v10, 0x3f07ae14    # 0.53f

    .line 361
    .line 362
    .line 363
    const v5, -0x40d47ae1    # -0.67f

    .line 364
    .line 365
    .line 366
    const v6, 0x3ea8f5c3    # 0.33f

    .line 367
    .line 368
    .line 369
    const v7, -0x404b851f    # -1.41f

    .line 370
    .line 371
    .line 372
    const v8, 0x3f07ae14    # 0.53f

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 376
    .line 377
    .line 378
    const/high16 v9, -0x3f600000    # -5.0f

    .line 379
    .line 380
    const/high16 v10, -0x3f600000    # -5.0f

    .line 381
    .line 382
    const v5, -0x3fcf5c29    # -2.76f

    .line 383
    .line 384
    .line 385
    const/4 v6, 0x0

    .line 386
    const/high16 v7, -0x3f600000    # -5.0f

    .line 387
    .line 388
    const v8, -0x3ff0a3d7    # -2.24f

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 392
    .line 393
    .line 394
    const v9, 0x3f07ae14    # 0.53f

    .line 395
    .line 396
    .line 397
    const v10, -0x3ff33333    # -2.2f

    .line 398
    .line 399
    .line 400
    const/4 v5, 0x0

    .line 401
    const v6, -0x40b5c28f    # -0.79f

    .line 402
    .line 403
    .line 404
    const v7, 0x3e4ccccd    # 0.2f

    .line 405
    .line 406
    .line 407
    const v8, -0x403c28f6    # -1.53f

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 414
    .line 415
    .line 416
    const v0, 0x413d70a4    # 11.84f

    .line 417
    .line 418
    .line 419
    const v2, 0x411051ec    # 9.02f

    .line 420
    .line 421
    .line 422
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 423
    .line 424
    .line 425
    const v0, 0x4049999a    # 3.15f

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v0, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 429
    .line 430
    .line 431
    const v0, 0x3ca3d70a    # 0.02f

    .line 432
    .line 433
    .line 434
    const v2, -0x41dc28f6    # -0.16f

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 438
    .line 439
    .line 440
    const/high16 v9, -0x3fc00000    # -3.0f

    .line 441
    .line 442
    const/high16 v10, -0x3fc00000    # -3.0f

    .line 443
    .line 444
    const v6, -0x402b851f    # -1.66f

    .line 445
    .line 446
    .line 447
    const v7, -0x40547ae1    # -1.34f

    .line 448
    .line 449
    .line 450
    const/high16 v8, -0x3fc00000    # -3.0f

    .line 451
    .line 452
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 453
    .line 454
    .line 455
    const v0, -0x41d1eb85    # -0.17f

    .line 456
    .line 457
    .line 458
    const v2, 0x3c23d70a    # 0.01f

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 465
    .line 466
    .line 467
    iget-object v2, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 468
    .line 469
    const/high16 v4, 0x3f800000    # 1.0f

    .line 470
    .line 471
    const/high16 v5, 0x3f800000    # 1.0f

    .line 472
    .line 473
    const/high16 v6, 0x3f800000    # 1.0f

    .line 474
    .line 475
    const/4 v7, 0x2

    .line 476
    const/high16 v8, 0x3f800000    # 1.0f

    .line 477
    .line 478
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    sput-object v0, Lorg/slf4j/helpers/Util;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 486
    .line 487
    return-object v0
.end method

.method public static groupIds(Ljava/util/Set;)Lcom/google/zxing/BinaryBitmap;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    .line 18
    .line 19
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Ljava/util/Set;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v0, Ljava/util/TreeSet;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Long;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    new-array v3, v2, [Ljava/lang/Long;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object p0, v3, v4

    .line 46
    .line 47
    invoke-static {v3}, Lorg/jsoup/helper/Validate;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 57
    .line 58
    invoke-direct {v5, v1, v0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v5, v2}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;I)Lkotlin/sequences/Sequence;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-wide/16 v1, -0x1

    .line 70
    .line 71
    move-wide v5, v1

    .line 72
    move-wide v7, v5

    .line 73
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Ljava/lang/Long;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v10

    .line 89
    const-wide/16 v12, 0x1

    .line 90
    .line 91
    add-long/2addr v10, v12

    .line 92
    if-nez v9, :cond_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    cmp-long v10, v10, v12

    .line 100
    .line 101
    if-nez v10, :cond_3

    .line 102
    .line 103
    cmp-long v7, v5, v1

    .line 104
    .line 105
    if-nez v7, :cond_2

    .line 106
    .line 107
    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v7

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v7

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    :goto_1
    cmp-long p0, v5, v1

    .line 125
    .line 126
    if-eqz p0, :cond_4

    .line 127
    .line 128
    new-instance p0, Lcom/fsck/k9/mail/store/imap/ContiguousIdGroup;

    .line 129
    .line 130
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/fsck/k9/mail/store/imap/ContiguousIdGroup;-><init>(JJ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-wide v5, v1

    .line 137
    :cond_4
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :goto_2
    move-object p0, v9

    .line 141
    goto :goto_0

    .line 142
    :cond_5
    cmp-long p0, v5, v1

    .line 143
    .line 144
    if-eqz p0, :cond_6

    .line 145
    .line 146
    new-instance p0, Lcom/fsck/k9/mail/store/imap/ContiguousIdGroup;

    .line 147
    .line 148
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/fsck/k9/mail/store/imap/ContiguousIdGroup;-><init>(JJ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_6
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    .line 155
    .line 156
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Ljava/util/Set;Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_7
    const-string p0, "groupIds() must be called with non-empty set of IDs"

    .line 161
    .line 162
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/4 p0, 0x0

    .line 166
    return-object p0
.end method

.method public static handleException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of p1, p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    throw p0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Unable to call "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " via reflection"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "Trace"

    .line 40
    .line 41
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static highPriorityExecutor()Landroidx/camera/camera2/pipe/core/HandlerExecutor;
    .locals 3

    .line 1
    sget-object v0, Landroidx/camera/camera2/pipe/core/HandlerExecutor;->sExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/camera/camera2/pipe/core/HandlerExecutor;->sExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/HandlerExecutor;->sExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/core/HandlerExecutor;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Landroidx/camera/camera2/pipe/core/HandlerExecutor;->sExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    sget-object v0, Landroidx/camera/camera2/pipe/core/HandlerExecutor;->sExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 28
    .line 29
    return-object v0

    .line 30
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v1
.end method

.method public static ioExecutor()Landroidx/camera/core/impl/utils/executor/IoExecutor;
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 16
    .line 17
    invoke-direct {v1}, Landroidx/camera/core/impl/utils/executor/IoExecutor;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;->sExecutor:Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 27
    .line 28
    return-object v0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v1
.end method

.method public static final isEnabled()Z
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/tracing/TraceApi29Impl;->isEnabled$1()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const-string v0, "isTagEnabled"

    .line 13
    .line 14
    const-class v1, Landroid/os/Trace;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    sget-object v3, Lorg/slf4j/helpers/Util;->isTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string v3, "TRACE_TAG_APP"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    sput-wide v6, Lorg/slf4j/helpers/Util;->traceTagApp:J

    .line 34
    .line 35
    new-array v3, v4, [Ljava/lang/Class;

    .line 36
    .line 37
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    aput-object v6, v3, v2

    .line 40
    .line 41
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lorg/slf4j/helpers/Util;->isTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    sget-object v1, Lorg/slf4j/helpers/Util;->isTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    sget-wide v6, Lorg/slf4j/helpers/Util;->traceTagApp:J

    .line 55
    .line 56
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v3, v4, v2

    .line 63
    .line 64
    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    check-cast v1, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    return v0

    .line 78
    :cond_2
    const-string v1, "Required value was null."

    .line 79
    .line 80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v2
.end method

.method public static isRecoverableError-90vkdD0$camera_camera2(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-ne p0, v1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    const/4 v0, 0x2

    .line 10
    if-ne p0, v0, :cond_2

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_2
    const/4 v0, 0x4

    .line 14
    if-ne p0, v0, :cond_3

    .line 15
    .line 16
    :goto_0
    return v1

    .line 17
    :cond_3
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;
    .locals 4

    .line 1
    sget-object v0, Lcom/fsck/k9/sasl/OAuthBearer;->sInstance:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/fsck/k9/sasl/OAuthBearer;->sInstance:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lcom/fsck/k9/sasl/OAuthBearer;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/fsck/k9/sasl/OAuthBearer;->sInstance:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 16
    .line 17
    new-instance v2, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;-><init>(Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/fsck/k9/sasl/OAuthBearer;->sInstance:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lcom/fsck/k9/sasl/OAuthBearer;->sInstance:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 36
    .line 37
    return-object v0

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v1
.end method

.method public static final map(Landroid/database/Cursor;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v1
.end method

.method public static final report(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "SLF4J: "

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, p0, v2, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 16
    .line 17
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 20
    .line 21
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ltz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p0, 0x2

    .line 39
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Setting fragment result with key "

    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " and result "

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "FragmentManager"

    .line 68
    .line 69
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public static final setSecure(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x2000

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move p1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setFlags(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final toAndroidUri(Lcom/eygraber/uri/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_2

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne p0, v1, :cond_1

    .line 8
    .line 9
    :goto_0
    move v0, v2

    .line 10
    goto :goto_2

    .line 11
    :cond_1
    if-ne p0, v2, :cond_2

    .line 12
    .line 13
    :goto_1
    move v0, v1

    .line 14
    goto :goto_2

    .line 15
    :cond_2
    const/4 v1, 0x5

    .line 16
    const/4 v3, 0x3

    .line 17
    if-ne p0, v3, :cond_3

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_3
    const/4 v4, 0x4

    .line 21
    if-ne p0, v4, :cond_4

    .line 22
    .line 23
    move v0, v3

    .line 24
    goto :goto_2

    .line 25
    :cond_4
    if-ne p0, v1, :cond_5

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_5
    if-ne p0, v0, :cond_6

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_6
    const/4 v1, 0x7

    .line 32
    if-ne p0, v1, :cond_7

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_7
    const/16 v2, 0x8

    .line 36
    .line 37
    if-ne p0, v2, :cond_8

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_8
    const/16 v2, 0x9

    .line 41
    .line 42
    if-ne p0, v2, :cond_9

    .line 43
    .line 44
    move v0, v4

    .line 45
    goto :goto_2

    .line 46
    :cond_9
    const/16 v2, 0xa

    .line 47
    .line 48
    if-ne p0, v2, :cond_a

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_a
    const/16 v1, 0xb

    .line 52
    .line 53
    if-ne p0, v1, :cond_b

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_b
    const/16 v1, 0xc

    .line 57
    .line 58
    if-ne p0, v1, :cond_c

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_c
    const/16 v1, 0xd

    .line 62
    .line 63
    if-ne p0, v1, :cond_d

    .line 64
    .line 65
    :goto_2
    new-instance p0, Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroidx/camera/core/AutoValue_CameraState_StateError;-><init>(I)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_d
    const-string v0, "Unexpected CameraError: "

    .line 72
    .line 73
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    return-object p0
.end method

.method public static final toKmpUri(Landroid/net/Uri;)Lcom/eygraber/uri/uris/StringUri;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/eygraber/uri/Uri;->Companion:Lcom/eygraber/uri/Uri$Companion;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/eygraber/uri/uris/StringUri;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/eygraber/uri/uris/StringUri;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v0
.end method

.method public static upgradeToVersion(IILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lnet/thunderbird/core/preference/GeneralSettingsManager;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0, p4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    const/4 p4, 0x1

    .line 16
    add-int/2addr p1, p4

    .line 17
    if-gt p1, p0, :cond_8

    .line 18
    .line 19
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/fsck/k9/preferences/SettingsUpgrader;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v1, v0}, Lcom/fsck/k9/preferences/SettingsUpgrader;->upgrade(Ljava/util/LinkedHashMap;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/TreeMap;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/Integer;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-ne v4, p1, :cond_5

    .line 81
    .line 82
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 98
    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    iget-object v6, v4, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->defaultValue:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-object v7, p5

    .line 107
    check-cast v7, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    iget-object v7, v7, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 114
    .line 115
    iget-boolean v7, v7, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 116
    .line 117
    if-eqz v7, :cond_5

    .line 118
    .line 119
    invoke-virtual {v4, v6}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const/4 v6, 0x2

    .line 124
    new-array v6, v6, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v3, v6, v5

    .line 127
    .line 128
    aput-object v4, v6, p4

    .line 129
    .line 130
    const-string v4, "Added new setting \'%s\' with default value \'%s\'"

    .line 131
    .line 132
    invoke-static {v4, v6}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    const-string p0, "First version of a setting must be non-null!"

    .line 137
    .line 138
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x0

    .line 142
    return-object p0

    .line 143
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ljava/lang/Integer;

    .line 148
    .line 149
    if-nez v4, :cond_6

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-ne v6, p1, :cond_1

    .line 157
    .line 158
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-nez v2, :cond_1

    .line 163
    .line 164
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    new-array v2, p4, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object v3, v2, v5

    .line 170
    .line 171
    const-string v3, "Removed setting \'%s\'"

    .line 172
    .line 173
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_7
    if-eq p1, p0, :cond_8

    .line 179
    .line 180
    add-int/lit8 p1, p1, 0x1

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    return-object v0
.end method


# virtual methods
.method public abstract calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract calculateSlideOffset(I)F
.end method

.method public abstract clampViewPositionHorizontal(Landroid/view/View;I)I
.end method

.method public abstract clampViewPositionVertical(Landroid/view/View;I)I
.end method

.method public abstract getExpandedOffset()I
.end method

.method public abstract getHiddenOffset()I
.end method

.method public abstract getMaxViewPositionHorizontal()I
.end method

.method public abstract getMinViewPositionHorizontal()I
.end method

.method public abstract getOuterEdge(Landroid/view/View;)I
.end method

.method public abstract getParentInnerEdge(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
.end method

.method public abstract getSheetEdge()I
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getViewVerticalDragRange()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract isExpandingOutwards(F)Z
.end method

.method public abstract isReleasedCloseToInnerEdge(Landroid/view/View;)Z
.end method

.method public abstract isSwipeSignificant(FF)Z
.end method

.method public onEdgeDragStarted(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onEdgeTouched()V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onViewDragStateChanged(I)V
.end method

.method public abstract onViewPositionChanged(Landroid/view/View;II)V
.end method

.method public abstract onViewReleased(Landroid/view/View;FF)V
.end method

.method public abstract shouldHide(Landroid/view/View;F)Z
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
.end method

.method public abstract updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
.end method
