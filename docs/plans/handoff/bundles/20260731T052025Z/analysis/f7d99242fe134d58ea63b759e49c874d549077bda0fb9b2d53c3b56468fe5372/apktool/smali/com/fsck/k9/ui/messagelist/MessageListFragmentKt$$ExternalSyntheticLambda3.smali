.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 7
    .line 8
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 9
    .line 10
    const/16 v6, 0x20

    .line 11
    .line 12
    const/4 v7, 0x2

    .line 13
    iget-boolean v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x1

    .line 17
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v13, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 22
    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    .line 27
    .line 28
    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    .line 29
    .line 30
    move-object/from16 v1, p1

    .line 31
    .line 32
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 33
    .line 34
    move-object/from16 v2, p2

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    and-int/lit8 v3, v2, 0x3

    .line 43
    .line 44
    if-eq v3, v7, :cond_0

    .line 45
    .line 46
    move v9, v10

    .line 47
    :cond_0
    and-int/2addr v2, v10

    .line 48
    move-object v7, v1

    .line 49
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 50
    .line 51
    invoke-virtual {v7, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 58
    .line 59
    iget v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    iget-boolean v5, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 64
    .line 65
    invoke-static/range {v3 .. v8}, Lokio/Okio;->FolderListItemBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object v11

    .line 73
    :pswitch_0
    check-cast v13, Lkotlinx/collections/immutable/ImmutableList;

    .line 74
    .line 75
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    move-object/from16 v1, p1

    .line 78
    .line 79
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 80
    .line 81
    move-object/from16 v2, p2

    .line 82
    .line 83
    check-cast v2, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    and-int/lit8 v8, v2, 0x3

    .line 90
    .line 91
    if-eq v8, v7, :cond_2

    .line 92
    .line 93
    move v7, v10

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v7, v9

    .line 96
    :goto_1
    and-int/2addr v2, v10

    .line 97
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 98
    .line 99
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_b

    .line 104
    .line 105
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 106
    .line 107
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 108
    .line 109
    invoke-static {v2, v7, v1, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-wide v7, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 114
    .line 115
    ushr-long v14, v7, v6

    .line 116
    .line 117
    xor-long/2addr v7, v14

    .line 118
    long-to-int v7, v7

    .line 119
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v1, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 128
    .line 129
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 135
    .line 136
    .line 137
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 138
    .line 139
    if-eqz v15, :cond_3

    .line 140
    .line 141
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 146
    .line 147
    .line 148
    :goto_2
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 149
    .line 150
    invoke-static {v1, v2, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 154
    .line 155
    invoke-static {v1, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 163
    .line 164
    invoke-static {v1, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 168
    .line 169
    invoke-static {v1, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 170
    .line 171
    .line 172
    move/from16 v26, v6

    .line 173
    .line 174
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    new-instance v5, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 180
    .line 181
    invoke-direct {v5, v4, v10}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 193
    .line 194
    if-nez v4, :cond_4

    .line 195
    .line 196
    if-ne v10, v3, :cond_5

    .line 197
    .line 198
    :cond_4
    new-instance v10, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    const/16 v4, 0x8

    .line 201
    .line 202
    invoke-direct {v10, v4, v13}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_5
    move-object/from16 v24, v10

    .line 209
    .line 210
    check-cast v24, Lkotlin/jvm/functions/Function1;

    .line 211
    .line 212
    move-object v4, v14

    .line 213
    const/4 v14, 0x0

    .line 214
    move-object v10, v15

    .line 215
    const/16 v15, 0x1fe

    .line 216
    .line 217
    const/16 v16, 0x0

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    const/16 v18, 0x0

    .line 222
    .line 223
    const/16 v19, 0x0

    .line 224
    .line 225
    const/16 v20, 0x0

    .line 226
    .line 227
    const/16 v22, 0x0

    .line 228
    .line 229
    const/16 v25, 0x0

    .line 230
    .line 231
    move-object/from16 v21, v1

    .line 232
    .line 233
    move-object/from16 v23, v5

    .line 234
    .line 235
    invoke-static/range {v14 .. v25}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 236
    .line 237
    .line 238
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 239
    .line 240
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v13

    .line 244
    iget-boolean v14, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 245
    .line 246
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    or-int/2addr v0, v13

    .line 251
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    if-nez v0, :cond_6

    .line 256
    .line 257
    if-ne v13, v3, :cond_7

    .line 258
    .line 259
    :cond_6
    new-instance v13, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda2;

    .line 260
    .line 261
    const/4 v0, 0x4

    .line 262
    invoke-direct {v13, v12, v14, v0}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;ZI)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_7
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 269
    .line 270
    const/16 v0, 0xf

    .line 271
    .line 272
    const/4 v15, 0x0

    .line 273
    invoke-static {v5, v9, v15, v13, v0}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 278
    .line 279
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 280
    .line 281
    const/16 v15, 0x30

    .line 282
    .line 283
    invoke-static {v13, v5, v1, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    move-object v13, v10

    .line 288
    iget-wide v9, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 289
    .line 290
    ushr-long v16, v9, v26

    .line 291
    .line 292
    xor-long v9, v9, v16

    .line 293
    .line 294
    long-to-int v9, v9

    .line 295
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 304
    .line 305
    .line 306
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 307
    .line 308
    if-eqz v15, :cond_8

    .line 309
    .line 310
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 315
    .line 316
    .line 317
    :goto_3
    invoke-static {v1, v5, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v9, v1, v8, v1, v7}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    if-nez v0, :cond_9

    .line 338
    .line 339
    if-ne v2, v3, :cond_a

    .line 340
    .line 341
    :cond_9
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 342
    .line 343
    const/4 v15, 0x0

    .line 344
    invoke-direct {v2, v15, v12}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_a
    move-object v15, v2

    .line 351
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 352
    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    const/16 v19, 0x0

    .line 356
    .line 357
    const/16 v16, 0x0

    .line 358
    .line 359
    move-object/from16 v18, v1

    .line 360
    .line 361
    invoke-static/range {v14 .. v19}, Landroidx/room/util/RelationUtil;->Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 362
    .line 363
    .line 364
    const v0, 0x7f1201fe

    .line 365
    .line 366
    .line 367
    invoke-static {v1, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v14

    .line 371
    const/16 v21, 0x0

    .line 372
    .line 373
    const/16 v22, 0x3e

    .line 374
    .line 375
    const/4 v15, 0x0

    .line 376
    const-wide/16 v16, 0x0

    .line 377
    .line 378
    const/16 v18, 0x0

    .line 379
    .line 380
    move-object/from16 v20, v1

    .line 381
    .line 382
    invoke-static/range {v14 .. v22}, Landroidx/sqlite/SQLite;->TextLabelMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 383
    .line 384
    .line 385
    const/4 v0, 0x1

    .line 386
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 390
    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 394
    .line 395
    .line 396
    :goto_4
    return-object v11

    .line 397
    :pswitch_1
    check-cast v13, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 398
    .line 399
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 400
    .line 401
    move-object/from16 v0, p1

    .line 402
    .line 403
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 404
    .line 405
    move-object/from16 v1, p2

    .line 406
    .line 407
    check-cast v1, Ljava/lang/Integer;

    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    invoke-static {v13, v8, v12, v0, v1}, Lokio/Okio;->SwipeableRowBackground(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 417
    .line 418
    .line 419
    return-object v11

    .line 420
    :pswitch_2
    check-cast v13, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 421
    .line 422
    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 423
    .line 424
    move-object/from16 v0, p1

    .line 425
    .line 426
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 427
    .line 428
    move-object/from16 v1, p2

    .line 429
    .line 430
    check-cast v1, Ljava/lang/Integer;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    const/16 v27, 0x1

    .line 436
    .line 437
    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-static {v13, v8, v12, v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->AutoDiscoveryResultHeaderView(Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 442
    .line 443
    .line 444
    return-object v11

    .line 445
    :pswitch_3
    move v15, v9

    .line 446
    move-object v14, v13

    .line 447
    check-cast v14, Ljava/lang/String;

    .line 448
    .line 449
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 450
    .line 451
    move-object/from16 v1, p1

    .line 452
    .line 453
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 454
    .line 455
    move-object/from16 v2, p2

    .line 456
    .line 457
    check-cast v2, Ljava/lang/Integer;

    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    and-int/lit8 v3, v2, 0x3

    .line 464
    .line 465
    if-eq v3, v7, :cond_c

    .line 466
    .line 467
    const/4 v9, 0x1

    .line 468
    :goto_5
    const/16 v27, 0x1

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_c
    move v9, v15

    .line 472
    goto :goto_5

    .line 473
    :goto_6
    and-int/lit8 v2, v2, 0x1

    .line 474
    .line 475
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 476
    .line 477
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-eqz v2, :cond_d

    .line 482
    .line 483
    const/16 v21, 0x0

    .line 484
    .line 485
    const/16 v22, 0x34

    .line 486
    .line 487
    const/16 v16, 0x0

    .line 488
    .line 489
    iget-boolean v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 490
    .line 491
    const/16 v18, 0x0

    .line 492
    .line 493
    const/16 v19, 0x0

    .line 494
    .line 495
    move/from16 v17, v0

    .line 496
    .line 497
    move-object/from16 v20, v1

    .line 498
    .line 499
    move-object v15, v12

    .line 500
    invoke-static/range {v14 .. v22}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 501
    .line 502
    .line 503
    goto :goto_7

    .line 504
    :cond_d
    move-object/from16 v20, v1

    .line 505
    .line 506
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 507
    .line 508
    .line 509
    :goto_7
    return-object v11

    .line 510
    :pswitch_4
    check-cast v13, Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 511
    .line 512
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 513
    .line 514
    move-object/from16 v0, p1

    .line 515
    .line 516
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 517
    .line 518
    move-object/from16 v1, p2

    .line 519
    .line 520
    check-cast v1, Ljava/lang/Integer;

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    const/16 v1, 0xc01

    .line 526
    .line 527
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    invoke-virtual {v13, v8, v12, v0, v1}, Landroidx/compose/material3/SegmentedButtonDefaults;->Icon(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 532
    .line 533
    .line 534
    return-object v11

    .line 535
    :pswitch_5
    check-cast v13, Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    .line 536
    .line 537
    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 538
    .line 539
    move-object/from16 v0, p1

    .line 540
    .line 541
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 542
    .line 543
    move-object/from16 v1, p2

    .line 544
    .line 545
    check-cast v1, Ljava/lang/Integer;

    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    const/16 v1, 0x181

    .line 551
    .line 552
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    invoke-virtual {v13, v8, v12, v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->TrailingIcon(ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 557
    .line 558
    .line 559
    return-object v11

    .line 560
    :pswitch_6
    move/from16 v26, v6

    .line 561
    .line 562
    move v15, v9

    .line 563
    check-cast v13, Landroidx/compose/foundation/layout/PaddingValues;

    .line 564
    .line 565
    check-cast v12, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 566
    .line 567
    move-object/from16 v0, p1

    .line 568
    .line 569
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 570
    .line 571
    move-object/from16 v1, p2

    .line 572
    .line 573
    check-cast v1, Ljava/lang/Integer;

    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    and-int/lit8 v3, v1, 0x3

    .line 580
    .line 581
    if-eq v3, v7, :cond_e

    .line 582
    .line 583
    const/4 v9, 0x1

    .line 584
    :goto_8
    const/16 v27, 0x1

    .line 585
    .line 586
    goto :goto_9

    .line 587
    :cond_e
    move v9, v15

    .line 588
    goto :goto_8

    .line 589
    :goto_9
    and-int/lit8 v1, v1, 0x1

    .line 590
    .line 591
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 592
    .line 593
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-eqz v1, :cond_10

    .line 598
    .line 599
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 600
    .line 601
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    new-instance v1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 611
    .line 612
    new-instance v3, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 613
    .line 614
    invoke-direct {v3, v2}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 615
    .line 616
    .line 617
    const/high16 v2, 0x40800000    # 4.0f

    .line 618
    .line 619
    const/4 v6, 0x1

    .line 620
    invoke-direct {v1, v2, v6, v3}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 621
    .line 622
    .line 623
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 624
    .line 625
    invoke-static {v5, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    const/16 v15, 0x30

    .line 630
    .line 631
    invoke-static {v1, v2, v0, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    iget-wide v6, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 636
    .line 637
    ushr-long v9, v6, v26

    .line 638
    .line 639
    xor-long/2addr v6, v9

    .line 640
    long-to-int v2, v6

    .line 641
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    invoke-static {v0, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 650
    .line 651
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 655
    .line 656
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 657
    .line 658
    .line 659
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 660
    .line 661
    if-eqz v9, :cond_f

    .line 662
    .line 663
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 664
    .line 665
    .line 666
    goto :goto_a

    .line 667
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 668
    .line 669
    .line 670
    :goto_a
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 671
    .line 672
    invoke-static {v0, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 673
    .line 674
    .line 675
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 676
    .line 677
    invoke-static {v0, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 678
    .line 679
    .line 680
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 685
    .line 686
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 687
    .line 688
    .line 689
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 690
    .line 691
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 692
    .line 693
    .line 694
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 695
    .line 696
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 697
    .line 698
    .line 699
    iget v1, v12, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->labelResId:I

    .line 700
    .line 701
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v14

    .line 705
    new-instance v15, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 706
    .line 707
    const/4 v6, 0x1

    .line 708
    invoke-direct {v15, v4, v6}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 709
    .line 710
    .line 711
    const/16 v22, 0x0

    .line 712
    .line 713
    const/16 v23, 0x3c

    .line 714
    .line 715
    const-wide/16 v16, 0x0

    .line 716
    .line 717
    const/16 v18, 0x0

    .line 718
    .line 719
    const/16 v19, 0x0

    .line 720
    .line 721
    const/16 v20, 0x0

    .line 722
    .line 723
    move-object/from16 v21, v0

    .line 724
    .line 725
    invoke-static/range {v14 .. v23}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 726
    .line 727
    .line 728
    move-object/from16 v19, v21

    .line 729
    .line 730
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 731
    .line 732
    .line 733
    move-result-object v14

    .line 734
    const/high16 v0, 0x41800000    # 16.0f

    .line 735
    .line 736
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 737
    .line 738
    .line 739
    move-result-object v15

    .line 740
    const/16 v20, 0x6030

    .line 741
    .line 742
    const/16 v21, 0xc

    .line 743
    .line 744
    const/16 v16, 0x0

    .line 745
    .line 746
    const/16 v17, 0x0

    .line 747
    .line 748
    sget-object v18, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->lambda$-2052971648:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 749
    .line 750
    invoke-static/range {v14 .. v21}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 751
    .line 752
    .line 753
    move-object/from16 v0, v19

    .line 754
    .line 755
    const/4 v6, 0x1

    .line 756
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 757
    .line 758
    .line 759
    goto :goto_b

    .line 760
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 761
    .line 762
    .line 763
    :goto_b
    return-object v11

    .line 764
    nop

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
