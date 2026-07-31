.class public final synthetic Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 1
    const/16 p2, 0x8

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    const/16 v7, 0x20

    .line 14
    .line 15
    const/16 v8, 0x10

    .line 16
    .line 17
    const/16 v9, 0x12

    .line 18
    .line 19
    const/4 v10, 0x4

    .line 20
    const/4 v11, 0x2

    .line 21
    const/4 v12, 0x1

    .line 22
    const/4 v13, 0x0

    .line 23
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 26
    .line 27
    packed-switch v3, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 31
    .line 32
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 33
    .line 34
    move-object/from16 v3, p2

    .line 35
    .line 36
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 37
    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    and-int/lit8 v5, v2, 0x6

    .line 48
    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    move-object v5, v3

    .line 52
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v10, v11

    .line 62
    :goto_0
    or-int/2addr v2, v10

    .line 63
    :cond_1
    and-int/lit8 v5, v2, 0x13

    .line 64
    .line 65
    if-eq v5, v9, :cond_2

    .line 66
    .line 67
    move v5, v12

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v5, v13

    .line 70
    :goto_1
    and-int/2addr v2, v12

    .line 71
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 72
    .line 73
    invoke-virtual {v3, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 84
    .line 85
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->safeContentLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 90
    .line 91
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/high16 v2, 0x42000000    # 32.0f

    .line 107
    .line 108
    invoke-static {v1, v2, v4, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 113
    .line 114
    invoke-static {v2, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 119
    .line 120
    ushr-long v7, v4, v7

    .line 121
    .line 122
    xor-long/2addr v4, v7

    .line 123
    long-to-int v4, v4

    .line 124
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v3, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 138
    .line 139
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 140
    .line 141
    .line 142
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 143
    .line 144
    if-eqz v8, :cond_3

    .line 145
    .line 146
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 151
    .line 152
    .line 153
    :goto_2
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 154
    .line 155
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 159
    .line 160
    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 168
    .line 169
    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 173
    .line 174
    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 175
    .line 176
    .line 177
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 178
    .line 179
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 180
    .line 181
    .line 182
    iget-object v15, v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->error:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;

    .line 183
    .line 184
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 185
    .line 186
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 187
    .line 188
    invoke-virtual {v1, v6, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v16

    .line 192
    const/16 v21, 0x6000

    .line 193
    .line 194
    const/16 v22, 0xc

    .line 195
    .line 196
    const/16 v17, 0x0

    .line 197
    .line 198
    const/16 v18, 0x0

    .line 199
    .line 200
    sget-object v19, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthRedirectScreenKt;->lambda$571617464:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 201
    .line 202
    move-object/from16 v20, v3

    .line 203
    .line 204
    invoke-static/range {v15 .. v22}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 212
    .line 213
    .line 214
    :goto_3
    return-object v14

    .line 215
    :pswitch_0
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;

    .line 216
    .line 217
    check-cast v1, Ljava/lang/String;

    .line 218
    .line 219
    move-object/from16 v3, p2

    .line 220
    .line 221
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 222
    .line 223
    check-cast v2, Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    and-int/lit8 v1, v2, 0x11

    .line 233
    .line 234
    if-eq v1, v8, :cond_5

    .line 235
    .line 236
    move v13, v12

    .line 237
    :cond_5
    and-int/lit8 v1, v2, 0x1

    .line 238
    .line 239
    move-object v8, v3

    .line 240
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 241
    .line 242
    invoke-virtual {v8, v1, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    iget v4, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;->count:I

    .line 249
    .line 250
    iget-object v5, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;->color:Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;

    .line 251
    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v9, 0x0

    .line 254
    const/4 v6, 0x0

    .line 255
    invoke-static/range {v4 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageConversationCounterBadge(ILnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/Composer;I)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 260
    .line 261
    .line 262
    :goto_4
    return-object v14

    .line 263
    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 264
    .line 265
    check-cast v1, Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    .line 266
    .line 267
    move-object/from16 v3, p2

    .line 268
    .line 269
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 270
    .line 271
    check-cast v2, Ljava/lang/Integer;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    and-int/lit8 v4, v2, 0x6

    .line 281
    .line 282
    if-nez v4, :cond_8

    .line 283
    .line 284
    move-object v4, v3

    .line 285
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 286
    .line 287
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_7

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_7
    move v10, v11

    .line 295
    :goto_5
    or-int/2addr v2, v10

    .line 296
    :cond_8
    and-int/lit8 v4, v2, 0x13

    .line 297
    .line 298
    if-eq v4, v9, :cond_9

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_9
    move v12, v13

    .line 302
    :goto_6
    and-int/lit8 v4, v2, 0x1

    .line 303
    .line 304
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 305
    .line 306
    invoke-virtual {v3, v4, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_a

    .line 311
    .line 312
    and-int/lit8 v2, v2, 0xe

    .line 313
    .line 314
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-interface {v0, v1, v3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 323
    .line 324
    .line 325
    :goto_7
    return-object v14

    .line 326
    :pswitch_2
    check-cast v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 327
    .line 328
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 329
    .line 330
    move-object/from16 v1, p2

    .line 331
    .line 332
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 333
    .line 334
    move-object v1, v2

    .line 335
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    sget-object v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    return-object v14

    .line 346
    :pswitch_3
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;

    .line 347
    .line 348
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 349
    .line 350
    move-object/from16 v3, p2

    .line 351
    .line 352
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 353
    .line 354
    check-cast v2, Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    and-int/lit8 v1, v2, 0x11

    .line 364
    .line 365
    if-eq v1, v8, :cond_b

    .line 366
    .line 367
    move v1, v12

    .line 368
    goto :goto_8

    .line 369
    :cond_b
    move v1, v13

    .line 370
    :goto_8
    and-int/2addr v2, v12

    .line 371
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 372
    .line 373
    invoke-virtual {v3, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_13

    .line 378
    .line 379
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 380
    .line 381
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    const/high16 v1, 0x41800000    # 16.0f

    .line 391
    .line 392
    invoke-static {v6, v1, v4, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 397
    .line 398
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 399
    .line 400
    invoke-static {v2, v4, v3, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 405
    .line 406
    ushr-long v7, v4, v7

    .line 407
    .line 408
    xor-long/2addr v4, v7

    .line 409
    long-to-int v4, v4

    .line 410
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-static {v3, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 419
    .line 420
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 424
    .line 425
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 426
    .line 427
    .line 428
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 429
    .line 430
    if-eqz v8, :cond_c

    .line 431
    .line 432
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_c
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 437
    .line 438
    .line 439
    :goto_9
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 440
    .line 441
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 442
    .line 443
    .line 444
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 445
    .line 446
    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 447
    .line 448
    .line 449
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 454
    .line 455
    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 456
    .line 457
    .line 458
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 459
    .line 460
    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 461
    .line 462
    .line 463
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 464
    .line 465
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 466
    .line 467
    .line 468
    const v1, -0x4f7bd957

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 472
    .line 473
    .line 474
    iget-object v0, v0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;->changes:Ljava/util/LinkedHashMap;

    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    const/high16 v2, 0x41000000    # 8.0f

    .line 489
    .line 490
    if-eqz v1, :cond_12

    .line 491
    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    move-object v15, v1

    .line 497
    check-cast v15, Ljava/util/Map$Entry;

    .line 498
    .line 499
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Ljava/lang/String;

    .line 504
    .line 505
    const-string v4, "NEW"

    .line 506
    .line 507
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v5

    .line 511
    const-string v7, "FIXED"

    .line 512
    .line 513
    if-eqz v5, :cond_d

    .line 514
    .line 515
    const v1, -0x6631378f

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 519
    .line 520
    .line 521
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 522
    .line 523
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 528
    .line 529
    iget-wide v8, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSuccessContainer:J

    .line 530
    .line 531
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 532
    .line 533
    .line 534
    :goto_b
    move-wide/from16 v16, v8

    .line 535
    .line 536
    goto :goto_c

    .line 537
    :cond_d
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    if-eqz v1, :cond_e

    .line 542
    .line 543
    const v1, -0x66312c6f

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 547
    .line 548
    .line 549
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 550
    .line 551
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 556
    .line 557
    iget-wide v8, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onWarningContainer:J

    .line 558
    .line 559
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 560
    .line 561
    .line 562
    goto :goto_b

    .line 563
    :cond_e
    const v1, -0x66312372

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 567
    .line 568
    .line 569
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 570
    .line 571
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 576
    .line 577
    iget-wide v8, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onInfoContainer:J

    .line 578
    .line 579
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 580
    .line 581
    .line 582
    goto :goto_b

    .line 583
    :goto_c
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    check-cast v1, Ljava/lang/String;

    .line 588
    .line 589
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    if-eqz v4, :cond_f

    .line 594
    .line 595
    const v1, -0x66310cd1

    .line 596
    .line 597
    .line 598
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 599
    .line 600
    .line 601
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 602
    .line 603
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 608
    .line 609
    iget-wide v4, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->successContainer:J

    .line 610
    .line 611
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 612
    .line 613
    .line 614
    :goto_d
    move-wide/from16 v18, v4

    .line 615
    .line 616
    goto :goto_e

    .line 617
    :cond_f
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    if-eqz v1, :cond_10

    .line 622
    .line 623
    const v1, -0x663101f1

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 627
    .line 628
    .line 629
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 630
    .line 631
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 636
    .line 637
    iget-wide v4, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->warningContainer:J

    .line 638
    .line 639
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 640
    .line 641
    .line 642
    goto :goto_d

    .line 643
    :cond_10
    const v1, -0x6630f934

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 647
    .line 648
    .line 649
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 650
    .line 651
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 656
    .line 657
    iget-wide v4, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->infoContainer:J

    .line 658
    .line 659
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 660
    .line 661
    .line 662
    goto :goto_d

    .line 663
    :goto_e
    const/16 v20, 0x0

    .line 664
    .line 665
    const/16 v22, 0x0

    .line 666
    .line 667
    move-object/from16 v21, v3

    .line 668
    .line 669
    invoke-static/range {v15 .. v22}, Lorg/jsoup/Jsoup;->ChangeGroupHeader-eopBjH0(Ljava/util/Map$Entry;JJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 670
    .line 671
    .line 672
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 673
    .line 674
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 679
    .line 680
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    const/high16 v1, 0x40800000    # 4.0f

    .line 684
    .line 685
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 690
    .line 691
    .line 692
    const v1, -0x4f7b67d1

    .line 693
    .line 694
    .line 695
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 696
    .line 697
    .line 698
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    check-cast v1, Ljava/lang/Iterable;

    .line 703
    .line 704
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    if-eqz v4, :cond_11

    .line 713
    .line 714
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    move-object/from16 v20, v4

    .line 719
    .line 720
    check-cast v20, Ljava/lang/String;

    .line 721
    .line 722
    const/16 v19, 0x0

    .line 723
    .line 724
    const/4 v15, 0x0

    .line 725
    move-object/from16 v18, v3

    .line 726
    .line 727
    invoke-static/range {v15 .. v20}, Lorg/jsoup/Jsoup;->Change-3IgeMak(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 731
    .line 732
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 737
    .line 738
    invoke-static {v4, v6, v2, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 739
    .line 740
    .line 741
    goto :goto_f

    .line 742
    :cond_11
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 743
    .line 744
    .line 745
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 746
    .line 747
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 752
    .line 753
    invoke-static {v1, v6, v2, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 754
    .line 755
    .line 756
    goto/16 :goto_a

    .line 757
    .line 758
    :cond_12
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 759
    .line 760
    .line 761
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 762
    .line 763
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 768
    .line 769
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    invoke-static {v6, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 780
    .line 781
    .line 782
    goto :goto_10

    .line 783
    :cond_13
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 784
    .line 785
    .line 786
    :goto_10
    return-object v14

    .line 787
    :pswitch_4
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 788
    .line 789
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 790
    .line 791
    move-object/from16 v3, p2

    .line 792
    .line 793
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 794
    .line 795
    check-cast v2, Ljava/lang/Integer;

    .line 796
    .line 797
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 798
    .line 799
    .line 800
    move-result v2

    .line 801
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    and-int/lit8 v1, v2, 0x11

    .line 805
    .line 806
    if-eq v1, v8, :cond_14

    .line 807
    .line 808
    move v13, v12

    .line 809
    :cond_14
    and-int/lit8 v1, v2, 0x1

    .line 810
    .line 811
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 812
    .line 813
    invoke-virtual {v3, v1, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    if-eqz v1, :cond_15

    .line 818
    .line 819
    iget-object v1, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->title:Lkotlin/jvm/functions/Function0;

    .line 820
    .line 821
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    move-object v15, v1

    .line 826
    check-cast v15, Ljava/lang/String;

    .line 827
    .line 828
    const/16 v23, 0x0

    .line 829
    .line 830
    const/16 v24, 0x3e

    .line 831
    .line 832
    const/16 v16, 0x0

    .line 833
    .line 834
    const-wide/16 v17, 0x0

    .line 835
    .line 836
    const/16 v19, 0x0

    .line 837
    .line 838
    const/16 v20, 0x0

    .line 839
    .line 840
    const/16 v21, 0x0

    .line 841
    .line 842
    move-object/from16 v22, v3

    .line 843
    .line 844
    invoke-static/range {v15 .. v24}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 845
    .line 846
    .line 847
    iget-object v15, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->value:Ljava/lang/String;

    .line 848
    .line 849
    const/16 v24, 0x7e

    .line 850
    .line 851
    const/16 v19, 0x0

    .line 852
    .line 853
    const/16 v21, 0x0

    .line 854
    .line 855
    invoke-static/range {v15 .. v24}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 856
    .line 857
    .line 858
    goto :goto_11

    .line 859
    :cond_15
    move-object/from16 v22, v3

    .line 860
    .line 861
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 862
    .line 863
    .line 864
    :goto_11
    return-object v14

    .line 865
    :pswitch_5
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 866
    .line 867
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 868
    .line 869
    move-object/from16 v3, p2

    .line 870
    .line 871
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 872
    .line 873
    check-cast v2, Ljava/lang/Integer;

    .line 874
    .line 875
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    and-int/lit8 v1, v2, 0x11

    .line 883
    .line 884
    if-eq v1, v8, :cond_16

    .line 885
    .line 886
    move v1, v12

    .line 887
    goto :goto_12

    .line 888
    :cond_16
    move v1, v13

    .line 889
    :goto_12
    and-int/2addr v2, v12

    .line 890
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 891
    .line 892
    invoke-virtual {v3, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    if-eqz v1, :cond_1b

    .line 897
    .line 898
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 899
    .line 900
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 901
    .line 902
    const/16 v4, 0x30

    .line 903
    .line 904
    invoke-static {v2, v1, v3, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 909
    .line 910
    ushr-long v8, v4, v7

    .line 911
    .line 912
    xor-long/2addr v4, v8

    .line 913
    long-to-int v2, v4

    .line 914
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    invoke-static {v3, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 919
    .line 920
    .line 921
    move-result-object v5

    .line 922
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 923
    .line 924
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 928
    .line 929
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 930
    .line 931
    .line 932
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 933
    .line 934
    if-eqz v8, :cond_17

    .line 935
    .line 936
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 937
    .line 938
    .line 939
    goto :goto_13

    .line 940
    :cond_17
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 941
    .line 942
    .line 943
    :goto_13
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 944
    .line 945
    invoke-static {v3, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 946
    .line 947
    .line 948
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 949
    .line 950
    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 951
    .line 952
    .line 953
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 958
    .line 959
    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 960
    .line 961
    .line 962
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 963
    .line 964
    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 965
    .line 966
    .line 967
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 968
    .line 969
    invoke-static {v3, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 970
    .line 971
    .line 972
    new-instance v5, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 973
    .line 974
    const/high16 v10, 0x3f800000    # 1.0f

    .line 975
    .line 976
    invoke-direct {v5, v10, v12}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 977
    .line 978
    .line 979
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 980
    .line 981
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 982
    .line 983
    invoke-static {v10, v11, v3, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 984
    .line 985
    .line 986
    move-result-object v10

    .line 987
    iget-wide v12, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 988
    .line 989
    ushr-long v15, v12, v7

    .line 990
    .line 991
    xor-long/2addr v12, v15

    .line 992
    long-to-int v7, v12

    .line 993
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 994
    .line 995
    .line 996
    move-result-object v11

    .line 997
    invoke-static {v3, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 998
    .line 999
    .line 1000
    move-result-object v5

    .line 1001
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1002
    .line 1003
    .line 1004
    iget-boolean v12, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1005
    .line 1006
    if-eqz v12, :cond_18

    .line 1007
    .line 1008
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1009
    .line 1010
    .line 1011
    goto :goto_14

    .line 1012
    :cond_18
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1013
    .line 1014
    .line 1015
    :goto_14
    invoke-static {v3, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v3, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-static {v7, v3, v4, v3, v2}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-static {v3, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1025
    .line 1026
    .line 1027
    iget-boolean v1, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->displayValueAsSecondaryText:Z

    .line 1028
    .line 1029
    iget-object v2, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1030
    .line 1031
    if-eqz v1, :cond_19

    .line 1032
    .line 1033
    const v1, -0x765b499

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1037
    .line 1038
    .line 1039
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

    .line 1040
    .line 1041
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    move-object v15, v0

    .line 1046
    check-cast v15, Ljava/lang/String;

    .line 1047
    .line 1048
    const/16 v23, 0x0

    .line 1049
    .line 1050
    const/16 v24, 0x3e

    .line 1051
    .line 1052
    const/16 v16, 0x0

    .line 1053
    .line 1054
    const-wide/16 v17, 0x0

    .line 1055
    .line 1056
    const/16 v19, 0x0

    .line 1057
    .line 1058
    const/16 v20, 0x0

    .line 1059
    .line 1060
    const/16 v21, 0x0

    .line 1061
    .line 1062
    move-object/from16 v22, v3

    .line 1063
    .line 1064
    invoke-static/range {v15 .. v24}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v0, v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->title:Lkotlin/jvm/functions/Function0;

    .line 1068
    .line 1069
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    move-object v15, v0

    .line 1074
    check-cast v15, Ljava/lang/String;

    .line 1075
    .line 1076
    const/16 v24, 0x7e

    .line 1077
    .line 1078
    const/16 v19, 0x0

    .line 1079
    .line 1080
    const/16 v21, 0x0

    .line 1081
    .line 1082
    invoke-static/range {v15 .. v24}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 1083
    .line 1084
    .line 1085
    const/4 v0, 0x0

    .line 1086
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1087
    .line 1088
    .line 1089
    :goto_15
    const/4 v0, 0x1

    .line 1090
    goto :goto_17

    .line 1091
    :cond_19
    const v1, -0x76367d7

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1095
    .line 1096
    .line 1097
    iget-object v1, v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->title:Lkotlin/jvm/functions/Function0;

    .line 1098
    .line 1099
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    move-object v15, v1

    .line 1104
    check-cast v15, Ljava/lang/String;

    .line 1105
    .line 1106
    const/16 v23, 0x0

    .line 1107
    .line 1108
    const/16 v24, 0x3e

    .line 1109
    .line 1110
    const/16 v16, 0x0

    .line 1111
    .line 1112
    const-wide/16 v17, 0x0

    .line 1113
    .line 1114
    const/16 v19, 0x0

    .line 1115
    .line 1116
    const/16 v20, 0x0

    .line 1117
    .line 1118
    const/16 v21, 0x0

    .line 1119
    .line 1120
    move-object/from16 v22, v3

    .line 1121
    .line 1122
    invoke-static/range {v15 .. v24}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 1123
    .line 1124
    .line 1125
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

    .line 1126
    .line 1127
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    move-object v15, v0

    .line 1132
    check-cast v15, Ljava/lang/String;

    .line 1133
    .line 1134
    if-nez v15, :cond_1a

    .line 1135
    .line 1136
    const v0, -0x761c957

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1140
    .line 1141
    .line 1142
    const/4 v0, 0x0

    .line 1143
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_16

    .line 1147
    :cond_1a
    const v0, -0x761c956

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1151
    .line 1152
    .line 1153
    const/16 v23, 0x0

    .line 1154
    .line 1155
    const/16 v24, 0x7e

    .line 1156
    .line 1157
    const/16 v16, 0x0

    .line 1158
    .line 1159
    const-wide/16 v17, 0x0

    .line 1160
    .line 1161
    const/16 v19, 0x0

    .line 1162
    .line 1163
    const/16 v20, 0x0

    .line 1164
    .line 1165
    const/16 v21, 0x0

    .line 1166
    .line 1167
    move-object/from16 v22, v3

    .line 1168
    .line 1169
    invoke-static/range {v15 .. v24}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 1170
    .line 1171
    .line 1172
    const/4 v0, 0x0

    .line 1173
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1174
    .line 1175
    .line 1176
    :goto_16
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_15

    .line 1180
    :goto_17
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_18

    .line 1187
    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1188
    .line 1189
    .line 1190
    :goto_18
    return-object v14

    .line 1191
    :pswitch_6
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;

    .line 1192
    .line 1193
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1194
    .line 1195
    move-object/from16 v3, p2

    .line 1196
    .line 1197
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 1198
    .line 1199
    check-cast v2, Ljava/lang/Integer;

    .line 1200
    .line 1201
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1206
    .line 1207
    .line 1208
    and-int/lit8 v1, v2, 0x11

    .line 1209
    .line 1210
    if-eq v1, v8, :cond_1c

    .line 1211
    .line 1212
    const/4 v13, 0x1

    .line 1213
    :goto_19
    const/16 v25, 0x1

    .line 1214
    .line 1215
    goto :goto_1a

    .line 1216
    :cond_1c
    const/4 v13, 0x0

    .line 1217
    goto :goto_19

    .line 1218
    :goto_1a
    and-int/lit8 v1, v2, 0x1

    .line 1219
    .line 1220
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1221
    .line 1222
    invoke-virtual {v3, v1, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v1

    .line 1226
    if-eqz v1, :cond_1d

    .line 1227
    .line 1228
    iget-object v1, v0, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;->title:Lkotlin/jvm/functions/Function0;

    .line 1229
    .line 1230
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v1

    .line 1234
    move-object v15, v1

    .line 1235
    check-cast v15, Ljava/lang/String;

    .line 1236
    .line 1237
    const/16 v23, 0x0

    .line 1238
    .line 1239
    const/16 v24, 0x3e

    .line 1240
    .line 1241
    const/16 v16, 0x0

    .line 1242
    .line 1243
    const-wide/16 v17, 0x0

    .line 1244
    .line 1245
    const/16 v19, 0x0

    .line 1246
    .line 1247
    const/16 v20, 0x0

    .line 1248
    .line 1249
    const/16 v21, 0x0

    .line 1250
    .line 1251
    move-object/from16 v22, v3

    .line 1252
    .line 1253
    invoke-static/range {v15 .. v24}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 1254
    .line 1255
    .line 1256
    iget-object v15, v0, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;->value:Ljava/lang/String;

    .line 1257
    .line 1258
    const/16 v24, 0x7e

    .line 1259
    .line 1260
    const/16 v19, 0x0

    .line 1261
    .line 1262
    const/16 v21, 0x0

    .line 1263
    .line 1264
    invoke-static/range {v15 .. v24}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 1265
    .line 1266
    .line 1267
    goto :goto_1b

    .line 1268
    :cond_1d
    move-object/from16 v22, v3

    .line 1269
    .line 1270
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1271
    .line 1272
    .line 1273
    :goto_1b
    return-object v14

    .line 1274
    :pswitch_7
    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    .line 1275
    .line 1276
    check-cast v1, Ljava/lang/Throwable;

    .line 1277
    .line 1278
    move-object/from16 v1, p2

    .line 1279
    .line 1280
    check-cast v1, Lkotlin/Unit;

    .line 1281
    .line 1282
    move-object v1, v2

    .line 1283
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 1284
    .line 1285
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    .line 1286
    .line 1287
    .line 1288
    return-object v14

    .line 1289
    :pswitch_8
    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 1290
    .line 1291
    check-cast v1, Ljava/lang/Throwable;

    .line 1292
    .line 1293
    move-object/from16 v1, p2

    .line 1294
    .line 1295
    check-cast v1, Lkotlin/Unit;

    .line 1296
    .line 1297
    move-object v1, v2

    .line 1298
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 1299
    .line 1300
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->owner$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1301
    .line 1302
    invoke-virtual {v1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 1306
    .line 1307
    .line 1308
    return-object v14

    .line 1309
    :pswitch_9
    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1310
    .line 1311
    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 1312
    .line 1313
    new-instance v3, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 1314
    .line 1315
    const/16 v4, 0x9

    .line 1316
    .line 1317
    invoke-direct {v3, v2, v0, v1, v4}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1318
    .line 1319
    .line 1320
    return-object v3

    .line 1321
    :pswitch_a
    check-cast v0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 1322
    .line 1323
    check-cast v1, Ljava/lang/Throwable;

    .line 1324
    .line 1325
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 1326
    .line 1327
    invoke-virtual {v0, v1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    return-object v14

    .line 1331
    :pswitch_b
    move-object v3, v0

    .line 1332
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 1333
    .line 1334
    move-object v0, v1

    .line 1335
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1336
    .line 1337
    move-object/from16 v1, p2

    .line 1338
    .line 1339
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1340
    .line 1341
    check-cast v2, Ljava/lang/Integer;

    .line 1342
    .line 1343
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1348
    .line 1349
    .line 1350
    and-int/lit8 v4, v2, 0x6

    .line 1351
    .line 1352
    if-nez v4, :cond_1f

    .line 1353
    .line 1354
    move-object v4, v1

    .line 1355
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1356
    .line 1357
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v4

    .line 1361
    if-eqz v4, :cond_1e

    .line 1362
    .line 1363
    goto :goto_1c

    .line 1364
    :cond_1e
    move v10, v11

    .line 1365
    :goto_1c
    or-int/2addr v2, v10

    .line 1366
    :cond_1f
    and-int/lit8 v4, v2, 0x13

    .line 1367
    .line 1368
    if-eq v4, v9, :cond_20

    .line 1369
    .line 1370
    const/4 v13, 0x1

    .line 1371
    :goto_1d
    const/16 v25, 0x1

    .line 1372
    .line 1373
    goto :goto_1e

    .line 1374
    :cond_20
    const/4 v13, 0x0

    .line 1375
    goto :goto_1d

    .line 1376
    :goto_1e
    and-int/lit8 v2, v2, 0x1

    .line 1377
    .line 1378
    move-object v9, v1

    .line 1379
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 1380
    .line 1381
    invoke-virtual {v9, v2, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v1

    .line 1385
    if-eqz v1, :cond_21

    .line 1386
    .line 1387
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 1388
    .line 1389
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v6

    .line 1393
    sget-object v8, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt;->lambda$-1334789093:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1394
    .line 1395
    const v10, 0x301b0

    .line 1396
    .line 1397
    .line 1398
    sget-object v4, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt;->lambda$1341403986:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1399
    .line 1400
    sget-object v5, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt;->lambda$-2242367:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1401
    .line 1402
    const/4 v7, 0x0

    .line 1403
    invoke-static/range {v3 .. v10}, Lcom/fsck/k9/sasl/OAuthBearer;->ContentLoadingErrorView(Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1404
    .line 1405
    .line 1406
    goto :goto_1f

    .line 1407
    :cond_21
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1408
    .line 1409
    .line 1410
    :goto_1f
    return-object v14

    .line 1411
    :pswitch_c
    check-cast v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 1412
    .line 1413
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1414
    .line 1415
    move-object/from16 v3, p2

    .line 1416
    .line 1417
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 1418
    .line 1419
    check-cast v2, Ljava/lang/Integer;

    .line 1420
    .line 1421
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1422
    .line 1423
    .line 1424
    move-result v2

    .line 1425
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1426
    .line 1427
    .line 1428
    and-int/lit8 v4, v2, 0x6

    .line 1429
    .line 1430
    if-nez v4, :cond_23

    .line 1431
    .line 1432
    move-object v4, v3

    .line 1433
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1434
    .line 1435
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v4

    .line 1439
    if-eqz v4, :cond_22

    .line 1440
    .line 1441
    goto :goto_20

    .line 1442
    :cond_22
    move v10, v11

    .line 1443
    :goto_20
    or-int/2addr v2, v10

    .line 1444
    :cond_23
    and-int/lit8 v4, v2, 0x13

    .line 1445
    .line 1446
    if-eq v4, v9, :cond_24

    .line 1447
    .line 1448
    const/4 v13, 0x1

    .line 1449
    :goto_21
    const/16 v25, 0x1

    .line 1450
    .line 1451
    goto :goto_22

    .line 1452
    :cond_24
    const/4 v13, 0x0

    .line 1453
    goto :goto_21

    .line 1454
    :goto_22
    and-int/lit8 v2, v2, 0x1

    .line 1455
    .line 1456
    move-object v6, v3

    .line 1457
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 1458
    .line 1459
    invoke-virtual {v6, v2, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v2

    .line 1463
    if-eqz v2, :cond_25

    .line 1464
    .line 1465
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 1466
    .line 1467
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v3

    .line 1471
    sget-object v5, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->lambda$1143731368:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1472
    .line 1473
    const v7, 0x301b8

    .line 1474
    .line 1475
    .line 1476
    sget-object v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->lambda$-933224993:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1477
    .line 1478
    sget-object v2, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->lambda$1868006988:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1479
    .line 1480
    const/4 v4, 0x0

    .line 1481
    invoke-static/range {v0 .. v7}, Lcom/fsck/k9/sasl/OAuthBearer;->ContentLoadingErrorView(Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1482
    .line 1483
    .line 1484
    goto :goto_23

    .line 1485
    :cond_25
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1486
    .line 1487
    .line 1488
    :goto_23
    return-object v14

    .line 1489
    :pswitch_d
    check-cast v0, Lokhttp3/Dispatcher;

    .line 1490
    .line 1491
    check-cast v1, Ljava/lang/Integer;

    .line 1492
    .line 1493
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1494
    .line 1495
    .line 1496
    move-result v1

    .line 1497
    move-object/from16 v3, p2

    .line 1498
    .line 1499
    check-cast v3, Ljava/lang/String;

    .line 1500
    .line 1501
    check-cast v2, Landroidx/navigation/NavType;

    .line 1502
    .line 1503
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1507
    .line 1508
    .line 1509
    instance-of v2, v2, Landroidx/navigation/CollectionNavType;

    .line 1510
    .line 1511
    if-nez v2, :cond_27

    .line 1512
    .line 1513
    iget-object v2, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1514
    .line 1515
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 1516
    .line 1517
    invoke-interface {v2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v2

    .line 1521
    invoke-interface {v2, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    .line 1522
    .line 1523
    .line 1524
    move-result v1

    .line 1525
    if-eqz v1, :cond_26

    .line 1526
    .line 1527
    goto :goto_24

    .line 1528
    :cond_26
    sget-object v1, Landroidx/navigation/serialization/RouteBuilder$ParamType;->PATH:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    .line 1529
    .line 1530
    goto :goto_25

    .line 1531
    :cond_27
    :goto_24
    sget-object v1, Landroidx/navigation/serialization/RouteBuilder$ParamType;->QUERY:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    .line 1532
    .line 1533
    :goto_25
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1534
    .line 1535
    .line 1536
    move-result v1

    .line 1537
    const/16 v2, 0x7d

    .line 1538
    .line 1539
    const-string/jumbo v4, "{"

    .line 1540
    .line 1541
    .line 1542
    if-eqz v1, :cond_29

    .line 1543
    .line 1544
    const/4 v6, 0x1

    .line 1545
    if-ne v1, v6, :cond_28

    .line 1546
    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1548
    .line 1549
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v1

    .line 1562
    invoke-virtual {v0, v3, v1}, Lokhttp3/Dispatcher;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    .line 1564
    .line 1565
    goto :goto_26

    .line 1566
    :cond_28
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1567
    .line 1568
    .line 1569
    goto :goto_27

    .line 1570
    :cond_29
    invoke-static {v2, v4, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v1

    .line 1574
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1577
    .line 1578
    .line 1579
    iget-object v3, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1580
    .line 1581
    check-cast v3, Ljava/lang/String;

    .line 1582
    .line 1583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    const/16 v3, 0x2f

    .line 1587
    .line 1588
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v1

    .line 1598
    iput-object v1, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1599
    .line 1600
    :goto_26
    move-object v5, v14

    .line 1601
    :goto_27
    return-object v5

    .line 1602
    :pswitch_e
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1603
    .line 1604
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1605
    .line 1606
    move-object/from16 v3, p2

    .line 1607
    .line 1608
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 1609
    .line 1610
    check-cast v2, Ljava/lang/Integer;

    .line 1611
    .line 1612
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1613
    .line 1614
    .line 1615
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1616
    .line 1617
    const v2, 0x760d4197

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1621
    .line 1622
    .line 1623
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1624
    .line 1625
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v2

    .line 1629
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 1630
    .line 1631
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v4

    .line 1635
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1636
    .line 1637
    if-ne v4, v5, :cond_2a

    .line 1638
    .line 1639
    new-instance v4, Landroidx/compose/ui/unit/IntSize;

    .line 1640
    .line 1641
    const-wide/16 v6, 0x0

    .line 1642
    .line 1643
    invoke-direct {v4, v6, v7}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 1644
    .line 1645
    .line 1646
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v4

    .line 1650
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1651
    .line 1652
    .line 1653
    :cond_2a
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 1654
    .line 1655
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v6

    .line 1659
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v7

    .line 1663
    if-nez v6, :cond_2b

    .line 1664
    .line 1665
    if-ne v7, v5, :cond_2c

    .line 1666
    .line 1667
    :cond_2b
    new-instance v7, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 1668
    .line 1669
    const/16 v6, 0x15

    .line 1670
    .line 1671
    invoke-direct {v7, v6, v0, v4}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1675
    .line 1676
    .line 1677
    :cond_2c
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1678
    .line 1679
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1680
    .line 1681
    .line 1682
    move-result v0

    .line 1683
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v6

    .line 1687
    if-nez v0, :cond_2e

    .line 1688
    .line 1689
    if-ne v6, v5, :cond_2d

    .line 1690
    .line 1691
    goto :goto_28

    .line 1692
    :cond_2d
    const/4 v0, 0x0

    .line 1693
    goto :goto_29

    .line 1694
    :cond_2e
    :goto_28
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;

    .line 1695
    .line 1696
    const/4 v0, 0x0

    .line 1697
    invoke-direct {v6, v2, v4, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1701
    .line 1702
    .line 1703
    :goto_29
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1704
    .line 1705
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    .line 1706
    .line 1707
    new-instance v2, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 1708
    .line 1709
    const/4 v4, 0x3

    .line 1710
    invoke-direct {v2, v4, v7, v6}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 1711
    .line 1712
    .line 1713
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v1

    .line 1717
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1718
    .line 1719
    .line 1720
    return-object v1

    .line 1721
    :pswitch_f
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    .line 1722
    .line 1723
    check-cast v1, Ljava/lang/Integer;

    .line 1724
    .line 1725
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1726
    .line 1727
    .line 1728
    move-result v1

    .line 1729
    move-object/from16 v3, p2

    .line 1730
    .line 1731
    check-cast v3, Ljava/lang/Integer;

    .line 1732
    .line 1733
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1734
    .line 1735
    .line 1736
    move-result v3

    .line 1737
    check-cast v2, Ljava/lang/Boolean;

    .line 1738
    .line 1739
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1740
    .line 1741
    .line 1742
    move-result v2

    .line 1743
    if-eqz v2, :cond_2f

    .line 1744
    .line 1745
    goto :goto_2a

    .line 1746
    :cond_2f
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1747
    .line 1748
    invoke-interface {v4, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 1749
    .line 1750
    .line 1751
    move-result v1

    .line 1752
    :goto_2a
    if-eqz v2, :cond_30

    .line 1753
    .line 1754
    goto :goto_2b

    .line 1755
    :cond_30
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1756
    .line 1757
    invoke-interface {v4, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 1758
    .line 1759
    .line 1760
    move-result v3

    .line 1761
    :goto_2b
    iget-boolean v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->enabled:Z

    .line 1762
    .line 1763
    if-nez v4, :cond_31

    .line 1764
    .line 1765
    goto :goto_2c

    .line 1766
    :cond_31
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1767
    .line 1768
    iget-wide v8, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1769
    .line 1770
    sget v4, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 1771
    .line 1772
    shr-long v6, v8, v7

    .line 1773
    .line 1774
    long-to-int v4, v6

    .line 1775
    if-ne v1, v4, :cond_32

    .line 1776
    .line 1777
    const-wide v6, 0xffffffffL

    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    and-long/2addr v6, v8

    .line 1783
    long-to-int v4, v6

    .line 1784
    if-ne v3, v4, :cond_32

    .line 1785
    .line 1786
    :goto_2c
    const/4 v12, 0x0

    .line 1787
    goto :goto_2f

    .line 1788
    :cond_32
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 1789
    .line 1790
    .line 1791
    move-result v4

    .line 1792
    sget-object v6, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 1793
    .line 1794
    if-ltz v4, :cond_35

    .line 1795
    .line 1796
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 1797
    .line 1798
    .line 1799
    move-result v4

    .line 1800
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1801
    .line 1802
    iget-object v7, v7, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1803
    .line 1804
    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1805
    .line 1806
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1807
    .line 1808
    .line 1809
    move-result v7

    .line 1810
    if-gt v4, v7, :cond_35

    .line 1811
    .line 1812
    if-nez v2, :cond_34

    .line 1813
    .line 1814
    if-ne v1, v3, :cond_33

    .line 1815
    .line 1816
    goto :goto_2d

    .line 1817
    :cond_33
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1818
    .line 1819
    const/4 v6, 0x1

    .line 1820
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation(Z)V

    .line 1821
    .line 1822
    .line 1823
    goto :goto_2e

    .line 1824
    :cond_34
    :goto_2d
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1825
    .line 1826
    const/4 v4, 0x0

    .line 1827
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 1831
    .line 1832
    .line 1833
    :goto_2e
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1834
    .line 1835
    iget-object v2, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 1836
    .line 1837
    new-instance v4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1838
    .line 1839
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1840
    .line 1841
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1842
    .line 1843
    invoke-static {v1, v3}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 1844
    .line 1845
    .line 1846
    move-result-wide v6

    .line 1847
    invoke-direct {v4, v0, v6, v7, v5}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    .line 1852
    .line 1853
    const/4 v12, 0x1

    .line 1854
    goto :goto_2f

    .line 1855
    :cond_35
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1856
    .line 1857
    const/4 v4, 0x0

    .line 1858
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 1859
    .line 1860
    .line 1861
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 1862
    .line 1863
    .line 1864
    goto :goto_2c

    .line 1865
    :goto_2f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v0

    .line 1869
    return-object v0

    .line 1870
    :pswitch_10
    check-cast v0, Landroidx/compose/runtime/MovableContent;

    .line 1871
    .line 1872
    move-object/from16 v3, p2

    .line 1873
    .line 1874
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 1875
    .line 1876
    check-cast v2, Ljava/lang/Integer;

    .line 1877
    .line 1878
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1879
    .line 1880
    .line 1881
    move-result v2

    .line 1882
    and-int/lit8 v4, v2, 0x6

    .line 1883
    .line 1884
    if-nez v4, :cond_38

    .line 1885
    .line 1886
    and-int/lit8 v4, v2, 0x8

    .line 1887
    .line 1888
    if-nez v4, :cond_36

    .line 1889
    .line 1890
    move-object v4, v3

    .line 1891
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1892
    .line 1893
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1894
    .line 1895
    .line 1896
    move-result v4

    .line 1897
    goto :goto_30

    .line 1898
    :cond_36
    move-object v4, v3

    .line 1899
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1900
    .line 1901
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1902
    .line 1903
    .line 1904
    move-result v4

    .line 1905
    :goto_30
    if-eqz v4, :cond_37

    .line 1906
    .line 1907
    goto :goto_31

    .line 1908
    :cond_37
    move v10, v11

    .line 1909
    :goto_31
    or-int/2addr v2, v10

    .line 1910
    :cond_38
    and-int/lit8 v4, v2, 0x13

    .line 1911
    .line 1912
    if-eq v4, v9, :cond_39

    .line 1913
    .line 1914
    const/4 v4, 0x1

    .line 1915
    :goto_32
    const/16 v25, 0x1

    .line 1916
    .line 1917
    goto :goto_33

    .line 1918
    :cond_39
    const/4 v4, 0x0

    .line 1919
    goto :goto_32

    .line 1920
    :goto_33
    and-int/lit8 v2, v2, 0x1

    .line 1921
    .line 1922
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1923
    .line 1924
    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1925
    .line 1926
    .line 1927
    move-result v2

    .line 1928
    if-eqz v2, :cond_3a

    .line 1929
    .line 1930
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v2

    .line 1934
    const/4 v4, 0x0

    .line 1935
    invoke-virtual {v3, v0, v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V

    .line 1936
    .line 1937
    .line 1938
    goto :goto_34

    .line 1939
    :cond_3a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1940
    .line 1941
    .line 1942
    :goto_34
    return-object v14

    .line 1943
    :pswitch_data_0
    .packed-switch 0x0
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
