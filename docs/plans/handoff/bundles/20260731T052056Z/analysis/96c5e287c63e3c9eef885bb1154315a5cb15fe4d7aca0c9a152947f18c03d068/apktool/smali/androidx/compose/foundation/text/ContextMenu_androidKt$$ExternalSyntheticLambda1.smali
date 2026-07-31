.class public final synthetic Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

.field public final synthetic f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 12
    iput p4, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    iput-object p2, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x31

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v13, p1

    .line 17
    .line 18
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    and-int/lit8 v2, v1, 0x3

    .line 29
    .line 30
    const/4 v15, 0x2

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    if-eq v2, v15, :cond_0

    .line 34
    .line 35
    move v2, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v2, v5

    .line 38
    :goto_0
    and-int/2addr v1, v6

    .line 39
    invoke-virtual {v13, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_13

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v13, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_12

    .line 57
    .line 58
    iget-object v0, v4, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_12

    .line 71
    .line 72
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    move v0, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 81
    .line 82
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 83
    .line 84
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    :goto_1
    if-nez v0, :cond_12

    .line 89
    .line 90
    const v0, -0x677cad36

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    const v0, 0x77e70677

    .line 103
    .line 104
    .line 105
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 109
    .line 110
    .line 111
    move v15, v5

    .line 112
    goto/16 :goto_8

    .line 113
    .line 114
    :cond_2
    const v1, 0x77e70678

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 118
    .line 119
    .line 120
    const v1, -0x677ca73e

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 124
    .line 125
    .line 126
    new-array v1, v15, [Ljava/lang/Boolean;

    .line 127
    .line 128
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    .line 130
    aput-object v2, v1, v5

    .line 131
    .line 132
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 133
    .line 134
    aput-object v2, v1, v6

    .line 135
    .line 136
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    move v7, v5

    .line 145
    :goto_2
    if-ge v7, v2, :cond_11

    .line 146
    .line 147
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    check-cast v8, Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 166
    .line 167
    if-nez v9, :cond_3

    .line 168
    .line 169
    if-ne v10, v11, :cond_4

    .line 170
    .line 171
    :cond_3
    new-instance v10, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;

    .line 172
    .line 173
    invoke-direct {v10, v8, v4}, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;-><init>(ZLandroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    check-cast v10, Landroidx/compose/foundation/text/TextDragObserver;

    .line 180
    .line 181
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    if-nez v9, :cond_5

    .line 190
    .line 191
    if-ne v12, v11, :cond_7

    .line 192
    .line 193
    :cond_5
    if-eqz v8, :cond_6

    .line 194
    .line 195
    new-instance v9, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 196
    .line 197
    invoke-direct {v9, v4, v6}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 198
    .line 199
    .line 200
    :goto_3
    move-object v12, v9

    .line 201
    goto :goto_4

    .line 202
    :cond_6
    new-instance v9, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    invoke-direct {v9, v4, v15}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :goto_4
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 212
    .line 213
    if-eqz v8, :cond_8

    .line 214
    .line 215
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 216
    .line 217
    iget-object v9, v9, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_8
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 221
    .line 222
    iget-object v9, v9, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 223
    .line 224
    :goto_5
    if-eqz v8, :cond_c

    .line 225
    .line 226
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    if-nez v6, :cond_9

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_9
    iget-object v6, v6, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 234
    .line 235
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    if-nez v14, :cond_a

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_a
    iget v6, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 243
    .line 244
    iget-object v14, v14, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    invoke-virtual {v14}, Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    check-cast v14, Landroidx/compose/ui/text/TextLayoutResult;

    .line 251
    .line 252
    if-eqz v14, :cond_b

    .line 253
    .line 254
    invoke-static {v14, v6}, Landroidx/compose/foundation/text/BasicTextKt;->getLineHeight(Landroidx/compose/ui/text/TextLayoutResult;I)F

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    goto :goto_7

    .line 259
    :cond_b
    :goto_6
    const/4 v14, 0x0

    .line 260
    goto :goto_7

    .line 261
    :cond_c
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    if-nez v6, :cond_d

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_d
    iget-object v6, v6, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 269
    .line 270
    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    if-nez v14, :cond_e

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_e
    iget v6, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 278
    .line 279
    iget-object v14, v14, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;

    .line 280
    .line 281
    invoke-virtual {v14}, Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    check-cast v14, Landroidx/compose/ui/text/TextLayoutResult;

    .line 286
    .line 287
    if-eqz v14, :cond_b

    .line 288
    .line 289
    invoke-static {v14, v6}, Landroidx/compose/foundation/text/BasicTextKt;->getLineHeight(Landroidx/compose/ui/text/TextLayoutResult;I)F

    .line 290
    .line 291
    .line 292
    move-result v14

    .line 293
    :goto_7
    new-instance v6, Landroidx/compose/foundation/text/selection/SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0;

    .line 294
    .line 295
    invoke-direct {v6, v12}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 296
    .line 297
    .line 298
    move-object v12, v6

    .line 299
    move v6, v8

    .line 300
    iget-boolean v8, v0, Landroidx/compose/foundation/text/selection/Selection;->handlesCrossed:Z

    .line 301
    .line 302
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v16

    .line 306
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    if-nez v16, :cond_f

    .line 311
    .line 312
    if-ne v15, v11, :cond_10

    .line 313
    .line 314
    :cond_f
    new-instance v15, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1;

    .line 315
    .line 316
    invoke-direct {v15, v10, v5}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_10
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 323
    .line 324
    move v11, v5

    .line 325
    move-object v5, v12

    .line 326
    new-instance v12, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 327
    .line 328
    const/4 v11, 0x0

    .line 329
    move-object/from16 v16, v0

    .line 330
    .line 331
    const/4 v0, 0x6

    .line 332
    invoke-direct {v12, v10, v11, v15, v0}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 333
    .line 334
    .line 335
    move v11, v14

    .line 336
    const/4 v14, 0x0

    .line 337
    move v0, v7

    .line 338
    move-object v7, v9

    .line 339
    const-wide/16 v9, 0x0

    .line 340
    .line 341
    const/4 v15, 0x0

    .line 342
    const/16 v17, 0x1

    .line 343
    .line 344
    invoke-static/range {v5 .. v14}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SelectionHandle-wLIcFTc(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;Landroidx/compose/runtime/GapComposer;I)V

    .line 345
    .line 346
    .line 347
    add-int/lit8 v7, v0, 0x1

    .line 348
    .line 349
    move v5, v15

    .line 350
    move-object/from16 v0, v16

    .line 351
    .line 352
    move/from16 v6, v17

    .line 353
    .line 354
    const/4 v15, 0x2

    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :cond_11
    move v15, v5

    .line 358
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 362
    .line 363
    .line 364
    :goto_8
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 365
    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_12
    move v15, v5

    .line 369
    const v0, 0x7805236b

    .line 370
    .line 371
    .line 372
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_13
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 380
    .line 381
    .line 382
    :goto_9
    return-object v3

    .line 383
    :pswitch_0
    move-object/from16 v1, p1

    .line 384
    .line 385
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 386
    .line 387
    move-object/from16 v5, p2

    .line 388
    .line 389
    check-cast v5, Ljava/lang/Integer;

    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    invoke-static {v4, v0, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt;->CommonContextMenuArea(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 399
    .line 400
    .line 401
    return-object v3

    .line 402
    :pswitch_1
    move-object/from16 v1, p1

    .line 403
    .line 404
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 405
    .line 406
    move-object/from16 v5, p2

    .line 407
    .line 408
    check-cast v5, Ljava/lang/Integer;

    .line 409
    .line 410
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    invoke-static {v4, v0, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt;->ContextMenuArea(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 418
    .line 419
    .line 420
    return-object v3

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
