.class public abstract Lkotlin/math/MathKt;
.super Ljava/lang/Object;


# static fields
.field public static _arrowBack:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _close:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _visibility:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroid/view/animation/PathInterpolator;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    const v2, 0x3dcccccd    # 0.1f

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const p1, 0x7f040427

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x12c

    .line 23
    .line 24
    invoke-static {p0, p1, v0}, Landroidx/work/Operation$State;->resolveThemeDuration(Landroid/content/Context;II)I

    .line 25
    .line 26
    .line 27
    const p1, 0x7f04042c

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x96

    .line 31
    .line 32
    invoke-static {p0, p1, v0}, Landroidx/work/Operation$State;->resolveThemeDuration(Landroid/content/Context;II)I

    .line 33
    .line 34
    .line 35
    const p1, 0x7f04042b

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x64

    .line 39
    .line 40
    invoke-static {p0, p1, v0}, Landroidx/work/Operation$State;->resolveThemeDuration(Landroid/content/Context;II)I

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final AccountOAuthContent(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p4

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v12, p3

    .line 18
    .line 19
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v3, 0x5641c8bf

    .line 22
    .line 23
    .line 24
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v3, v8, 0x6

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    and-int/lit8 v3, v8, 0x8

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v3, 0x2

    .line 49
    :goto_1
    or-int/2addr v3, v8

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v3, v8

    .line 52
    :goto_2
    and-int/lit8 v4, v8, 0x30

    .line 53
    .line 54
    if-nez v4, :cond_4

    .line 55
    .line 56
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v4, 0x10

    .line 66
    .line 67
    :goto_3
    or-int/2addr v3, v4

    .line 68
    :cond_4
    and-int/lit16 v4, v8, 0x180

    .line 69
    .line 70
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 71
    .line 72
    if-nez v4, :cond_6

    .line 73
    .line 74
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    const/16 v4, 0x100

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    const/16 v4, 0x80

    .line 84
    .line 85
    :goto_4
    or-int/2addr v3, v4

    .line 86
    :cond_6
    and-int/lit16 v4, v8, 0xc00

    .line 87
    .line 88
    if-nez v4, :cond_8

    .line 89
    .line 90
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    const/16 v4, 0x800

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/16 v4, 0x400

    .line 100
    .line 101
    :goto_5
    or-int/2addr v3, v4

    .line 102
    :cond_8
    and-int/lit16 v4, v3, 0x493

    .line 103
    .line 104
    const/16 v9, 0x492

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    if-eq v4, v9, :cond_9

    .line 108
    .line 109
    const/4 v4, 0x1

    .line 110
    goto :goto_6

    .line 111
    :cond_9
    move v4, v10

    .line 112
    :goto_6
    and-int/lit8 v9, v3, 0x1

    .line 113
    .line 114
    invoke-virtual {v12, v9, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_19

    .line 119
    .line 120
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 121
    .line 122
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Landroid/content/res/Resources;

    .line 127
    .line 128
    const-string v9, "AccountOAuthContent"

    .line 129
    .line 130
    invoke-static {v6, v9}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-interface {v9, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    sget-object v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 139
    .line 140
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 150
    .line 151
    new-instance v13, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    const/4 v14, 0x6

    .line 154
    invoke-direct {v13, v14}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 155
    .line 156
    .line 157
    const/high16 v14, 0x41800000    # 16.0f

    .line 158
    .line 159
    invoke-direct {v11, v14, v10, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 160
    .line 161
    .line 162
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 163
    .line 164
    invoke-static {v11, v13, v12, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    move-object/from16 v16, v6

    .line 169
    .line 170
    const/16 v14, 0x20

    .line 171
    .line 172
    iget-wide v5, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 173
    .line 174
    ushr-long v17, v5, v14

    .line 175
    .line 176
    xor-long v5, v5, v17

    .line 177
    .line 178
    long-to-int v5, v5

    .line 179
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v12, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 188
    .line 189
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 193
    .line 194
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 195
    .line 196
    .line 197
    move/from16 v18, v14

    .line 198
    .line 199
    iget-boolean v14, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 200
    .line 201
    if-eqz v14, :cond_a

    .line 202
    .line 203
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 208
    .line 209
    .line 210
    :goto_7
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 211
    .line 212
    invoke-static {v12, v11, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 213
    .line 214
    .line 215
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 216
    .line 217
    invoke-static {v12, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 225
    .line 226
    invoke-static {v12, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 227
    .line 228
    .line 229
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 230
    .line 231
    invoke-static {v12, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 232
    .line 233
    .line 234
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 235
    .line 236
    invoke-static {v12, v9, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 237
    .line 238
    .line 239
    iget-boolean v9, v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isLoading:Z

    .line 240
    .line 241
    if-eqz v9, :cond_b

    .line 242
    .line 243
    const v2, -0x4a50039c

    .line 244
    .line 245
    .line 246
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 247
    .line 248
    .line 249
    const v2, 0x7f120046

    .line 250
    .line 251
    .line 252
    invoke-static {v12, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    const/4 v13, 0x0

    .line 257
    const/4 v14, 0x5

    .line 258
    const/4 v9, 0x0

    .line 259
    const/4 v11, 0x0

    .line 260
    const/4 v2, 0x0

    .line 261
    invoke-static/range {v9 .. v14}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 265
    .line 266
    .line 267
    move-object v10, v0

    .line 268
    move-object v8, v1

    .line 269
    const/4 v0, 0x1

    .line 270
    goto/16 :goto_10

    .line 271
    .line 272
    :cond_b
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 273
    .line 274
    if-eqz v2, :cond_15

    .line 275
    .line 276
    const v7, -0x4a4d55fa

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 280
    .line 281
    .line 282
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 283
    .line 284
    const/4 v8, 0x0

    .line 285
    invoke-static {v7, v13, v12, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    iget-wide v0, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 290
    .line 291
    ushr-long v19, v0, v18

    .line 292
    .line 293
    xor-long v0, v0, v19

    .line 294
    .line 295
    long-to-int v0, v0

    .line 296
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    move-object/from16 v8, v16

    .line 301
    .line 302
    invoke-static {v12, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 307
    .line 308
    .line 309
    iget-boolean v13, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 310
    .line 311
    if-eqz v13, :cond_c

    .line 312
    .line 313
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 318
    .line 319
    .line 320
    :goto_8
    invoke-static {v12, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v12, v1, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v0, v12, v6, v12, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v12, v8, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    .line 331
    .line 332
    const v0, 0x7f120045

    .line 333
    .line 334
    .line 335
    invoke-static {v12, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    sget-object v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 343
    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_d

    .line 349
    .line 350
    const v1, 0x7f12003f

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    :goto_9
    move-object v11, v1

    .line 361
    const/4 v2, 0x1

    .line 362
    const/16 v17, 0x0

    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_d
    sget-object v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 366
    .line 367
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_e

    .line 372
    .line 373
    const v1, 0x7f120040

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_e
    sget-object v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE$2:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 385
    .line 386
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_f

    .line 391
    .line 392
    const v1, 0x7f120042

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    goto :goto_9

    .line 403
    :cond_f
    instance-of v1, v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;

    .line 404
    .line 405
    if-eqz v1, :cond_14

    .line 406
    .line 407
    check-cast v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;

    .line 408
    .line 409
    iget-object v1, v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;->error:Ljava/lang/Exception;

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    const/4 v2, 0x1

    .line 416
    new-array v5, v2, [Ljava/lang/Object;

    .line 417
    .line 418
    const/16 v17, 0x0

    .line 419
    .line 420
    aput-object v1, v5, v17

    .line 421
    .line 422
    const v1, 0x7f120041

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    move-object v11, v1

    .line 433
    :goto_a
    and-int/lit8 v1, v3, 0x70

    .line 434
    .line 435
    move/from16 v14, v18

    .line 436
    .line 437
    if-ne v1, v14, :cond_10

    .line 438
    .line 439
    move v10, v2

    .line 440
    goto :goto_b

    .line 441
    :cond_10
    move/from16 v10, v17

    .line 442
    .line 443
    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    if-nez v10, :cond_12

    .line 448
    .line 449
    if-ne v1, v9, :cond_11

    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_11
    move-object/from16 v8, p1

    .line 453
    .line 454
    goto :goto_d

    .line 455
    :cond_12
    :goto_c
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 456
    .line 457
    const/4 v3, 0x5

    .line 458
    move-object/from16 v8, p1

    .line 459
    .line 460
    invoke-direct {v1, v3, v8}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :goto_d
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 467
    .line 468
    const/4 v15, 0x0

    .line 469
    const/16 v16, 0x12

    .line 470
    .line 471
    const/4 v10, 0x0

    .line 472
    const/4 v13, 0x0

    .line 473
    move-object v9, v0

    .line 474
    move v0, v2

    .line 475
    move-object v14, v12

    .line 476
    move-object v12, v1

    .line 477
    move/from16 v1, v17

    .line 478
    .line 479
    invoke-static/range {v9 .. v16}, Landroidx/appcompat/app/ActionBar;->ErrorView(Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v10, p0

    .line 483
    .line 484
    move-object v12, v14

    .line 485
    iget-boolean v2, v10, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 486
    .line 487
    if-eqz v2, :cond_13

    .line 488
    .line 489
    const v2, 0x754bd932

    .line 490
    .line 491
    .line 492
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 493
    .line 494
    .line 495
    invoke-static {v12, v1}, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->GoogleSignInSupportText(Landroidx/compose/runtime/Composer;I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 499
    .line 500
    .line 501
    goto :goto_e

    .line 502
    :cond_13
    const v2, 0x754ccd33

    .line 503
    .line 504
    .line 505
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 509
    .line 510
    .line 511
    :goto_e
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 515
    .line 516
    .line 517
    move/from16 v7, p2

    .line 518
    .line 519
    goto :goto_10

    .line 520
    :cond_14
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :cond_15
    move-object v10, v0

    .line 525
    move-object v8, v1

    .line 526
    const/4 v0, 0x1

    .line 527
    const/4 v1, 0x0

    .line 528
    const v2, -0x4a46f184

    .line 529
    .line 530
    .line 531
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 532
    .line 533
    .line 534
    and-int/lit8 v2, v3, 0x70

    .line 535
    .line 536
    const/16 v14, 0x20

    .line 537
    .line 538
    if-ne v2, v14, :cond_16

    .line 539
    .line 540
    move v15, v0

    .line 541
    goto :goto_f

    .line 542
    :cond_16
    move v15, v1

    .line 543
    :goto_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    if-nez v15, :cond_17

    .line 548
    .line 549
    if-ne v2, v9, :cond_18

    .line 550
    .line 551
    :cond_17
    new-instance v2, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 552
    .line 553
    const/4 v4, 0x6

    .line 554
    invoke-direct {v2, v4, v8}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    :cond_18
    move-object v5, v2

    .line 561
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 562
    .line 563
    iget-boolean v6, v10, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 564
    .line 565
    and-int/lit16 v2, v3, 0x1c00

    .line 566
    .line 567
    const/4 v4, 0x0

    .line 568
    move/from16 v7, p2

    .line 569
    .line 570
    move-object v3, v12

    .line 571
    invoke-static/range {v2 .. v7}, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->SignInView(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZZ)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 575
    .line 576
    .line 577
    :goto_10
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 578
    .line 579
    .line 580
    goto :goto_11

    .line 581
    :cond_19
    move-object v10, v0

    .line 582
    move-object v8, v1

    .line 583
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 584
    .line 585
    .line 586
    :goto_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    if-eqz v0, :cond_1a

    .line 591
    .line 592
    new-instance v1, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;

    .line 593
    .line 594
    move/from16 v2, p4

    .line 595
    .line 596
    invoke-direct {v1, v10, v8, v7, v2}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;-><init>(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;Lkotlin/jvm/functions/Function1;ZI)V

    .line 597
    .line 598
    .line 599
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 600
    .line 601
    :cond_1a
    return-void
.end method

.method public static final AutoDiscoveryServerSettingsView-Zl2X39w(Ljava/lang/String;Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V
    .locals 35

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v6, p5

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v13, p7

    .line 14
    .line 15
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, 0x26f656ef

    .line 18
    .line 19
    .line 20
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x20

    .line 28
    .line 29
    const/16 v4, 0x10

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v4

    .line 36
    :goto_0
    or-int v0, p8, v0

    .line 37
    .line 38
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    const/16 v5, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v5, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v5

    .line 50
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    const/16 v5, 0x800

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/16 v5, 0x400

    .line 64
    .line 65
    :goto_2
    or-int/2addr v0, v5

    .line 66
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    const/high16 v5, 0x20000

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/high16 v5, 0x10000

    .line 76
    .line 77
    :goto_3
    or-int/2addr v0, v5

    .line 78
    const v5, 0x92493

    .line 79
    .line 80
    .line 81
    and-int/2addr v5, v0

    .line 82
    const v7, 0x92492

    .line 83
    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x1

    .line 87
    if-eq v5, v7, :cond_4

    .line 88
    .line 89
    move v5, v9

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move v5, v8

    .line 92
    :goto_4
    and-int/2addr v0, v9

    .line 93
    invoke-virtual {v13, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_f

    .line 98
    .line 99
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 100
    .line 101
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/content/res/Resources;

    .line 106
    .line 107
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 108
    .line 109
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 119
    .line 120
    new-instance v7, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    const/4 v10, 0x7

    .line 123
    invoke-direct {v7, v10}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 124
    .line 125
    .line 126
    const/high16 v10, 0x41000000    # 8.0f

    .line 127
    .line 128
    invoke-direct {v5, v10, v9, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 129
    .line 130
    .line 131
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 132
    .line 133
    invoke-static {v5, v7, v13, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iget-wide v10, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 138
    .line 139
    ushr-long v14, v10, v1

    .line 140
    .line 141
    xor-long/2addr v10, v14

    .line 142
    long-to-int v1, v10

    .line 143
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    move-object/from16 v10, p4

    .line 148
    .line 149
    invoke-static {v13, v10}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 154
    .line 155
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 159
    .line 160
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 161
    .line 162
    .line 163
    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 164
    .line 165
    if-eqz v14, :cond_5

    .line 166
    .line 167
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 172
    .line 173
    .line 174
    :goto_5
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v13, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v13, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 189
    .line 190
    invoke-static {v13, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 194
    .line 195
    invoke-static {v13, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 196
    .line 197
    .line 198
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 199
    .line 200
    invoke-static {v13, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 204
    .line 205
    invoke-direct {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 206
    .line 207
    .line 208
    if-eqz p6, :cond_6

    .line 209
    .line 210
    const-string v5, "Incoming"

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_6
    const-string v5, "Outgoing"

    .line 214
    .line 215
    :goto_6
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v5, " "

    .line 219
    .line 220
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance v14, Landroidx/compose/ui/text/SpanStyle;

    .line 224
    .line 225
    sget-object v19, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 226
    .line 227
    const/16 v32, 0x0

    .line 228
    .line 229
    const v33, 0xfffb

    .line 230
    .line 231
    .line 232
    const-wide/16 v15, 0x0

    .line 233
    .line 234
    const-wide/16 v17, 0x0

    .line 235
    .line 236
    const/16 v20, 0x0

    .line 237
    .line 238
    const/16 v21, 0x0

    .line 239
    .line 240
    const/16 v22, 0x0

    .line 241
    .line 242
    const/16 v23, 0x0

    .line 243
    .line 244
    const-wide/16 v24, 0x0

    .line 245
    .line 246
    const/16 v26, 0x0

    .line 247
    .line 248
    const/16 v27, 0x0

    .line 249
    .line 250
    const/16 v28, 0x0

    .line 251
    .line 252
    const-wide/16 v29, 0x0

    .line 253
    .line 254
    const/16 v31, 0x0

    .line 255
    .line 256
    invoke-direct/range {v14 .. v33}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v14}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    :try_start_0
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 264
    .line 265
    move-object/from16 v12, p0

    .line 266
    .line 267
    invoke-virtual {v12, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v11}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v5, "configuration"

    .line 284
    .line 285
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    const/4 v14, 0x0

    .line 293
    const/16 v15, 0x3e

    .line 294
    .line 295
    move v1, v8

    .line 296
    const/4 v8, 0x0

    .line 297
    move v5, v9

    .line 298
    const-wide/16 v9, 0x0

    .line 299
    .line 300
    const/4 v11, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    invoke-static/range {v7 .. v15}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 303
    .line 304
    .line 305
    if-eqz p6, :cond_7

    .line 306
    .line 307
    sget-object v7, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Inbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_7
    sget-object v7, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Outbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 311
    .line 312
    :goto_7
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 313
    .line 314
    invoke-direct {v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 315
    .line 316
    .line 317
    const-string v9, "Server"

    .line 318
    .line 319
    invoke-virtual {v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v9, ": "

    .line 323
    .line 324
    invoke-virtual {v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v2}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalIPv4Address(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    if-nez v9, :cond_8

    .line 332
    .line 333
    invoke-static {v2}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalIPv6Address(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    :cond_8
    if-eqz v9, :cond_9

    .line 338
    .line 339
    invoke-virtual {v8, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_9
    const-string v9, "."

    .line 344
    .line 345
    invoke-static {v2, v9}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v8, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    .line 357
    .line 358
    const/16 v33, 0x0

    .line 359
    .line 360
    const v34, 0xfffb

    .line 361
    .line 362
    .line 363
    const-wide/16 v16, 0x0

    .line 364
    .line 365
    move-object/from16 v20, v19

    .line 366
    .line 367
    const-wide/16 v18, 0x0

    .line 368
    .line 369
    const/16 v21, 0x0

    .line 370
    .line 371
    const/16 v22, 0x0

    .line 372
    .line 373
    const/16 v23, 0x0

    .line 374
    .line 375
    const/16 v24, 0x0

    .line 376
    .line 377
    const-wide/16 v25, 0x0

    .line 378
    .line 379
    const/16 v27, 0x0

    .line 380
    .line 381
    const/16 v28, 0x0

    .line 382
    .line 383
    const/16 v29, 0x0

    .line 384
    .line 385
    const-wide/16 v30, 0x0

    .line 386
    .line 387
    const/16 v32, 0x0

    .line 388
    .line 389
    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v15}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    :try_start_1
    invoke-static {v2, v9}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    invoke-virtual {v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 404
    .line 405
    .line 406
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    const-string v10, ":"

    .line 409
    .line 410
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    invoke-virtual {v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    const/4 v9, 0x0

    .line 428
    invoke-static {v7, v8, v9, v13, v1}, Lkotlin/math/MathKt;->ServerSettingRow(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 429
    .line 430
    .line 431
    sget-object v7, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Security:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 432
    .line 433
    new-instance v8, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 436
    .line 437
    .line 438
    new-instance v10, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .line 442
    .line 443
    new-instance v10, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .line 447
    .line 448
    new-instance v11, Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v11, "Security: "

    .line 454
    .line 455
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    if-eqz v11, :cond_b

    .line 466
    .line 467
    if-ne v11, v5, :cond_a

    .line 468
    .line 469
    const v11, 0x7f120168

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_b
    const v11, 0x7f120169

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    :goto_9
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    new-instance v11, Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v12

    .line 507
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 511
    .line 512
    .line 513
    move-result v12

    .line 514
    move v14, v1

    .line 515
    :goto_a
    if-ge v14, v12, :cond_c

    .line 516
    .line 517
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v15

    .line 521
    check-cast v15, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 522
    .line 523
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    invoke-virtual {v15, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->toRange(I)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    add-int/lit8 v14, v14, 0x1

    .line 535
    .line 536
    const/4 v5, 0x1

    .line 537
    goto :goto_a

    .line 538
    :cond_c
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString;

    .line 539
    .line 540
    invoke-direct {v5, v0, v11}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v7, v5, v9, v13, v1}, Lkotlin/math/MathKt;->ServerSettingRow(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-lez v0, :cond_e

    .line 551
    .line 552
    const v0, 0x53cdc6ae

    .line 553
    .line 554
    .line 555
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 556
    .line 557
    .line 558
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->AccountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 559
    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 563
    .line 564
    .line 565
    new-instance v4, Ljava/util/ArrayList;

    .line 566
    .line 567
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .line 569
    .line 570
    new-instance v4, Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .line 574
    .line 575
    new-instance v7, Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .line 579
    .line 580
    const-string v7, "Username: "

    .line 581
    .line 582
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v7

    .line 592
    new-instance v8, Ljava/util/ArrayList;

    .line 593
    .line 594
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 595
    .line 596
    .line 597
    move-result v10

    .line 598
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 602
    .line 603
    .line 604
    move-result v10

    .line 605
    move v11, v1

    .line 606
    :goto_b
    if-ge v11, v10, :cond_d

    .line 607
    .line 608
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v12

    .line 612
    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 613
    .line 614
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 615
    .line 616
    .line 617
    move-result v14

    .line 618
    invoke-virtual {v12, v14}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->toRange(I)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 619
    .line 620
    .line 621
    move-result-object v12

    .line 622
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    add-int/lit8 v11, v11, 0x1

    .line 626
    .line 627
    goto :goto_b

    .line 628
    :cond_d
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString;

    .line 629
    .line 630
    invoke-direct {v4, v7, v8}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 631
    .line 632
    .line 633
    invoke-static {v0, v4, v9, v13, v1}, Lkotlin/math/MathKt;->ServerSettingRow(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 637
    .line 638
    .line 639
    :goto_c
    const/4 v5, 0x1

    .line 640
    goto :goto_d

    .line 641
    :cond_e
    const v0, 0x53d174e9

    .line 642
    .line 643
    .line 644
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 648
    .line 649
    .line 650
    goto :goto_c

    .line 651
    :goto_d
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 652
    .line 653
    .line 654
    goto :goto_e

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    invoke-virtual {v8, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 657
    .line 658
    .line 659
    throw v0

    .line 660
    :catchall_1
    move-exception v0

    .line 661
    invoke-virtual {v1, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 662
    .line 663
    .line 664
    throw v0

    .line 665
    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 666
    .line 667
    .line 668
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 669
    .line 670
    .line 671
    move-result-object v9

    .line 672
    if-eqz v9, :cond_10

    .line 673
    .line 674
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 675
    .line 676
    move-object/from16 v1, p0

    .line 677
    .line 678
    move-object/from16 v4, p3

    .line 679
    .line 680
    move-object/from16 v5, p4

    .line 681
    .line 682
    move/from16 v7, p6

    .line 683
    .line 684
    move/from16 v8, p8

    .line 685
    .line 686
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZI)V

    .line 687
    .line 688
    .line 689
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 690
    .line 691
    :cond_10
    return-void
.end method

.method public static final LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v0, p5

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v12, p9

    .line 16
    .line 17
    move/from16 v13, p11

    .line 18
    .line 19
    move-object/from16 v14, p10

    .line 20
    .line 21
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    const v2, 0x2a3e8512

    .line 24
    .line 25
    .line 26
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    and-int/lit8 v2, v13, 0x6

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x2

    .line 42
    :goto_0
    or-int/2addr v2, v13

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v2, v13

    .line 45
    :goto_1
    and-int/lit8 v9, v13, 0x30

    .line 46
    .line 47
    if-nez v9, :cond_3

    .line 48
    .line 49
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    const/16 v9, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v9, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v2, v9

    .line 61
    :cond_3
    and-int/lit16 v9, v13, 0x180

    .line 62
    .line 63
    if-nez v9, :cond_6

    .line 64
    .line 65
    and-int/lit16 v9, v13, 0x200

    .line 66
    .line 67
    if-nez v9, :cond_4

    .line 68
    .line 69
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    :goto_3
    if-eqz v9, :cond_5

    .line 79
    .line 80
    const/16 v9, 0x100

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    const/16 v9, 0x80

    .line 84
    .line 85
    :goto_4
    or-int/2addr v2, v9

    .line 86
    :cond_6
    and-int/lit16 v9, v13, 0xc00

    .line 87
    .line 88
    if-nez v9, :cond_8

    .line 89
    .line 90
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_7

    .line 95
    .line 96
    const/16 v9, 0x800

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/16 v9, 0x400

    .line 100
    .line 101
    :goto_5
    or-int/2addr v2, v9

    .line 102
    :cond_8
    and-int/lit16 v9, v13, 0x6000

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    if-nez v9, :cond_a

    .line 106
    .line 107
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_9

    .line 112
    .line 113
    const/16 v9, 0x4000

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_9
    const/16 v9, 0x2000

    .line 117
    .line 118
    :goto_6
    or-int/2addr v2, v9

    .line 119
    :cond_a
    const/high16 v9, 0x30000

    .line 120
    .line 121
    and-int v18, v13, v9

    .line 122
    .line 123
    const/4 v11, 0x1

    .line 124
    move/from16 v19, v9

    .line 125
    .line 126
    if-nez v18, :cond_c

    .line 127
    .line 128
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 129
    .line 130
    .line 131
    move-result v18

    .line 132
    if-eqz v18, :cond_b

    .line 133
    .line 134
    const/high16 v18, 0x20000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_b
    const/high16 v18, 0x10000

    .line 138
    .line 139
    :goto_7
    or-int v2, v2, v18

    .line 140
    .line 141
    :cond_c
    const/high16 v18, 0x180000

    .line 142
    .line 143
    and-int v20, v13, v18

    .line 144
    .line 145
    move-object/from16 v11, p4

    .line 146
    .line 147
    if-nez v20, :cond_e

    .line 148
    .line 149
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v22

    .line 153
    if-eqz v22, :cond_d

    .line 154
    .line 155
    const/high16 v22, 0x100000

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_d
    const/high16 v22, 0x80000

    .line 159
    .line 160
    :goto_8
    or-int v2, v2, v22

    .line 161
    .line 162
    :cond_e
    const/high16 v22, 0xc00000

    .line 163
    .line 164
    and-int v23, v13, v22

    .line 165
    .line 166
    if-nez v23, :cond_10

    .line 167
    .line 168
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 169
    .line 170
    .line 171
    move-result v23

    .line 172
    if-eqz v23, :cond_f

    .line 173
    .line 174
    const/high16 v23, 0x800000

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_f
    const/high16 v23, 0x400000

    .line 178
    .line 179
    :goto_9
    or-int v2, v2, v23

    .line 180
    .line 181
    :cond_10
    const/high16 v23, 0x6000000

    .line 182
    .line 183
    and-int v23, v13, v23

    .line 184
    .line 185
    move-object/from16 v9, p6

    .line 186
    .line 187
    if-nez v23, :cond_12

    .line 188
    .line 189
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v24

    .line 193
    if-eqz v24, :cond_11

    .line 194
    .line 195
    const/high16 v24, 0x4000000

    .line 196
    .line 197
    goto :goto_a

    .line 198
    :cond_11
    const/high16 v24, 0x2000000

    .line 199
    .line 200
    :goto_a
    or-int v2, v2, v24

    .line 201
    .line 202
    :cond_12
    const/high16 v24, 0x30000000

    .line 203
    .line 204
    and-int v24, v13, v24

    .line 205
    .line 206
    if-nez v24, :cond_14

    .line 207
    .line 208
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v24

    .line 212
    if-eqz v24, :cond_13

    .line 213
    .line 214
    const/high16 v24, 0x20000000

    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_13
    const/high16 v24, 0x10000000

    .line 218
    .line 219
    :goto_b
    or-int v2, v2, v24

    .line 220
    .line 221
    :cond_14
    and-int/lit8 v24, p12, 0x6

    .line 222
    .line 223
    if-nez v24, :cond_16

    .line 224
    .line 225
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v24

    .line 229
    if-eqz v24, :cond_15

    .line 230
    .line 231
    const/16 v24, 0x4

    .line 232
    .line 233
    goto :goto_c

    .line 234
    :cond_15
    const/16 v24, 0x2

    .line 235
    .line 236
    :goto_c
    or-int v24, p12, v24

    .line 237
    .line 238
    goto :goto_d

    .line 239
    :cond_16
    move/from16 v24, p12

    .line 240
    .line 241
    :goto_d
    and-int/lit8 v25, p12, 0x30

    .line 242
    .line 243
    if-nez v25, :cond_18

    .line 244
    .line 245
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v25

    .line 249
    if-eqz v25, :cond_17

    .line 250
    .line 251
    const/16 v25, 0x20

    .line 252
    .line 253
    goto :goto_e

    .line 254
    :cond_17
    const/16 v25, 0x10

    .line 255
    .line 256
    :goto_e
    or-int v24, v24, v25

    .line 257
    .line 258
    :cond_18
    const v25, 0x12492493

    .line 259
    .line 260
    .line 261
    and-int v10, v2, v25

    .line 262
    .line 263
    const v5, 0x12492492

    .line 264
    .line 265
    .line 266
    const/16 v15, 0x12

    .line 267
    .line 268
    if-ne v10, v5, :cond_1a

    .line 269
    .line 270
    and-int/lit8 v5, v24, 0x13

    .line 271
    .line 272
    if-eq v5, v15, :cond_19

    .line 273
    .line 274
    goto :goto_f

    .line 275
    :cond_19
    const/4 v5, 0x0

    .line 276
    goto :goto_10

    .line 277
    :cond_1a
    :goto_f
    const/4 v5, 0x1

    .line 278
    :goto_10
    and-int/lit8 v10, v2, 0x1

    .line 279
    .line 280
    invoke-virtual {v14, v10, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_49

    .line 285
    .line 286
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 287
    .line 288
    .line 289
    and-int/lit8 v5, v13, 0x1

    .line 290
    .line 291
    if-eqz v5, :cond_1c

    .line 292
    .line 293
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_1b

    .line 298
    .line 299
    goto :goto_11

    .line 300
    :cond_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 301
    .line 302
    .line 303
    :cond_1c
    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 304
    .line 305
    .line 306
    shr-int/lit8 v26, v2, 0x3

    .line 307
    .line 308
    and-int/lit8 v27, v26, 0xe

    .line 309
    .line 310
    and-int/lit8 v5, v24, 0x70

    .line 311
    .line 312
    or-int v5, v27, v5

    .line 313
    .line 314
    invoke-static {v12, v14}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    and-int/lit8 v28, v5, 0xe

    .line 319
    .line 320
    move/from16 v29, v15

    .line 321
    .line 322
    xor-int/lit8 v15, v28, 0x6

    .line 323
    .line 324
    move/from16 v28, v2

    .line 325
    .line 326
    const/4 v2, 0x4

    .line 327
    if-le v15, v2, :cond_1d

    .line 328
    .line 329
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    if-nez v15, :cond_1e

    .line 334
    .line 335
    :cond_1d
    and-int/lit8 v5, v5, 0x6

    .line 336
    .line 337
    if-ne v5, v2, :cond_1f

    .line 338
    .line 339
    :cond_1e
    const/4 v2, 0x1

    .line 340
    goto :goto_12

    .line 341
    :cond_1f
    const/4 v2, 0x0

    .line 342
    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 347
    .line 348
    if-nez v2, :cond_20

    .line 349
    .line 350
    if-ne v5, v15, :cond_21

    .line 351
    .line 352
    :cond_20
    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 353
    .line 354
    new-instance v5, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 355
    .line 356
    const/4 v9, 0x2

    .line 357
    invoke-direct {v5, v10, v9}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 358
    .line 359
    .line 360
    invoke-static {v2, v5}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    new-instance v9, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 365
    .line 366
    const/16 v10, 0xb

    .line 367
    .line 368
    invoke-direct {v9, v10, v5, v3}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v2, v9}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 372
    .line 373
    .line 374
    move-result-object v34

    .line 375
    new-instance v30, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 376
    .line 377
    const/16 v31, 0x0

    .line 378
    .line 379
    const/16 v32, 0x2

    .line 380
    .line 381
    const-class v33, Landroidx/compose/runtime/State;

    .line 382
    .line 383
    const-string/jumbo v35, "value"

    .line 384
    .line 385
    .line 386
    const-string v36, "getValue()Ljava/lang/Object;"

    .line 387
    .line 388
    invoke-direct/range {v30 .. v36}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v5, v30

    .line 392
    .line 393
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_21
    check-cast v5, Lkotlin/reflect/KProperty0;

    .line 397
    .line 398
    shr-int/lit8 v2, v28, 0x9

    .line 399
    .line 400
    and-int/lit8 v2, v2, 0x70

    .line 401
    .line 402
    or-int v2, v27, v2

    .line 403
    .line 404
    and-int/lit8 v9, v2, 0xe

    .line 405
    .line 406
    xor-int/lit8 v9, v9, 0x6

    .line 407
    .line 408
    const/4 v10, 0x4

    .line 409
    if-le v9, v10, :cond_22

    .line 410
    .line 411
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-nez v9, :cond_23

    .line 416
    .line 417
    :cond_22
    and-int/lit8 v9, v2, 0x6

    .line 418
    .line 419
    if-ne v9, v10, :cond_24

    .line 420
    .line 421
    :cond_23
    const/4 v9, 0x1

    .line 422
    goto :goto_13

    .line 423
    :cond_24
    const/4 v9, 0x0

    .line 424
    :goto_13
    and-int/lit8 v10, v2, 0x70

    .line 425
    .line 426
    xor-int/lit8 v10, v10, 0x30

    .line 427
    .line 428
    move/from16 v25, v2

    .line 429
    .line 430
    const/16 v2, 0x20

    .line 431
    .line 432
    if-le v10, v2, :cond_25

    .line 433
    .line 434
    const/4 v10, 0x0

    .line 435
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 436
    .line 437
    .line 438
    move-result v17

    .line 439
    if-nez v17, :cond_26

    .line 440
    .line 441
    :cond_25
    and-int/lit8 v10, v25, 0x30

    .line 442
    .line 443
    if-ne v10, v2, :cond_27

    .line 444
    .line 445
    :cond_26
    const/4 v10, 0x1

    .line 446
    goto :goto_14

    .line 447
    :cond_27
    const/4 v10, 0x0

    .line 448
    :goto_14
    or-int v2, v9, v10

    .line 449
    .line 450
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    if-nez v2, :cond_28

    .line 455
    .line 456
    if-ne v9, v15, :cond_29

    .line 457
    .line 458
    :cond_28
    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    .line 459
    .line 460
    invoke-direct {v9, v3}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_29
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    .line 467
    .line 468
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    if-ne v2, v15, :cond_2a

    .line 473
    .line 474
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_2a
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 482
    .line 483
    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 484
    .line 485
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    check-cast v10, Landroidx/compose/ui/graphics/GraphicsContext;

    .line 490
    .line 491
    move-object/from16 v25, v2

    .line 492
    .line 493
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 494
    .line 495
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    check-cast v2, Ljava/lang/Boolean;

    .line 500
    .line 501
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-nez v2, :cond_2b

    .line 506
    .line 507
    sget-object v2, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    .line 508
    .line 509
    goto :goto_15

    .line 510
    :cond_2b
    const/4 v2, 0x0

    .line 511
    :goto_15
    const v30, 0x7fff0

    .line 512
    .line 513
    .line 514
    and-int v30, v28, v30

    .line 515
    .line 516
    shl-int/lit8 v24, v24, 0x12

    .line 517
    .line 518
    const/high16 v29, 0x380000

    .line 519
    .line 520
    and-int v24, v24, v29

    .line 521
    .line 522
    or-int v24, v30, v24

    .line 523
    .line 524
    shr-int/lit8 v28, v28, 0x6

    .line 525
    .line 526
    const/high16 v30, 0x1c00000

    .line 527
    .line 528
    and-int v28, v28, v30

    .line 529
    .line 530
    move-object/from16 v31, v2

    .line 531
    .line 532
    or-int v2, v24, v28

    .line 533
    .line 534
    and-int/lit8 v24, v2, 0x70

    .line 535
    .line 536
    move-object/from16 v28, v5

    .line 537
    .line 538
    xor-int/lit8 v5, v24, 0x30

    .line 539
    .line 540
    move-object/from16 v24, v9

    .line 541
    .line 542
    const/16 v9, 0x20

    .line 543
    .line 544
    if-le v5, v9, :cond_2c

    .line 545
    .line 546
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    if-nez v5, :cond_2d

    .line 551
    .line 552
    :cond_2c
    and-int/lit8 v5, v2, 0x30

    .line 553
    .line 554
    if-ne v5, v9, :cond_2e

    .line 555
    .line 556
    :cond_2d
    const/4 v5, 0x1

    .line 557
    goto :goto_16

    .line 558
    :cond_2e
    const/4 v5, 0x0

    .line 559
    :goto_16
    and-int/lit16 v9, v2, 0x380

    .line 560
    .line 561
    xor-int/lit16 v9, v9, 0x180

    .line 562
    .line 563
    const/16 v3, 0x100

    .line 564
    .line 565
    if-le v9, v3, :cond_2f

    .line 566
    .line 567
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v9

    .line 571
    if-nez v9, :cond_30

    .line 572
    .line 573
    :cond_2f
    and-int/lit16 v9, v2, 0x180

    .line 574
    .line 575
    if-ne v9, v3, :cond_31

    .line 576
    .line 577
    :cond_30
    const/4 v3, 0x1

    .line 578
    goto :goto_17

    .line 579
    :cond_31
    const/4 v3, 0x0

    .line 580
    :goto_17
    or-int/2addr v3, v5

    .line 581
    and-int/lit16 v5, v2, 0x1c00

    .line 582
    .line 583
    xor-int/lit16 v5, v5, 0xc00

    .line 584
    .line 585
    const/16 v9, 0x800

    .line 586
    .line 587
    if-le v5, v9, :cond_32

    .line 588
    .line 589
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    if-nez v5, :cond_33

    .line 594
    .line 595
    :cond_32
    and-int/lit16 v5, v2, 0xc00

    .line 596
    .line 597
    if-ne v5, v9, :cond_34

    .line 598
    .line 599
    :cond_33
    const/4 v5, 0x1

    .line 600
    goto :goto_18

    .line 601
    :cond_34
    const/4 v5, 0x0

    .line 602
    :goto_18
    or-int/2addr v3, v5

    .line 603
    const v5, 0xe000

    .line 604
    .line 605
    .line 606
    and-int/2addr v5, v2

    .line 607
    xor-int/lit16 v5, v5, 0x6000

    .line 608
    .line 609
    const/16 v9, 0x4000

    .line 610
    .line 611
    if-le v5, v9, :cond_35

    .line 612
    .line 613
    const/4 v5, 0x0

    .line 614
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 615
    .line 616
    .line 617
    move-result v16

    .line 618
    if-nez v16, :cond_36

    .line 619
    .line 620
    goto :goto_19

    .line 621
    :cond_35
    const/4 v5, 0x0

    .line 622
    :goto_19
    and-int/lit16 v5, v2, 0x6000

    .line 623
    .line 624
    if-ne v5, v9, :cond_37

    .line 625
    .line 626
    :cond_36
    const/4 v5, 0x1

    .line 627
    goto :goto_1a

    .line 628
    :cond_37
    const/4 v5, 0x0

    .line 629
    :goto_1a
    or-int/2addr v3, v5

    .line 630
    const/high16 v5, 0x70000

    .line 631
    .line 632
    and-int/2addr v5, v2

    .line 633
    xor-int v5, v5, v19

    .line 634
    .line 635
    const/high16 v9, 0x20000

    .line 636
    .line 637
    if-le v5, v9, :cond_38

    .line 638
    .line 639
    const/4 v5, 0x1

    .line 640
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 641
    .line 642
    .line 643
    move-result v16

    .line 644
    if-nez v16, :cond_39

    .line 645
    .line 646
    :cond_38
    and-int v5, v2, v19

    .line 647
    .line 648
    if-ne v5, v9, :cond_3a

    .line 649
    .line 650
    :cond_39
    const/4 v5, 0x1

    .line 651
    goto :goto_1b

    .line 652
    :cond_3a
    const/4 v5, 0x0

    .line 653
    :goto_1b
    or-int/2addr v3, v5

    .line 654
    and-int v5, v2, v29

    .line 655
    .line 656
    xor-int v5, v5, v18

    .line 657
    .line 658
    const/high16 v9, 0x100000

    .line 659
    .line 660
    if-le v5, v9, :cond_3b

    .line 661
    .line 662
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v5

    .line 666
    if-nez v5, :cond_3c

    .line 667
    .line 668
    :cond_3b
    and-int v5, v2, v18

    .line 669
    .line 670
    if-ne v5, v9, :cond_3d

    .line 671
    .line 672
    :cond_3c
    const/4 v5, 0x1

    .line 673
    goto :goto_1c

    .line 674
    :cond_3d
    const/4 v5, 0x0

    .line 675
    :goto_1c
    or-int/2addr v3, v5

    .line 676
    and-int v5, v2, v30

    .line 677
    .line 678
    xor-int v5, v5, v22

    .line 679
    .line 680
    const/high16 v9, 0x800000

    .line 681
    .line 682
    if-le v5, v9, :cond_3e

    .line 683
    .line 684
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    if-nez v5, :cond_3f

    .line 689
    .line 690
    :cond_3e
    and-int v2, v2, v22

    .line 691
    .line 692
    if-ne v2, v9, :cond_40

    .line 693
    .line 694
    :cond_3f
    const/4 v2, 0x1

    .line 695
    goto :goto_1d

    .line 696
    :cond_40
    const/4 v2, 0x0

    .line 697
    :goto_1d
    or-int/2addr v2, v3

    .line 698
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    or-int/2addr v2, v3

    .line 703
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    if-nez v2, :cond_42

    .line 708
    .line 709
    if-ne v3, v15, :cond_41

    .line 710
    .line 711
    goto :goto_1e

    .line 712
    :cond_41
    move-object v2, v3

    .line 713
    move-object/from16 v37, v24

    .line 714
    .line 715
    move-object/from16 v9, v28

    .line 716
    .line 717
    const/4 v12, 0x0

    .line 718
    const/16 v21, 0x1

    .line 719
    .line 720
    move-object/from16 v3, p1

    .line 721
    .line 722
    goto :goto_1f

    .line 723
    :cond_42
    :goto_1e
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 724
    .line 725
    move-object/from16 v3, p1

    .line 726
    .line 727
    move-object/from16 v37, v24

    .line 728
    .line 729
    move-object/from16 v9, v25

    .line 730
    .line 731
    move-object/from16 v5, v28

    .line 732
    .line 733
    move-object/from16 v11, v31

    .line 734
    .line 735
    const/4 v12, 0x0

    .line 736
    const/16 v21, 0x1

    .line 737
    .line 738
    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;)V

    .line 739
    .line 740
    .line 741
    move-object v9, v5

    .line 742
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 743
    .line 744
    .line 745
    :goto_1f
    move-object v10, v2

    .line 746
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 747
    .line 748
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 749
    .line 750
    if-eqz v0, :cond_48

    .line 751
    .line 752
    const v2, 0x1a048e3

    .line 753
    .line 754
    .line 755
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 756
    .line 757
    .line 758
    xor-int/lit8 v2, v27, 0x6

    .line 759
    .line 760
    const/4 v5, 0x4

    .line 761
    if-le v2, v5, :cond_43

    .line 762
    .line 763
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    if-nez v2, :cond_45

    .line 768
    .line 769
    :cond_43
    and-int/lit8 v2, v26, 0x6

    .line 770
    .line 771
    if-ne v2, v5, :cond_44

    .line 772
    .line 773
    goto :goto_20

    .line 774
    :cond_44
    move/from16 v21, v12

    .line 775
    .line 776
    :cond_45
    :goto_20
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    if-nez v21, :cond_46

    .line 781
    .line 782
    if-ne v2, v15, :cond_47

    .line 783
    .line 784
    :cond_46
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    .line 785
    .line 786
    invoke-direct {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    :cond_47
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    .line 793
    .line 794
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 795
    .line 796
    invoke-static {v2, v5, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 801
    .line 802
    .line 803
    goto :goto_21

    .line 804
    :cond_48
    const v2, 0x1a4cdf0

    .line 805
    .line 806
    .line 807
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 811
    .line 812
    .line 813
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 814
    .line 815
    :goto_21
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    .line 816
    .line 817
    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    iget-object v6, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 822
    .line 823
    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    move-object/from16 v6, v37

    .line 828
    .line 829
    invoke-static {v5, v9, v6, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    .line 830
    .line 831
    .line 832
    move-result-object v5

    .line 833
    invoke-interface {v5, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 838
    .line 839
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    .line 840
    .line 841
    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    iget-object v8, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 846
    .line 847
    move-object/from16 v7, p4

    .line 848
    .line 849
    move-object/from16 v5, p6

    .line 850
    .line 851
    move v6, v0

    .line 852
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/ImageKt;->scrollableArea$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;ZLandroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    move-object v8, v3

    .line 857
    iget-object v4, v8, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 858
    .line 859
    const/4 v7, 0x0

    .line 860
    move-object v3, v0

    .line 861
    move-object v2, v9

    .line 862
    move-object v5, v10

    .line 863
    move-object v6, v14

    .line 864
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;Landroidx/compose/runtime/Composer;I)V

    .line 865
    .line 866
    .line 867
    goto :goto_22

    .line 868
    :cond_49
    move-object v8, v3

    .line 869
    move-object v6, v14

    .line 870
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 871
    .line 872
    .line 873
    :goto_22
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 874
    .line 875
    .line 876
    move-result-object v14

    .line 877
    if-eqz v14, :cond_4a

    .line 878
    .line 879
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;

    .line 880
    .line 881
    move-object/from16 v3, p2

    .line 882
    .line 883
    move-object/from16 v4, p3

    .line 884
    .line 885
    move-object/from16 v5, p4

    .line 886
    .line 887
    move/from16 v6, p5

    .line 888
    .line 889
    move-object/from16 v7, p6

    .line 890
    .line 891
    move-object/from16 v9, p8

    .line 892
    .line 893
    move-object/from16 v10, p9

    .line 894
    .line 895
    move/from16 v12, p12

    .line 896
    .line 897
    move-object v2, v8

    .line 898
    move v11, v13

    .line 899
    move-object/from16 v8, p7

    .line 900
    .line 901
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V

    .line 902
    .line 903
    .line 904
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 905
    .line 906
    :cond_4a
    return-void
.end method

.method public static final NavigationDrawerItemBadge(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v3, p3

    .line 7
    .line 8
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, 0x28c14a1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    move-object/from16 v1, p0

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    const/4 v2, 0x2

    .line 27
    :goto_0
    or-int v2, p4, v2

    .line 28
    .line 29
    const/16 v4, 0x30

    .line 30
    .line 31
    or-int/2addr v2, v4

    .line 32
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    const/16 v5, 0x100

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v5, 0x80

    .line 42
    .line 43
    :goto_1
    or-int v10, v2, v5

    .line 44
    .line 45
    and-int/lit16 v2, v10, 0x93

    .line 46
    .line 47
    const/16 v5, 0x92

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x1

    .line 51
    if-eq v2, v5, :cond_2

    .line 52
    .line 53
    move v2, v12

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v2, v11

    .line 56
    :goto_2
    and-int/lit8 v5, v10, 0x1

    .line 57
    .line 58
    invoke-virtual {v3, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 65
    .line 66
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 67
    .line 68
    invoke-static {v5, v2, v3, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 73
    .line 74
    const/16 v6, 0x20

    .line 75
    .line 76
    ushr-long v6, v4, v6

    .line 77
    .line 78
    xor-long/2addr v4, v6

    .line 79
    long-to-int v4, v4

    .line 80
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 85
    .line 86
    invoke-static {v3, v13}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 98
    .line 99
    .line 100
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 101
    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 109
    .line 110
    .line 111
    :goto_3
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 112
    .line 113
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 117
    .line 118
    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 126
    .line 127
    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 131
    .line 132
    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 133
    .line 134
    .line 135
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 136
    .line 137
    invoke-static {v3, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 138
    .line 139
    .line 140
    and-int/lit8 v8, v10, 0xe

    .line 141
    .line 142
    const/16 v9, 0x3e

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    move-object v7, v3

    .line 146
    const-wide/16 v3, 0x0

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-static/range {v1 .. v9}, Lorg/jsoup/helper/Validate;->TextLabelLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 151
    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    const v1, -0x3623cc17

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 159
    .line 160
    .line 161
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 162
    .line 163
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    const/high16 v1, 0x41800000    # 16.0f

    .line 173
    .line 174
    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 179
    .line 180
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    const/16 v19, 0xe

    .line 192
    .line 193
    const/high16 v15, 0x40000000    # 2.0f

    .line 194
    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    shr-int/lit8 v2, v10, 0x6

    .line 204
    .line 205
    and-int/lit8 v4, v2, 0xe

    .line 206
    .line 207
    const/16 v5, 0xc

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    move-object v3, v7

    .line 211
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_4
    const v0, -0x3620923b

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 225
    .line 226
    .line 227
    :goto_4
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 228
    .line 229
    .line 230
    move-object v2, v13

    .line 231
    goto :goto_5

    .line 232
    :cond_5
    move-object v7, v3

    .line 233
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 234
    .line 235
    .line 236
    move-object/from16 v2, p1

    .line 237
    .line 238
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    if-eqz v6, :cond_6

    .line 243
    .line 244
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 245
    .line 246
    const/16 v5, 0x8

    .line 247
    .line 248
    move-object/from16 v1, p0

    .line 249
    .line 250
    move-object/from16 v3, p2

    .line 251
    .line 252
    move/from16 v4, p4

    .line 253
    .line 254
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 255
    .line 256
    .line 257
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 258
    .line 259
    :cond_6
    return-void
.end method

.method public static final OutgoingServerSettingsContent(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, -0x4074da4f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, p5

    .line 32
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v1, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v1

    .line 44
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const/16 v1, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v1, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v1

    .line 56
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x800

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v1, 0x400

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v1

    .line 68
    and-int/lit16 v1, v0, 0x493

    .line 69
    .line 70
    const/16 v2, 0x492

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x1

    .line 74
    if-eq v1, v2, :cond_4

    .line 75
    .line 76
    move v1, v4

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move v1, v3

    .line 79
    :goto_4
    and-int/2addr v0, v4

    .line 80
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/content/res/Resources;

    .line 93
    .line 94
    const-string v1, "OutgoingServerSettingsContent"

    .line 95
    .line 96
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 97
    .line 98
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda5;

    .line 107
    .line 108
    invoke-direct {v2, p0, p1, p2, v0}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda5;-><init>(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;)V

    .line 109
    .line 110
    .line 111
    const v0, -0x47e87cf

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2, p4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/16 v2, 0x30

    .line 119
    .line 120
    invoke-static {v1, v0, p4, v2, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 125
    .line 126
    .line 127
    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    if-eqz p4, :cond_6

    .line 132
    .line 133
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/4 v6, 0x6

    .line 136
    move-object v1, p0

    .line 137
    move-object v2, p1

    .line 138
    move-object v3, p2

    .line 139
    move-object v4, p3

    .line 140
    move v5, p5

    .line 141
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 145
    .line 146
    :cond_6
    return-void
.end method

.method public static final ServerSettingRow(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    move-object/from16 v7, p3

    .line 2
    .line 3
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x16730e47

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int v0, p4, v0

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v1, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr v0, v1

    .line 36
    or-int/lit16 v0, v0, 0xd80

    .line 37
    .line 38
    and-int/lit16 v1, v0, 0x493

    .line 39
    .line 40
    const/16 v4, 0x492

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v10, 0x1

    .line 44
    if-eq v1, v4, :cond_2

    .line 45
    .line 46
    move v1, v10

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v5

    .line 49
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {v7, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 58
    .line 59
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    .line 61
    invoke-interface {v1, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 66
    .line 67
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 68
    .line 69
    const/16 v8, 0x30

    .line 70
    .line 71
    invoke-static {v6, v4, v7, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 76
    .line 77
    ushr-long v12, v8, v2

    .line 78
    .line 79
    xor-long/2addr v8, v12

    .line 80
    long-to-int v2, v8

    .line 81
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v7, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 95
    .line 96
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 97
    .line 98
    .line 99
    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 100
    .line 101
    if-eqz v9, :cond_3

    .line 102
    .line 103
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 108
    .line 109
    .line 110
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 111
    .line 112
    invoke-static {v7, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 113
    .line 114
    .line 115
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    .line 117
    invoke-static {v7, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v7, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 130
    .line 131
    invoke-static {v7, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 132
    .line 133
    .line 134
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 135
    .line 136
    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    const v1, -0x1fb8f149

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 146
    .line 147
    .line 148
    shr-int/lit8 v0, v0, 0x3

    .line 149
    .line 150
    and-int/lit8 v8, v0, 0xe

    .line 151
    .line 152
    const/16 v9, 0x7e

    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    const/4 v5, 0x0

    .line 159
    const/4 v6, 0x0

    .line 160
    move-object v0, p1

    .line 161
    invoke-static/range {v0 .. v9}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 165
    .line 166
    .line 167
    move-object v4, v11

    .line 168
    goto :goto_4

    .line 169
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    move-object/from16 v4, p2

    .line 173
    .line 174
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    new-instance v1, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 181
    .line 182
    const/16 v6, 0xb

    .line 183
    .line 184
    move-object v2, p0

    .line 185
    move-object v3, p1

    .line 186
    move/from16 v5, p4

    .line 187
    .line 188
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 189
    .line 190
    .line 191
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 192
    .line 193
    :cond_5
    return-void
.end method

.method public static final Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    .line 1
    move/from16 v9, p9

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x48ece60e

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, p10, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v2, v9, 0x6

    .line 18
    .line 19
    move v3, v2

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit8 v2, v9, 0x6

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x2

    .line 38
    :goto_0
    or-int/2addr v3, v9

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object/from16 v2, p0

    .line 41
    .line 42
    move v3, v9

    .line 43
    :goto_1
    and-int/lit8 v4, p10, 0x2

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x30

    .line 48
    .line 49
    :cond_3
    move-object/from16 v5, p1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    and-int/lit8 v5, v9, 0x30

    .line 53
    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    move-object/from16 v5, p1

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_5

    .line 63
    .line 64
    const/16 v6, 0x20

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    const/16 v6, 0x10

    .line 68
    .line 69
    :goto_2
    or-int/2addr v3, v6

    .line 70
    :goto_3
    and-int/lit16 v6, v9, 0x180

    .line 71
    .line 72
    if-nez v6, :cond_8

    .line 73
    .line 74
    and-int/lit8 v6, p10, 0x4

    .line 75
    .line 76
    if-nez v6, :cond_6

    .line 77
    .line 78
    move-wide/from16 v6, p2

    .line 79
    .line 80
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_7

    .line 85
    .line 86
    const/16 v8, 0x100

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move-wide/from16 v6, p2

    .line 90
    .line 91
    :cond_7
    const/16 v8, 0x80

    .line 92
    .line 93
    :goto_4
    or-int/2addr v3, v8

    .line 94
    goto :goto_5

    .line 95
    :cond_8
    move-wide/from16 v6, p2

    .line 96
    .line 97
    :goto_5
    and-int/lit16 v8, v9, 0xc00

    .line 98
    .line 99
    if-nez v8, :cond_a

    .line 100
    .line 101
    and-int/lit8 v8, p10, 0x8

    .line 102
    .line 103
    move-wide/from16 v10, p4

    .line 104
    .line 105
    if-nez v8, :cond_9

    .line 106
    .line 107
    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_9

    .line 112
    .line 113
    const/16 v8, 0x800

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_9
    const/16 v8, 0x400

    .line 117
    .line 118
    :goto_6
    or-int/2addr v3, v8

    .line 119
    goto :goto_7

    .line 120
    :cond_a
    move-wide/from16 v10, p4

    .line 121
    .line 122
    :goto_7
    and-int/lit16 v8, v9, 0x6000

    .line 123
    .line 124
    if-nez v8, :cond_d

    .line 125
    .line 126
    and-int/lit8 v8, p10, 0x10

    .line 127
    .line 128
    if-nez v8, :cond_b

    .line 129
    .line 130
    move/from16 v8, p6

    .line 131
    .line 132
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_c

    .line 137
    .line 138
    const/16 v12, 0x4000

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_b
    move/from16 v8, p6

    .line 142
    .line 143
    :cond_c
    const/16 v12, 0x2000

    .line 144
    .line 145
    :goto_8
    or-int/2addr v3, v12

    .line 146
    goto :goto_9

    .line 147
    :cond_d
    move/from16 v8, p6

    .line 148
    .line 149
    :goto_9
    const/high16 v12, 0x30000

    .line 150
    .line 151
    and-int/2addr v12, v9

    .line 152
    if-nez v12, :cond_f

    .line 153
    .line 154
    move-object/from16 v12, p7

    .line 155
    .line 156
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    if-eqz v13, :cond_e

    .line 161
    .line 162
    const/high16 v13, 0x20000

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :cond_e
    const/high16 v13, 0x10000

    .line 166
    .line 167
    :goto_a
    or-int/2addr v3, v13

    .line 168
    goto :goto_b

    .line 169
    :cond_f
    move-object/from16 v12, p7

    .line 170
    .line 171
    :goto_b
    const v13, 0x12493

    .line 172
    .line 173
    .line 174
    and-int/2addr v13, v3

    .line 175
    const v14, 0x12492

    .line 176
    .line 177
    .line 178
    if-eq v13, v14, :cond_10

    .line 179
    .line 180
    const/4 v13, 0x1

    .line 181
    goto :goto_c

    .line 182
    :cond_10
    const/4 v13, 0x0

    .line 183
    :goto_c
    and-int/lit8 v14, v3, 0x1

    .line 184
    .line 185
    invoke-virtual {v0, v14, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_1b

    .line 190
    .line 191
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 192
    .line 193
    .line 194
    and-int/lit8 v13, v9, 0x1

    .line 195
    .line 196
    const v14, -0xe001

    .line 197
    .line 198
    .line 199
    if-eqz v13, :cond_15

    .line 200
    .line 201
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    if-eqz v13, :cond_11

    .line 206
    .line 207
    goto :goto_e

    .line 208
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 209
    .line 210
    .line 211
    and-int/lit8 v1, p10, 0x4

    .line 212
    .line 213
    if-eqz v1, :cond_12

    .line 214
    .line 215
    and-int/lit16 v3, v3, -0x381

    .line 216
    .line 217
    :cond_12
    and-int/lit8 v1, p10, 0x8

    .line 218
    .line 219
    if-eqz v1, :cond_13

    .line 220
    .line 221
    and-int/lit16 v3, v3, -0x1c01

    .line 222
    .line 223
    :cond_13
    and-int/lit8 v1, p10, 0x10

    .line 224
    .line 225
    if-eqz v1, :cond_14

    .line 226
    .line 227
    and-int/2addr v3, v14

    .line 228
    :cond_14
    move-wide v12, v6

    .line 229
    move/from16 v16, v8

    .line 230
    .line 231
    move-wide v14, v10

    .line 232
    move-object v10, v2

    .line 233
    :goto_d
    move-object v11, v5

    .line 234
    goto :goto_11

    .line 235
    :cond_15
    :goto_e
    if-eqz v1, :cond_16

    .line 236
    .line 237
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 238
    .line 239
    goto :goto_f

    .line 240
    :cond_16
    move-object v1, v2

    .line 241
    :goto_f
    if-eqz v4, :cond_17

    .line 242
    .line 243
    sget-object v2, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 244
    .line 245
    move-object v5, v2

    .line 246
    :cond_17
    and-int/lit8 v2, p10, 0x4

    .line 247
    .line 248
    if-eqz v2, :cond_18

    .line 249
    .line 250
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 257
    .line 258
    iget-wide v6, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surface:J

    .line 259
    .line 260
    and-int/lit16 v3, v3, -0x381

    .line 261
    .line 262
    :cond_18
    and-int/lit8 v2, p10, 0x8

    .line 263
    .line 264
    if-eqz v2, :cond_19

    .line 265
    .line 266
    invoke-static {v6, v7, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 267
    .line 268
    .line 269
    move-result-wide v10

    .line 270
    and-int/lit16 v2, v3, -0x1c01

    .line 271
    .line 272
    move v3, v2

    .line 273
    :cond_19
    and-int/lit8 v2, p10, 0x10

    .line 274
    .line 275
    if-eqz v2, :cond_1a

    .line 276
    .line 277
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    and-int/2addr v3, v14

    .line 289
    const/4 v2, 0x0

    .line 290
    move/from16 v16, v2

    .line 291
    .line 292
    move-wide v12, v6

    .line 293
    :goto_10
    move-wide v14, v10

    .line 294
    move-object v10, v1

    .line 295
    goto :goto_d

    .line 296
    :cond_1a
    move-wide v12, v6

    .line 297
    move/from16 v16, v8

    .line 298
    .line 299
    goto :goto_10

    .line 300
    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 301
    .line 302
    .line 303
    const v1, 0xfffe

    .line 304
    .line 305
    .line 306
    and-int/2addr v1, v3

    .line 307
    const/high16 v2, 0x1c00000

    .line 308
    .line 309
    shl-int/lit8 v3, v3, 0x6

    .line 310
    .line 311
    and-int/2addr v2, v3

    .line 312
    or-int v21, v1, v2

    .line 313
    .line 314
    const/16 v22, 0x60

    .line 315
    .line 316
    const/16 v17, 0x0

    .line 317
    .line 318
    const/16 v18, 0x0

    .line 319
    .line 320
    move-object/from16 v19, p7

    .line 321
    .line 322
    move-object/from16 v20, v0

    .line 323
    .line 324
    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 325
    .line 326
    .line 327
    move-object v1, v10

    .line 328
    move-object v2, v11

    .line 329
    move-wide v3, v12

    .line 330
    move-wide v5, v14

    .line 331
    move/from16 v7, v16

    .line 332
    .line 333
    goto :goto_12

    .line 334
    :cond_1b
    move-object/from16 v20, v0

    .line 335
    .line 336
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 337
    .line 338
    .line 339
    move-object v1, v2

    .line 340
    move-object v2, v5

    .line 341
    move-wide v3, v6

    .line 342
    move v7, v8

    .line 343
    move-wide v5, v10

    .line 344
    :goto_12
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    if-eqz v11, :cond_1c

    .line 349
    .line 350
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SurfaceKt$$ExternalSyntheticLambda0;

    .line 351
    .line 352
    move-object/from16 v8, p7

    .line 353
    .line 354
    move/from16 v10, p10

    .line 355
    .line 356
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/SurfaceKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 357
    .line 358
    .line 359
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 360
    .line 361
    :cond_1c
    return-void
.end method

.method public static final TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V
    .locals 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p7

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v1, 0x31e284e3

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
    or-int v1, p8, v1

    .line 26
    .line 27
    and-int/lit8 v2, p9, 0x2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    or-int/lit8 v1, v1, 0x30

    .line 32
    .line 33
    move-object/from16 v4, p1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    move-object/from16 v4, p1

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    const/16 v5, 0x20

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/16 v5, 0x10

    .line 48
    .line 49
    :goto_1
    or-int/2addr v1, v5

    .line 50
    :goto_2
    and-int/lit8 v5, p9, 0x4

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    or-int/lit16 v1, v1, 0x180

    .line 55
    .line 56
    move-wide/from16 v6, p2

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_3
    move-wide/from16 v6, p2

    .line 60
    .line 61
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_4

    .line 66
    .line 67
    const/16 v8, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v8, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v8

    .line 73
    :goto_4
    and-int/lit8 v8, p9, 0x8

    .line 74
    .line 75
    if-eqz v8, :cond_5

    .line 76
    .line 77
    or-int/lit16 v1, v1, 0xc00

    .line 78
    .line 79
    move-object/from16 v9, p4

    .line 80
    .line 81
    goto :goto_6

    .line 82
    :cond_5
    move-object/from16 v9, p4

    .line 83
    .line 84
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_6

    .line 89
    .line 90
    const/16 v10, 0x800

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_6
    const/16 v10, 0x400

    .line 94
    .line 95
    :goto_5
    or-int/2addr v1, v10

    .line 96
    :goto_6
    const v10, 0x36000

    .line 97
    .line 98
    .line 99
    or-int/2addr v1, v10

    .line 100
    const v10, 0x12493

    .line 101
    .line 102
    .line 103
    and-int/2addr v10, v1

    .line 104
    const v11, 0x12492

    .line 105
    .line 106
    .line 107
    if-eq v10, v11, :cond_7

    .line 108
    .line 109
    const/4 v10, 0x1

    .line 110
    goto :goto_7

    .line 111
    :cond_7
    const/4 v10, 0x0

    .line 112
    :goto_7
    and-int/lit8 v11, v1, 0x1

    .line 113
    .line 114
    invoke-virtual {v0, v11, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_b

    .line 119
    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_8
    move-object v2, v4

    .line 126
    :goto_8
    if-eqz v5, :cond_9

    .line 127
    .line 128
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 129
    .line 130
    move-wide/from16 v21, v4

    .line 131
    .line 132
    move-object v4, v2

    .line 133
    move-wide/from16 v2, v21

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_9
    move-object v4, v2

    .line 137
    move-wide v2, v6

    .line 138
    :goto_9
    if-eqz v8, :cond_a

    .line 139
    .line 140
    const/4 v5, 0x0

    .line 141
    move-object v8, v5

    .line 142
    goto :goto_a

    .line 143
    :cond_a
    move-object v8, v9

    .line 144
    :goto_a
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 145
    .line 146
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 151
    .line 152
    iget-object v5, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 153
    .line 154
    and-int/lit16 v6, v1, 0x3fe

    .line 155
    .line 156
    shr-int/lit8 v1, v1, 0x9

    .line 157
    .line 158
    and-int/lit8 v1, v1, 0xe

    .line 159
    .line 160
    or-int/lit16 v1, v1, 0x6180

    .line 161
    .line 162
    const v20, 0x1abf8

    .line 163
    .line 164
    .line 165
    move/from16 v19, v1

    .line 166
    .line 167
    move-object v1, v4

    .line 168
    move-object/from16 v16, v5

    .line 169
    .line 170
    const-wide/16 v4, 0x0

    .line 171
    .line 172
    move/from16 v18, v6

    .line 173
    .line 174
    const-wide/16 v6, 0x0

    .line 175
    .line 176
    const-wide/16 v9, 0x0

    .line 177
    .line 178
    const/4 v11, 0x1

    .line 179
    const/4 v12, 0x0

    .line 180
    const v13, 0x7fffffff

    .line 181
    .line 182
    .line 183
    const/4 v14, 0x0

    .line 184
    const/4 v15, 0x0

    .line 185
    move-object/from16 v17, v0

    .line 186
    .line 187
    move-object/from16 v0, p0

    .line 188
    .line 189
    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 190
    .line 191
    .line 192
    move-object v4, v1

    .line 193
    move-wide v5, v2

    .line 194
    move-object v7, v8

    .line 195
    move v8, v11

    .line 196
    move v9, v13

    .line 197
    goto :goto_b

    .line 198
    :cond_b
    move-object/from16 v17, v0

    .line 199
    .line 200
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 201
    .line 202
    .line 203
    move/from16 v8, p5

    .line 204
    .line 205
    move-wide v5, v6

    .line 206
    move-object v7, v9

    .line 207
    move/from16 v9, p6

    .line 208
    .line 209
    :goto_b
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda1;

    .line 216
    .line 217
    move-object/from16 v3, p0

    .line 218
    .line 219
    move/from16 v10, p8

    .line 220
    .line 221
    move/from16 v11, p9

    .line 222
    .line 223
    invoke-direct/range {v2 .. v11}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IIII)V

    .line 224
    .line 225
    .line 226
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 227
    .line 228
    :cond_c
    return-void
.end method

.method public static final TextBodySmall-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    .line 1
    move/from16 v9, p9

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x40c0b339

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v9, 0x6

    .line 14
    .line 15
    move-object/from16 v10, p0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int/2addr v1, v9

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v9

    .line 31
    :goto_1
    and-int/lit8 v2, p10, 0x2

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    or-int/lit8 v1, v1, 0x30

    .line 36
    .line 37
    :cond_2
    move-object/from16 v3, p1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    and-int/lit8 v3, v9, 0x30

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    move-object/from16 v3, p1

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    const/16 v4, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/16 v4, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v1, v4

    .line 58
    :goto_3
    or-int/lit16 v4, v1, 0x180

    .line 59
    .line 60
    and-int/lit8 v5, p10, 0x8

    .line 61
    .line 62
    if-eqz v5, :cond_6

    .line 63
    .line 64
    or-int/lit16 v4, v1, 0xd80

    .line 65
    .line 66
    :cond_5
    move-object/from16 v1, p4

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_6
    and-int/lit16 v1, v9, 0xc00

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    move-object/from16 v1, p4

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_7

    .line 80
    .line 81
    const/16 v6, 0x800

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_7
    const/16 v6, 0x400

    .line 85
    .line 86
    :goto_4
    or-int/2addr v4, v6

    .line 87
    :goto_5
    and-int/lit8 v6, p10, 0x10

    .line 88
    .line 89
    if-eqz v6, :cond_9

    .line 90
    .line 91
    or-int/lit16 v4, v4, 0x6000

    .line 92
    .line 93
    :cond_8
    move/from16 v7, p5

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_9
    and-int/lit16 v7, v9, 0x6000

    .line 97
    .line 98
    if-nez v7, :cond_8

    .line 99
    .line 100
    move/from16 v7, p5

    .line 101
    .line 102
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_a

    .line 107
    .line 108
    const/16 v8, 0x4000

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_a
    const/16 v8, 0x2000

    .line 112
    .line 113
    :goto_6
    or-int/2addr v4, v8

    .line 114
    :goto_7
    and-int/lit8 v8, p10, 0x20

    .line 115
    .line 116
    const/high16 v11, 0x30000

    .line 117
    .line 118
    if-eqz v8, :cond_c

    .line 119
    .line 120
    or-int/2addr v4, v11

    .line 121
    :cond_b
    move/from16 v11, p6

    .line 122
    .line 123
    goto :goto_9

    .line 124
    :cond_c
    and-int/2addr v11, v9

    .line 125
    if-nez v11, :cond_b

    .line 126
    .line 127
    move/from16 v11, p6

    .line 128
    .line 129
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    if-eqz v12, :cond_d

    .line 134
    .line 135
    const/high16 v12, 0x20000

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_d
    const/high16 v12, 0x10000

    .line 139
    .line 140
    :goto_8
    or-int/2addr v4, v12

    .line 141
    :goto_9
    and-int/lit8 v12, p10, 0x40

    .line 142
    .line 143
    const/high16 v13, 0x180000

    .line 144
    .line 145
    if-eqz v12, :cond_f

    .line 146
    .line 147
    or-int/2addr v4, v13

    .line 148
    :cond_e
    move-object/from16 v13, p7

    .line 149
    .line 150
    goto :goto_b

    .line 151
    :cond_f
    and-int/2addr v13, v9

    .line 152
    if-nez v13, :cond_e

    .line 153
    .line 154
    move-object/from16 v13, p7

    .line 155
    .line 156
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    if-eqz v14, :cond_10

    .line 161
    .line 162
    const/high16 v14, 0x100000

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :cond_10
    const/high16 v14, 0x80000

    .line 166
    .line 167
    :goto_a
    or-int/2addr v4, v14

    .line 168
    :goto_b
    const v14, 0x92493

    .line 169
    .line 170
    .line 171
    and-int/2addr v14, v4

    .line 172
    const v15, 0x92492

    .line 173
    .line 174
    .line 175
    const/16 v16, 0x1

    .line 176
    .line 177
    if-eq v14, v15, :cond_11

    .line 178
    .line 179
    move/from16 v14, v16

    .line 180
    .line 181
    goto :goto_c

    .line 182
    :cond_11
    const/4 v14, 0x0

    .line 183
    :goto_c
    and-int/lit8 v15, v4, 0x1

    .line 184
    .line 185
    invoke-virtual {v0, v15, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    if-eqz v14, :cond_17

    .line 190
    .line 191
    if-eqz v2, :cond_12

    .line 192
    .line 193
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 194
    .line 195
    move-object v11, v2

    .line 196
    :goto_d
    move v2, v12

    .line 197
    goto :goto_e

    .line 198
    :cond_12
    move-object v11, v3

    .line 199
    goto :goto_d

    .line 200
    :goto_e
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 201
    .line 202
    if-eqz v5, :cond_13

    .line 203
    .line 204
    const/4 v1, 0x0

    .line 205
    :cond_13
    move-object/from16 v18, v1

    .line 206
    .line 207
    if-eqz v6, :cond_14

    .line 208
    .line 209
    move/from16 v21, v16

    .line 210
    .line 211
    goto :goto_f

    .line 212
    :cond_14
    move/from16 v21, v7

    .line 213
    .line 214
    :goto_f
    if-eqz v8, :cond_15

    .line 215
    .line 216
    const v1, 0x7fffffff

    .line 217
    .line 218
    .line 219
    move/from16 v23, v1

    .line 220
    .line 221
    goto :goto_10

    .line 222
    :cond_15
    move/from16 v23, p6

    .line 223
    .line 224
    :goto_10
    if-eqz v2, :cond_16

    .line 225
    .line 226
    sget-object v1, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    move-object/from16 v25, v1

    .line 232
    .line 233
    goto :goto_11

    .line 234
    :cond_16
    move-object/from16 v25, p7

    .line 235
    .line 236
    :goto_11
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 243
    .line 244
    iget-object v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 245
    .line 246
    and-int/lit16 v2, v4, 0x3fe

    .line 247
    .line 248
    shr-int/lit8 v3, v4, 0x9

    .line 249
    .line 250
    and-int/lit8 v3, v3, 0xe

    .line 251
    .line 252
    shr-int/lit8 v5, v4, 0x6

    .line 253
    .line 254
    and-int/lit16 v5, v5, 0x380

    .line 255
    .line 256
    or-int/2addr v3, v5

    .line 257
    shr-int/lit8 v5, v4, 0x3

    .line 258
    .line 259
    const v6, 0xe000

    .line 260
    .line 261
    .line 262
    and-int/2addr v5, v6

    .line 263
    or-int/2addr v3, v5

    .line 264
    const/high16 v5, 0x380000

    .line 265
    .line 266
    and-int/2addr v4, v5

    .line 267
    or-int v30, v3, v4

    .line 268
    .line 269
    const v31, 0x2abf8

    .line 270
    .line 271
    .line 272
    const-wide/16 v14, 0x0

    .line 273
    .line 274
    const-wide/16 v16, 0x0

    .line 275
    .line 276
    const-wide/16 v19, 0x0

    .line 277
    .line 278
    const/16 v22, 0x0

    .line 279
    .line 280
    const/16 v24, 0x0

    .line 281
    .line 282
    const/16 v26, 0x0

    .line 283
    .line 284
    move-object/from16 v28, v0

    .line 285
    .line 286
    move-object/from16 v27, v1

    .line 287
    .line 288
    move/from16 v29, v2

    .line 289
    .line 290
    invoke-static/range {v10 .. v31}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 291
    .line 292
    .line 293
    move-object v2, v11

    .line 294
    move-wide v3, v12

    .line 295
    move-object/from16 v5, v18

    .line 296
    .line 297
    move/from16 v6, v21

    .line 298
    .line 299
    move/from16 v7, v23

    .line 300
    .line 301
    move-object/from16 v8, v25

    .line 302
    .line 303
    goto :goto_12

    .line 304
    :cond_17
    move-object/from16 v28, v0

    .line 305
    .line 306
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 307
    .line 308
    .line 309
    move-object/from16 v8, p7

    .line 310
    .line 311
    move-object v5, v1

    .line 312
    move-object v2, v3

    .line 313
    move v6, v7

    .line 314
    move-wide/from16 v3, p2

    .line 315
    .line 316
    move/from16 v7, p6

    .line 317
    .line 318
    :goto_12
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    if-eqz v11, :cond_18

    .line 323
    .line 324
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;

    .line 325
    .line 326
    move-object/from16 v1, p0

    .line 327
    .line 328
    move/from16 v10, p10

    .line 329
    .line 330
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILkotlinx/collections/immutable/PersistentMap;II)V

    .line 331
    .line 332
    .line 333
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 334
    .line 335
    :cond_18
    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    array-length v1, p0

    .line 8
    array-length v2, p1

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    move v1, v0

    .line 13
    :goto_0
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_4

    .line 15
    .line 16
    aget-object v2, p0, v1

    .line 17
    .line 18
    iget-char v3, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 19
    .line 20
    aget-object v4, p1, v1

    .line 21
    .line 22
    iget-char v5, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 23
    .line 24
    if-ne v3, v5, :cond_3

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 27
    .line 28
    array-length v2, v2

    .line 29
    iget-object v3, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 30
    .line 31
    array-length v3, v3

    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    return v0

    .line 39
    :cond_4
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_5
    :goto_2
    return v0
.end method

.method public static checkNotNullFromProvides(Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static copyOfRange([FI)[F
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array p1, p1, [F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;

    .line 9
    .line 10
    invoke-direct {v0, v2}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lokio/AsyncTimeout$Companion;

    .line 15
    .line 16
    invoke-direct {v0, v2}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Package manager required to locate emoji font provider"

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/room/util/RelationUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Landroid/content/Intent;

    .line 29
    .line 30
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 31
    .line 32
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 56
    .line 57
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    and-int/2addr v6, v7

    .line 69
    if-ne v6, v7, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v4, v5

    .line 73
    :goto_1
    if-nez v4, :cond_3

    .line 74
    .line 75
    :goto_2
    move-object v6, v5

    .line 76
    goto :goto_4

    .line 77
    :cond_3
    :try_start_0
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v8}, Lokio/AsyncTimeout$Companion;->getSigningSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    array-length v2, v0

    .line 91
    :goto_3
    if-ge v3, v2, :cond_4

    .line 92
    .line 93
    aget-object v4, v0, v3

    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    new-instance v6, Landroidx/core/provider/FontRequest;

    .line 110
    .line 111
    const-string v9, "emojicompat-emoji-font"

    .line 112
    .line 113
    const/4 v11, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    invoke-direct/range {v6 .. v12}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 121
    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :goto_4
    if-nez v6, :cond_5

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    new-instance v5, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    .line 130
    .line 131
    new-instance v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 132
    .line 133
    invoke-direct {v0, p0, v6}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v5, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V

    .line 137
    .line 138
    .line 139
    :goto_5
    return-object v5
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v5, v2

    .line 10
    const/4 v4, 0x1

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-ge v4, v6, :cond_f

    .line 16
    .line 17
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/16 v7, 0x45

    .line 22
    .line 23
    const/16 v8, 0x65

    .line 24
    .line 25
    if-ge v4, v6, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int/lit8 v9, v6, -0x41

    .line 32
    .line 33
    add-int/lit8 v10, v6, -0x5a

    .line 34
    .line 35
    mul-int/2addr v10, v9

    .line 36
    if-lez v10, :cond_0

    .line 37
    .line 38
    add-int/lit8 v9, v6, -0x61

    .line 39
    .line 40
    add-int/lit8 v10, v6, -0x7a

    .line 41
    .line 42
    mul-int/2addr v10, v9

    .line 43
    if-gtz v10, :cond_1

    .line 44
    .line 45
    :cond_0
    if-eq v6, v8, :cond_1

    .line 46
    .line 47
    if-eq v6, v7, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_e

    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const/16 v9, 0x7a

    .line 72
    .line 73
    if-eq v6, v9, :cond_d

    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/16 v9, 0x5a

    .line 80
    .line 81
    if-ne v6, v9, :cond_3

    .line 82
    .line 83
    goto/16 :goto_c

    .line 84
    .line 85
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    new-array v6, v6, [F

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    move v11, v2

    .line 96
    const/4 v10, 0x1

    .line 97
    :goto_3
    if-ge v10, v9, :cond_c

    .line 98
    .line 99
    move v13, v2

    .line 100
    move v14, v13

    .line 101
    move v15, v14

    .line 102
    move/from16 v16, v15

    .line 103
    .line 104
    move v12, v10

    .line 105
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-ge v12, v3, :cond_9

    .line 110
    .line 111
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const/16 v2, 0x20

    .line 116
    .line 117
    if-eq v3, v2, :cond_7

    .line 118
    .line 119
    if-eq v3, v7, :cond_6

    .line 120
    .line 121
    if-eq v3, v8, :cond_6

    .line 122
    .line 123
    packed-switch v3, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    goto :goto_6

    .line 127
    :pswitch_0
    if-nez v14, :cond_4

    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    const/4 v14, 0x1

    .line 131
    goto :goto_7

    .line 132
    :cond_4
    :goto_5
    const/4 v13, 0x0

    .line 133
    const/4 v15, 0x1

    .line 134
    const/16 v16, 0x1

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :pswitch_1
    if-eq v12, v10, :cond_5

    .line 138
    .line 139
    if-nez v13, :cond_5

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    :goto_6
    const/4 v13, 0x0

    .line 143
    goto :goto_7

    .line 144
    :cond_6
    const/4 v13, 0x1

    .line 145
    goto :goto_7

    .line 146
    :cond_7
    :pswitch_2
    const/4 v13, 0x0

    .line 147
    const/4 v15, 0x1

    .line 148
    :goto_7
    if-eqz v15, :cond_8

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    :goto_8
    if-ge v10, v12, :cond_a

    .line 156
    .line 157
    add-int/lit8 v2, v11, 0x1

    .line 158
    .line 159
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    aput v3, v6, v11

    .line 168
    .line 169
    move v11, v2

    .line 170
    goto :goto_9

    .line 171
    :catch_0
    move-exception v0

    .line 172
    goto :goto_b

    .line 173
    :cond_a
    :goto_9
    if-eqz v16, :cond_b

    .line 174
    .line 175
    move v10, v12

    .line 176
    :goto_a
    const/4 v2, 0x0

    .line 177
    goto :goto_3

    .line 178
    :cond_b
    add-int/lit8 v10, v12, 0x1

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_c
    invoke-static {v6, v11}, Lkotlin/math/MathKt;->copyOfRange([FI)[F

    .line 182
    .line 183
    .line 184
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    move-object v3, v2

    .line 186
    const/4 v2, 0x0

    .line 187
    goto :goto_d

    .line 188
    :goto_b
    const-string v1, "error in parsing \""

    .line 189
    .line 190
    const-string v2, "\""

    .line 191
    .line 192
    invoke-static {v1, v5, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    const/4 v0, 0x0

    .line 200
    return-object v0

    .line 201
    :cond_d
    :goto_c
    new-array v3, v2, [F

    .line 202
    .line 203
    :goto_d
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    .line 208
    .line 209
    invoke-direct {v2, v5, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_e
    add-int/lit8 v2, v4, 0x1

    .line 216
    .line 217
    move v5, v4

    .line 218
    move v4, v2

    .line 219
    const/4 v2, 0x0

    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_f
    sub-int/2addr v4, v5

    .line 223
    const/4 v2, 0x1

    .line 224
    if-ne v4, v2, :cond_10

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-ge v5, v2, :cond_10

    .line 231
    .line 232
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const/4 v2, 0x0

    .line 237
    new-array v3, v2, [F

    .line 238
    .line 239
    new-instance v4, Landroidx/core/graphics/PathParser$PathDataNode;

    .line 240
    .line 241
    invoke-direct {v4, v0, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_e

    .line 248
    :cond_10
    const/4 v2, 0x0

    .line 249
    :goto_e
    new-array v0, v2, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 256
    .line 257
    return-object v0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    .line 9
    .line 10
    aget-object v3, p0, v1

    .line 11
    .line 12
    invoke-direct {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    .line 13
    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v0
.end method

.method public static final defaultValueEqualsCommon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    move v0, v2

    .line 21
    move v3, v0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ge v0, v5, :cond_6

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    add-int/lit8 v6, v4, 0x1

    .line 34
    .line 35
    const/16 v7, 0x28

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    if-eq v5, v7, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    if-eq v5, v7, :cond_4

    .line 43
    .line 44
    const/16 v7, 0x29

    .line 45
    .line 46
    if-eq v5, v7, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    sub-int/2addr v5, v1

    .line 58
    if-eq v4, v5, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    move v4, v6

    .line 66
    goto :goto_0

    .line 67
    :cond_6
    if-nez v3, :cond_7

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sub-int/2addr v0, v1

    .line 74
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0

    .line 91
    :cond_7
    :goto_2
    return v2
.end method

.method public static final findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavHostController;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    :goto_0
    if-eqz v0, :cond_2

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->findNavController(Landroid/view/View;)Landroidx/navigation/NavHostController;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    instance-of v0, p0, Landroidx/fragment/app/DialogFragment;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    move-object v0, v1

    .line 57
    :goto_1
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    move-object v0, v1

    .line 77
    :goto_2
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->findNavController(Landroid/view/View;)Landroidx/navigation/NavHostController;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_6
    const-string v0, "Fragment "

    .line 85
    .line 86
    const-string v2, " does not have a NavController set"

    .line 87
    .line 88
    invoke-static {v0, p0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public static fitPrioritizingHeight-Zbe2FdA(IIII)J
    .locals 4

    .line 1
    const v0, 0x3fffe

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne p3, v1, :cond_0

    .line 12
    .line 13
    move p3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    :goto_0
    if-ne p3, v1, :cond_1

    .line 20
    .line 21
    move v2, p2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, p3

    .line 24
    :goto_1
    const/16 v3, 0x1fff

    .line 25
    .line 26
    if-ge v2, v3, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/16 v0, 0x7fff

    .line 30
    .line 31
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    const v0, 0xfffe

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const v0, 0xffff

    .line 38
    .line 39
    .line 40
    if-ge v2, v0, :cond_4

    .line 41
    .line 42
    const/16 v0, 0x7ffe

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const v0, 0x3ffff

    .line 46
    .line 47
    .line 48
    if-ge v2, v0, :cond_6

    .line 49
    .line 50
    const/16 v0, 0x1ffe

    .line 51
    .line 52
    :goto_2
    if-ne p1, v1, :cond_5

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_5
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0, v1, p2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    return-wide p0

    .line 68
    :cond_6
    invoke-static {v2}, Landroidx/compose/ui/unit/ConstraintsKt;->throwInvalidConstraintsSizeException(I)Ljava/lang/Void;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 72
    .line 73
    .line 74
    const-wide/16 p0, 0x0

    .line 75
    .line 76
    return-wide p0
.end method

.method public static fitPrioritizingWidth-Zbe2FdA(IIII)J
    .locals 4

    .line 1
    const v0, 0x3fffe

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    move p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    move v2, p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, p1

    .line 24
    :goto_1
    const/16 v3, 0x1fff

    .line 25
    .line 26
    if-ge v2, v3, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/16 v0, 0x7fff

    .line 30
    .line 31
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    const v0, 0xfffe

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const v0, 0xffff

    .line 38
    .line 39
    .line 40
    if-ge v2, v0, :cond_4

    .line 41
    .line 42
    const/16 v0, 0x7ffe

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const v0, 0x3ffff

    .line 46
    .line 47
    .line 48
    if-ge v2, v0, :cond_6

    .line 49
    .line 50
    const/16 v0, 0x1ffe

    .line 51
    .line 52
    :goto_2
    if-ne p3, v1, :cond_5

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_5
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-static {p0, p1, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    return-wide p0

    .line 68
    :cond_6
    invoke-static {v2}, Landroidx/compose/ui/unit/ConstraintsKt;->throwInvalidConstraintsSizeException(I)Ljava/lang/Void;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 72
    .line 73
    .line 74
    const-wide/16 p0, 0x0

    .line 75
    .line 76
    return-wide p0
.end method

.method public static final formatString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Ljava/lang/Iterable;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/16 v6, 0x38

    .line 15
    .line 16
    const-string v2, ",\n"

    .line 17
    .line 18
    const-string v3, "\n"

    .line 19
    .line 20
    const-string v4, "\n"

    .line 21
    .line 22
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "    "

    .line 27
    .line 28
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string/jumbo v0, "},"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const-string p0, " }"

    .line 41
    .line 42
    return-object p0
.end method

.method public static final getAvailableAeModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput v2, v1, v2

    .line 14
    .line 15
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, p0

    .line 25
    :goto_0
    check-cast v1, [I

    .line 26
    .line 27
    new-instance p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;-><init>([I)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static final getAvailableAfModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput v2, v1, v2

    .line 14
    .line 15
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, p0

    .line 25
    :goto_0
    check-cast v1, [I

    .line 26
    .line 27
    new-instance p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;-><init>([I)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static final getAvailableAwbModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput v2, v1, v2

    .line 14
    .line 15
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, p0

    .line 25
    :goto_0
    check-cast v1, [I

    .line 26
    .line 27
    new-instance p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;-><init>([I)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    const-string v4, "text/plain"

    .line 8
    .line 9
    const-string v5, "text/html"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    if-ne p1, v0, :cond_3

    .line 13
    .line 14
    invoke-static {p0, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p0, "getBodyTextFromMessage: HTML requested, HTML found."

    .line 21
    .line 22
    new-array v0, v6, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    return-object v3

    .line 35
    :cond_1
    invoke-static {p0, v4}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_7

    .line 40
    .line 41
    const-string p1, "getBodyTextFromMessage: HTML requested, text found."

    .line 42
    .line 43
    new-array v0, v6, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    move-object v3, p0

    .line 55
    :cond_2
    invoke-static {v3}, Landroidx/work/OperationKt;->textToHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_3
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 61
    .line 62
    if-ne p1, v0, :cond_7

    .line 63
    .line 64
    invoke-static {p0, v4}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    const-string p0, "getBodyTextFromMessage: Text requested, text found."

    .line 71
    .line 72
    new-array v0, v6, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_4
    return-object v3

    .line 85
    :cond_5
    invoke-static {p0, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p0, :cond_7

    .line 90
    .line 91
    const-string p1, "getBodyTextFromMessage: Text requested, HTML found."

    .line 92
    .line 93
    new-array v0, v6, [Ljava/lang/Object;

    .line 94
    .line 95
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-eqz p0, :cond_6

    .line 103
    .line 104
    move-object v3, p0

    .line 105
    :cond_6
    invoke-static {v3}, Landroidx/work/OperationKt;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_7
    return-object v3
.end method

.method public static final getSupportedAeMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lkotlin/math/MathKt;->getAvailableAeModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    invoke-static {p0}, Lkotlin/math/MathKt;->getAvailableAeModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    return p1

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static final getVisibility()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/math/MathKt;->_visibility:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Visibility"

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
    const/high16 v0, 0x40c00000    # 6.0f

    .line 37
    .line 38
    const/high16 v2, 0x41400000    # 12.0f

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const v9, 0x410d1eb8    # 8.82f

    .line 45
    .line 46
    .line 47
    const/high16 v10, 0x40b00000    # 5.5f

    .line 48
    .line 49
    const v5, 0x40728f5c    # 3.79f

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const v7, 0x40e570a4    # 7.17f

    .line 54
    .line 55
    .line 56
    const v8, 0x400851ec    # 2.13f

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 60
    .line 61
    .line 62
    const/high16 v9, 0x41400000    # 12.0f

    .line 63
    .line 64
    const/high16 v10, 0x41880000    # 17.0f

    .line 65
    .line 66
    const v5, 0x41995c29    # 19.17f

    .line 67
    .line 68
    .line 69
    const v6, 0x416deb85    # 14.87f

    .line 70
    .line 71
    .line 72
    const v7, 0x417ca3d7    # 15.79f

    .line 73
    .line 74
    .line 75
    const/high16 v8, 0x41880000    # 17.0f

    .line 76
    .line 77
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 78
    .line 79
    .line 80
    const v0, -0x3ef2e148    # -8.82f

    .line 81
    .line 82
    .line 83
    const/high16 v2, -0x3f500000    # -5.5f

    .line 84
    .line 85
    const v5, -0x3f1a8f5c    # -7.17f

    .line 86
    .line 87
    .line 88
    const v6, -0x3ff7ae14    # -2.13f

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v5, v6, v0, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 92
    .line 93
    .line 94
    const/high16 v10, 0x40c00000    # 6.0f

    .line 95
    .line 96
    const v5, 0x409a8f5c    # 4.83f

    .line 97
    .line 98
    .line 99
    const v6, 0x4102147b    # 8.13f

    .line 100
    .line 101
    .line 102
    const v7, 0x41035c29    # 8.21f

    .line 103
    .line 104
    .line 105
    const/high16 v8, 0x40c00000    # 6.0f

    .line 106
    .line 107
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 108
    .line 109
    .line 110
    const/high16 v0, -0x40000000    # -2.0f

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 114
    .line 115
    .line 116
    const/high16 v9, 0x3f800000    # 1.0f

    .line 117
    .line 118
    const/high16 v10, 0x41380000    # 11.5f

    .line 119
    .line 120
    const/high16 v5, 0x40e00000    # 7.0f

    .line 121
    .line 122
    const/high16 v6, 0x40800000    # 4.0f

    .line 123
    .line 124
    const v7, 0x402eb852    # 2.73f

    .line 125
    .line 126
    .line 127
    const v8, 0x40e3851f    # 7.11f

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 131
    .line 132
    .line 133
    const/high16 v9, 0x41400000    # 12.0f

    .line 134
    .line 135
    const/high16 v10, 0x41980000    # 19.0f

    .line 136
    .line 137
    const v5, 0x402eb852    # 2.73f

    .line 138
    .line 139
    .line 140
    const v6, 0x417e3d71    # 15.89f

    .line 141
    .line 142
    .line 143
    const/high16 v7, 0x40e00000    # 7.0f

    .line 144
    .line 145
    const/high16 v8, 0x41980000    # 19.0f

    .line 146
    .line 147
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 148
    .line 149
    .line 150
    const/high16 v0, 0x41300000    # 11.0f

    .line 151
    .line 152
    const/high16 v2, -0x3f100000    # -7.5f

    .line 153
    .line 154
    const v5, 0x411451ec    # 9.27f

    .line 155
    .line 156
    .line 157
    const v6, -0x3fb8f5c3    # -3.11f

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v5, v6, v0, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 161
    .line 162
    .line 163
    const/high16 v10, 0x40800000    # 4.0f

    .line 164
    .line 165
    const v5, 0x41aa28f6    # 21.27f

    .line 166
    .line 167
    .line 168
    const v6, 0x40e3851f    # 7.11f

    .line 169
    .line 170
    .line 171
    const/high16 v7, 0x41880000    # 17.0f

    .line 172
    .line 173
    const/high16 v8, 0x40800000    # 4.0f

    .line 174
    .line 175
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 179
    .line 180
    .line 181
    const/high16 v0, 0x41100000    # 9.0f

    .line 182
    .line 183
    const/high16 v2, 0x41400000    # 12.0f

    .line 184
    .line 185
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 186
    .line 187
    .line 188
    const/high16 v9, 0x40200000    # 2.5f

    .line 189
    .line 190
    const/high16 v10, 0x40200000    # 2.5f

    .line 191
    .line 192
    const v5, 0x3fb0a3d7    # 1.38f

    .line 193
    .line 194
    .line 195
    const/4 v6, 0x0

    .line 196
    const/high16 v7, 0x40200000    # 2.5f

    .line 197
    .line 198
    const v8, 0x3f8f5c29    # 1.12f

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 202
    .line 203
    .line 204
    const v0, 0x4156147b    # 13.38f

    .line 205
    .line 206
    .line 207
    const/high16 v2, 0x41600000    # 14.0f

    .line 208
    .line 209
    const/high16 v5, 0x41400000    # 12.0f

    .line 210
    .line 211
    invoke-virtual {v4, v0, v2, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveTo(FFFF)V

    .line 212
    .line 213
    .line 214
    const v0, -0x4070a3d7    # -1.12f

    .line 215
    .line 216
    .line 217
    const/high16 v2, -0x3fe00000    # -2.5f

    .line 218
    .line 219
    invoke-virtual {v4, v2, v0, v2, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 220
    .line 221
    .line 222
    const v0, 0x4129eb85    # 10.62f

    .line 223
    .line 224
    .line 225
    const/high16 v2, 0x41100000    # 9.0f

    .line 226
    .line 227
    invoke-virtual {v4, v0, v2, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveTo(FFFF)V

    .line 228
    .line 229
    .line 230
    const/high16 v0, -0x40000000    # -2.0f

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 234
    .line 235
    .line 236
    const/high16 v9, -0x3f700000    # -4.5f

    .line 237
    .line 238
    const/high16 v10, 0x40900000    # 4.5f

    .line 239
    .line 240
    const v5, -0x3fe147ae    # -2.48f

    .line 241
    .line 242
    .line 243
    const/high16 v7, -0x3f700000    # -4.5f

    .line 244
    .line 245
    const v8, 0x400147ae    # 2.02f

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 249
    .line 250
    .line 251
    const v0, 0x411851ec    # 9.52f

    .line 252
    .line 253
    .line 254
    const/high16 v2, 0x41800000    # 16.0f

    .line 255
    .line 256
    const/high16 v5, 0x41400000    # 12.0f

    .line 257
    .line 258
    invoke-virtual {v4, v0, v2, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveTo(FFFF)V

    .line 259
    .line 260
    .line 261
    const v0, -0x3ffeb852    # -2.02f

    .line 262
    .line 263
    .line 264
    const/high16 v2, -0x3f700000    # -4.5f

    .line 265
    .line 266
    const/high16 v5, 0x40900000    # 4.5f

    .line 267
    .line 268
    invoke-virtual {v4, v5, v0, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 269
    .line 270
    .line 271
    const v0, 0x4167ae14    # 14.48f

    .line 272
    .line 273
    .line 274
    const/high16 v2, 0x40e00000    # 7.0f

    .line 275
    .line 276
    const/high16 v5, 0x41400000    # 12.0f

    .line 277
    .line 278
    invoke-virtual {v4, v0, v2, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveTo(FFFF)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 282
    .line 283
    .line 284
    iget-object v2, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 285
    .line 286
    const/high16 v4, 0x3f800000    # 1.0f

    .line 287
    .line 288
    const/high16 v5, 0x3f800000    # 1.0f

    .line 289
    .line 290
    const/high16 v6, 0x3f800000    # 1.0f

    .line 291
    .line 292
    const/4 v7, 0x2

    .line 293
    const/high16 v8, 0x3f800000    # 1.0f

    .line 294
    .line 295
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    sput-object v0, Lkotlin/math/MathKt;->_visibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 303
    .line 304
    return-object v0
.end method

.method public static incrementAll(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v1

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/camera/core/impl/DeferrableSurface;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->decrementUseCount()V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    throw v1

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public static launchFuture$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 8
    .line 9
    invoke-direct {v0, p0, v2, p1, v1}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/fsck/k9/sasl/OAuthBearer;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v11, 0x6

    .line 6
    new-array v12, v11, [F

    .line 7
    .line 8
    array-length v13, v0

    .line 9
    const/4 v15, 0x0

    .line 10
    move v8, v15

    .line 11
    const/16 v2, 0x6d

    .line 12
    .line 13
    :goto_0
    if-ge v8, v13, :cond_21

    .line 14
    .line 15
    aget-object v9, v0, v8

    .line 16
    .line 17
    iget-char v10, v9, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 18
    .line 19
    iget-object v3, v9, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 20
    .line 21
    aget v4, v12, v15

    .line 22
    .line 23
    const/16 v16, 0x1

    .line 24
    .line 25
    aget v5, v12, v16

    .line 26
    .line 27
    const/16 v17, 0x2

    .line 28
    .line 29
    aget v6, v12, v17

    .line 30
    .line 31
    const/16 v18, 0x3

    .line 32
    .line 33
    aget v7, v12, v18

    .line 34
    .line 35
    const/16 v19, 0x4

    .line 36
    .line 37
    aget v11, v12, v19

    .line 38
    .line 39
    const/16 v20, 0x5

    .line 40
    .line 41
    move/from16 v21, v15

    .line 42
    .line 43
    aget v15, v12, v20

    .line 44
    .line 45
    sparse-switch v10, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    :goto_1
    move/from16 v22, v17

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :sswitch_0
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v11, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    .line 56
    .line 57
    move v4, v11

    .line 58
    move v6, v4

    .line 59
    move v5, v15

    .line 60
    move v7, v5

    .line 61
    goto :goto_1

    .line 62
    :sswitch_1
    move/from16 v22, v19

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :sswitch_2
    move/from16 v22, v16

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :sswitch_3
    const/16 v22, 0x6

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :sswitch_4
    const/16 v22, 0x7

    .line 72
    .line 73
    :goto_2
    move/from16 v23, v11

    .line 74
    .line 75
    move/from16 v24, v15

    .line 76
    .line 77
    move v11, v4

    .line 78
    move v15, v5

    .line 79
    move/from16 v4, v21

    .line 80
    .line 81
    :goto_3
    array-length v5, v3

    .line 82
    if-ge v4, v5, :cond_20

    .line 83
    .line 84
    const/16 v5, 0x41

    .line 85
    .line 86
    if-eq v10, v5, :cond_1d

    .line 87
    .line 88
    const/16 v5, 0x43

    .line 89
    .line 90
    if-eq v10, v5, :cond_1c

    .line 91
    .line 92
    const/16 v14, 0x48

    .line 93
    .line 94
    if-eq v10, v14, :cond_1b

    .line 95
    .line 96
    const/16 v14, 0x51

    .line 97
    .line 98
    if-eq v10, v14, :cond_1a

    .line 99
    .line 100
    const/16 v5, 0x56

    .line 101
    .line 102
    if-eq v10, v5, :cond_19

    .line 103
    .line 104
    const/16 v5, 0x61

    .line 105
    .line 106
    if-eq v10, v5, :cond_16

    .line 107
    .line 108
    const/16 v5, 0x63

    .line 109
    .line 110
    if-eq v10, v5, :cond_15

    .line 111
    .line 112
    const/16 v5, 0x68

    .line 113
    .line 114
    if-eq v10, v5, :cond_14

    .line 115
    .line 116
    const/16 v5, 0x71

    .line 117
    .line 118
    if-eq v10, v5, :cond_13

    .line 119
    .line 120
    const/16 v14, 0x76

    .line 121
    .line 122
    if-eq v10, v14, :cond_12

    .line 123
    .line 124
    const/16 v14, 0x4c

    .line 125
    .line 126
    if-eq v10, v14, :cond_11

    .line 127
    .line 128
    const/16 v14, 0x4d

    .line 129
    .line 130
    if-eq v10, v14, :cond_f

    .line 131
    .line 132
    const/16 v14, 0x73

    .line 133
    .line 134
    const/16 v5, 0x53

    .line 135
    .line 136
    const/high16 v31, 0x40000000    # 2.0f

    .line 137
    .line 138
    if-eq v10, v5, :cond_c

    .line 139
    .line 140
    const/16 v5, 0x54

    .line 141
    .line 142
    if-eq v10, v5, :cond_9

    .line 143
    .line 144
    const/16 v5, 0x6c

    .line 145
    .line 146
    if-eq v10, v5, :cond_8

    .line 147
    .line 148
    const/16 v5, 0x6d

    .line 149
    .line 150
    if-eq v10, v5, :cond_6

    .line 151
    .line 152
    if-eq v10, v14, :cond_3

    .line 153
    .line 154
    const/16 v5, 0x74

    .line 155
    .line 156
    if-eq v10, v5, :cond_0

    .line 157
    .line 158
    move-object/from16 v25, v3

    .line 159
    .line 160
    move/from16 v30, v4

    .line 161
    .line 162
    move-object v0, v9

    .line 163
    move v2, v11

    .line 164
    :goto_4
    move v3, v15

    .line 165
    const/16 v32, 0x6d

    .line 166
    .line 167
    :goto_5
    move v15, v8

    .line 168
    :goto_6
    move v11, v10

    .line 169
    goto/16 :goto_19

    .line 170
    .line 171
    :cond_0
    const/16 v14, 0x71

    .line 172
    .line 173
    if-eq v2, v14, :cond_2

    .line 174
    .line 175
    if-eq v2, v5, :cond_2

    .line 176
    .line 177
    const/16 v5, 0x51

    .line 178
    .line 179
    if-eq v2, v5, :cond_2

    .line 180
    .line 181
    const/16 v5, 0x54

    .line 182
    .line 183
    if-ne v2, v5, :cond_1

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_1
    const/4 v2, 0x0

    .line 187
    const/4 v14, 0x0

    .line 188
    goto :goto_8

    .line 189
    :cond_2
    :goto_7
    sub-float v14, v11, v6

    .line 190
    .line 191
    sub-float v2, v15, v7

    .line 192
    .line 193
    :goto_8
    aget v5, v3, v4

    .line 194
    .line 195
    add-int/lit8 v6, v4, 0x1

    .line 196
    .line 197
    aget v7, v3, v6

    .line 198
    .line 199
    invoke-virtual {v1, v14, v2, v5, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 200
    .line 201
    .line 202
    add-float/2addr v14, v11

    .line 203
    add-float/2addr v2, v15

    .line 204
    aget v5, v3, v4

    .line 205
    .line 206
    add-float/2addr v11, v5

    .line 207
    aget v5, v3, v6

    .line 208
    .line 209
    add-float/2addr v15, v5

    .line 210
    move v7, v2

    .line 211
    move-object/from16 v25, v3

    .line 212
    .line 213
    move/from16 v30, v4

    .line 214
    .line 215
    move-object v0, v9

    .line 216
    move v2, v11

    .line 217
    move v6, v14

    .line 218
    goto :goto_4

    .line 219
    :cond_3
    const/16 v5, 0x63

    .line 220
    .line 221
    if-eq v2, v5, :cond_5

    .line 222
    .line 223
    if-eq v2, v14, :cond_5

    .line 224
    .line 225
    const/16 v5, 0x43

    .line 226
    .line 227
    if-eq v2, v5, :cond_5

    .line 228
    .line 229
    const/16 v5, 0x53

    .line 230
    .line 231
    if-ne v2, v5, :cond_4

    .line 232
    .line 233
    goto :goto_a

    .line 234
    :cond_4
    const/4 v2, 0x0

    .line 235
    const/4 v14, 0x0

    .line 236
    :goto_9
    move v5, v4

    .line 237
    goto :goto_b

    .line 238
    :cond_5
    :goto_a
    sub-float v14, v11, v6

    .line 239
    .line 240
    sub-float v2, v15, v7

    .line 241
    .line 242
    move v5, v14

    .line 243
    move v14, v2

    .line 244
    move v2, v5

    .line 245
    goto :goto_9

    .line 246
    :goto_b
    aget v4, v3, v5

    .line 247
    .line 248
    add-int/lit8 v26, v5, 0x1

    .line 249
    .line 250
    move v6, v5

    .line 251
    aget v5, v3, v26

    .line 252
    .line 253
    add-int/lit8 v27, v6, 0x2

    .line 254
    .line 255
    move v7, v6

    .line 256
    aget v6, v3, v27

    .line 257
    .line 258
    add-int/lit8 v28, v7, 0x3

    .line 259
    .line 260
    move/from16 v29, v7

    .line 261
    .line 262
    aget v7, v3, v28

    .line 263
    .line 264
    move-object/from16 v25, v3

    .line 265
    .line 266
    move v3, v14

    .line 267
    move/from16 v30, v29

    .line 268
    .line 269
    const/16 v32, 0x6d

    .line 270
    .line 271
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 272
    .line 273
    .line 274
    aget v2, v25, v30

    .line 275
    .line 276
    add-float/2addr v2, v11

    .line 277
    aget v3, v25, v26

    .line 278
    .line 279
    add-float/2addr v3, v15

    .line 280
    aget v4, v25, v27

    .line 281
    .line 282
    add-float/2addr v11, v4

    .line 283
    aget v4, v25, v28

    .line 284
    .line 285
    :goto_c
    add-float/2addr v15, v4

    .line 286
    move v6, v2

    .line 287
    move v7, v3

    .line 288
    :goto_d
    move-object v0, v9

    .line 289
    move v2, v11

    .line 290
    move v3, v15

    .line 291
    goto :goto_5

    .line 292
    :cond_6
    move-object/from16 v25, v3

    .line 293
    .line 294
    move/from16 v30, v4

    .line 295
    .line 296
    move/from16 v32, v5

    .line 297
    .line 298
    aget v2, v25, v30

    .line 299
    .line 300
    add-float/2addr v11, v2

    .line 301
    add-int/lit8 v4, v30, 0x1

    .line 302
    .line 303
    aget v3, v25, v4

    .line 304
    .line 305
    add-float/2addr v15, v3

    .line 306
    if-lez v30, :cond_7

    .line 307
    .line 308
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 309
    .line 310
    .line 311
    goto :goto_d

    .line 312
    :cond_7
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 313
    .line 314
    .line 315
    move-object v0, v9

    .line 316
    move v2, v11

    .line 317
    move/from16 v23, v2

    .line 318
    .line 319
    move v3, v15

    .line 320
    move/from16 v24, v3

    .line 321
    .line 322
    goto/16 :goto_5

    .line 323
    .line 324
    :cond_8
    move-object/from16 v25, v3

    .line 325
    .line 326
    move/from16 v30, v4

    .line 327
    .line 328
    const/16 v32, 0x6d

    .line 329
    .line 330
    aget v2, v25, v30

    .line 331
    .line 332
    add-int/lit8 v4, v30, 0x1

    .line 333
    .line 334
    aget v3, v25, v4

    .line 335
    .line 336
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 337
    .line 338
    .line 339
    aget v2, v25, v30

    .line 340
    .line 341
    add-float/2addr v11, v2

    .line 342
    aget v2, v25, v4

    .line 343
    .line 344
    :goto_e
    add-float/2addr v15, v2

    .line 345
    goto :goto_d

    .line 346
    :cond_9
    move-object/from16 v25, v3

    .line 347
    .line 348
    move/from16 v30, v4

    .line 349
    .line 350
    const/16 v14, 0x71

    .line 351
    .line 352
    const/16 v32, 0x6d

    .line 353
    .line 354
    if-eq v2, v14, :cond_a

    .line 355
    .line 356
    const/16 v5, 0x74

    .line 357
    .line 358
    if-eq v2, v5, :cond_a

    .line 359
    .line 360
    const/16 v5, 0x51

    .line 361
    .line 362
    if-eq v2, v5, :cond_a

    .line 363
    .line 364
    const/16 v5, 0x54

    .line 365
    .line 366
    if-ne v2, v5, :cond_b

    .line 367
    .line 368
    :cond_a
    mul-float v11, v11, v31

    .line 369
    .line 370
    sub-float/2addr v11, v6

    .line 371
    mul-float v15, v15, v31

    .line 372
    .line 373
    sub-float/2addr v15, v7

    .line 374
    :cond_b
    aget v2, v25, v30

    .line 375
    .line 376
    add-int/lit8 v4, v30, 0x1

    .line 377
    .line 378
    aget v3, v25, v4

    .line 379
    .line 380
    invoke-virtual {v1, v11, v15, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 381
    .line 382
    .line 383
    aget v2, v25, v30

    .line 384
    .line 385
    aget v3, v25, v4

    .line 386
    .line 387
    move-object v0, v9

    .line 388
    move v6, v11

    .line 389
    move v7, v15

    .line 390
    goto/16 :goto_5

    .line 391
    .line 392
    :cond_c
    move-object/from16 v25, v3

    .line 393
    .line 394
    move/from16 v30, v4

    .line 395
    .line 396
    const/16 v5, 0x63

    .line 397
    .line 398
    const/16 v32, 0x6d

    .line 399
    .line 400
    if-eq v2, v5, :cond_e

    .line 401
    .line 402
    if-eq v2, v14, :cond_e

    .line 403
    .line 404
    const/16 v5, 0x43

    .line 405
    .line 406
    if-eq v2, v5, :cond_e

    .line 407
    .line 408
    const/16 v5, 0x53

    .line 409
    .line 410
    if-ne v2, v5, :cond_d

    .line 411
    .line 412
    goto :goto_10

    .line 413
    :cond_d
    :goto_f
    move v2, v11

    .line 414
    move v3, v15

    .line 415
    goto :goto_11

    .line 416
    :cond_e
    :goto_10
    mul-float v11, v11, v31

    .line 417
    .line 418
    sub-float/2addr v11, v6

    .line 419
    mul-float v15, v15, v31

    .line 420
    .line 421
    sub-float/2addr v15, v7

    .line 422
    goto :goto_f

    .line 423
    :goto_11
    aget v4, v25, v30

    .line 424
    .line 425
    add-int/lit8 v11, v30, 0x1

    .line 426
    .line 427
    aget v5, v25, v11

    .line 428
    .line 429
    add-int/lit8 v14, v30, 0x2

    .line 430
    .line 431
    aget v6, v25, v14

    .line 432
    .line 433
    add-int/lit8 v15, v30, 0x3

    .line 434
    .line 435
    aget v7, v25, v15

    .line 436
    .line 437
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 438
    .line 439
    .line 440
    aget v2, v25, v30

    .line 441
    .line 442
    aget v3, v25, v11

    .line 443
    .line 444
    aget v4, v25, v14

    .line 445
    .line 446
    aget v5, v25, v15

    .line 447
    .line 448
    move v6, v2

    .line 449
    move v7, v3

    .line 450
    move v2, v4

    .line 451
    move v3, v5

    .line 452
    :goto_12
    move v15, v8

    .line 453
    move-object v0, v9

    .line 454
    goto/16 :goto_6

    .line 455
    .line 456
    :cond_f
    move-object/from16 v25, v3

    .line 457
    .line 458
    move/from16 v30, v4

    .line 459
    .line 460
    const/16 v32, 0x6d

    .line 461
    .line 462
    aget v2, v25, v30

    .line 463
    .line 464
    add-int/lit8 v4, v30, 0x1

    .line 465
    .line 466
    aget v3, v25, v4

    .line 467
    .line 468
    if-lez v30, :cond_10

    .line 469
    .line 470
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 471
    .line 472
    .line 473
    goto :goto_12

    .line 474
    :cond_10
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 475
    .line 476
    .line 477
    move/from16 v23, v2

    .line 478
    .line 479
    move/from16 v24, v3

    .line 480
    .line 481
    goto :goto_12

    .line 482
    :cond_11
    move-object/from16 v25, v3

    .line 483
    .line 484
    move/from16 v30, v4

    .line 485
    .line 486
    const/16 v32, 0x6d

    .line 487
    .line 488
    aget v2, v25, v30

    .line 489
    .line 490
    add-int/lit8 v4, v30, 0x1

    .line 491
    .line 492
    aget v3, v25, v4

    .line 493
    .line 494
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    .line 496
    .line 497
    aget v2, v25, v30

    .line 498
    .line 499
    aget v3, v25, v4

    .line 500
    .line 501
    goto :goto_12

    .line 502
    :cond_12
    move-object/from16 v25, v3

    .line 503
    .line 504
    move/from16 v30, v4

    .line 505
    .line 506
    const/16 v32, 0x6d

    .line 507
    .line 508
    aget v2, v25, v30

    .line 509
    .line 510
    const/4 v3, 0x0

    .line 511
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 512
    .line 513
    .line 514
    aget v2, v25, v30

    .line 515
    .line 516
    goto/16 :goto_e

    .line 517
    .line 518
    :cond_13
    move-object/from16 v25, v3

    .line 519
    .line 520
    move/from16 v30, v4

    .line 521
    .line 522
    const/16 v32, 0x6d

    .line 523
    .line 524
    aget v2, v25, v30

    .line 525
    .line 526
    add-int/lit8 v4, v30, 0x1

    .line 527
    .line 528
    aget v3, v25, v4

    .line 529
    .line 530
    add-int/lit8 v5, v30, 0x2

    .line 531
    .line 532
    aget v6, v25, v5

    .line 533
    .line 534
    add-int/lit8 v7, v30, 0x3

    .line 535
    .line 536
    aget v14, v25, v7

    .line 537
    .line 538
    invoke-virtual {v1, v2, v3, v6, v14}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 539
    .line 540
    .line 541
    aget v2, v25, v30

    .line 542
    .line 543
    add-float/2addr v2, v11

    .line 544
    aget v3, v25, v4

    .line 545
    .line 546
    add-float/2addr v3, v15

    .line 547
    aget v4, v25, v5

    .line 548
    .line 549
    add-float/2addr v11, v4

    .line 550
    aget v4, v25, v7

    .line 551
    .line 552
    goto/16 :goto_c

    .line 553
    .line 554
    :cond_14
    move-object/from16 v25, v3

    .line 555
    .line 556
    move/from16 v30, v4

    .line 557
    .line 558
    const/16 v32, 0x6d

    .line 559
    .line 560
    aget v2, v25, v30

    .line 561
    .line 562
    const/4 v3, 0x0

    .line 563
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 564
    .line 565
    .line 566
    aget v2, v25, v30

    .line 567
    .line 568
    add-float/2addr v11, v2

    .line 569
    goto/16 :goto_d

    .line 570
    .line 571
    :cond_15
    move-object/from16 v25, v3

    .line 572
    .line 573
    move/from16 v30, v4

    .line 574
    .line 575
    const/16 v32, 0x6d

    .line 576
    .line 577
    aget v2, v25, v30

    .line 578
    .line 579
    add-int/lit8 v4, v30, 0x1

    .line 580
    .line 581
    aget v3, v25, v4

    .line 582
    .line 583
    add-int/lit8 v14, v30, 0x2

    .line 584
    .line 585
    aget v4, v25, v14

    .line 586
    .line 587
    add-int/lit8 v26, v30, 0x3

    .line 588
    .line 589
    aget v5, v25, v26

    .line 590
    .line 591
    add-int/lit8 v27, v30, 0x4

    .line 592
    .line 593
    aget v6, v25, v27

    .line 594
    .line 595
    add-int/lit8 v28, v30, 0x5

    .line 596
    .line 597
    aget v7, v25, v28

    .line 598
    .line 599
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 600
    .line 601
    .line 602
    aget v1, v25, v14

    .line 603
    .line 604
    add-float/2addr v1, v11

    .line 605
    aget v2, v25, v26

    .line 606
    .line 607
    add-float/2addr v2, v15

    .line 608
    aget v3, v25, v27

    .line 609
    .line 610
    add-float/2addr v11, v3

    .line 611
    aget v3, v25, v28

    .line 612
    .line 613
    add-float/2addr v15, v3

    .line 614
    move v6, v1

    .line 615
    move v7, v2

    .line 616
    goto/16 :goto_d

    .line 617
    .line 618
    :cond_16
    move-object/from16 v25, v3

    .line 619
    .line 620
    move/from16 v30, v4

    .line 621
    .line 622
    const/16 v32, 0x6d

    .line 623
    .line 624
    add-int/lit8 v14, v30, 0x5

    .line 625
    .line 626
    aget v1, v25, v14

    .line 627
    .line 628
    add-float v4, v1, v11

    .line 629
    .line 630
    add-int/lit8 v27, v30, 0x6

    .line 631
    .line 632
    aget v1, v25, v27

    .line 633
    .line 634
    add-float v5, v1, v15

    .line 635
    .line 636
    aget v6, v25, v30

    .line 637
    .line 638
    add-int/lit8 v1, v30, 0x1

    .line 639
    .line 640
    aget v7, v25, v1

    .line 641
    .line 642
    add-int/lit8 v1, v30, 0x2

    .line 643
    .line 644
    aget v1, v25, v1

    .line 645
    .line 646
    add-int/lit8 v2, v30, 0x3

    .line 647
    .line 648
    aget v2, v25, v2

    .line 649
    .line 650
    const/16 v26, 0x0

    .line 651
    .line 652
    cmpl-float v2, v2, v26

    .line 653
    .line 654
    if-eqz v2, :cond_17

    .line 655
    .line 656
    move-object v2, v9

    .line 657
    move/from16 v9, v16

    .line 658
    .line 659
    goto :goto_13

    .line 660
    :cond_17
    move-object v2, v9

    .line 661
    move/from16 v9, v21

    .line 662
    .line 663
    :goto_13
    add-int/lit8 v3, v30, 0x4

    .line 664
    .line 665
    aget v3, v25, v3

    .line 666
    .line 667
    cmpl-float v3, v3, v26

    .line 668
    .line 669
    move-object v0, v2

    .line 670
    move v2, v11

    .line 671
    move v11, v10

    .line 672
    if-eqz v3, :cond_18

    .line 673
    .line 674
    move/from16 v10, v16

    .line 675
    .line 676
    :goto_14
    move v3, v15

    .line 677
    move v15, v8

    .line 678
    move v8, v1

    .line 679
    move-object/from16 v1, p1

    .line 680
    .line 681
    goto :goto_15

    .line 682
    :cond_18
    move/from16 v10, v21

    .line 683
    .line 684
    goto :goto_14

    .line 685
    :goto_15
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 686
    .line 687
    .line 688
    aget v4, v25, v14

    .line 689
    .line 690
    add-float/2addr v2, v4

    .line 691
    aget v4, v25, v27

    .line 692
    .line 693
    add-float/2addr v3, v4

    .line 694
    move v6, v2

    .line 695
    move v7, v3

    .line 696
    goto/16 :goto_19

    .line 697
    .line 698
    :cond_19
    move-object/from16 v25, v3

    .line 699
    .line 700
    move/from16 v30, v4

    .line 701
    .line 702
    move v15, v8

    .line 703
    move-object v0, v9

    .line 704
    move v2, v11

    .line 705
    const/16 v32, 0x6d

    .line 706
    .line 707
    move v11, v10

    .line 708
    aget v3, v25, v30

    .line 709
    .line 710
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 711
    .line 712
    .line 713
    aget v3, v25, v30

    .line 714
    .line 715
    goto/16 :goto_19

    .line 716
    .line 717
    :cond_1a
    move-object/from16 v25, v3

    .line 718
    .line 719
    move/from16 v30, v4

    .line 720
    .line 721
    move v15, v8

    .line 722
    move-object v0, v9

    .line 723
    move v11, v10

    .line 724
    const/16 v32, 0x6d

    .line 725
    .line 726
    aget v2, v25, v30

    .line 727
    .line 728
    add-int/lit8 v4, v30, 0x1

    .line 729
    .line 730
    aget v3, v25, v4

    .line 731
    .line 732
    add-int/lit8 v5, v30, 0x2

    .line 733
    .line 734
    aget v6, v25, v5

    .line 735
    .line 736
    add-int/lit8 v7, v30, 0x3

    .line 737
    .line 738
    aget v8, v25, v7

    .line 739
    .line 740
    invoke-virtual {v1, v2, v3, v6, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 741
    .line 742
    .line 743
    aget v2, v25, v30

    .line 744
    .line 745
    aget v3, v25, v4

    .line 746
    .line 747
    aget v4, v25, v5

    .line 748
    .line 749
    aget v5, v25, v7

    .line 750
    .line 751
    move v6, v2

    .line 752
    move v7, v3

    .line 753
    move v2, v4

    .line 754
    move v3, v5

    .line 755
    goto/16 :goto_19

    .line 756
    .line 757
    :cond_1b
    move-object/from16 v25, v3

    .line 758
    .line 759
    move/from16 v30, v4

    .line 760
    .line 761
    move-object v0, v9

    .line 762
    move v11, v10

    .line 763
    move v3, v15

    .line 764
    const/16 v32, 0x6d

    .line 765
    .line 766
    move v15, v8

    .line 767
    aget v2, v25, v30

    .line 768
    .line 769
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 770
    .line 771
    .line 772
    aget v2, v25, v30

    .line 773
    .line 774
    goto/16 :goto_19

    .line 775
    .line 776
    :cond_1c
    move-object/from16 v25, v3

    .line 777
    .line 778
    move/from16 v30, v4

    .line 779
    .line 780
    move v15, v8

    .line 781
    move-object v0, v9

    .line 782
    move v11, v10

    .line 783
    const/16 v32, 0x6d

    .line 784
    .line 785
    aget v2, v25, v30

    .line 786
    .line 787
    add-int/lit8 v4, v30, 0x1

    .line 788
    .line 789
    aget v3, v25, v4

    .line 790
    .line 791
    add-int/lit8 v8, v30, 0x2

    .line 792
    .line 793
    aget v4, v25, v8

    .line 794
    .line 795
    add-int/lit8 v9, v30, 0x3

    .line 796
    .line 797
    aget v5, v25, v9

    .line 798
    .line 799
    add-int/lit8 v10, v30, 0x4

    .line 800
    .line 801
    aget v6, v25, v10

    .line 802
    .line 803
    add-int/lit8 v14, v30, 0x5

    .line 804
    .line 805
    aget v7, v25, v14

    .line 806
    .line 807
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 808
    .line 809
    .line 810
    aget v1, v25, v10

    .line 811
    .line 812
    aget v2, v25, v14

    .line 813
    .line 814
    aget v3, v25, v8

    .line 815
    .line 816
    aget v4, v25, v9

    .line 817
    .line 818
    move v6, v3

    .line 819
    move v7, v4

    .line 820
    move v3, v2

    .line 821
    move v2, v1

    .line 822
    goto :goto_19

    .line 823
    :cond_1d
    move-object/from16 v25, v3

    .line 824
    .line 825
    move/from16 v30, v4

    .line 826
    .line 827
    move-object v0, v9

    .line 828
    move v2, v11

    .line 829
    move v3, v15

    .line 830
    const/16 v32, 0x6d

    .line 831
    .line 832
    move v15, v8

    .line 833
    move v11, v10

    .line 834
    add-int/lit8 v14, v30, 0x5

    .line 835
    .line 836
    aget v4, v25, v14

    .line 837
    .line 838
    add-int/lit8 v27, v30, 0x6

    .line 839
    .line 840
    aget v5, v25, v27

    .line 841
    .line 842
    aget v6, v25, v30

    .line 843
    .line 844
    add-int/lit8 v1, v30, 0x1

    .line 845
    .line 846
    aget v7, v25, v1

    .line 847
    .line 848
    add-int/lit8 v1, v30, 0x2

    .line 849
    .line 850
    aget v8, v25, v1

    .line 851
    .line 852
    add-int/lit8 v1, v30, 0x3

    .line 853
    .line 854
    aget v1, v25, v1

    .line 855
    .line 856
    const/16 v26, 0x0

    .line 857
    .line 858
    cmpl-float v1, v1, v26

    .line 859
    .line 860
    if-eqz v1, :cond_1e

    .line 861
    .line 862
    move/from16 v9, v16

    .line 863
    .line 864
    goto :goto_16

    .line 865
    :cond_1e
    move/from16 v9, v21

    .line 866
    .line 867
    :goto_16
    add-int/lit8 v1, v30, 0x4

    .line 868
    .line 869
    aget v1, v25, v1

    .line 870
    .line 871
    cmpl-float v1, v1, v26

    .line 872
    .line 873
    if-eqz v1, :cond_1f

    .line 874
    .line 875
    move/from16 v10, v16

    .line 876
    .line 877
    :goto_17
    move-object/from16 v1, p1

    .line 878
    .line 879
    goto :goto_18

    .line 880
    :cond_1f
    move/from16 v10, v21

    .line 881
    .line 882
    goto :goto_17

    .line 883
    :goto_18
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 884
    .line 885
    .line 886
    aget v1, v25, v14

    .line 887
    .line 888
    aget v2, v25, v27

    .line 889
    .line 890
    move v6, v1

    .line 891
    move v3, v2

    .line 892
    move v7, v3

    .line 893
    move v2, v6

    .line 894
    :goto_19
    add-int v4, v30, v22

    .line 895
    .line 896
    move-object/from16 v1, p1

    .line 897
    .line 898
    move-object v9, v0

    .line 899
    move v10, v11

    .line 900
    move v8, v15

    .line 901
    move-object/from16 v0, p0

    .line 902
    .line 903
    move v11, v2

    .line 904
    move v15, v3

    .line 905
    move v2, v10

    .line 906
    move-object/from16 v3, v25

    .line 907
    .line 908
    goto/16 :goto_3

    .line 909
    .line 910
    :cond_20
    move-object v0, v9

    .line 911
    move v2, v11

    .line 912
    move v3, v15

    .line 913
    const/16 v32, 0x6d

    .line 914
    .line 915
    move v15, v8

    .line 916
    aput v2, v12, v21

    .line 917
    .line 918
    aput v3, v12, v16

    .line 919
    .line 920
    aput v6, v12, v17

    .line 921
    .line 922
    aput v7, v12, v18

    .line 923
    .line 924
    aput v23, v12, v19

    .line 925
    .line 926
    aput v24, v12, v20

    .line 927
    .line 928
    iget-char v2, v0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 929
    .line 930
    add-int/lit8 v8, v15, 0x1

    .line 931
    .line 932
    move-object/from16 v0, p0

    .line 933
    .line 934
    move-object/from16 v1, p1

    .line 935
    .line 936
    move/from16 v15, v21

    .line 937
    .line 938
    const/4 v11, 0x6

    .line 939
    goto/16 :goto_0

    .line 940
    .line 941
    :cond_21
    return-void

    .line 942
    nop

    .line 943
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_4
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public static onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    instance-of p1, p0, Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static final painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 45

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/content/Context;

    .line 14
    .line 15
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/content/res/Resources;

    .line 22
    .line 23
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResourceIdCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroidx/compose/ui/res/ResourceIdCache;

    .line 30
    .line 31
    monitor-enter v4

    .line 32
    :try_start_0
    iget-object v5, v4, Landroidx/compose/ui/res/ResourceIdCache;->resIdPathMap:Landroidx/collection/MutableIntObjectMap;

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/util/TypedValue;

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    new-instance v5, Landroid/util/TypedValue;

    .line 44
    .line 45
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0, v5, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 49
    .line 50
    .line 51
    iget-object v7, v4, Landroidx/compose/ui/res/ResourceIdCache;->resIdPathMap:Landroidx/collection/MutableIntObjectMap;

    .line 52
    .line 53
    invoke-virtual {v7, v0}, Landroidx/collection/MutableIntObjectMap;->findAbsoluteInsertIndex(I)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    iget-object v9, v7, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 58
    .line 59
    aget-object v10, v9, v8

    .line 60
    .line 61
    iget-object v7, v7, Landroidx/collection/IntObjectMap;->keys:[I

    .line 62
    .line 63
    aput v0, v7, v8

    .line 64
    .line 65
    aput-object v5, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto/16 :goto_26

    .line 70
    .line 71
    :cond_0
    :goto_0
    monitor-exit v4

    .line 72
    iget-object v4, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 73
    .line 74
    const/4 v8, 0x6

    .line 75
    const/4 v10, 0x0

    .line 76
    if-eqz v4, :cond_31

    .line 77
    .line 78
    const-string v11, ".xml"

    .line 79
    .line 80
    invoke-static {v4, v11}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-ne v11, v6, :cond_31

    .line 85
    .line 86
    const v4, -0x699b7fa2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget v4, v5, Landroid/util/TypedValue;->changingConfigurations:I

    .line 97
    .line 98
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 99
    .line 100
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Landroidx/compose/ui/res/ImageVectorCache;

    .line 105
    .line 106
    new-instance v11, Landroidx/compose/ui/res/ImageVectorCache$Key;

    .line 107
    .line 108
    invoke-direct {v11, v1, v0}, Landroidx/compose/ui/res/ImageVectorCache$Key;-><init>(Landroid/content/res/Resources$Theme;I)V

    .line 109
    .line 110
    .line 111
    iget-object v12, v5, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 118
    .line 119
    if-eqz v12, :cond_1

    .line 120
    .line 121
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    check-cast v12, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    const/4 v12, 0x0

    .line 129
    :goto_1
    if-nez v12, :cond_30

    .line 130
    .line 131
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    :goto_2
    const/4 v13, 0x2

    .line 140
    if-eq v12, v13, :cond_2

    .line 141
    .line 142
    if-eq v12, v6, :cond_2

    .line 143
    .line 144
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    goto :goto_2

    .line 149
    :cond_2
    if-ne v12, v13, :cond_2f

    .line 150
    .line 151
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    const-string/jumbo v14, "vector"

    .line 156
    .line 157
    .line 158
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    if-eqz v12, :cond_2e

    .line 163
    .line 164
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    new-instance v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    .line 169
    .line 170
    invoke-direct {v14, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 171
    .line 172
    .line 173
    sget-object v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    .line 174
    .line 175
    invoke-static {v3, v1, v12, v15}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    const/16 p1, 0x0

    .line 180
    .line 181
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    invoke-virtual {v14, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 186
    .line 187
    .line 188
    const-string v9, "autoMirrored"

    .line 189
    .line 190
    invoke-static {v0, v9}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    const/4 v7, 0x5

    .line 195
    if-nez v9, :cond_3

    .line 196
    .line 197
    move/from16 v25, v10

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_3
    invoke-virtual {v15, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    move/from16 v25, v9

    .line 205
    .line 206
    :goto_3
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    invoke-virtual {v14, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 211
    .line 212
    .line 213
    const-string/jumbo v9, "viewportWidth"

    .line 214
    .line 215
    .line 216
    const/4 v10, 0x7

    .line 217
    const/4 v7, 0x0

    .line 218
    invoke-virtual {v14, v15, v9, v10, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 219
    .line 220
    .line 221
    move-result v20

    .line 222
    const-string/jumbo v9, "viewportHeight"

    .line 223
    .line 224
    .line 225
    const/16 v10, 0x8

    .line 226
    .line 227
    invoke-virtual {v14, v15, v9, v10, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 228
    .line 229
    .line 230
    move-result v21

    .line 231
    cmpg-float v9, v20, v7

    .line 232
    .line 233
    if-lez v9, :cond_2d

    .line 234
    .line 235
    cmpg-float v9, v21, v7

    .line 236
    .line 237
    if-lez v9, :cond_2c

    .line 238
    .line 239
    const/4 v9, 0x3

    .line 240
    invoke-virtual {v15, v9, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 241
    .line 242
    .line 243
    move-result v16

    .line 244
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    invoke-virtual {v14, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v15, v13, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    invoke-virtual {v14, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v15, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-eqz v7, :cond_6

    .line 267
    .line 268
    new-instance v7, Landroid/util/TypedValue;

    .line 269
    .line 270
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v15, v6, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 274
    .line 275
    .line 276
    iget v7, v7, Landroid/util/TypedValue;->type:I

    .line 277
    .line 278
    if-ne v7, v13, :cond_4

    .line 279
    .line 280
    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 281
    .line 282
    :goto_4
    move-wide/from16 v22, v17

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_4
    invoke-static {v15, v0, v1}, Landroidx/core/content/res/CamUtils;->getNamedColorStateList(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    invoke-virtual {v14, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 294
    .line 295
    .line 296
    if-eqz v7, :cond_5

    .line 297
    .line 298
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 303
    .line 304
    .line 305
    move-result-wide v17

    .line 306
    goto :goto_4

    .line 307
    :cond_5
    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_6
    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :goto_5
    const/4 v7, -0x1

    .line 314
    invoke-virtual {v15, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 315
    .line 316
    .line 317
    move-result v13

    .line 318
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    invoke-virtual {v14, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 323
    .line 324
    .line 325
    const/16 v8, 0x9

    .line 326
    .line 327
    if-eq v13, v7, :cond_7

    .line 328
    .line 329
    if-eq v13, v9, :cond_9

    .line 330
    .line 331
    const/4 v7, 0x5

    .line 332
    if-eq v13, v7, :cond_7

    .line 333
    .line 334
    if-eq v13, v8, :cond_8

    .line 335
    .line 336
    packed-switch v13, :pswitch_data_0

    .line 337
    .line 338
    .line 339
    :cond_7
    const/16 v24, 0x5

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :pswitch_0
    const/16 v24, 0xc

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :pswitch_1
    const/16 v7, 0xe

    .line 346
    .line 347
    move/from16 v24, v7

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :pswitch_2
    const/16 v24, 0xd

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_8
    move/from16 v24, v8

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_9
    move/from16 v24, v9

    .line 357
    .line 358
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 363
    .line 364
    div-float v18, v16, v7

    .line 365
    .line 366
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 371
    .line 372
    div-float v19, v10, v7

    .line 373
    .line 374
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    .line 376
    .line 377
    new-instance v30, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 378
    .line 379
    const/16 v17, 0x0

    .line 380
    .line 381
    const/16 v26, 0x1

    .line 382
    .line 383
    move-object/from16 v16, v30

    .line 384
    .line 385
    invoke-direct/range {v16 .. v26}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 386
    .line 387
    .line 388
    const/4 v7, 0x0

    .line 389
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    if-eq v10, v6, :cond_a

    .line 394
    .line 395
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 396
    .line 397
    .line 398
    move-result v10

    .line 399
    if-ge v10, v6, :cond_b

    .line 400
    .line 401
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    if-ne v10, v9, :cond_b

    .line 406
    .line 407
    :cond_a
    move/from16 v20, v4

    .line 408
    .line 409
    move-object/from16 v4, v30

    .line 410
    .line 411
    goto/16 :goto_23

    .line 412
    .line 413
    :cond_b
    const-string v10, "group"

    .line 414
    .line 415
    sget-object v39, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 416
    .line 417
    const-string v13, ""

    .line 418
    .line 419
    iget-object v15, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 420
    .line 421
    iget-object v8, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->pathParser:Landroidx/compose/ui/platform/WeakCache;

    .line 422
    .line 423
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    move-object/from16 v18, v0

    .line 428
    .line 429
    const/4 v0, 0x2

    .line 430
    if-eq v6, v0, :cond_f

    .line 431
    .line 432
    if-eq v6, v9, :cond_d

    .line 433
    .line 434
    :cond_c
    move/from16 v20, v4

    .line 435
    .line 436
    move/from16 v19, v9

    .line 437
    .line 438
    move-object/from16 v4, v30

    .line 439
    .line 440
    const/4 v6, 0x1

    .line 441
    goto :goto_9

    .line 442
    :cond_d
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_c

    .line 451
    .line 452
    add-int/lit8 v7, v7, 0x1

    .line 453
    .line 454
    const/4 v0, 0x0

    .line 455
    :goto_8
    if-ge v0, v7, :cond_e

    .line 456
    .line 457
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()V

    .line 458
    .line 459
    .line 460
    add-int/lit8 v0, v0, 0x1

    .line 461
    .line 462
    goto :goto_8

    .line 463
    :cond_e
    move/from16 v20, v4

    .line 464
    .line 465
    move/from16 v19, v9

    .line 466
    .line 467
    move-object/from16 v4, v30

    .line 468
    .line 469
    const/4 v6, 0x1

    .line 470
    const/4 v7, 0x0

    .line 471
    :goto_9
    const/16 v15, 0x9

    .line 472
    .line 473
    :goto_a
    const/16 v27, 0x2

    .line 474
    .line 475
    const/16 v29, -0x1

    .line 476
    .line 477
    goto/16 :goto_22

    .line 478
    .line 479
    :cond_f
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    if-eqz v0, :cond_c

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    const v9, -0x624e8b7e

    .line 490
    .line 491
    .line 492
    if-eq v6, v9, :cond_28

    .line 493
    .line 494
    const v9, 0x346425

    .line 495
    .line 496
    .line 497
    move/from16 v20, v4

    .line 498
    .line 499
    const/high16 v4, 0x3f800000    # 1.0f

    .line 500
    .line 501
    if-eq v6, v9, :cond_13

    .line 502
    .line 503
    const v8, 0x5e0f67f

    .line 504
    .line 505
    .line 506
    if-eq v6, v8, :cond_10

    .line 507
    .line 508
    :goto_b
    goto :goto_e

    .line 509
    :cond_10
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_11

    .line 514
    .line 515
    :goto_c
    goto :goto_b

    .line 516
    :cond_11
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    .line 517
    .line 518
    invoke-static {v3, v1, v12, v0}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 527
    .line 528
    .line 529
    const-string v6, "rotation"

    .line 530
    .line 531
    const/4 v8, 0x5

    .line 532
    const/4 v9, 0x0

    .line 533
    invoke-virtual {v14, v0, v6, v8, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 534
    .line 535
    .line 536
    move-result v32

    .line 537
    const/4 v6, 0x1

    .line 538
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 539
    .line 540
    .line 541
    move-result v33

    .line 542
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 547
    .line 548
    .line 549
    const/4 v6, 0x2

    .line 550
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 551
    .line 552
    .line 553
    move-result v34

    .line 554
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 555
    .line 556
    .line 557
    move-result v6

    .line 558
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 559
    .line 560
    .line 561
    const-string v6, "scaleX"

    .line 562
    .line 563
    const/4 v8, 0x3

    .line 564
    invoke-virtual {v14, v0, v6, v8, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 565
    .line 566
    .line 567
    move-result v35

    .line 568
    const-string v6, "scaleY"

    .line 569
    .line 570
    const/4 v8, 0x4

    .line 571
    invoke-virtual {v14, v0, v6, v8, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 572
    .line 573
    .line 574
    move-result v36

    .line 575
    const-string v4, "translateX"

    .line 576
    .line 577
    const/4 v6, 0x6

    .line 578
    invoke-virtual {v14, v0, v4, v6, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 579
    .line 580
    .line 581
    move-result v37

    .line 582
    const-string v4, "translateY"

    .line 583
    .line 584
    const/4 v6, 0x7

    .line 585
    invoke-virtual {v14, v0, v4, v6, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 586
    .line 587
    .line 588
    move-result v38

    .line 589
    const/4 v4, 0x0

    .line 590
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    invoke-virtual {v14, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 599
    .line 600
    .line 601
    if-nez v6, :cond_12

    .line 602
    .line 603
    move-object/from16 v31, v13

    .line 604
    .line 605
    goto :goto_d

    .line 606
    :cond_12
    move-object/from16 v31, v6

    .line 607
    .line 608
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 609
    .line 610
    .line 611
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 612
    .line 613
    invoke-virtual/range {v30 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)V

    .line 614
    .line 615
    .line 616
    :goto_e
    move-object/from16 v4, v30

    .line 617
    .line 618
    const/4 v6, 0x1

    .line 619
    const/16 v15, 0x9

    .line 620
    .line 621
    const/16 v19, 0x3

    .line 622
    .line 623
    goto/16 :goto_a

    .line 624
    .line 625
    :cond_13
    const-string v6, "path"

    .line 626
    .line 627
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-nez v0, :cond_14

    .line 632
    .line 633
    goto :goto_c

    .line 634
    :cond_14
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    .line 635
    .line 636
    invoke-static {v3, v1, v12, v0}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 641
    .line 642
    .line 643
    move-result v6

    .line 644
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 645
    .line 646
    .line 647
    const-string v6, "pathData"

    .line 648
    .line 649
    const-string v9, "http://schemas.android.com/apk/res/android"

    .line 650
    .line 651
    invoke-interface {v15, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v6

    .line 655
    if-eqz v6, :cond_27

    .line 656
    .line 657
    const/4 v6, 0x0

    .line 658
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v9

    .line 662
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 663
    .line 664
    .line 665
    move-result v6

    .line 666
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 667
    .line 668
    .line 669
    if-nez v9, :cond_15

    .line 670
    .line 671
    move-object/from16 v43, v13

    .line 672
    .line 673
    :goto_f
    const/4 v6, 0x2

    .line 674
    goto :goto_10

    .line 675
    :cond_15
    move-object/from16 v43, v9

    .line 676
    .line 677
    goto :goto_f

    .line 678
    :goto_10
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v9

    .line 682
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 687
    .line 688
    .line 689
    if-nez v9, :cond_16

    .line 690
    .line 691
    sget v6, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 692
    .line 693
    move-object/from16 v44, v39

    .line 694
    .line 695
    goto :goto_11

    .line 696
    :cond_16
    new-instance v6, Ljava/util/ArrayList;

    .line 697
    .line 698
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v8, v9, v6}, Landroidx/compose/ui/platform/WeakCache;->pathStringToNodes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 702
    .line 703
    .line 704
    move-object/from16 v44, v6

    .line 705
    .line 706
    :goto_11
    const-string v6, "fillColor"

    .line 707
    .line 708
    iget-object v8, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 709
    .line 710
    const/4 v9, 0x1

    .line 711
    invoke-static {v0, v8, v1, v6, v9}, Landroidx/core/content/res/CamUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lde/cketti/changelog/XmlParser;

    .line 712
    .line 713
    .line 714
    move-result-object v6

    .line 715
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 716
    .line 717
    .line 718
    move-result v8

    .line 719
    invoke-virtual {v14, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 720
    .line 721
    .line 722
    const-string v8, "fillAlpha"

    .line 723
    .line 724
    const/16 v9, 0xc

    .line 725
    .line 726
    invoke-virtual {v14, v0, v8, v9, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 727
    .line 728
    .line 729
    move-result v31

    .line 730
    const-string v8, "strokeLineCap"

    .line 731
    .line 732
    iget-object v10, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 733
    .line 734
    invoke-static {v10, v8}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 735
    .line 736
    .line 737
    move-result v8

    .line 738
    if-nez v8, :cond_17

    .line 739
    .line 740
    const/4 v8, -0x1

    .line 741
    const/16 v10, 0x8

    .line 742
    .line 743
    goto :goto_12

    .line 744
    :cond_17
    const/4 v8, -0x1

    .line 745
    const/16 v10, 0x8

    .line 746
    .line 747
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 748
    .line 749
    .line 750
    move-result v13

    .line 751
    move v8, v13

    .line 752
    :goto_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 753
    .line 754
    .line 755
    move-result v13

    .line 756
    invoke-virtual {v14, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 757
    .line 758
    .line 759
    if-eqz v8, :cond_18

    .line 760
    .line 761
    const/4 v13, 0x1

    .line 762
    if-eq v8, v13, :cond_1a

    .line 763
    .line 764
    const/4 v13, 0x2

    .line 765
    if-eq v8, v13, :cond_19

    .line 766
    .line 767
    :cond_18
    const/16 v39, 0x0

    .line 768
    .line 769
    goto :goto_13

    .line 770
    :cond_19
    const/16 v39, 0x2

    .line 771
    .line 772
    goto :goto_13

    .line 773
    :cond_1a
    const/16 v39, 0x1

    .line 774
    .line 775
    :goto_13
    const-string v8, "strokeLineJoin"

    .line 776
    .line 777
    iget-object v13, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 778
    .line 779
    invoke-static {v13, v8}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 780
    .line 781
    .line 782
    move-result v8

    .line 783
    if-nez v8, :cond_1b

    .line 784
    .line 785
    const/4 v13, -0x1

    .line 786
    const/16 v15, 0x9

    .line 787
    .line 788
    goto :goto_14

    .line 789
    :cond_1b
    const/4 v8, -0x1

    .line 790
    const/16 v15, 0x9

    .line 791
    .line 792
    invoke-virtual {v0, v15, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 793
    .line 794
    .line 795
    move-result v13

    .line 796
    :goto_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 797
    .line 798
    .line 799
    move-result v8

    .line 800
    invoke-virtual {v14, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 801
    .line 802
    .line 803
    if-eqz v13, :cond_1e

    .line 804
    .line 805
    const/4 v8, 0x1

    .line 806
    if-eq v13, v8, :cond_1d

    .line 807
    .line 808
    const/4 v8, 0x2

    .line 809
    if-eq v13, v8, :cond_1c

    .line 810
    .line 811
    :goto_15
    const/16 v40, 0x0

    .line 812
    .line 813
    goto :goto_16

    .line 814
    :cond_1c
    move/from16 v40, v8

    .line 815
    .line 816
    goto :goto_16

    .line 817
    :cond_1d
    const/4 v8, 0x2

    .line 818
    const/16 v40, 0x1

    .line 819
    .line 820
    goto :goto_16

    .line 821
    :cond_1e
    const/4 v8, 0x2

    .line 822
    goto :goto_15

    .line 823
    :goto_16
    const-string v13, "strokeMiterLimit"

    .line 824
    .line 825
    const/16 v8, 0xa

    .line 826
    .line 827
    const/high16 v9, 0x40800000    # 4.0f

    .line 828
    .line 829
    invoke-virtual {v14, v0, v13, v8, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 830
    .line 831
    .line 832
    move-result v34

    .line 833
    const-string v8, "strokeColor"

    .line 834
    .line 835
    iget-object v9, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 836
    .line 837
    const/4 v13, 0x3

    .line 838
    invoke-static {v0, v9, v1, v8, v13}, Landroidx/core/content/res/CamUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lde/cketti/changelog/XmlParser;

    .line 839
    .line 840
    .line 841
    move-result-object v8

    .line 842
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 843
    .line 844
    .line 845
    move-result v9

    .line 846
    invoke-virtual {v14, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 847
    .line 848
    .line 849
    const-string v9, "strokeAlpha"

    .line 850
    .line 851
    const/16 v10, 0xb

    .line 852
    .line 853
    invoke-virtual {v14, v0, v9, v10, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 854
    .line 855
    .line 856
    move-result v32

    .line 857
    const-string v9, "strokeWidth"

    .line 858
    .line 859
    const/4 v10, 0x4

    .line 860
    invoke-virtual {v14, v0, v9, v10, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 861
    .line 862
    .line 863
    move-result v33

    .line 864
    const-string v9, "trimPathEnd"

    .line 865
    .line 866
    const/4 v10, 0x6

    .line 867
    invoke-virtual {v14, v0, v9, v10, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 868
    .line 869
    .line 870
    move-result v36

    .line 871
    const-string v4, "trimPathOffset"

    .line 872
    .line 873
    const/4 v9, 0x7

    .line 874
    const/4 v10, 0x0

    .line 875
    invoke-virtual {v14, v0, v4, v9, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 876
    .line 877
    .line 878
    move-result v37

    .line 879
    const-string v4, "trimPathStart"

    .line 880
    .line 881
    const/4 v9, 0x5

    .line 882
    invoke-virtual {v14, v0, v4, v9, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 883
    .line 884
    .line 885
    move-result v35

    .line 886
    const-string v4, "fillType"

    .line 887
    .line 888
    iget-object v9, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 889
    .line 890
    invoke-static {v9, v4}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    if-nez v4, :cond_1f

    .line 895
    .line 896
    const/16 v9, 0xd

    .line 897
    .line 898
    const/16 v16, 0x0

    .line 899
    .line 900
    goto :goto_17

    .line 901
    :cond_1f
    const/4 v4, 0x0

    .line 902
    const/16 v9, 0xd

    .line 903
    .line 904
    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 905
    .line 906
    .line 907
    move-result v16

    .line 908
    :goto_17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 909
    .line 910
    .line 911
    move-result v4

    .line 912
    invoke-virtual {v14, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 916
    .line 917
    .line 918
    iget-object v0, v6, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 919
    .line 920
    check-cast v0, Landroid/graphics/Shader;

    .line 921
    .line 922
    if-eqz v0, :cond_20

    .line 923
    .line 924
    goto :goto_18

    .line 925
    :cond_20
    iget v4, v6, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 926
    .line 927
    if-eqz v4, :cond_22

    .line 928
    .line 929
    :goto_18
    if-eqz v0, :cond_21

    .line 930
    .line 931
    new-instance v4, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    .line 932
    .line 933
    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    .line 934
    .line 935
    .line 936
    :goto_19
    move-object/from16 v41, v4

    .line 937
    .line 938
    goto :goto_1a

    .line 939
    :cond_21
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    .line 940
    .line 941
    iget v0, v6, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 942
    .line 943
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 944
    .line 945
    .line 946
    move-result-wide v9

    .line 947
    invoke-direct {v4, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 948
    .line 949
    .line 950
    goto :goto_19

    .line 951
    :cond_22
    move-object/from16 v41, p1

    .line 952
    .line 953
    :goto_1a
    iget-object v0, v8, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v0, Landroid/graphics/Shader;

    .line 956
    .line 957
    if-eqz v0, :cond_23

    .line 958
    .line 959
    goto :goto_1b

    .line 960
    :cond_23
    iget v4, v8, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 961
    .line 962
    if-eqz v4, :cond_25

    .line 963
    .line 964
    :goto_1b
    if-eqz v0, :cond_24

    .line 965
    .line 966
    new-instance v4, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    .line 967
    .line 968
    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    .line 969
    .line 970
    .line 971
    :goto_1c
    move-object/from16 v42, v4

    .line 972
    .line 973
    goto :goto_1d

    .line 974
    :cond_24
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    .line 975
    .line 976
    iget v0, v8, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 977
    .line 978
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 979
    .line 980
    .line 981
    move-result-wide v8

    .line 982
    invoke-direct {v4, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 983
    .line 984
    .line 985
    goto :goto_1c

    .line 986
    :cond_25
    move-object/from16 v42, p1

    .line 987
    .line 988
    :goto_1d
    if-nez v16, :cond_26

    .line 989
    .line 990
    const/16 v38, 0x0

    .line 991
    .line 992
    goto :goto_1e

    .line 993
    :cond_26
    const/16 v38, 0x1

    .line 994
    .line 995
    :goto_1e
    invoke-virtual/range {v30 .. v44}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM(FFFFFFFIIILandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Brush;Ljava/lang/String;Ljava/util/List;)V

    .line 996
    .line 997
    .line 998
    move-object/from16 v4, v30

    .line 999
    .line 1000
    move/from16 v19, v13

    .line 1001
    .line 1002
    const/4 v6, 0x1

    .line 1003
    goto/16 :goto_a

    .line 1004
    .line 1005
    :cond_27
    const-string v0, "No path data available"

    .line 1006
    .line 1007
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    return-object p1

    .line 1011
    :cond_28
    move/from16 v20, v4

    .line 1012
    .line 1013
    move-object/from16 v4, v30

    .line 1014
    .line 1015
    const/16 v15, 0x9

    .line 1016
    .line 1017
    const/16 v19, 0x3

    .line 1018
    .line 1019
    const/16 v27, 0x2

    .line 1020
    .line 1021
    const/16 v29, -0x1

    .line 1022
    .line 1023
    const-string v6, "clip-path"

    .line 1024
    .line 1025
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    if-nez v0, :cond_29

    .line 1030
    .line 1031
    const/4 v6, 0x1

    .line 1032
    goto :goto_22

    .line 1033
    :cond_29
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    .line 1034
    .line 1035
    invoke-static {v3, v1, v12, v0}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1040
    .line 1041
    .line 1042
    move-result v6

    .line 1043
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 1044
    .line 1045
    .line 1046
    const/4 v6, 0x0

    .line 1047
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v9

    .line 1051
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1052
    .line 1053
    .line 1054
    move-result v6

    .line 1055
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 1056
    .line 1057
    .line 1058
    if-nez v9, :cond_2a

    .line 1059
    .line 1060
    :goto_1f
    const/4 v6, 0x1

    .line 1061
    goto :goto_20

    .line 1062
    :cond_2a
    move-object v13, v9

    .line 1063
    goto :goto_1f

    .line 1064
    :goto_20
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v9

    .line 1068
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1069
    .line 1070
    .line 1071
    move-result v10

    .line 1072
    invoke-virtual {v14, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 1073
    .line 1074
    .line 1075
    if-nez v9, :cond_2b

    .line 1076
    .line 1077
    sget v8, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 1078
    .line 1079
    move-object/from16 v10, v39

    .line 1080
    .line 1081
    goto :goto_21

    .line 1082
    :cond_2b
    new-instance v10, Ljava/util/ArrayList;

    .line 1083
    .line 1084
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/platform/WeakCache;->pathStringToNodes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1088
    .line 1089
    .line 1090
    :goto_21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1091
    .line 1092
    .line 1093
    invoke-static {v4, v13, v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;Ljava/util/List;)V

    .line 1094
    .line 1095
    .line 1096
    add-int/lit8 v7, v7, 0x1

    .line 1097
    .line 1098
    :goto_22
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1099
    .line 1100
    .line 1101
    move-object/from16 v30, v4

    .line 1102
    .line 1103
    move v8, v15

    .line 1104
    move-object/from16 v0, v18

    .line 1105
    .line 1106
    move/from16 v9, v19

    .line 1107
    .line 1108
    move/from16 v4, v20

    .line 1109
    .line 1110
    goto/16 :goto_7

    .line 1111
    .line 1112
    :goto_23
    iget v0, v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    .line 1113
    .line 1114
    or-int v0, v20, v0

    .line 1115
    .line 1116
    new-instance v12, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 1117
    .line 1118
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    invoke-direct {v12, v1, v0}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    .line 1123
    .line 1124
    .line 1125
    iget-object v0, v5, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    .line 1126
    .line 1127
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 1128
    .line 1129
    invoke-direct {v1, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    goto :goto_24

    .line 1136
    :cond_2c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1137
    .line 1138
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    .line 1150
    const-string v1, "<VectorGraphic> tag requires viewportHeight > 0"

    .line 1151
    .line 1152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    throw v0

    .line 1163
    :cond_2d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1164
    .line 1165
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    const-string v1, "<VectorGraphic> tag requires viewportWidth > 0"

    .line 1178
    .line 1179
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    throw v0

    .line 1190
    :cond_2e
    const/16 p1, 0x0

    .line 1191
    .line 1192
    const-string v0, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP"

    .line 1193
    .line 1194
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    return-object p1

    .line 1198
    :cond_2f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1199
    .line 1200
    const-string v1, "No start tag found"

    .line 1201
    .line 1202
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    throw v0

    .line 1206
    :cond_30
    :goto_24
    iget-object v0, v12, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1207
    .line 1208
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/vector/PathParserKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    const/4 v4, 0x0

    .line 1213
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1214
    .line 1215
    .line 1216
    return-object v0

    .line 1217
    :cond_31
    const/16 p1, 0x0

    .line 1218
    .line 1219
    const v5, -0x69992078

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v1

    .line 1229
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v5

    .line 1233
    and-int/lit8 v7, p2, 0xe

    .line 1234
    .line 1235
    const/16 v28, 0x6

    .line 1236
    .line 1237
    xor-int/lit8 v7, v7, 0x6

    .line 1238
    .line 1239
    const/4 v8, 0x4

    .line 1240
    if-le v7, v8, :cond_32

    .line 1241
    .line 1242
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v7

    .line 1246
    if-nez v7, :cond_34

    .line 1247
    .line 1248
    :cond_32
    and-int/lit8 v7, p2, 0x6

    .line 1249
    .line 1250
    if-ne v7, v8, :cond_33

    .line 1251
    .line 1252
    goto :goto_25

    .line 1253
    :cond_33
    const/4 v6, 0x0

    .line 1254
    :cond_34
    :goto_25
    or-int/2addr v5, v6

    .line 1255
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v1

    .line 1259
    or-int/2addr v1, v5

    .line 1260
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    if-nez v1, :cond_35

    .line 1265
    .line 1266
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1267
    .line 1268
    if-ne v5, v1, :cond_36

    .line 1269
    .line 1270
    :cond_35
    move-object/from16 v1, p1

    .line 1271
    .line 1272
    :try_start_1
    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1277
    .line 1278
    .line 1279
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1280
    .line 1281
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    new-instance v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 1286
    .line 1287
    invoke-direct {v5, v0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1291
    .line 1292
    .line 1293
    :cond_36
    check-cast v5, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 1294
    .line 1295
    new-instance v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 1296
    .line 1297
    invoke-direct {v0, v5}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 1298
    .line 1299
    .line 1300
    const/4 v4, 0x0

    .line 1301
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1302
    .line 1303
    .line 1304
    return-object v0

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    new-instance v1, Lorg/jsoup/SerializationException;

    .line 1307
    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    const-string v3, "Error attempting to load resource: "

    .line 1311
    .line 1312
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v2

    .line 1322
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1323
    .line 1324
    .line 1325
    throw v1

    .line 1326
    :goto_26
    monitor-exit v4

    .line 1327
    throw v0

    .line 1328
    nop

    .line 1329
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x23

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v2, ":"

    .line 28
    .line 29
    invoke-direct {v1, p0, v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 v0, 0x3

    .line 37
    if-ge p0, v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2, v3, p0, v0}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public static final requireNotLocalUid(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-class v0, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 10
    .line 11
    const-string v0, "K9LOCAL:"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v0, "Local UID found: "

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string p0, "Required value was null."

    .line 32
    .line 33
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final requireValidUids(Ljava/util/Map;)V
    .locals 3

    .line 1
    const-string v0, "Required value was null."

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2}, Lkotlin/math/MathKt;->requireNotLocalUid(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const-string p0, "Couldn\'t resolve attribute ("

    .line 17
    .line 18
    const-string v0, ")"

    .line 19
    .line 20
    invoke-static {p1, p0, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static roundToInt(D)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmpl-double v0, p0, v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    const p0, 0x7fffffff

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    .line 21
    .line 22
    cmpg-double v0, p0, v0

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    const/high16 p0, -0x80000000

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    long-to-int p0, p0

    .line 34
    return p0

    .line 35
    :cond_2
    const-string p0, "Cannot round NaN value."

    .line 36
    .line 37
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static roundToInt(F)I
    .locals 1

    .line 42
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "Cannot round NaN value."

    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static roundToLong(D)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-string p0, "Cannot round NaN value."

    .line 13
    .line 14
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 p0, 0x0

    .line 18
    .line 19
    return-wide p0
.end method

.method public static final toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v1, v0, [Lkotlin/Pair;

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [Lkotlin/Pair;

    .line 20
    .line 21
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroidx/navigation/NavArgument;

    .line 75
    .line 76
    iget-object v2, v2, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 77
    .line 78
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance p1, Landroidx/navigation/serialization/RouteDecoder;

    .line 87
    .line 88
    invoke-direct {p1, v0, v1}, Landroidx/navigation/serialization/RouteDecoder;-><init>(Landroid/os/Bundle;Ljava/util/LinkedHashMap;)V

    .line 89
    .line 90
    .line 91
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 92
    .line 93
    invoke-interface {p0, p1}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method


# virtual methods
.method public abstract isAppearanceLightStatusBars()Z
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setAppearanceLightStatusBars(Z)V
.end method
