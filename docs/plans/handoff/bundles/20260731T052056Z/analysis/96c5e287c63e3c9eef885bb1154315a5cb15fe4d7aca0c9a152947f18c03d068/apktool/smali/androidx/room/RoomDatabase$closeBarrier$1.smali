.class public final synthetic Landroidx/room/RoomDatabase$closeBarrier$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Landroidx/room/RoomDatabase$closeBarrier$1;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/room/RoomDatabase$closeBarrier$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v0, Landroidx/paging/PageFetcher;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/paging/PageFetcher;->loadRequests:Lcoil3/svg/internal/AndroidSvg;

    .line 18
    .line 19
    new-instance v1, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 20
    .line 21
    sget-object v2, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE$1:Landroidx/paging/PageFetcher$RefreshType$All;

    .line 22
    .line 23
    invoke-direct {v1, v4, v2}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;-><init>(ZLandroidx/paging/FlowExtKt;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcoil3/svg/internal/AndroidSvg;->send(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v5

    .line 30
    :pswitch_0
    check-cast v0, Landroidx/paging/PageFetcher;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/paging/PageFetcher;->loadRequests:Lcoil3/svg/internal/AndroidSvg;

    .line 33
    .line 34
    new-instance v1, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 35
    .line 36
    sget-object v2, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE$1:Landroidx/paging/PageFetcher$RefreshType$All;

    .line 37
    .line 38
    invoke-direct {v1, v4, v2}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;-><init>(ZLandroidx/paging/FlowExtKt;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcoil3/svg/internal/AndroidSvg;->send(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v5

    .line 45
    :pswitch_1
    check-cast v0, Landroid/view/View;

    .line 46
    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v2, 0x1e

    .line 50
    .line 51
    if-lt v1, v2, :cond_0

    .line 52
    .line 53
    invoke-static {v0}, Lorg/wikipedia/util/GeoUtil;->setImportantForContentCapture(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    const/16 v2, 0x1d

    .line 57
    .line 58
    if-lt v1, v2, :cond_2

    .line 59
    .line 60
    invoke-static {v0}, Lorg/wikipedia/util/FileUtil;->getContentCaptureSession(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v3, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    .line 68
    .line 69
    invoke-direct {v3, v1, v0}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    return-object v3

    .line 73
    :pswitch_2
    check-cast v0, Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 74
    .line 75
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    .line 76
    .line 77
    iget-object v6, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    .line 78
    .line 79
    iget-object v7, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusOwner:Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 80
    .line 81
    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const/16 v15, 0x8

    .line 86
    .line 87
    if-nez v8, :cond_6

    .line 88
    .line 89
    iget-object v3, v6, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v8, v6, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 92
    .line 93
    const-wide/16 v16, 0x80

    .line 94
    .line 95
    array-length v9, v8

    .line 96
    add-int/lit8 v9, v9, -0x2

    .line 97
    .line 98
    if-ltz v9, :cond_13

    .line 99
    .line 100
    move v10, v4

    .line 101
    const-wide/16 v18, 0xff

    .line 102
    .line 103
    :goto_1
    aget-wide v11, v8, v10

    .line 104
    .line 105
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    not-long v13, v11

    .line 111
    shl-long/2addr v13, v2

    .line 112
    and-long/2addr v13, v11

    .line 113
    and-long v13, v13, v20

    .line 114
    .line 115
    cmp-long v13, v13, v20

    .line 116
    .line 117
    if-eqz v13, :cond_5

    .line 118
    .line 119
    sub-int v13, v10, v9

    .line 120
    .line 121
    not-int v13, v13

    .line 122
    ushr-int/lit8 v13, v13, 0x1f

    .line 123
    .line 124
    rsub-int/lit8 v13, v13, 0x8

    .line 125
    .line 126
    move v14, v4

    .line 127
    :goto_2
    if-ge v14, v13, :cond_4

    .line 128
    .line 129
    and-long v22, v11, v18

    .line 130
    .line 131
    cmp-long v22, v22, v16

    .line 132
    .line 133
    if-gez v22, :cond_3

    .line 134
    .line 135
    shl-int/lit8 v22, v10, 0x3

    .line 136
    .line 137
    add-int v22, v22, v14

    .line 138
    .line 139
    aget-object v22, v3, v22

    .line 140
    .line 141
    move/from16 v23, v2

    .line 142
    .line 143
    move-object/from16 v2, v22

    .line 144
    .line 145
    check-cast v2, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 146
    .line 147
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 148
    .line 149
    invoke-interface {v2, v4}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    move/from16 v23, v2

    .line 154
    .line 155
    :goto_3
    shr-long/2addr v11, v15

    .line 156
    add-int/lit8 v14, v14, 0x1

    .line 157
    .line 158
    move/from16 v2, v23

    .line 159
    .line 160
    const/4 v4, 0x0

    .line 161
    goto :goto_2

    .line 162
    :cond_4
    move/from16 v23, v2

    .line 163
    .line 164
    if-ne v13, v15, :cond_13

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_5
    move/from16 v23, v2

    .line 168
    .line 169
    :goto_4
    if-eq v10, v9, :cond_13

    .line 170
    .line 171
    add-int/lit8 v10, v10, 0x1

    .line 172
    .line 173
    move/from16 v2, v23

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    goto :goto_1

    .line 177
    :cond_6
    move/from16 v23, v2

    .line 178
    .line 179
    const-wide/16 v16, 0x80

    .line 180
    .line 181
    const-wide/16 v18, 0xff

    .line 182
    .line 183
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    iget-boolean v2, v8, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 189
    .line 190
    if-eqz v2, :cond_13

    .line 191
    .line 192
    invoke-virtual {v1, v8}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui()V

    .line 199
    .line 200
    .line 201
    :cond_7
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iget-object v4, v8, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 206
    .line 207
    iget-boolean v4, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 208
    .line 209
    if-nez v4, :cond_8

    .line 210
    .line 211
    const-string/jumbo v4, "visitAncestors called on an unattached node"

    .line 212
    .line 213
    .line 214
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_8
    iget-object v4, v8, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 218
    .line 219
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    const/4 v9, 0x0

    .line 224
    :goto_5
    if-eqz v8, :cond_f

    .line 225
    .line 226
    iget-object v10, v8, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 227
    .line 228
    iget-object v10, v10, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .line 231
    .line 232
    iget v10, v10, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 233
    .line 234
    and-int/lit16 v10, v10, 0x1400

    .line 235
    .line 236
    if-eqz v10, :cond_d

    .line 237
    .line 238
    :goto_6
    if-eqz v4, :cond_d

    .line 239
    .line 240
    iget v10, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 241
    .line 242
    and-int/lit16 v11, v10, 0x1400

    .line 243
    .line 244
    if-eqz v11, :cond_c

    .line 245
    .line 246
    and-int/lit16 v10, v10, 0x400

    .line 247
    .line 248
    if-eqz v10, :cond_9

    .line 249
    .line 250
    add-int/lit8 v9, v9, 0x1

    .line 251
    .line 252
    :cond_9
    instance-of v10, v4, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 253
    .line 254
    if-eqz v10, :cond_c

    .line 255
    .line 256
    invoke-virtual {v6, v4}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    if-nez v10, :cond_a

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_a
    const/4 v10, 0x1

    .line 264
    if-gt v9, v10, :cond_b

    .line 265
    .line 266
    move-object v10, v4

    .line 267
    check-cast v10, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 268
    .line 269
    invoke-interface {v10, v2}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_b
    move-object v10, v4

    .line 274
    check-cast v10, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 275
    .line 276
    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 277
    .line 278
    invoke-interface {v10, v11}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 279
    .line 280
    .line 281
    :goto_7
    invoke-virtual {v6, v4}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    :cond_c
    :goto_8
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_d
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    if-eqz v8, :cond_e

    .line 292
    .line 293
    iget-object v4, v8, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 294
    .line 295
    if-eqz v4, :cond_e

    .line 296
    .line 297
    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v4, Landroidx/compose/ui/node/TailModifierNode;

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_e
    move-object v4, v3

    .line 303
    goto :goto_5

    .line 304
    :cond_f
    iget-object v2, v6, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 305
    .line 306
    iget-object v3, v6, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 307
    .line 308
    array-length v4, v3

    .line 309
    add-int/lit8 v4, v4, -0x2

    .line 310
    .line 311
    if-ltz v4, :cond_13

    .line 312
    .line 313
    const/4 v8, 0x0

    .line 314
    :goto_9
    aget-wide v9, v3, v8

    .line 315
    .line 316
    not-long v11, v9

    .line 317
    shl-long v11, v11, v23

    .line 318
    .line 319
    and-long/2addr v11, v9

    .line 320
    and-long v11, v11, v20

    .line 321
    .line 322
    cmp-long v11, v11, v20

    .line 323
    .line 324
    if-eqz v11, :cond_12

    .line 325
    .line 326
    sub-int v11, v8, v4

    .line 327
    .line 328
    not-int v11, v11

    .line 329
    ushr-int/lit8 v11, v11, 0x1f

    .line 330
    .line 331
    rsub-int/lit8 v11, v11, 0x8

    .line 332
    .line 333
    const/4 v12, 0x0

    .line 334
    :goto_a
    if-ge v12, v11, :cond_11

    .line 335
    .line 336
    and-long v13, v9, v18

    .line 337
    .line 338
    cmp-long v13, v13, v16

    .line 339
    .line 340
    if-gez v13, :cond_10

    .line 341
    .line 342
    shl-int/lit8 v13, v8, 0x3

    .line 343
    .line 344
    add-int/2addr v13, v12

    .line 345
    aget-object v13, v2, v13

    .line 346
    .line 347
    check-cast v13, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 348
    .line 349
    sget-object v14, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 350
    .line 351
    invoke-interface {v13, v14}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 352
    .line 353
    .line 354
    :cond_10
    shr-long/2addr v9, v15

    .line 355
    add-int/lit8 v12, v12, 0x1

    .line 356
    .line 357
    goto :goto_a

    .line 358
    :cond_11
    if-ne v11, v15, :cond_13

    .line 359
    .line 360
    :cond_12
    if-eq v8, v4, :cond_13

    .line 361
    .line 362
    add-int/lit8 v8, v8, 0x1

    .line 363
    .line 364
    goto :goto_9

    .line 365
    :cond_13
    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    if-eqz v2, :cond_14

    .line 370
    .line 371
    iget-object v2, v7, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 372
    .line 373
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 378
    .line 379
    if-ne v2, v3, :cond_15

    .line 380
    .line 381
    :cond_14
    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 382
    .line 383
    .line 384
    :cond_15
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 388
    .line 389
    .line 390
    const/4 v1, 0x0

    .line 391
    iput-boolean v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    .line 392
    .line 393
    return-object v5

    .line 394
    :pswitch_3
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 395
    .line 396
    invoke-interface {v0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    return-object v0

    .line 401
    :pswitch_4
    move/from16 v23, v2

    .line 402
    .line 403
    check-cast v0, Landroidx/compose/foundation/FocusableNode;

    .line 404
    .line 405
    iget-object v0, v0, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 406
    .line 407
    move/from16 v1, v23

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    return-object v0

    .line 418
    :pswitch_5
    check-cast v0, Landroidx/room/RoomDatabase;

    .line 419
    .line 420
    iget-object v1, v0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 421
    .line 422
    if-eqz v1, :cond_18

    .line 423
    .line 424
    invoke-static {v1, v3}, Lkotlinx/coroutines/AwaitKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 428
    .line 429
    .line 430
    iget-object v0, v0, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 431
    .line 432
    if-eqz v0, :cond_17

    .line 433
    .line 434
    iget-object v1, v0, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v1, Landroidx/room/coroutines/ConnectionPool;

    .line 437
    .line 438
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 439
    .line 440
    .line 441
    iget-object v0, v0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 444
    .line 445
    if-eqz v0, :cond_16

    .line 446
    .line 447
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 448
    .line 449
    .line 450
    :cond_16
    return-object v5

    .line 451
    :cond_17
    const-string v0, "connectionManager"

    .line 452
    .line 453
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v3

    .line 457
    :cond_18
    const-string v0, "coroutineScope"

    .line 458
    .line 459
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v3

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
