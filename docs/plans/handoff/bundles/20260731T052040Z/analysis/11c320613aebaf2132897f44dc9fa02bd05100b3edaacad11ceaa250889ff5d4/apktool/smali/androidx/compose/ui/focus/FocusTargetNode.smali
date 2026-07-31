.class public final Landroidx/compose/ui/focus/FocusTargetNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;


# instance fields
.field public final focusability:I

.field public isProcessingCustomEnter:Z

.field public isProcessingCustomExit:Z

.field public final onFocusChange:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusTargetNode;->onFocusChange:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    iput p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusability:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final assignFocus-3ESFkO8()Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Lokio/Okio;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    if-eq v1, v5, :cond_0

    .line 18
    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    :cond_0
    :goto_0
    move/from16 v19, v2

    .line 24
    .line 25
    goto/16 :goto_1d

    .line 26
    .line 27
    :cond_1
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    move/from16 v18, v5

    .line 32
    .line 33
    goto/16 :goto_1e

    .line 34
    .line 35
    :cond_3
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-ne v6, v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0, v7, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 58
    .line 59
    .line 60
    return v5

    .line 61
    :cond_4
    if-eqz v6, :cond_5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 69
    .line 70
    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 75
    .line 76
    iget-object v8, v8, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 77
    .line 78
    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidComposeView;->requestOwnerFocus-7o62pno()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_6

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    :goto_1
    const-string/jumbo v8, "visitAncestors called on an unattached node"

    .line 86
    .line 87
    .line 88
    const/16 v9, 0x10

    .line 89
    .line 90
    if-eqz v6, :cond_12

    .line 91
    .line 92
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    .line 93
    .line 94
    new-array v12, v9, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 95
    .line 96
    invoke-direct {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v12, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 100
    .line 101
    iget-boolean v12, v12, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 102
    .line 103
    if-nez v12, :cond_7

    .line 104
    .line 105
    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget-object v12, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 109
    .line 110
    iget-object v12, v12, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 111
    .line 112
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    :goto_2
    if-eqz v13, :cond_13

    .line 117
    .line 118
    iget-object v14, v13, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 119
    .line 120
    iget-object v14, v14, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 121
    .line 122
    iget v14, v14, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 123
    .line 124
    and-int/lit16 v14, v14, 0x400

    .line 125
    .line 126
    if-eqz v14, :cond_10

    .line 127
    .line 128
    :goto_3
    if-eqz v12, :cond_10

    .line 129
    .line 130
    iget v14, v12, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 131
    .line 132
    and-int/lit16 v14, v14, 0x400

    .line 133
    .line 134
    if-eqz v14, :cond_f

    .line 135
    .line 136
    move-object v14, v12

    .line 137
    const/4 v15, 0x0

    .line 138
    :goto_4
    if-eqz v14, :cond_f

    .line 139
    .line 140
    instance-of v10, v14, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 141
    .line 142
    if-eqz v10, :cond_8

    .line 143
    .line 144
    check-cast v14, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 145
    .line 146
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_8
    iget v10, v14, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 151
    .line 152
    and-int/lit16 v10, v10, 0x400

    .line 153
    .line 154
    if-eqz v10, :cond_e

    .line 155
    .line 156
    instance-of v10, v14, Landroidx/compose/ui/node/DelegatingNode;

    .line 157
    .line 158
    if-eqz v10, :cond_e

    .line 159
    .line 160
    move-object v10, v14

    .line 161
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 162
    .line 163
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 164
    .line 165
    move v3, v2

    .line 166
    :goto_5
    if-eqz v10, :cond_d

    .line 167
    .line 168
    iget v4, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 169
    .line 170
    and-int/lit16 v4, v4, 0x400

    .line 171
    .line 172
    if-eqz v4, :cond_c

    .line 173
    .line 174
    add-int/lit8 v3, v3, 0x1

    .line 175
    .line 176
    if-ne v3, v5, :cond_9

    .line 177
    .line 178
    move-object v14, v10

    .line 179
    goto :goto_6

    .line 180
    :cond_9
    if-nez v15, :cond_a

    .line 181
    .line 182
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 183
    .line 184
    new-array v15, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 185
    .line 186
    invoke-direct {v4, v15}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object v15, v4

    .line 190
    :cond_a
    if-eqz v14, :cond_b

    .line 191
    .line 192
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    const/4 v14, 0x0

    .line 196
    :cond_b
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_c
    :goto_6
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 200
    .line 201
    const/4 v4, 0x2

    .line 202
    goto :goto_5

    .line 203
    :cond_d
    if-ne v3, v5, :cond_e

    .line 204
    .line 205
    :goto_7
    const/4 v3, 0x3

    .line 206
    const/4 v4, 0x2

    .line 207
    goto :goto_4

    .line 208
    :cond_e
    :goto_8
    invoke-static {v15}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    goto :goto_7

    .line 213
    :cond_f
    iget-object v12, v12, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 214
    .line 215
    const/4 v3, 0x3

    .line 216
    const/4 v4, 0x2

    .line 217
    goto :goto_3

    .line 218
    :cond_10
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    if-eqz v13, :cond_11

    .line 223
    .line 224
    iget-object v3, v13, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 225
    .line 226
    if-eqz v3, :cond_11

    .line 227
    .line 228
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 229
    .line 230
    move-object v12, v3

    .line 231
    goto :goto_9

    .line 232
    :cond_11
    const/4 v12, 0x0

    .line 233
    :goto_9
    const/4 v3, 0x3

    .line 234
    const/4 v4, 0x2

    .line 235
    goto :goto_2

    .line 236
    :cond_12
    const/4 v11, 0x0

    .line 237
    :cond_13
    new-array v3, v9, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 238
    .line 239
    new-array v4, v9, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 240
    .line 241
    iget-object v10, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 242
    .line 243
    iget-boolean v10, v10, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 244
    .line 245
    if-nez v10, :cond_14

    .line 246
    .line 247
    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_14
    iget-object v8, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 251
    .line 252
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 253
    .line 254
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    move v13, v2

    .line 259
    move v14, v13

    .line 260
    move v12, v5

    .line 261
    :goto_a
    if-eqz v10, :cond_25

    .line 262
    .line 263
    iget-object v15, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 264
    .line 265
    iget-object v15, v15, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 266
    .line 267
    iget v15, v15, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 268
    .line 269
    and-int/lit16 v15, v15, 0x400

    .line 270
    .line 271
    if-eqz v15, :cond_23

    .line 272
    .line 273
    :goto_b
    if-eqz v8, :cond_23

    .line 274
    .line 275
    iget v15, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 276
    .line 277
    and-int/lit16 v15, v15, 0x400

    .line 278
    .line 279
    if-eqz v15, :cond_22

    .line 280
    .line 281
    move-object v15, v8

    .line 282
    const/16 v16, 0x0

    .line 283
    .line 284
    :goto_c
    if-eqz v15, :cond_22

    .line 285
    .line 286
    instance-of v9, v15, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 287
    .line 288
    if-eqz v9, :cond_1a

    .line 289
    .line 290
    move-object v9, v15

    .line 291
    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 292
    .line 293
    if-eqz v11, :cond_15

    .line 294
    .line 295
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v18

    .line 299
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v18

    .line 303
    move-object/from16 v5, v18

    .line 304
    .line 305
    goto :goto_d

    .line 306
    :cond_15
    const/4 v5, 0x0

    .line 307
    :goto_d
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_17

    .line 314
    .line 315
    add-int/lit8 v2, v13, 0x1

    .line 316
    .line 317
    array-length v5, v3

    .line 318
    if-ge v5, v2, :cond_16

    .line 319
    .line 320
    array-length v5, v3

    .line 321
    move-object/from16 v20, v1

    .line 322
    .line 323
    mul-int/lit8 v1, v5, 0x2

    .line 324
    .line 325
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    new-array v1, v1, [Ljava/lang/Object;

    .line 330
    .line 331
    move/from16 v21, v2

    .line 332
    .line 333
    const/4 v2, 0x0

    .line 334
    invoke-static {v3, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    .line 336
    .line 337
    move-object v3, v1

    .line 338
    goto :goto_e

    .line 339
    :cond_16
    move-object/from16 v20, v1

    .line 340
    .line 341
    move/from16 v21, v2

    .line 342
    .line 343
    :goto_e
    aput-object v9, v3, v13

    .line 344
    .line 345
    move/from16 v13, v21

    .line 346
    .line 347
    goto :goto_10

    .line 348
    :cond_17
    move-object/from16 v20, v1

    .line 349
    .line 350
    add-int/lit8 v1, v14, 0x1

    .line 351
    .line 352
    array-length v2, v4

    .line 353
    if-ge v2, v1, :cond_18

    .line 354
    .line 355
    array-length v2, v4

    .line 356
    mul-int/lit8 v5, v2, 0x2

    .line 357
    .line 358
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    new-array v5, v5, [Ljava/lang/Object;

    .line 363
    .line 364
    move/from16 v21, v1

    .line 365
    .line 366
    const/4 v1, 0x0

    .line 367
    invoke-static {v4, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    .line 369
    .line 370
    move-object v4, v5

    .line 371
    goto :goto_f

    .line 372
    :cond_18
    move/from16 v21, v1

    .line 373
    .line 374
    :goto_f
    aput-object v9, v4, v14

    .line 375
    .line 376
    move/from16 v14, v21

    .line 377
    .line 378
    :goto_10
    if-ne v9, v6, :cond_19

    .line 379
    .line 380
    const/4 v12, 0x0

    .line 381
    :cond_19
    const/4 v1, 0x0

    .line 382
    goto :goto_11

    .line 383
    :cond_1a
    move-object/from16 v20, v1

    .line 384
    .line 385
    const/4 v1, 0x1

    .line 386
    :goto_11
    if-eqz v1, :cond_20

    .line 387
    .line 388
    iget v1, v15, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 389
    .line 390
    and-int/lit16 v1, v1, 0x400

    .line 391
    .line 392
    if-eqz v1, :cond_20

    .line 393
    .line 394
    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    .line 395
    .line 396
    if-eqz v1, :cond_20

    .line 397
    .line 398
    move-object v1, v15

    .line 399
    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 400
    .line 401
    iget-object v1, v1, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 402
    .line 403
    const/4 v2, 0x0

    .line 404
    :goto_12
    if-eqz v1, :cond_1f

    .line 405
    .line 406
    iget v5, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 407
    .line 408
    and-int/lit16 v5, v5, 0x400

    .line 409
    .line 410
    if-eqz v5, :cond_1e

    .line 411
    .line 412
    add-int/lit8 v2, v2, 0x1

    .line 413
    .line 414
    const/4 v5, 0x1

    .line 415
    if-ne v2, v5, :cond_1b

    .line 416
    .line 417
    move-object v15, v1

    .line 418
    move/from16 v17, v2

    .line 419
    .line 420
    const/16 v9, 0x10

    .line 421
    .line 422
    goto :goto_14

    .line 423
    :cond_1b
    if-nez v16, :cond_1c

    .line 424
    .line 425
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 426
    .line 427
    move/from16 v17, v2

    .line 428
    .line 429
    const/16 v9, 0x10

    .line 430
    .line 431
    new-array v2, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 432
    .line 433
    invoke-direct {v5, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    goto :goto_13

    .line 437
    :cond_1c
    move/from16 v17, v2

    .line 438
    .line 439
    const/16 v9, 0x10

    .line 440
    .line 441
    move-object/from16 v5, v16

    .line 442
    .line 443
    :goto_13
    if-eqz v15, :cond_1d

    .line 444
    .line 445
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    const/4 v15, 0x0

    .line 449
    :cond_1d
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    move-object/from16 v16, v5

    .line 453
    .line 454
    :goto_14
    move/from16 v2, v17

    .line 455
    .line 456
    goto :goto_15

    .line 457
    :cond_1e
    const/16 v9, 0x10

    .line 458
    .line 459
    :goto_15
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 460
    .line 461
    goto :goto_12

    .line 462
    :cond_1f
    const/4 v5, 0x1

    .line 463
    const/16 v9, 0x10

    .line 464
    .line 465
    if-ne v2, v5, :cond_21

    .line 466
    .line 467
    move-object/from16 v1, v20

    .line 468
    .line 469
    const/4 v2, 0x0

    .line 470
    goto/16 :goto_c

    .line 471
    .line 472
    :cond_20
    const/16 v9, 0x10

    .line 473
    .line 474
    :cond_21
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 475
    .line 476
    .line 477
    move-result-object v15

    .line 478
    move-object/from16 v1, v20

    .line 479
    .line 480
    const/4 v2, 0x0

    .line 481
    const/4 v5, 0x1

    .line 482
    goto/16 :goto_c

    .line 483
    .line 484
    :cond_22
    move-object/from16 v20, v1

    .line 485
    .line 486
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 487
    .line 488
    move-object/from16 v1, v20

    .line 489
    .line 490
    const/4 v2, 0x0

    .line 491
    const/4 v5, 0x1

    .line 492
    goto/16 :goto_b

    .line 493
    .line 494
    :cond_23
    move-object/from16 v20, v1

    .line 495
    .line 496
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    if-eqz v10, :cond_24

    .line 501
    .line 502
    iget-object v1, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 503
    .line 504
    if-eqz v1, :cond_24

    .line 505
    .line 506
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 507
    .line 508
    move-object v8, v1

    .line 509
    goto :goto_16

    .line 510
    :cond_24
    const/4 v8, 0x0

    .line 511
    :goto_16
    move-object/from16 v1, v20

    .line 512
    .line 513
    const/4 v2, 0x0

    .line 514
    const/4 v5, 0x1

    .line 515
    goto/16 :goto_a

    .line 516
    .line 517
    :cond_25
    move-object/from16 v20, v1

    .line 518
    .line 519
    if-eqz v12, :cond_26

    .line 520
    .line 521
    if-eqz v6, :cond_26

    .line 522
    .line 523
    const/4 v1, 0x0

    .line 524
    invoke-static {v6, v1}, Lokio/Okio;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-nez v2, :cond_26

    .line 529
    .line 530
    :goto_17
    const/16 v19, 0x0

    .line 531
    .line 532
    goto/16 :goto_1d

    .line 533
    .line 534
    :cond_26
    new-instance v1, Landroidx/compose/ui/focus/FocusTransactionsKt$grantFocus$1;

    .line 535
    .line 536
    invoke-direct {v1, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt$grantFocus$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 537
    .line 538
    .line 539
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-eqz v1, :cond_29

    .line 551
    .line 552
    const/4 v5, 0x1

    .line 553
    if-eq v1, v5, :cond_28

    .line 554
    .line 555
    const/4 v2, 0x2

    .line 556
    if-eq v1, v2, :cond_29

    .line 557
    .line 558
    const/4 v2, 0x3

    .line 559
    if-ne v1, v2, :cond_27

    .line 560
    .line 561
    goto :goto_18

    .line 562
    :cond_27
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 563
    .line 564
    .line 565
    const/16 v19, 0x0

    .line 566
    .line 567
    return v19

    .line 568
    :cond_28
    :goto_18
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 573
    .line 574
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 579
    .line 580
    invoke-virtual {v1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 581
    .line 582
    .line 583
    :cond_29
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 584
    .line 585
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 586
    .line 587
    if-eqz v12, :cond_2a

    .line 588
    .line 589
    if-eqz v6, :cond_2a

    .line 590
    .line 591
    invoke-virtual {v6, v2, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 592
    .line 593
    .line 594
    :cond_2a
    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 595
    .line 596
    if-eqz v11, :cond_2c

    .line 597
    .line 598
    iget v5, v11, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 599
    .line 600
    const/16 v18, 0x1

    .line 601
    .line 602
    add-int/lit8 v5, v5, -0x1

    .line 603
    .line 604
    iget-object v8, v11, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 605
    .line 606
    array-length v9, v8

    .line 607
    if-ge v5, v9, :cond_2c

    .line 608
    .line 609
    :goto_19
    if-ltz v5, :cond_2c

    .line 610
    .line 611
    aget-object v9, v8, v5

    .line 612
    .line 613
    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 614
    .line 615
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 616
    .line 617
    .line 618
    move-result-object v10

    .line 619
    if-eq v10, v0, :cond_2b

    .line 620
    .line 621
    goto :goto_17

    .line 622
    :cond_2b
    invoke-virtual {v9, v3, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 623
    .line 624
    .line 625
    add-int/lit8 v5, v5, -0x1

    .line 626
    .line 627
    goto :goto_19

    .line 628
    :cond_2c
    const/16 v18, 0x1

    .line 629
    .line 630
    add-int/lit8 v14, v14, -0x1

    .line 631
    .line 632
    array-length v5, v4

    .line 633
    if-ge v14, v5, :cond_2f

    .line 634
    .line 635
    :goto_1a
    if-ltz v14, :cond_2f

    .line 636
    .line 637
    aget-object v5, v4, v14

    .line 638
    .line 639
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 640
    .line 641
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 642
    .line 643
    .line 644
    move-result-object v8

    .line 645
    if-eq v8, v0, :cond_2d

    .line 646
    .line 647
    :goto_1b
    goto :goto_17

    .line 648
    :cond_2d
    if-ne v5, v6, :cond_2e

    .line 649
    .line 650
    move-object v8, v2

    .line 651
    goto :goto_1c

    .line 652
    :cond_2e
    move-object v8, v1

    .line 653
    :goto_1c
    invoke-virtual {v5, v8, v3}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 654
    .line 655
    .line 656
    add-int/lit8 v14, v14, -0x1

    .line 657
    .line 658
    goto :goto_1a

    .line 659
    :cond_2f
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    if-eq v1, v0, :cond_30

    .line 664
    .line 665
    goto/16 :goto_17

    .line 666
    .line 667
    :cond_30
    invoke-virtual {v0, v7, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    if-eq v1, v0, :cond_31

    .line 675
    .line 676
    goto :goto_1b

    .line 677
    :goto_1d
    return v19

    .line 678
    :cond_31
    const/16 v18, 0x1

    .line 679
    .line 680
    :goto_1e
    return v18
.end method

.method public final dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 9

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusTargetNode;->onFocusChange:Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v2, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 31
    .line 32
    iget-boolean p2, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    const-string/jumbo p2, "visitAncestors called on an unattached node"

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 43
    .line 44
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_0
    if-eqz p0, :cond_e

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 51
    .line 52
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 53
    .line 54
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 55
    .line 56
    and-int/lit16 v2, v2, 0x1400

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v2, :cond_c

    .line 60
    .line 61
    :goto_1
    if-eqz p2, :cond_c

    .line 62
    .line 63
    iget v2, p2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 64
    .line 65
    and-int/lit16 v4, v2, 0x1400

    .line 66
    .line 67
    if-eqz v4, :cond_b

    .line 68
    .line 69
    if-eq p2, p1, :cond_2

    .line 70
    .line 71
    and-int/lit16 v4, v2, 0x400

    .line 72
    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_2
    and-int/lit16 v2, v2, 0x1000

    .line 78
    .line 79
    if-eqz v2, :cond_b

    .line 80
    .line 81
    move-object v2, p2

    .line 82
    move-object v4, v3

    .line 83
    :goto_2
    if-eqz v2, :cond_b

    .line 84
    .line 85
    instance-of v5, v2, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 86
    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    check-cast v2, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eq v1, v5, :cond_3

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/BackwardsCompatNode;->onFocusEvent()V

    .line 99
    .line 100
    .line 101
    throw v3

    .line 102
    :cond_4
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 103
    .line 104
    and-int/lit16 v5, v5, 0x1000

    .line 105
    .line 106
    if-eqz v5, :cond_a

    .line 107
    .line 108
    instance-of v5, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 109
    .line 110
    if-eqz v5, :cond_a

    .line 111
    .line 112
    move-object v5, v2

    .line 113
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 114
    .line 115
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    :goto_3
    const/4 v7, 0x1

    .line 119
    if-eqz v5, :cond_9

    .line 120
    .line 121
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 122
    .line 123
    and-int/lit16 v8, v8, 0x1000

    .line 124
    .line 125
    if-eqz v8, :cond_8

    .line 126
    .line 127
    add-int/lit8 v6, v6, 0x1

    .line 128
    .line 129
    if-ne v6, v7, :cond_5

    .line 130
    .line 131
    move-object v2, v5

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    if-nez v4, :cond_6

    .line 134
    .line 135
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 136
    .line 137
    const/16 v7, 0x10

    .line 138
    .line 139
    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 140
    .line 141
    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    if-eqz v2, :cond_7

    .line 145
    .line 146
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    move-object v2, v3

    .line 150
    :cond_7
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    :goto_4
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_9
    if-ne v6, v7, :cond_a

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_a
    :goto_5
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    goto :goto_2

    .line 164
    :cond_b
    iget-object p2, p2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    if-eqz p0, :cond_d

    .line 172
    .line 173
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 174
    .line 175
    if-eqz p2, :cond_d

    .line 176
    .line 177
    iget-object p2, p2, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_d
    move-object p2, v3

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_e
    :goto_6
    return-void
.end method

.method public final fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .locals 11

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 10
    .line 11
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->next:Landroidx/compose/ui/focus/FocusRequester;

    .line 12
    .line 13
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->previous:Landroidx/compose/ui/focus/FocusRequester;

    .line 14
    .line 15
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->up:Landroidx/compose/ui/focus/FocusRequester;

    .line 16
    .line 17
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->down:Landroidx/compose/ui/focus/FocusRequester;

    .line 18
    .line 19
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->left:Landroidx/compose/ui/focus/FocusRequester;

    .line 20
    .line 21
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->right:Landroidx/compose/ui/focus/FocusRequester;

    .line 22
    .line 23
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    .line 24
    .line 25
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    .line 26
    .line 27
    sget-object v2, Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;->INSTANCE$1:Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;

    .line 28
    .line 29
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onEnter:Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;

    .line 30
    .line 31
    sget-object v2, Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;->INSTANCE:Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;

    .line 32
    .line 33
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onExit:Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/ui/focus/FocusProperties$Companion;->UnsetFocusRect:Landroidx/compose/ui/geometry/Rect;

    .line 36
    .line 37
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->focusRect:Landroidx/compose/ui/geometry/Rect;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iget v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusability:I

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    if-ne v3, v1, :cond_0

    .line 44
    .line 45
    move v3, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    if-nez v3, :cond_2

    .line 48
    .line 49
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 50
    .line 51
    invoke-static {p0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/compose/ui/input/InputModeManager;

    .line 56
    .line 57
    check-cast v3, Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 58
    .line 59
    iget-object v3, v3, Landroidx/compose/ui/input/InputModeManagerImpl;->inputMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroidx/compose/ui/input/InputMode;

    .line 66
    .line 67
    iget v3, v3, Landroidx/compose/ui/input/InputMode;->value:I

    .line 68
    .line 69
    if-ne v3, v1, :cond_1

    .line 70
    .line 71
    move v3, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v3, v4

    .line 74
    :goto_0
    xor-int/2addr v3, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v5, 0x2

    .line 77
    if-ne v3, v5, :cond_10

    .line 78
    .line 79
    move v3, v4

    .line 80
    :goto_1
    iput-boolean v3, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 83
    .line 84
    iget-boolean v5, v3, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 85
    .line 86
    if-nez v5, :cond_3

    .line 87
    .line 88
    const-string/jumbo v5, "visitAncestors called on an unattached node"

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v5, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 95
    .line 96
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :goto_2
    if-eqz p0, :cond_f

    .line 101
    .line 102
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 103
    .line 104
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 105
    .line 106
    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 107
    .line 108
    and-int/lit16 v6, v6, 0xc00

    .line 109
    .line 110
    if-eqz v6, :cond_d

    .line 111
    .line 112
    :goto_3
    if-eqz v5, :cond_d

    .line 113
    .line 114
    iget v6, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 115
    .line 116
    and-int/lit16 v7, v6, 0xc00

    .line 117
    .line 118
    if-eqz v7, :cond_c

    .line 119
    .line 120
    if-eq v5, v3, :cond_4

    .line 121
    .line 122
    and-int/lit16 v7, v6, 0x400

    .line 123
    .line 124
    if-eqz v7, :cond_4

    .line 125
    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_4
    and-int/lit16 v6, v6, 0x800

    .line 129
    .line 130
    if-eqz v6, :cond_c

    .line 131
    .line 132
    move-object v7, v2

    .line 133
    move-object v6, v5

    .line 134
    :goto_4
    if-eqz v6, :cond_c

    .line 135
    .line 136
    instance-of v8, v6, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 137
    .line 138
    if-nez v8, :cond_b

    .line 139
    .line 140
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 141
    .line 142
    and-int/lit16 v8, v8, 0x800

    .line 143
    .line 144
    if-eqz v8, :cond_a

    .line 145
    .line 146
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 147
    .line 148
    if-eqz v8, :cond_a

    .line 149
    .line 150
    move-object v8, v6

    .line 151
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 152
    .line 153
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 154
    .line 155
    move v9, v4

    .line 156
    :goto_5
    if-eqz v8, :cond_9

    .line 157
    .line 158
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 159
    .line 160
    and-int/lit16 v10, v10, 0x800

    .line 161
    .line 162
    if-eqz v10, :cond_8

    .line 163
    .line 164
    add-int/lit8 v9, v9, 0x1

    .line 165
    .line 166
    if-ne v9, v1, :cond_5

    .line 167
    .line 168
    move-object v6, v8

    .line 169
    goto :goto_6

    .line 170
    :cond_5
    if-nez v7, :cond_6

    .line 171
    .line 172
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 173
    .line 174
    const/16 v10, 0x10

    .line 175
    .line 176
    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 177
    .line 178
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    if-eqz v6, :cond_7

    .line 182
    .line 183
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    move-object v6, v2

    .line 187
    :cond_7
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    :goto_6
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    if-ne v9, v1, :cond_a

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_a
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    goto :goto_4

    .line 201
    :cond_b
    check-cast v6, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 202
    .line 203
    iget-object p0, v6, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 204
    .line 205
    const-string v0, "applyFocusProperties called on wrong node"

    .line 206
    .line 207
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    throw v2

    .line 214
    :cond_c
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    if-eqz p0, :cond_e

    .line 222
    .line 223
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 224
    .line 225
    if-eqz v5, :cond_e

    .line 226
    .line 227
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_e
    move-object v5, v2

    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_f
    :goto_7
    return-object v0

    .line 235
    :cond_10
    const-string p0, "Unknown Focusability"

    .line 236
    .line 237
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-object v2
.end method

.method public final fetchFocusRect$ui(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->focusRect:Landroidx/compose/ui/geometry/Rect;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/ui/focus/FocusProperties$Companion;->UnsetFocusRect:Landroidx/compose/ui/geometry/Rect;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-wide p0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 46
    .line 47
    invoke-static {p0, p1}, Lokhttp3/Cookie$Companion;->toSize-ozmzZPI(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    invoke-static {v2, v3, p0, p1}, Landroidx/work/OperationKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public final getBeyondBoundsLayoutParent()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "visitAncestors called on an unattached node"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    if-eqz p0, :cond_d

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 29
    .line 30
    const v3, 0x800020

    .line 31
    .line 32
    .line 33
    and-int/2addr v2, v3

    .line 34
    if-eqz v2, :cond_b

    .line 35
    .line 36
    :goto_1
    if-eqz v0, :cond_b

    .line 37
    .line 38
    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 39
    .line 40
    and-int v4, v2, v3

    .line 41
    .line 42
    if-eqz v4, :cond_a

    .line 43
    .line 44
    const/high16 v4, 0x800000

    .line 45
    .line 46
    and-int/2addr v4, v2

    .line 47
    if-eqz v4, :cond_5

    .line 48
    .line 49
    instance-of p0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_1
    instance-of p0, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 59
    .line 60
    iget-object p0, v0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    :goto_2
    if-eqz p0, :cond_4

    .line 64
    .line 65
    instance-of v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    move-object v0, p0

    .line 70
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move-object v0, v1

    .line 74
    :cond_4
    :goto_3
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 75
    .line 76
    if-eqz v0, :cond_d

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    and-int/lit8 v2, v2, 0x20

    .line 80
    .line 81
    if-eqz v2, :cond_a

    .line 82
    .line 83
    instance-of v2, v0, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 84
    .line 85
    if-eqz v2, :cond_6

    .line 86
    .line 87
    move-object v4, v0

    .line 88
    goto :goto_5

    .line 89
    :cond_6
    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 90
    .line 91
    if-eqz v2, :cond_8

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 95
    .line 96
    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 97
    .line 98
    move-object v4, v1

    .line 99
    :goto_4
    if-eqz v2, :cond_9

    .line 100
    .line 101
    instance-of v5, v2, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 102
    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    move-object v4, v2

    .line 106
    :cond_7
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_8
    move-object v4, v1

    .line 110
    :cond_9
    :goto_5
    check-cast v4, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 111
    .line 112
    if-eqz v4, :cond_a

    .line 113
    .line 114
    invoke-interface {v4}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/EmptyMap;

    .line 115
    .line 116
    .line 117
    :cond_a
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-eqz p0, :cond_c

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 127
    .line 128
    if-eqz v0, :cond_c

    .line 129
    .line 130
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_c
    move-object v0, v1

    .line 134
    goto :goto_0

    .line 135
    :cond_d
    return-object v1
.end method

.method public final getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    if-ne p0, v0, :cond_2

    .line 28
    .line 29
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    iget-boolean v2, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 33
    .line 34
    if-eqz v2, :cond_e

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 37
    .line 38
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    const-string/jumbo v2, "visitAncestors called on an unattached node"

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v2, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 49
    .line 50
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 51
    .line 52
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    if-eqz v0, :cond_e

    .line 57
    .line 58
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 59
    .line 60
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 61
    .line 62
    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 63
    .line 64
    and-int/lit16 v3, v3, 0x400

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    if-eqz v3, :cond_c

    .line 68
    .line 69
    :goto_1
    if-eqz v2, :cond_c

    .line 70
    .line 71
    iget v3, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 72
    .line 73
    and-int/lit16 v3, v3, 0x400

    .line 74
    .line 75
    if-eqz v3, :cond_b

    .line 76
    .line 77
    move-object v3, v2

    .line 78
    move-object v5, v4

    .line 79
    :goto_2
    if-eqz v3, :cond_b

    .line 80
    .line 81
    instance-of v6, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 82
    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 86
    .line 87
    if-ne p0, v3, :cond_a

    .line 88
    .line 89
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_4
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 93
    .line 94
    and-int/lit16 v6, v6, 0x400

    .line 95
    .line 96
    if-eqz v6, :cond_a

    .line 97
    .line 98
    instance-of v6, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 99
    .line 100
    if-eqz v6, :cond_a

    .line 101
    .line 102
    move-object v6, v3

    .line 103
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 104
    .line 105
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    :goto_3
    const/4 v8, 0x1

    .line 109
    if-eqz v6, :cond_9

    .line 110
    .line 111
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 112
    .line 113
    and-int/lit16 v9, v9, 0x400

    .line 114
    .line 115
    if-eqz v9, :cond_8

    .line 116
    .line 117
    add-int/lit8 v7, v7, 0x1

    .line 118
    .line 119
    if-ne v7, v8, :cond_5

    .line 120
    .line 121
    move-object v3, v6

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    if-nez v5, :cond_6

    .line 124
    .line 125
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 126
    .line 127
    const/16 v8, 0x10

    .line 128
    .line 129
    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 130
    .line 131
    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    if-eqz v3, :cond_7

    .line 135
    .line 136
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    move-object v3, v4

    .line 140
    :cond_7
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_8
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    if-ne v7, v8, :cond_a

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_a
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    goto :goto_2

    .line 154
    :cond_b
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_d

    .line 162
    .line 163
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 164
    .line 165
    if-eqz v2, :cond_d

    .line 166
    .line 167
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_d
    move-object v2, v4

    .line 171
    goto :goto_0

    .line 172
    :cond_e
    return-object v1
.end method

.method public final synthetic getProvidedValues()Landroidx/compose/ui/modifier/EmptyMap;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final invalidateFocus$ui()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    if-ne v0, p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 31
    .line 32
    invoke-direct {v2, v0, p0}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v2}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 43
    .line 44
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 59
    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    invoke-virtual {p0, v0, v1, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void

    .line 66
    :cond_3
    const-string p0, "focusProperties"

    .line 67
    .line 68
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    throw p0
.end method

.method public final onDetach()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    if-ne v0, p0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lokio/Options$Companion;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 49
    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation$2()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onObservedReadsChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onRemeasured-ozmzZPI(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onReset()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v0, v1, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final requestFocus-3ESFkO8(I)Z
    .locals 1

    .line 1
    const-string v0, "FocusTransactions:requestFocus"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->assignFocus-3ESFkO8()Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    :try_start_1
    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode$requestFocus$1$1;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusTargetNode$requestFocus$1$1;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, v0}, Lokhttp3/Cookie$Companion;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 32
    .line 33
    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method
