.class public final synthetic Landroidx/room/RoomDatabase$closeBarrier$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/room/RoomDatabase$closeBarrier$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 16
    .line 17
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getListViewMode()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    xor-int/2addr v1, v3

    .line 26
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object v5

    .line 36
    :cond_0
    const-string/jumbo v0, "viewModel"

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v4

    .line 43
    :pswitch_0
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 46
    .line 47
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 53
    .line 54
    invoke-direct {v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v5

    .line 65
    :pswitch_1
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lnet/newpipe/app/ComposeActivity;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    return-object v5

    .line 73
    :pswitch_2
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Landroid/view/View;

    .line 76
    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v2, 0x1e

    .line 80
    .line 81
    if-lt v1, v2, :cond_1

    .line 82
    .line 83
    invoke-static {v0}, Landroidx/core/os/BuildCompat$Api30Impl;->setImportantForContentCapture(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    const/16 v2, 0x1d

    .line 87
    .line 88
    if-lt v1, v2, :cond_3

    .line 89
    .line 90
    invoke-static {v0}, Lcoil3/decode/StaticImageDecoderKt;->getContentCaptureSession(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    new-instance v4, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    .line 98
    .line 99
    invoke-direct {v4, v1, v0}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return-object v4

    .line 103
    :pswitch_3
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 106
    .line 107
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    .line 108
    .line 109
    iget-object v6, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    .line 110
    .line 111
    iget-object v7, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusOwner:Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 112
    .line 113
    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    const/16 v15, 0x8

    .line 118
    .line 119
    const-wide/16 v16, 0x80

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    if-nez v8, :cond_8

    .line 123
    .line 124
    iget-object v3, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v8, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 127
    .line 128
    array-length v10, v8

    .line 129
    add-int/lit8 v10, v10, -0x2

    .line 130
    .line 131
    if-ltz v10, :cond_7

    .line 132
    .line 133
    move v11, v9

    .line 134
    const-wide/16 v18, 0xff

    .line 135
    .line 136
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :goto_1
    aget-wide v13, v8, v11

    .line 142
    .line 143
    move-object/from16 v22, v4

    .line 144
    .line 145
    move-object v12, v5

    .line 146
    not-long v4, v13

    .line 147
    shl-long/2addr v4, v2

    .line 148
    and-long/2addr v4, v13

    .line 149
    and-long v4, v4, v20

    .line 150
    .line 151
    cmp-long v4, v4, v20

    .line 152
    .line 153
    if-eqz v4, :cond_6

    .line 154
    .line 155
    sub-int v4, v11, v10

    .line 156
    .line 157
    not-int v4, v4

    .line 158
    ushr-int/lit8 v4, v4, 0x1f

    .line 159
    .line 160
    rsub-int/lit8 v4, v4, 0x8

    .line 161
    .line 162
    move v5, v9

    .line 163
    :goto_2
    if-ge v5, v4, :cond_5

    .line 164
    .line 165
    and-long v23, v13, v18

    .line 166
    .line 167
    cmp-long v23, v23, v16

    .line 168
    .line 169
    if-ltz v23, :cond_4

    .line 170
    .line 171
    shr-long/2addr v13, v15

    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    shl-int/lit8 v0, v11, 0x3

    .line 176
    .line 177
    add-int/2addr v0, v5

    .line 178
    aget-object v0, v3, v0

    .line 179
    .line 180
    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    .line 183
    .line 184
    .line 185
    throw v22

    .line 186
    :cond_5
    if-ne v4, v15, :cond_15

    .line 187
    .line 188
    :cond_6
    if-eq v11, v10, :cond_15

    .line 189
    .line 190
    add-int/lit8 v11, v11, 0x1

    .line 191
    .line 192
    move-object v5, v12

    .line 193
    move-object/from16 v4, v22

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_7
    move-object v12, v5

    .line 197
    goto/16 :goto_8

    .line 198
    .line 199
    :cond_8
    move-object/from16 v22, v4

    .line 200
    .line 201
    move-object v12, v5

    .line 202
    const-wide/16 v18, 0xff

    .line 203
    .line 204
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    iget-boolean v4, v8, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 210
    .line 211
    if-eqz v4, :cond_15

    .line 212
    .line 213
    invoke-virtual {v1, v8}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_9

    .line 218
    .line 219
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui()V

    .line 220
    .line 221
    .line 222
    :cond_9
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 223
    .line 224
    .line 225
    iget-object v4, v8, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 226
    .line 227
    iget-boolean v4, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 228
    .line 229
    if-nez v4, :cond_a

    .line 230
    .line 231
    const-string/jumbo v4, "visitAncestors called on an unattached node"

    .line 232
    .line 233
    .line 234
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_a
    iget-object v4, v8, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 238
    .line 239
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    move v8, v9

    .line 244
    :goto_3
    if-eqz v5, :cond_11

    .line 245
    .line 246
    iget-object v10, v5, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 247
    .line 248
    iget-object v10, v10, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 249
    .line 250
    iget v10, v10, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 251
    .line 252
    and-int/lit16 v10, v10, 0x1400

    .line 253
    .line 254
    if-eqz v10, :cond_f

    .line 255
    .line 256
    :goto_4
    if-eqz v4, :cond_f

    .line 257
    .line 258
    iget v10, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 259
    .line 260
    and-int/lit16 v11, v10, 0x1400

    .line 261
    .line 262
    if-eqz v11, :cond_e

    .line 263
    .line 264
    and-int/lit16 v10, v10, 0x400

    .line 265
    .line 266
    if-eqz v10, :cond_b

    .line 267
    .line 268
    add-int/lit8 v8, v8, 0x1

    .line 269
    .line 270
    :cond_b
    instance-of v10, v4, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 271
    .line 272
    if-eqz v10, :cond_e

    .line 273
    .line 274
    invoke-virtual {v6, v4}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    if-nez v10, :cond_c

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_c
    if-gt v8, v3, :cond_d

    .line 282
    .line 283
    check-cast v4, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 284
    .line 285
    invoke-virtual {v4}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    .line 286
    .line 287
    .line 288
    throw v22

    .line 289
    :cond_d
    check-cast v4, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 290
    .line 291
    invoke-virtual {v4}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    .line 292
    .line 293
    .line 294
    throw v22

    .line 295
    :cond_e
    :goto_5
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_f
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    if-eqz v5, :cond_10

    .line 303
    .line 304
    iget-object v4, v5, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 305
    .line 306
    if-eqz v4, :cond_10

    .line 307
    .line 308
    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_10
    move-object/from16 v4, v22

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_11
    iget-object v3, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 315
    .line 316
    iget-object v4, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 317
    .line 318
    array-length v5, v4

    .line 319
    add-int/lit8 v5, v5, -0x2

    .line 320
    .line 321
    if-ltz v5, :cond_15

    .line 322
    .line 323
    move v8, v9

    .line 324
    :goto_6
    aget-wide v10, v4, v8

    .line 325
    .line 326
    not-long v13, v10

    .line 327
    shl-long/2addr v13, v2

    .line 328
    and-long/2addr v13, v10

    .line 329
    and-long v13, v13, v20

    .line 330
    .line 331
    cmp-long v13, v13, v20

    .line 332
    .line 333
    if-eqz v13, :cond_14

    .line 334
    .line 335
    sub-int v13, v8, v5

    .line 336
    .line 337
    not-int v13, v13

    .line 338
    ushr-int/lit8 v13, v13, 0x1f

    .line 339
    .line 340
    rsub-int/lit8 v13, v13, 0x8

    .line 341
    .line 342
    move v14, v9

    .line 343
    :goto_7
    if-ge v14, v13, :cond_13

    .line 344
    .line 345
    and-long v23, v10, v18

    .line 346
    .line 347
    cmp-long v23, v23, v16

    .line 348
    .line 349
    if-ltz v23, :cond_12

    .line 350
    .line 351
    shr-long/2addr v10, v15

    .line 352
    add-int/lit8 v14, v14, 0x1

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_12
    shl-int/lit8 v0, v8, 0x3

    .line 356
    .line 357
    add-int/2addr v0, v14

    .line 358
    aget-object v0, v3, v0

    .line 359
    .line 360
    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    .line 363
    .line 364
    .line 365
    throw v22

    .line 366
    :cond_13
    if-ne v13, v15, :cond_15

    .line 367
    .line 368
    :cond_14
    if-eq v8, v5, :cond_15

    .line 369
    .line 370
    add-int/lit8 v8, v8, 0x1

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_15
    :goto_8
    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    if-eqz v2, :cond_16

    .line 378
    .line 379
    iget-object v2, v7, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 380
    .line 381
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 386
    .line 387
    if-ne v2, v3, :cond_17

    .line 388
    .line 389
    :cond_16
    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 390
    .line 391
    .line 392
    :cond_17
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 396
    .line 397
    .line 398
    iput-boolean v9, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    .line 399
    .line 400
    return-object v12

    .line 401
    :pswitch_4
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Landroidx/compose/foundation/FocusableNode;

    .line 404
    .line 405
    iget-object v0, v0, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 406
    .line 407
    invoke-virtual {v0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    return-object v0

    .line 416
    :pswitch_5
    move-object/from16 v22, v4

    .line 417
    .line 418
    move-object v12, v5

    .line 419
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v0, Landroidx/room/RoomDatabase;

    .line 422
    .line 423
    iget-object v1, v0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 424
    .line 425
    if-eqz v1, :cond_1a

    .line 426
    .line 427
    move-object/from16 v2, v22

    .line 428
    .line 429
    invoke-static {v1, v2}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/input/pointer/PointerInputResetException;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 433
    .line 434
    .line 435
    iget-object v0, v0, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 436
    .line 437
    if-eqz v0, :cond_19

    .line 438
    .line 439
    iget-object v1, v0, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v1, Landroidx/room/coroutines/ConnectionPool;

    .line 442
    .line 443
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 444
    .line 445
    .line 446
    iget-object v0, v0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 449
    .line 450
    if-eqz v0, :cond_18

    .line 451
    .line 452
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 453
    .line 454
    .line 455
    :cond_18
    return-object v12

    .line 456
    :cond_19
    const-string v0, "connectionManager"

    .line 457
    .line 458
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const/16 v22, 0x0

    .line 462
    .line 463
    throw v22

    .line 464
    :cond_1a
    const-string v0, "coroutineScope"

    .line 465
    .line 466
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v22

    .line 470
    nop

    .line 471
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
