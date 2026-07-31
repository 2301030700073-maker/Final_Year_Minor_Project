.class public abstract Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-2052971648:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x7a5ddc80

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->lambda$-2052971648:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final SecondarySortOptions(ZLkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v10, p5

    .line 8
    .line 9
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x6ef9571d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int v0, p6, v0

    .line 27
    .line 28
    move-object/from16 v2, p1

    .line 29
    .line 30
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/16 v6, 0x20

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    move v5, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v5, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v5

    .line 43
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    const/16 v5, 0x100

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v5, 0x80

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v5

    .line 55
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    const/16 v5, 0x800

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/16 v5, 0x400

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v5

    .line 67
    or-int/lit16 v0, v0, 0x6000

    .line 68
    .line 69
    and-int/lit16 v5, v0, 0x2493

    .line 70
    .line 71
    const/16 v7, 0x2492

    .line 72
    .line 73
    const/4 v15, 0x0

    .line 74
    if-eq v5, v7, :cond_4

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move v5, v15

    .line 79
    :goto_4
    and-int/lit8 v7, v0, 0x1

    .line 80
    .line 81
    invoke-virtual {v10, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_c

    .line 86
    .line 87
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 88
    .line 89
    if-eqz v1, :cond_b

    .line 90
    .line 91
    const v7, 0x2a0469b1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 95
    .line 96
    .line 97
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 98
    .line 99
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 100
    .line 101
    invoke-static {v7, v8, v10, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    iget-wide v11, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 106
    .line 107
    ushr-long v16, v11, v6

    .line 108
    .line 109
    xor-long v11, v11, v16

    .line 110
    .line 111
    long-to-int v11, v11

    .line 112
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    move/from16 p5, v6

    .line 117
    .line 118
    invoke-static {v10, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 123
    .line 124
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 128
    .line 129
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 130
    .line 131
    .line 132
    iget-boolean v13, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 133
    .line 134
    if-eqz v13, :cond_5

    .line 135
    .line 136
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 141
    .line 142
    .line 143
    :goto_5
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 144
    .line 145
    invoke-static {v10, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    .line 147
    .line 148
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 149
    .line 150
    invoke-static {v10, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 158
    .line 159
    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 163
    .line 164
    invoke-static {v10, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 168
    .line 169
    invoke-static {v10, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    const v6, 0x7f120605

    .line 173
    .line 174
    .line 175
    invoke-static {v10, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 180
    .line 181
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const/16 v21, 0xe

    .line 193
    .line 194
    const/high16 v17, 0x41000000    # 8.0f

    .line 195
    .line 196
    const/16 v18, 0x0

    .line 197
    .line 198
    const/16 v19, 0x0

    .line 199
    .line 200
    move-object/from16 v16, v5

    .line 201
    .line 202
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const/4 v2, 0x0

    .line 207
    invoke-static {v6, v1, v10, v2, v2}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->SortTypeDivider(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 208
    .line 209
    .line 210
    invoke-static {v7, v8, v10, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-wide v6, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 215
    .line 216
    ushr-long v16, v6, p5

    .line 217
    .line 218
    xor-long v6, v6, v16

    .line 219
    .line 220
    long-to-int v2, v6

    .line 221
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-static {v10, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 230
    .line 231
    .line 232
    iget-boolean v8, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 233
    .line 234
    if-eqz v8, :cond_6

    .line 235
    .line 236
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 241
    .line 242
    .line 243
    :goto_6
    invoke-static {v10, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v10, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v2, v10, v12, v10, v11}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v10, v7, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 253
    .line 254
    .line 255
    const v1, -0x4d8f6852

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 259
    .line 260
    .line 261
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_a

    .line 270
    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 276
    .line 277
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    and-int/lit16 v7, v0, 0x1c00

    .line 288
    .line 289
    const/16 v13, 0x800

    .line 290
    .line 291
    if-ne v7, v13, :cond_7

    .line 292
    .line 293
    const/4 v7, 0x1

    .line 294
    goto :goto_8

    .line 295
    :cond_7
    const/4 v7, 0x0

    .line 296
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    or-int/2addr v7, v8

    .line 305
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    if-nez v7, :cond_8

    .line 310
    .line 311
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 312
    .line 313
    if-ne v8, v7, :cond_9

    .line 314
    .line 315
    :cond_8
    new-instance v8, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda0;

    .line 316
    .line 317
    const/4 v7, 0x1

    .line 318
    invoke-direct {v8, v4, v2, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_9
    move-object v7, v8

    .line 325
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 326
    .line 327
    sget-object v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 328
    .line 329
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 334
    .line 335
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 343
    .line 344
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v9

    .line 351
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 352
    .line 353
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 361
    .line 362
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    new-instance v9, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 366
    .line 367
    const/high16 v8, 0x41c00000    # 24.0f

    .line 368
    .line 369
    const/high16 v11, 0x41000000    # 8.0f

    .line 370
    .line 371
    const/high16 v12, 0x41800000    # 16.0f

    .line 372
    .line 373
    invoke-direct {v9, v8, v11, v12, v11}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 374
    .line 375
    .line 376
    const/4 v11, 0x0

    .line 377
    const/16 v12, 0x8

    .line 378
    .line 379
    const/4 v8, 0x0

    .line 380
    move-object/from16 v16, v5

    .line 381
    .line 382
    move-object v5, v2

    .line 383
    invoke-static/range {v5 .. v12}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->SortTypeMenuItem(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v5, v16

    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_a
    move-object/from16 v16, v5

    .line 390
    .line 391
    const/4 v2, 0x0

    .line 392
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 393
    .line 394
    .line 395
    const/4 v7, 0x1

    .line 396
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 403
    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_b
    move-object/from16 v16, v5

    .line 407
    .line 408
    move v2, v15

    .line 409
    const v0, 0x2a11d845

    .line 410
    .line 411
    .line 412
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 416
    .line 417
    .line 418
    :goto_9
    move-object/from16 v5, v16

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 422
    .line 423
    .line 424
    move-object/from16 v5, p4

    .line 425
    .line 426
    :goto_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    if-eqz v7, :cond_d

    .line 431
    .line 432
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 433
    .line 434
    move/from16 v1, p0

    .line 435
    .line 436
    move-object/from16 v2, p1

    .line 437
    .line 438
    move/from16 v6, p6

    .line 439
    .line 440
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(ZLkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V

    .line 441
    .line 442
    .line 443
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 444
    .line 445
    :cond_d
    return-void
.end method

.method public static final SortTypeDivider(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 13

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
    const v0, -0x11eb6bd

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    or-int v1, p3, v1

    .line 24
    .line 25
    and-int/lit8 v3, p4, 0x2

    .line 26
    .line 27
    const/16 v5, 0x20

    .line 28
    .line 29
    const/16 v6, 0x30

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    or-int/2addr v1, v6

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_2

    .line 40
    .line 41
    move v8, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/16 v8, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v1, v8

    .line 46
    :goto_2
    and-int/lit8 v8, v1, 0x13

    .line 47
    .line 48
    const/16 v9, 0x12

    .line 49
    .line 50
    const/4 v10, 0x1

    .line 51
    if-eq v8, v9, :cond_3

    .line 52
    .line 53
    move v8, v10

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/4 v8, 0x0

    .line 56
    :goto_3
    and-int/lit8 v9, v1, 0x1

    .line 57
    .line 58
    invoke-virtual {v4, v9, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_6

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    move-object v9, v3

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move-object v9, p1

    .line 71
    :goto_4
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 72
    .line 73
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 74
    .line 75
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 85
    .line 86
    new-instance v11, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/4 v12, 0x7

    .line 89
    invoke-direct {v11, v12}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 90
    .line 91
    .line 92
    const/high16 v12, 0x40800000    # 4.0f

    .line 93
    .line 94
    invoke-direct {v8, v12, v10, v11}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/high16 v7, 0x41000000    # 8.0f

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    invoke-static {v9, v7, v11, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v8, v3, v4, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iget-wide v6, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 118
    .line 119
    ushr-long v11, v6, v5

    .line 120
    .line 121
    xor-long/2addr v6, v11

    .line 122
    long-to-int v5, v6

    .line 123
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-static {v4, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 137
    .line 138
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 139
    .line 140
    .line 141
    iget-boolean v8, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 142
    .line 143
    if-eqz v8, :cond_5

    .line 144
    .line 145
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 150
    .line 151
    .line 152
    :goto_5
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 153
    .line 154
    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 155
    .line 156
    .line 157
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 158
    .line 159
    invoke-static {v4, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 167
    .line 168
    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 169
    .line 170
    .line 171
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 172
    .line 173
    invoke-static {v4, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 174
    .line 175
    .line 176
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 177
    .line 178
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    and-int/lit8 v7, v1, 0xe

    .line 182
    .line 183
    const/16 v8, 0x3e

    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    const-wide/16 v2, 0x0

    .line 187
    .line 188
    move-object v6, v4

    .line 189
    const/4 v4, 0x0

    .line 190
    const/4 v5, 0x0

    .line 191
    move-object v0, p0

    .line 192
    invoke-static/range {v0 .. v8}, Landroidx/sqlite/SQLite;->TextLabelMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 193
    .line 194
    .line 195
    move-object v4, v6

    .line 196
    const/4 v6, 0x7

    .line 197
    const/4 v0, 0x0

    .line 198
    const/4 v1, 0x0

    .line 199
    invoke-static/range {v0 .. v6}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 200
    .line 201
    .line 202
    move-object v6, v4

    .line 203
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 204
    .line 205
    .line 206
    move-object v7, v9

    .line 207
    goto :goto_6

    .line 208
    :cond_6
    move-object v6, v4

    .line 209
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 210
    .line 211
    .line 212
    move-object v7, p1

    .line 213
    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-eqz v0, :cond_7

    .line 218
    .line 219
    new-instance v5, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda6;

    .line 220
    .line 221
    const/4 v10, 0x0

    .line 222
    move-object v6, p0

    .line 223
    move/from16 v8, p3

    .line 224
    .line 225
    move/from16 v9, p4

    .line 226
    .line 227
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;III)V

    .line 228
    .line 229
    .line 230
    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 231
    .line 232
    :cond_7
    return-void
.end method

.method public static final SortTypeList(Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v13, p7

    .line 8
    .line 9
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x341b6b1f    # -2.9960642E7f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x2

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v2

    .line 27
    :goto_0
    or-int v0, p8, v0

    .line 28
    .line 29
    move-object/from16 v3, p1

    .line 30
    .line 31
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const/16 v4, 0x20

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v4, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v4

    .line 43
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    const/16 v4, 0x100

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v4, 0x80

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v4

    .line 55
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    const/16 v4, 0x800

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/16 v4, 0x400

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v4

    .line 67
    or-int/lit16 v0, v0, 0x6000

    .line 68
    .line 69
    move-object/from16 v4, p5

    .line 70
    .line 71
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    const/high16 v9, 0x20000

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    const/high16 v9, 0x10000

    .line 81
    .line 82
    :goto_4
    or-int/2addr v0, v9

    .line 83
    move-object/from16 v9, p6

    .line 84
    .line 85
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_5

    .line 90
    .line 91
    const/high16 v10, 0x100000

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_5
    const/high16 v10, 0x80000

    .line 95
    .line 96
    :goto_5
    or-int/2addr v0, v10

    .line 97
    const v10, 0x92493

    .line 98
    .line 99
    .line 100
    and-int/2addr v10, v0

    .line 101
    const v11, 0x92492

    .line 102
    .line 103
    .line 104
    const/4 v14, 0x0

    .line 105
    if-eq v10, v11, :cond_6

    .line 106
    .line 107
    const/4 v10, 0x1

    .line 108
    goto :goto_6

    .line 109
    :cond_6
    move v10, v14

    .line 110
    :goto_6
    and-int/lit8 v11, v0, 0x1

    .line 111
    .line 112
    invoke-virtual {v13, v11, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-eqz v10, :cond_d

    .line 117
    .line 118
    sget-object v10, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 119
    .line 120
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 121
    .line 122
    invoke-static {v11, v10}, Landroidx/compose/foundation/layout/OffsetKt;->width(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    const/high16 v15, 0x43480000    # 200.0f

    .line 127
    .line 128
    const/16 p7, 0x20

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-static {v10, v15, v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {v13}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-static {v5, v10}, Landroidx/compose/foundation/ImageKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 144
    .line 145
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 146
    .line 147
    invoke-static {v10, v15, v13, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 152
    .line 153
    ushr-long v16, v8, p7

    .line 154
    .line 155
    xor-long v8, v8, v16

    .line 156
    .line 157
    long-to-int v8, v8

    .line 158
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-static {v13, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 167
    .line 168
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 172
    .line 173
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 174
    .line 175
    .line 176
    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 177
    .line 178
    if-eqz v15, :cond_7

    .line 179
    .line 180
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 185
    .line 186
    .line 187
    :goto_7
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 188
    .line 189
    invoke-static {v13, v10, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 193
    .line 194
    invoke-static {v13, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 202
    .line 203
    invoke-static {v13, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 204
    .line 205
    .line 206
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 207
    .line 208
    invoke-static {v13, v8}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 209
    .line 210
    .line 211
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 212
    .line 213
    invoke-static {v13, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    const v5, 0x7f1205f2

    .line 217
    .line 218
    .line 219
    invoke-static {v13, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const/4 v8, 0x0

    .line 224
    invoke-static {v5, v8, v13, v14, v2}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->SortTypeDivider(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 225
    .line 226
    .line 227
    const v2, -0x253f5a7f

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v17

    .line 237
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_c

    .line 242
    .line 243
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 248
    .line 249
    invoke-interface {v6, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    check-cast v5, Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    and-int/lit16 v5, v0, 0x1c00

    .line 260
    .line 261
    const/16 v15, 0x800

    .line 262
    .line 263
    if-ne v5, v15, :cond_8

    .line 264
    .line 265
    const/4 v5, 0x1

    .line 266
    goto :goto_9

    .line 267
    :cond_8
    move v5, v14

    .line 268
    :goto_9
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    or-int/2addr v5, v10

    .line 277
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    if-nez v5, :cond_9

    .line 282
    .line 283
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 284
    .line 285
    if-ne v10, v5, :cond_a

    .line 286
    .line 287
    :cond_9
    new-instance v10, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda0;

    .line 288
    .line 289
    invoke-direct {v10, v7, v2, v14}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_a
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 296
    .line 297
    move v5, v14

    .line 298
    const/4 v14, 0x0

    .line 299
    move v12, v15

    .line 300
    const/16 v15, 0x18

    .line 301
    .line 302
    move-object/from16 v16, v11

    .line 303
    .line 304
    const/4 v11, 0x0

    .line 305
    move/from16 v18, v12

    .line 306
    .line 307
    const/4 v12, 0x0

    .line 308
    move-object v5, v8

    .line 309
    move-object/from16 v19, v16

    .line 310
    .line 311
    move-object v8, v2

    .line 312
    const/4 v2, 0x1

    .line 313
    invoke-static/range {v8 .. v15}, Lcom/fsck/k9/ui/messagelist/MessageListLoaderKt;->SortTypeMenuItem(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 314
    .line 315
    .line 316
    iget-boolean v9, v1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->isSecondarySortRequired:Z

    .line 317
    .line 318
    if-eqz v9, :cond_b

    .line 319
    .line 320
    invoke-interface {v6, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    check-cast v8, Ljava/lang/Boolean;

    .line 325
    .line 326
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-eqz v8, :cond_b

    .line 331
    .line 332
    move v8, v2

    .line 333
    goto :goto_a

    .line 334
    :cond_b
    const/4 v8, 0x0

    .line 335
    :goto_a
    const/4 v9, 0x3

    .line 336
    invoke-static {v5, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    const/16 v11, 0xd

    .line 341
    .line 342
    invoke-static {v11}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 343
    .line 344
    .line 345
    move-result-object v12

    .line 346
    invoke-virtual {v10, v12}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    invoke-static {v5, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    invoke-static {v5, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 355
    .line 356
    .line 357
    move-result-object v11

    .line 358
    invoke-virtual {v9, v11}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    move v9, v0

    .line 363
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;

    .line 364
    .line 365
    move-object v12, v5

    .line 366
    const/4 v5, 0x0

    .line 367
    move-object v3, v1

    .line 368
    move v1, v8

    .line 369
    move/from16 v20, v9

    .line 370
    .line 371
    move-object/from16 v21, v12

    .line 372
    .line 373
    move v8, v2

    .line 374
    move-object v2, v4

    .line 375
    move-object/from16 v4, p6

    .line 376
    .line 377
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;I)V

    .line 378
    .line 379
    .line 380
    const v2, 0x58832c2c

    .line 381
    .line 382
    .line 383
    invoke-static {v2, v0, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const v15, 0x186c06

    .line 388
    .line 389
    .line 390
    const/16 v16, 0x12

    .line 391
    .line 392
    const/4 v9, 0x0

    .line 393
    const/4 v12, 0x0

    .line 394
    move v2, v8

    .line 395
    move-object v14, v13

    .line 396
    move-object v13, v0

    .line 397
    move v8, v1

    .line 398
    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 399
    .line 400
    .line 401
    move-object/from16 v1, p0

    .line 402
    .line 403
    move-object/from16 v3, p1

    .line 404
    .line 405
    move-object/from16 v4, p5

    .line 406
    .line 407
    move-object v13, v14

    .line 408
    move-object/from16 v11, v19

    .line 409
    .line 410
    move/from16 v0, v20

    .line 411
    .line 412
    move-object/from16 v8, v21

    .line 413
    .line 414
    const/4 v14, 0x0

    .line 415
    goto/16 :goto_8

    .line 416
    .line 417
    :cond_c
    move-object/from16 v19, v11

    .line 418
    .line 419
    move v5, v14

    .line 420
    const/4 v2, 0x1

    .line 421
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v5, v19

    .line 428
    .line 429
    goto :goto_b

    .line 430
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 431
    .line 432
    .line 433
    move-object/from16 v5, p4

    .line 434
    .line 435
    :goto_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    if-eqz v9, :cond_e

    .line 440
    .line 441
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda2;

    .line 442
    .line 443
    move-object/from16 v1, p0

    .line 444
    .line 445
    move-object/from16 v2, p1

    .line 446
    .line 447
    move/from16 v8, p8

    .line 448
    .line 449
    move-object v3, v6

    .line 450
    move-object v4, v7

    .line 451
    move-object/from16 v6, p5

    .line 452
    .line 453
    move-object/from16 v7, p6

    .line 454
    .line 455
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function1;I)V

    .line 456
    .line 457
    .line 458
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 459
    .line 460
    :cond_e
    return-void
.end method

.method public static final SortTypeMenuItem(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 13

    .line 1
    move-object/from16 v9, p5

    .line 2
    .line 3
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x477ca720    # 64679.125f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p6, v0

    .line 25
    .line 26
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v1, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr v0, v1

    .line 38
    move-object v3, p2

    .line 39
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x100

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v1, 0x80

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v1

    .line 51
    or-int/lit16 v0, v0, 0xc00

    .line 52
    .line 53
    and-int/lit8 v1, p7, 0x10

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    move-object/from16 v1, p4

    .line 58
    .line 59
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    const/16 v4, 0x4000

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move-object/from16 v1, p4

    .line 69
    .line 70
    :cond_4
    const/16 v4, 0x2000

    .line 71
    .line 72
    :goto_3
    or-int/2addr v0, v4

    .line 73
    and-int/lit16 v4, v0, 0x2493

    .line 74
    .line 75
    const/16 v5, 0x2492

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    if-eq v4, v5, :cond_5

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    move v4, v6

    .line 83
    :goto_4
    and-int/lit8 v5, v0, 0x1

    .line 84
    .line 85
    invoke-virtual {v9, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_a

    .line 90
    .line 91
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 92
    .line 93
    .line 94
    and-int/lit8 v4, p6, 0x1

    .line 95
    .line 96
    const v5, -0xe001

    .line 97
    .line 98
    .line 99
    if-eqz v4, :cond_8

    .line 100
    .line 101
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_6

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 109
    .line 110
    .line 111
    and-int/lit8 v4, p7, 0x10

    .line 112
    .line 113
    if-eqz v4, :cond_7

    .line 114
    .line 115
    and-int/2addr v0, v5

    .line 116
    :cond_7
    move v4, v0

    .line 117
    move-object/from16 v0, p3

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_8
    :goto_5
    and-int/lit8 v4, p7, 0x10

    .line 121
    .line 122
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 123
    .line 124
    if-eqz v4, :cond_9

    .line 125
    .line 126
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance v1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 147
    .line 148
    const/high16 v4, 0x41800000    # 16.0f

    .line 149
    .line 150
    const/high16 v8, 0x41000000    # 8.0f

    .line 151
    .line 152
    invoke-direct {v1, v4, v8, v4, v8}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 153
    .line 154
    .line 155
    and-int/2addr v0, v5

    .line 156
    :cond_9
    move v4, v0

    .line 157
    move-object v0, v7

    .line 158
    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 159
    .line 160
    .line 161
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 162
    .line 163
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 168
    .line 169
    iget-wide v7, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 170
    .line 171
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 172
    .line 173
    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    new-instance v10, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;

    .line 178
    .line 179
    invoke-direct {v10, v6, v1, p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 180
    .line 181
    .line 182
    const v6, -0x195ba0bd

    .line 183
    .line 184
    .line 185
    invoke-static {v6, v10, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    shr-int/lit8 v4, v4, 0x6

    .line 190
    .line 191
    and-int/lit8 v4, v4, 0xe

    .line 192
    .line 193
    const/high16 v10, 0x30000

    .line 194
    .line 195
    or-int/2addr v10, v4

    .line 196
    move-object v4, v5

    .line 197
    const/4 v5, 0x0

    .line 198
    move-wide v11, v7

    .line 199
    move-object v8, v6

    .line 200
    move-wide v6, v11

    .line 201
    invoke-static/range {v3 .. v10}, Lorg/jsoup/nodes/NodeUtils;->ClickableSurface-zSi9XkE(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 202
    .line 203
    .line 204
    move-object v4, v0

    .line 205
    :goto_7
    move-object v5, v1

    .line 206
    goto :goto_8

    .line 207
    :cond_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 208
    .line 209
    .line 210
    move-object/from16 v4, p3

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    if-eqz v8, :cond_b

    .line 218
    .line 219
    new-instance v0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;

    .line 220
    .line 221
    move-object v1, p0

    .line 222
    move v2, p1

    .line 223
    move-object v3, p2

    .line 224
    move/from16 v6, p6

    .line 225
    .line 226
    move/from16 v7, p7

    .line 227
    .line 228
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;II)V

    .line 229
    .line 230
    .line 231
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 232
    .line 233
    :cond_b
    return-void
.end method

.method public static final access$loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public static final access$thenByDate(Ljava/util/Comparator;Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Ljava/util/Comparator;
    .locals 1

    .line 1
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortDateAscending:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;I)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;I)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method
