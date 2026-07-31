.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/Function;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/16 v3, 0x12

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x4

    .line 11
    iget-boolean v6, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 12
    .line 13
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    iget-object v10, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/Function;

    .line 18
    .line 19
    iget-object v11, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v13, 0x1

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object v14, v12

    .line 28
    check-cast v14, Ljava/lang/String;

    .line 29
    .line 30
    check-cast v11, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 31
    .line 32
    check-cast v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 33
    .line 34
    move-object/from16 v0, p1

    .line 35
    .line 36
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 37
    .line 38
    move-object/from16 v1, p2

    .line 39
    .line 40
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 41
    .line 42
    move-object/from16 v2, p3

    .line 43
    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    and-int/lit8 v12, v2, 0x6

    .line 54
    .line 55
    if-nez v12, :cond_1

    .line 56
    .line 57
    move-object v12, v1

    .line 58
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 59
    .line 60
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    if-eqz v12, :cond_0

    .line 65
    .line 66
    move v4, v5

    .line 67
    :cond_0
    or-int/2addr v2, v4

    .line 68
    :cond_1
    and-int/lit8 v4, v2, 0x13

    .line 69
    .line 70
    if-eq v4, v3, :cond_2

    .line 71
    .line 72
    move v3, v13

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v3, v8

    .line 75
    :goto_0
    and-int/2addr v2, v13

    .line 76
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 92
    .line 93
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 94
    .line 95
    invoke-interface {v0, v4, v3}, Landroidx/compose/foundation/layout/RowScope;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_1
    const/high16 v4, 0x41a00000    # 20.0f

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-static {v3, v5, v4, v13}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 107
    .line 108
    const/16 v5, 0x30

    .line 109
    .line 110
    invoke-static {v4, v2, v1, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-wide v4, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 115
    .line 116
    const/16 v6, 0x20

    .line 117
    .line 118
    ushr-long v15, v4, v6

    .line 119
    .line 120
    xor-long/2addr v4, v15

    .line 121
    long-to-int v4, v4

    .line 122
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v1, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 138
    .line 139
    .line 140
    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 141
    .line 142
    if-eqz v12, :cond_4

    .line 143
    .line 144
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 149
    .line 150
    .line 151
    :goto_2
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 152
    .line 153
    invoke-static {v1, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    .line 155
    .line 156
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 157
    .line 158
    invoke-static {v1, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 171
    .line 172
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 173
    .line 174
    .line 175
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 176
    .line 177
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    if-eqz v11, :cond_5

    .line 181
    .line 182
    iget-wide v2, v11, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;->color:J

    .line 183
    .line 184
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 185
    .line 186
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    move-object v4, v9

    .line 191
    :goto_3
    if-eqz v4, :cond_6

    .line 192
    .line 193
    const v2, -0x40f0f975

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 197
    .line 198
    .line 199
    iget-wide v2, v4, Landroidx/compose/ui/graphics/Color;->value:J

    .line 200
    .line 201
    invoke-static {v8, v2, v3, v1, v9}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->AccountIndicatorIcon-3J-VO9M(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_6
    const v2, -0x40efdc29

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 215
    .line 216
    .line 217
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v10, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0}, Landroidx/compose/foundation/layout/RowScope;->align()Landroidx/compose/ui/Modifier;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    const v21, 0x36000

    .line 232
    .line 233
    .line 234
    const/16 v22, 0xc

    .line 235
    .line 236
    const-wide/16 v16, 0x0

    .line 237
    .line 238
    const/16 v18, 0x3

    .line 239
    .line 240
    const/16 v19, 0x1

    .line 241
    .line 242
    move-object/from16 v20, v1

    .line 243
    .line 244
    invoke-static/range {v14 .. v22}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_7
    move-object/from16 v20, v1

    .line 249
    .line 250
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 251
    .line 252
    .line 253
    :goto_5
    return-object v7

    .line 254
    :pswitch_0
    check-cast v12, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 255
    .line 256
    check-cast v11, Landroid/content/res/Resources;

    .line 257
    .line 258
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 259
    .line 260
    move-object/from16 v14, p1

    .line 261
    .line 262
    check-cast v14, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 263
    .line 264
    move-object/from16 v0, p2

    .line 265
    .line 266
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 267
    .line 268
    move-object/from16 v1, p3

    .line 269
    .line 270
    check-cast v1, Ljava/lang/Integer;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    and-int/lit8 v15, v1, 0x6

    .line 280
    .line 281
    if-nez v15, :cond_9

    .line 282
    .line 283
    move-object v15, v0

    .line 284
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 285
    .line 286
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v15

    .line 290
    if-eqz v15, :cond_8

    .line 291
    .line 292
    move v4, v5

    .line 293
    :cond_8
    or-int/2addr v1, v4

    .line 294
    :cond_9
    and-int/lit8 v4, v1, 0x13

    .line 295
    .line 296
    if-eq v4, v3, :cond_a

    .line 297
    .line 298
    move v8, v13

    .line 299
    :cond_a
    and-int/lit8 v3, v1, 0x1

    .line 300
    .line 301
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 302
    .line 303
    invoke-virtual {v0, v3, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_16

    .line 308
    .line 309
    if-eqz v6, :cond_b

    .line 310
    .line 311
    const v3, 0x7f120082

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_b
    const v3, 0x7f120085

    .line 316
    .line 317
    .line 318
    :goto_6
    invoke-static {v0, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    iget-object v3, v12, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    instance-of v4, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$CertificateError;

    .line 331
    .line 332
    if-nez v4, :cond_15

    .line 333
    .line 334
    instance-of v4, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$AuthenticationError;

    .line 335
    .line 336
    const v5, 0x7f120037

    .line 337
    .line 338
    .line 339
    if-eqz v4, :cond_c

    .line 340
    .line 341
    check-cast v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$AuthenticationError;

    .line 342
    .line 343
    iget-object v3, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$AuthenticationError;->serverMessage:Ljava/lang/String;

    .line 344
    .line 345
    const v4, 0x7f120079

    .line 346
    .line 347
    .line 348
    invoke-static {v11, v4, v5, v3}, Lorg/slf4j/helpers/Util;->buildErrorString(Landroid/content/res/Resources;IILjava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    :goto_7
    move-object/from16 v17, v3

    .line 353
    .line 354
    goto/16 :goto_8

    .line 355
    .line 356
    :cond_c
    instance-of v4, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$NetworkError;

    .line 357
    .line 358
    const v6, 0x7f12007c

    .line 359
    .line 360
    .line 361
    if-eqz v4, :cond_d

    .line 362
    .line 363
    check-cast v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$NetworkError;

    .line 364
    .line 365
    iget-object v3, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$NetworkError;->exception:Ljava/io/IOException;

    .line 366
    .line 367
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    const v4, 0x7f12007f

    .line 372
    .line 373
    .line 374
    invoke-static {v11, v4, v6, v3}, Lorg/slf4j/helpers/Util;->buildErrorString(Landroid/content/res/Resources;IILjava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    goto :goto_7

    .line 379
    :cond_d
    instance-of v4, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ServerError;

    .line 380
    .line 381
    if-eqz v4, :cond_e

    .line 382
    .line 383
    check-cast v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ServerError;

    .line 384
    .line 385
    iget-object v3, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ServerError;->serverMessage:Ljava/lang/String;

    .line 386
    .line 387
    const v4, 0x7f120080

    .line 388
    .line 389
    .line 390
    invoke-static {v11, v4, v5, v3}, Lorg/slf4j/helpers/Util;->buildErrorString(Landroid/content/res/Resources;IILjava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    goto :goto_7

    .line 395
    :cond_e
    instance-of v4, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;

    .line 396
    .line 397
    if-eqz v4, :cond_f

    .line 398
    .line 399
    check-cast v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;

    .line 400
    .line 401
    iget-object v3, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;->message:Ljava/lang/String;

    .line 402
    .line 403
    const v4, 0x7f120081

    .line 404
    .line 405
    .line 406
    invoke-static {v11, v4, v6, v3}, Lorg/slf4j/helpers/Util;->buildErrorString(Landroid/content/res/Resources;IILjava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    goto :goto_7

    .line 411
    :cond_f
    sget-object v4, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateExpired;->INSTANCE:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateExpired;

    .line 412
    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-eqz v4, :cond_10

    .line 418
    .line 419
    const v3, 0x7f12007a

    .line 420
    .line 421
    .line 422
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_10
    sget-object v4, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateRetrievalFailure;->INSTANCE:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateRetrievalFailure;

    .line 431
    .line 432
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_11

    .line 437
    .line 438
    const v3, 0x7f12007b

    .line 439
    .line 440
    .line 441
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_11
    instance-of v4, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$MissingServerCapabilityError;

    .line 450
    .line 451
    if-eqz v4, :cond_14

    .line 452
    .line 453
    check-cast v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$MissingServerCapabilityError;

    .line 454
    .line 455
    iget-object v3, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$MissingServerCapabilityError;->capabilityName:Ljava/lang/String;

    .line 456
    .line 457
    const v4, 0x7f12007d

    .line 458
    .line 459
    .line 460
    const v5, 0x7f12007e

    .line 461
    .line 462
    .line 463
    invoke-static {v11, v4, v5, v3}, Lorg/slf4j/helpers/Util;->buildErrorString(Landroid/content/res/Resources;IILjava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    goto :goto_7

    .line 468
    :goto_8
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    if-nez v3, :cond_12

    .line 477
    .line 478
    if-ne v4, v2, :cond_13

    .line 479
    .line 480
    :cond_12
    new-instance v4, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 481
    .line 482
    const/16 v2, 0x13

    .line 483
    .line 484
    invoke-direct {v4, v2, v10}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :cond_13
    move-object/from16 v18, v4

    .line 491
    .line 492
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 493
    .line 494
    and-int/lit8 v20, v1, 0xe

    .line 495
    .line 496
    const/16 v16, 0x0

    .line 497
    .line 498
    move-object/from16 v19, v0

    .line 499
    .line 500
    invoke-static/range {v14 .. v20}, Landroidx/room/util/RelationUtil;->ErrorItem(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 501
    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_14
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 505
    .line 506
    .line 507
    :goto_9
    move-object v7, v9

    .line 508
    goto :goto_a

    .line 509
    :cond_15
    const-string v0, "Handle CertificateError using ServerCertificateErrorScreen"

    .line 510
    .line 511
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    goto :goto_9

    .line 515
    :cond_16
    move-object/from16 v19, v0

    .line 516
    .line 517
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 518
    .line 519
    .line 520
    :goto_a
    return-object v7

    .line 521
    :pswitch_1
    move-object v1, v12

    .line 522
    check-cast v1, Lkotlinx/collections/immutable/ImmutableSet;

    .line 523
    .line 524
    check-cast v11, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 525
    .line 526
    move-object v3, v10

    .line 527
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 528
    .line 529
    move-object/from16 v4, p1

    .line 530
    .line 531
    check-cast v4, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 532
    .line 533
    move-object/from16 v5, p2

    .line 534
    .line 535
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 536
    .line 537
    move-object/from16 v6, p3

    .line 538
    .line 539
    check-cast v6, Ljava/lang/Integer;

    .line 540
    .line 541
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    and-int/lit8 v4, v6, 0x11

    .line 549
    .line 550
    const/16 v9, 0x10

    .line 551
    .line 552
    if-eq v4, v9, :cond_17

    .line 553
    .line 554
    move v8, v13

    .line 555
    :cond_17
    and-int/lit8 v4, v6, 0x1

    .line 556
    .line 557
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 558
    .line 559
    invoke-virtual {v5, v4, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-eqz v4, :cond_1a

    .line 564
    .line 565
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    if-nez v4, :cond_18

    .line 574
    .line 575
    if-ne v6, v2, :cond_19

    .line 576
    .line 577
    :cond_18
    new-instance v6, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda3;

    .line 578
    .line 579
    invoke-direct {v6, v11, v13}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;I)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    :cond_19
    move-object v2, v6

    .line 586
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 587
    .line 588
    const/4 v4, 0x0

    .line 589
    const/4 v6, 0x0

    .line 590
    iget-boolean v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 591
    .line 592
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->SecondarySortOptions(ZLkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 593
    .line 594
    .line 595
    goto :goto_b

    .line 596
    :cond_1a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 597
    .line 598
    .line 599
    :goto_b
    return-object v7

    .line 600
    nop

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
