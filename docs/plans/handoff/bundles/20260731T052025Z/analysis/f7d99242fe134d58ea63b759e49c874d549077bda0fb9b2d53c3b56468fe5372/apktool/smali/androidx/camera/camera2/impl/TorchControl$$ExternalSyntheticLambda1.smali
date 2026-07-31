.class public final synthetic Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;Landroidx/room/InvalidationTracker$implementation$1;)V
    .locals 0

    .line 1
    const/16 p2, 0x1a

    .line 2
    .line 3
    iput p2, p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v6, p0

    .line 15
    check-cast v6, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 18
    .line 19
    iget-wide v8, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 20
    .line 21
    iget-object p0, v6, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$flags:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const/4 v10, 0x0

    .line 62
    sget-object v11, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->None:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    invoke-virtual/range {v6 .. v11}, Lcom/fsck/k9/mailstore/LocalFolder$12;->updateMouseSelection(Landroidx/compose/ui/text/input/TextFieldValue;JZLandroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;)J

    .line 65
    .line 66
    .line 67
    move v3, v5

    .line 68
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 71
    .line 72
    .line 73
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 77
    .line 78
    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 87
    .line 88
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 89
    .line 90
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 91
    .line 92
    const/16 v0, 0x8

    .line 93
    .line 94
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 101
    .line 102
    instance-of v0, p1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    .line 107
    .line 108
    iget-object p1, p1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;->builder:Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const-string p0, "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode."

    .line 117
    .line 118
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-object v4

    .line 122
    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 123
    .line 124
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextNode;

    .line 133
    .line 134
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 135
    .line 136
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextNode;->builder:Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 137
    .line 138
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 139
    .line 140
    invoke-static {p0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v0, p1, p0}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_5
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 153
    .line 154
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    const/16 v4, 0x20

    .line 167
    .line 168
    shr-long/2addr v1, v4

    .line 169
    long-to-int v1, v1

    .line 170
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    float-to-int v1, v1

    .line 175
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    const-wide v6, 0xffffffffL

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    and-long/2addr v4, v6

    .line 185
    long-to-int p1, v4

    .line 186
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    float-to-int p1, p1

    .line 191
    invoke-virtual {p0, v3, v3, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    .line 193
    .line 194
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    .line 200
    .line 201
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 205
    .line 206
    check-cast p1, Ljava/lang/Float;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 213
    .line 214
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    add-float/2addr v1, p1

    .line 219
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->maximum$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 220
    .line 221
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    cmpl-float v3, v1, v3

    .line 226
    .line 227
    if-lez v3, :cond_5

    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    sub-float p1, p0, p1

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_5
    cmpg-float p0, v1, v2

    .line 241
    .line 242
    if-gez p0, :cond_6

    .line 243
    .line 244
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    neg-float p1, p0

    .line 249
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    add-float/2addr p0, p1

    .line 254
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 255
    .line 256
    .line 257
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0

    .line 262
    :pswitch_7
    check-cast p0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 263
    .line 264
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 265
    .line 266
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 267
    .line 268
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    .line 269
    .line 270
    sget-object v2, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    .line 271
    .line 272
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/OffsetProvider;->provide-F1C5BW0()J

    .line 273
    .line 274
    .line 275
    move-result-wide v3

    .line 276
    sget-object v5, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Middle:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 277
    .line 278
    const/4 v6, 0x1

    .line 279
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;Z)V

    .line 280
    .line 281
    .line 282
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 286
    .line 287
    return-object p0

    .line 288
    :pswitch_8
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 289
    .line 290
    if-eqz p0, :cond_7

    .line 291
    .line 292
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    return-object p0

    .line 301
    :pswitch_9
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 302
    .line 303
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 304
    .line 305
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 306
    .line 307
    const/4 v0, 0x5

    .line 308
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    return-object p1

    .line 312
    :pswitch_a
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 313
    .line 314
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 315
    .line 316
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 317
    .line 318
    const/4 v0, 0x3

    .line 319
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    return-object p1

    .line 323
    :pswitch_b
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 324
    .line 325
    check-cast p1, Ljava/lang/Float;

    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    neg-float p1, p1

    .line 332
    cmpg-float v0, p1, v2

    .line 333
    .line 334
    if-gez v0, :cond_8

    .line 335
    .line 336
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollForward()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_11

    .line 341
    .line 342
    :cond_8
    cmpl-float v0, p1, v2

    .line 343
    .line 344
    if-lez v0, :cond_9

    .line 345
    .line 346
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollBackward()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_9

    .line 351
    .line 352
    goto/16 :goto_6

    .line 353
    .line 354
    :cond_9
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 355
    .line 356
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    cmpg-float v0, v0, v1

    .line 361
    .line 362
    if-gtz v0, :cond_a

    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_a
    const-string v0, "entered drag with non-zero pending scroll"

    .line 366
    .line 367
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :goto_3
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 371
    .line 372
    add-float/2addr v0, p1

    .line 373
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 374
    .line 375
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    cmpl-float v0, v0, v1

    .line 380
    .line 381
    if-lez v0, :cond_f

    .line 382
    .line 383
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 384
    .line 385
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 390
    .line 391
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 396
    .line 397
    iget-boolean v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    .line 398
    .line 399
    xor-int/2addr v7, v5

    .line 400
    invoke-virtual {v6, v3, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    if-eqz v6, :cond_b

    .line 405
    .line 406
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 407
    .line 408
    if-eqz v7, :cond_b

    .line 409
    .line 410
    invoke-virtual {v7, v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    if-eqz v3, :cond_c

    .line 415
    .line 416
    iput-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 417
    .line 418
    :cond_b
    move-object v4, v6

    .line 419
    :cond_c
    if-eqz v4, :cond_d

    .line 420
    .line 421
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    .line 422
    .line 423
    invoke-virtual {p0, v4, v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    .line 424
    .line 425
    .line 426
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 427
    .line 428
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 429
    .line 430
    invoke-interface {v3, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 434
    .line 435
    sub-float/2addr v0, v3

    .line 436
    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 437
    .line 438
    .line 439
    goto :goto_4

    .line 440
    :cond_d
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    .line 441
    .line 442
    if-eqz v3, :cond_e

    .line 443
    .line 444
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 445
    .line 446
    .line 447
    :cond_e
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 448
    .line 449
    sub-float/2addr v0, v3

    .line 450
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 455
    .line 456
    .line 457
    :cond_f
    :goto_4
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 458
    .line 459
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    cmpg-float v0, v0, v1

    .line 464
    .line 465
    if-gtz v0, :cond_10

    .line 466
    .line 467
    :goto_5
    move v2, p1

    .line 468
    goto :goto_6

    .line 469
    :cond_10
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 470
    .line 471
    sub-float/2addr p1, v0

    .line 472
    iput v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 473
    .line 474
    goto :goto_5

    .line 475
    :cond_11
    :goto_6
    neg-float p0, v2

    .line 476
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    return-object p0

    .line 481
    :pswitch_c
    check-cast p0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 482
    .line 483
    check-cast p1, Ljava/lang/Integer;

    .line 484
    .line 485
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 486
    .line 487
    .line 488
    move-result p1

    .line 489
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/RealInterceptorChain;->getLineIndexOfItem(I)I

    .line 490
    .line 491
    .line 492
    move-result p0

    .line 493
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object p0

    .line 497
    return-object p0

    .line 498
    :pswitch_d
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 499
    .line 500
    check-cast p1, Ljava/lang/Float;

    .line 501
    .line 502
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 503
    .line 504
    .line 505
    move-result p1

    .line 506
    neg-float p1, p1

    .line 507
    cmpg-float v0, p1, v2

    .line 508
    .line 509
    if-gez v0, :cond_12

    .line 510
    .line 511
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollForward()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_1b

    .line 516
    .line 517
    :cond_12
    cmpl-float v0, p1, v2

    .line 518
    .line 519
    if-lez v0, :cond_13

    .line 520
    .line 521
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollBackward()Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-nez v0, :cond_13

    .line 526
    .line 527
    goto/16 :goto_a

    .line 528
    .line 529
    :cond_13
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 530
    .line 531
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    cmpg-float v0, v0, v1

    .line 536
    .line 537
    if-gtz v0, :cond_14

    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_14
    const-string v0, "entered drag with non-zero pending scroll"

    .line 541
    .line 542
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    :goto_7
    iput-boolean v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->executeRequestsInHighPriorityMode:Z

    .line 546
    .line 547
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 548
    .line 549
    add-float/2addr v0, p1

    .line 550
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 551
    .line 552
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    cmpl-float v0, v0, v1

    .line 557
    .line 558
    if-lez v0, :cond_19

    .line 559
    .line 560
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 561
    .line 562
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 567
    .line 568
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v6

    .line 572
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 573
    .line 574
    iget-boolean v7, p0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 575
    .line 576
    xor-int/2addr v7, v5

    .line 577
    invoke-virtual {v6, v3, v7}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    if-eqz v6, :cond_15

    .line 582
    .line 583
    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 584
    .line 585
    if-eqz v7, :cond_15

    .line 586
    .line 587
    invoke-virtual {v7, v3, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    if-eqz v3, :cond_16

    .line 592
    .line 593
    iput-object v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 594
    .line 595
    :cond_15
    move-object v4, v6

    .line 596
    :cond_16
    if-eqz v4, :cond_17

    .line 597
    .line 598
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 599
    .line 600
    invoke-virtual {p0, v4, v3, v5}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 601
    .line 602
    .line 603
    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 604
    .line 605
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 606
    .line 607
    invoke-interface {v3, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 611
    .line 612
    sub-float/2addr v0, v3

    .line 613
    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 614
    .line 615
    .line 616
    goto :goto_8

    .line 617
    :cond_17
    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    .line 618
    .line 619
    if-eqz v3, :cond_18

    .line 620
    .line 621
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 622
    .line 623
    .line 624
    :cond_18
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 625
    .line 626
    sub-float/2addr v0, v3

    .line 627
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 632
    .line 633
    .line 634
    :cond_19
    :goto_8
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 635
    .line 636
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    cmpg-float v0, v0, v1

    .line 641
    .line 642
    if-gtz v0, :cond_1a

    .line 643
    .line 644
    :goto_9
    move v2, p1

    .line 645
    goto :goto_a

    .line 646
    :cond_1a
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 647
    .line 648
    sub-float/2addr p1, v0

    .line 649
    iput v2, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 650
    .line 651
    goto :goto_9

    .line 652
    :cond_1b
    :goto_a
    neg-float p0, v2

    .line 653
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    return-object p0

    .line 658
    :pswitch_e
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 659
    .line 660
    check-cast p1, Ljava/lang/Integer;

    .line 661
    .line 662
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result p1

    .line 666
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 667
    .line 668
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 669
    .line 670
    .line 671
    move-result-object p0

    .line 672
    return-object p0

    .line 673
    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    .line 674
    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    return-object p0

    .line 679
    :pswitch_10
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 680
    .line 681
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 682
    .line 683
    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 684
    .line 685
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 686
    .line 687
    :goto_b
    if-ge v3, p0, :cond_1c

    .line 688
    .line 689
    aget-object v0, p1, v3

    .line 690
    .line 691
    check-cast v0, Landroidx/compose/ui/layout/MeasureResult;

    .line 692
    .line 693
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    .line 694
    .line 695
    .line 696
    add-int/lit8 v3, v3, 0x1

    .line 697
    .line 698
    goto :goto_b

    .line 699
    :cond_1c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 700
    .line 701
    return-object p0

    .line 702
    :pswitch_11
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 703
    .line 704
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 705
    .line 706
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 707
    .line 708
    iget-wide v1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 709
    .line 710
    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    .line 711
    .line 712
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 713
    .line 714
    .line 715
    move-result-wide p0

    .line 716
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 717
    .line 718
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 719
    .line 720
    .line 721
    return-object v0

    .line 722
    :pswitch_12
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 723
    .line 724
    sget-object v0, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 725
    .line 726
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 727
    .line 728
    iget-object v1, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 729
    .line 730
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 735
    .line 736
    iget-object p1, p1, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 737
    .line 738
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    invoke-interface {p0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 746
    .line 747
    return-object p0

    .line 748
    :pswitch_13
    check-cast p0, Landroidx/camera/core/CameraX;

    .line 749
    .line 750
    check-cast p1, Ljava/lang/Void;

    .line 751
    .line 752
    iget-object p0, p0, Landroidx/camera/core/CameraX;->mInitInternalFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 753
    .line 754
    return-object p0

    .line 755
    :pswitch_14
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 756
    .line 757
    check-cast p1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    .line 758
    .line 759
    iget-object p1, p1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 760
    .line 761
    if-eq p1, p0, :cond_1d

    .line 762
    .line 763
    goto :goto_c

    .line 764
    :cond_1d
    move v3, v5

    .line 765
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 766
    .line 767
    .line 768
    move-result-object p0

    .line 769
    return-object p0

    .line 770
    :pswitch_15
    check-cast p0, Lcom/eygraber/uri/Uri$Builder;

    .line 771
    .line 772
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 773
    .line 774
    check-cast p0, Lkotlin/collections/ArrayDeque;

    .line 775
    .line 776
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 780
    .line 781
    return-object p0

    .line 782
    :pswitch_16
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 783
    .line 784
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 785
    .line 786
    check-cast p0, Lkotlin/collections/ArrayDeque;

    .line 787
    .line 788
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 792
    .line 793
    return-object p0

    .line 794
    :pswitch_17
    check-cast p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 795
    .line 796
    check-cast p1, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 797
    .line 798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Lcom/eygraber/uri/Uri$Builder;

    .line 802
    .line 803
    new-instance v0, Landroidx/camera/camera2/pipe/compat/RequestClose;

    .line 804
    .line 805
    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    .line 806
    .line 807
    .line 808
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 811
    .line 812
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 816
    .line 817
    return-object p0

    .line 818
    :pswitch_18
    check-cast p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 819
    .line 820
    check-cast p1, Ljava/lang/Throwable;

    .line 821
    .line 822
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 823
    .line 824
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 825
    .line 826
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    return-object p1

    .line 830
    :pswitch_19
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 831
    .line 832
    check-cast p1, Ljava/lang/Throwable;

    .line 833
    .line 834
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 835
    .line 836
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    return-object p1

    .line 840
    :pswitch_1a
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseManager;

    .line 841
    .line 842
    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 843
    .line 844
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 848
    .line 849
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    .line 850
    .line 851
    monitor-enter v1

    .line 852
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    .line 853
    .line 854
    if-nez v0, :cond_1e

    .line 855
    .line 856
    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 857
    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    const-string v3, "CameraGraph-"

    .line 861
    .line 862
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    sget-object v3, Landroidx/camera/camera2/pipe/CameraGraphId;->cameraGraphIds:Lkotlinx/atomicfu/AtomicInt;

    .line 866
    .line 867
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    .line 869
    .line 870
    sget-object v4, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 871
    .line 872
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    invoke-direct {v0, v2}, Landroidx/camera/camera2/pipe/CameraGraphId;-><init>(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createCameraGraphLocked(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 887
    .line 888
    .line 889
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    monitor-exit v1

    .line 891
    return-object p0

    .line 892
    :catchall_0
    move-exception v0

    .line 893
    move-object p0, v0

    .line 894
    goto :goto_d

    .line 895
    :cond_1e
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 896
    .line 897
    const-string p1, "Check failed."

    .line 898
    .line 899
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    :goto_d
    monitor-exit v1

    .line 904
    throw p0

    .line 905
    :pswitch_1b
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 906
    .line 907
    check-cast p1, Ljava/lang/Throwable;

    .line 908
    .line 909
    if-eqz p1, :cond_20

    .line 910
    .line 911
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 912
    .line 913
    if-eqz v0, :cond_1f

    .line 914
    .line 915
    invoke-virtual {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()V

    .line 916
    .line 917
    .line 918
    goto :goto_e

    .line 919
    :cond_1f
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 920
    .line 921
    .line 922
    goto :goto_e

    .line 923
    :cond_20
    invoke-virtual {p0, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    :goto_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 927
    .line 928
    return-object p0

    .line 929
    :pswitch_1c
    check-cast p0, Landroidx/camera/camera2/impl/TorchControl;

    .line 930
    .line 931
    check-cast p1, Ljava/lang/Throwable;

    .line 932
    .line 933
    iput-object v4, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 934
    .line 935
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 936
    .line 937
    return-object p0

    .line 938
    nop

    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
