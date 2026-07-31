.class public final synthetic Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 6
    .line 7
    sget-object v3, Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;->Edit:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 8
    .line 9
    const/16 v4, 0x30

    .line 10
    .line 11
    const/16 v5, 0x31

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 15
    .line 16
    const/16 v8, 0x20

    .line 17
    .line 18
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 19
    .line 20
    const/4 v10, 0x2

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x1

    .line 23
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    iget-object v14, v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    check-cast v14, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 35
    .line 36
    move-object/from16 v2, p1

    .line 37
    .line 38
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    check-cast v1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v0, v14, v2, v1}, Landroidx/work/OperationKt;->FeatureLauncherApp(Landroidx/compose/ui/Modifier;Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;Landroidx/compose/runtime/Composer;I)V

    .line 50
    .line 51
    .line 52
    return-object v13

    .line 53
    :pswitch_0
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 54
    .line 55
    check-cast v14, Landroidx/navigation/NavHostController;

    .line 56
    .line 57
    move-object/from16 v2, p1

    .line 58
    .line 59
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 60
    .line 61
    check-cast v1, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    and-int/lit8 v3, v1, 0x3

    .line 68
    .line 69
    if-eq v3, v10, :cond_0

    .line 70
    .line 71
    move v11, v12

    .line 72
    :cond_0
    and-int/2addr v1, v12

    .line 73
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 74
    .line 75
    invoke-virtual {v2, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 82
    .line 83
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    new-instance v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/16 v1, 0x17

    .line 90
    .line 91
    invoke-direct {v0, v1, v14}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const v1, -0x77c08ef6

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 98
    .line 99
    .line 100
    move-result-object v22

    .line 101
    const/high16 v24, 0x30000

    .line 102
    .line 103
    const/16 v25, 0x1e

    .line 104
    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const-wide/16 v17, 0x0

    .line 108
    .line 109
    const-wide/16 v19, 0x0

    .line 110
    .line 111
    const/16 v21, 0x0

    .line 112
    .line 113
    move-object/from16 v23, v2

    .line 114
    .line 115
    invoke-static/range {v15 .. v25}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move-object/from16 v23, v2

    .line 120
    .line 121
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-object v13

    .line 125
    :pswitch_1
    check-cast v0, Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 126
    .line 127
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 128
    .line 129
    move-object/from16 v2, p1

    .line 130
    .line 131
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 132
    .line 133
    check-cast v1, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-static {v0, v14, v2, v1}, Landroidx/appcompat/app/ActionBar;->AutoDiscoveryResultApprovalView(Lnet/thunderbird/core/validation/input/BooleanInputField;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 143
    .line 144
    .line 145
    return-object v13

    .line 146
    :pswitch_2
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    move-object/from16 v16, v14

    .line 149
    .line 150
    check-cast v16, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 151
    .line 152
    move-object/from16 v2, p1

    .line 153
    .line 154
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 155
    .line 156
    check-cast v1, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    and-int/lit8 v3, v1, 0x3

    .line 163
    .line 164
    if-eq v3, v10, :cond_2

    .line 165
    .line 166
    move v11, v12

    .line 167
    :cond_2
    and-int/2addr v1, v12

    .line 168
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 169
    .line 170
    invoke-virtual {v2, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 177
    .line 178
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 179
    .line 180
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 181
    .line 182
    invoke-static {v5, v3, v2, v4}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    iget-wide v4, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 187
    .line 188
    ushr-long v10, v4, v8

    .line 189
    .line 190
    xor-long/2addr v4, v10

    .line 191
    long-to-int v4, v4

    .line 192
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-static {v2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 206
    .line 207
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 208
    .line 209
    .line 210
    iget-boolean v8, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 211
    .line 212
    if-eqz v8, :cond_3

    .line 213
    .line 214
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 219
    .line 220
    .line 221
    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 222
    .line 223
    invoke-static {v2, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 224
    .line 225
    .line 226
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 227
    .line 228
    invoke-static {v2, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 236
    .line 237
    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 238
    .line 239
    .line 240
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 241
    .line 242
    invoke-static {v2, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 243
    .line 244
    .line 245
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 246
    .line 247
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    .line 249
    .line 250
    const v1, 0x7f120088

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v17

    .line 257
    const/16 v25, 0x0

    .line 258
    .line 259
    const/16 v26, 0x3e

    .line 260
    .line 261
    const/16 v18, 0x0

    .line 262
    .line 263
    const-wide/16 v19, 0x0

    .line 264
    .line 265
    const/16 v21, 0x0

    .line 266
    .line 267
    const/16 v22, 0x0

    .line 268
    .line 269
    const/16 v23, 0x0

    .line 270
    .line 271
    move-object/from16 v24, v2

    .line 272
    .line 273
    invoke-static/range {v17 .. v26}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 274
    .line 275
    .line 276
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 277
    .line 278
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    const/high16 v1, 0x41000000    # 8.0f

    .line 288
    .line 289
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    if-nez v1, :cond_4

    .line 305
    .line 306
    if-ne v3, v9, :cond_5

    .line 307
    .line 308
    :cond_4
    new-instance v3, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 309
    .line 310
    const/16 v1, 0x1d

    .line 311
    .line 312
    invoke-direct {v3, v1, v0}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :cond_5
    move-object v15, v3

    .line 319
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 320
    .line 321
    const/16 v20, 0x0

    .line 322
    .line 323
    const/16 v21, 0xc

    .line 324
    .line 325
    const/16 v17, 0x0

    .line 326
    .line 327
    const/16 v18, 0x0

    .line 328
    .line 329
    move-object/from16 v19, v2

    .line 330
    .line 331
    invoke-static/range {v15 .. v21}, Landroidx/work/Operation$State;->AccountOAuthView(Lkotlin/jvm/functions/Function1;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 339
    .line 340
    .line 341
    :goto_2
    return-object v13

    .line 342
    :pswitch_3
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 343
    .line 344
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 345
    .line 346
    move-object/from16 v2, p1

    .line 347
    .line 348
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 349
    .line 350
    check-cast v1, Ljava/lang/Integer;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    and-int/lit8 v4, v1, 0x3

    .line 357
    .line 358
    if-eq v4, v10, :cond_7

    .line 359
    .line 360
    move v4, v12

    .line 361
    goto :goto_3

    .line 362
    :cond_7
    move v4, v11

    .line 363
    :goto_3
    and-int/2addr v1, v12

    .line 364
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 365
    .line 366
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_b

    .line 371
    .line 372
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 373
    .line 374
    const v1, 0x7f120067

    .line 375
    .line 376
    .line 377
    if-ne v0, v3, :cond_a

    .line 378
    .line 379
    const v0, 0x3740ff2d

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 383
    .line 384
    .line 385
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v15

    .line 389
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    if-nez v0, :cond_8

    .line 398
    .line 399
    if-ne v1, v9, :cond_9

    .line 400
    .line 401
    :cond_8
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 402
    .line 403
    const/16 v0, 0x10

    .line 404
    .line 405
    invoke-direct {v1, v0, v14}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :cond_9
    move-object/from16 v16, v1

    .line 412
    .line 413
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 414
    .line 415
    const/16 v18, 0x0

    .line 416
    .line 417
    const/16 v20, 0x0

    .line 418
    .line 419
    const/16 v17, 0x0

    .line 420
    .line 421
    move-object/from16 v19, v2

    .line 422
    .line 423
    invoke-static/range {v15 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBarWithBackButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 427
    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_a
    const v0, 0x3744d219

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 434
    .line 435
    .line 436
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {v0, v6, v2, v11}, Lorg/slf4j/helpers/Util;->AccountTopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 444
    .line 445
    .line 446
    goto :goto_4

    .line 447
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 448
    .line 449
    .line 450
    :goto_4
    return-object v13

    .line 451
    :pswitch_4
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 452
    .line 453
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 454
    .line 455
    move-object/from16 v2, p1

    .line 456
    .line 457
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 458
    .line 459
    check-cast v1, Ljava/lang/Integer;

    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    and-int/lit8 v4, v1, 0x3

    .line 466
    .line 467
    if-eq v4, v10, :cond_c

    .line 468
    .line 469
    move v4, v12

    .line 470
    goto :goto_5

    .line 471
    :cond_c
    move v4, v11

    .line 472
    :goto_5
    and-int/2addr v1, v12

    .line 473
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 474
    .line 475
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_10

    .line 480
    .line 481
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 482
    .line 483
    const v1, 0x7f120066

    .line 484
    .line 485
    .line 486
    if-ne v0, v3, :cond_f

    .line 487
    .line 488
    const v0, 0x76ae2bc6

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 492
    .line 493
    .line 494
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v15

    .line 498
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    if-nez v0, :cond_d

    .line 507
    .line 508
    if-ne v1, v9, :cond_e

    .line 509
    .line 510
    :cond_d
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 511
    .line 512
    const/16 v0, 0xe

    .line 513
    .line 514
    invoke-direct {v1, v0, v14}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :cond_e
    move-object/from16 v16, v1

    .line 521
    .line 522
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 523
    .line 524
    const/16 v18, 0x0

    .line 525
    .line 526
    const/16 v20, 0x0

    .line 527
    .line 528
    const/16 v17, 0x0

    .line 529
    .line 530
    move-object/from16 v19, v2

    .line 531
    .line 532
    invoke-static/range {v15 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBarWithBackButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 536
    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_f
    const v0, 0x76b1feb2

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 543
    .line 544
    .line 545
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-static {v0, v6, v2, v11}, Lorg/slf4j/helpers/Util;->AccountTopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 553
    .line 554
    .line 555
    goto :goto_6

    .line 556
    :cond_10
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 557
    .line 558
    .line 559
    :goto_6
    return-object v13

    .line 560
    :pswitch_5
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 561
    .line 562
    check-cast v14, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 563
    .line 564
    move-object/from16 v2, p1

    .line 565
    .line 566
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 567
    .line 568
    check-cast v1, Ljava/lang/Integer;

    .line 569
    .line 570
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    and-int/lit8 v3, v1, 0x3

    .line 575
    .line 576
    if-eq v3, v10, :cond_11

    .line 577
    .line 578
    move v3, v12

    .line 579
    goto :goto_7

    .line 580
    :cond_11
    move v3, v11

    .line 581
    :goto_7
    and-int/2addr v1, v12

    .line 582
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 583
    .line 584
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_12

    .line 589
    .line 590
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 591
    .line 592
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 597
    .line 598
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 606
    .line 607
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 615
    .line 616
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 624
    .line 625
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    const/high16 v1, 0x41800000    # 16.0f

    .line 629
    .line 630
    const/high16 v3, 0x40800000    # 4.0f

    .line 631
    .line 632
    invoke-static {v7, v1, v3, v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    new-instance v3, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 637
    .line 638
    const/16 v5, 0xb

    .line 639
    .line 640
    invoke-direct {v3, v5, v0, v14}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    const v0, 0x5203d40c

    .line 644
    .line 645
    .line 646
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-static {v1, v0, v2, v4, v11}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 651
    .line 652
    .line 653
    goto :goto_8

    .line 654
    :cond_12
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 655
    .line 656
    .line 657
    :goto_8
    return-object v13

    .line 658
    :pswitch_6
    check-cast v0, Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;

    .line 659
    .line 660
    check-cast v14, Lapp/k9mail/feature/account/server/certificate/ui/DefaultServerNameFormatter;

    .line 661
    .line 662
    move-object/from16 v2, p1

    .line 663
    .line 664
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 665
    .line 666
    check-cast v1, Ljava/lang/Integer;

    .line 667
    .line 668
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    const/16 v1, 0x9

    .line 672
    .line 673
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    invoke-static {v0, v14, v2, v1}, Landroidx/work/OperationKt;->CertificateErrorDescription(Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;Lapp/k9mail/feature/account/server/certificate/ui/DefaultServerNameFormatter;Landroidx/compose/runtime/Composer;I)V

    .line 678
    .line 679
    .line 680
    return-object v13

    .line 681
    :pswitch_7
    check-cast v0, Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;

    .line 682
    .line 683
    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 684
    .line 685
    move-object/from16 v2, p1

    .line 686
    .line 687
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 688
    .line 689
    check-cast v1, Ljava/lang/Integer;

    .line 690
    .line 691
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    .line 693
    .line 694
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    invoke-static {v0, v14, v2, v1}, Landroidx/work/OperationKt;->SnackbarHost(Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 699
    .line 700
    .line 701
    return-object v13

    .line 702
    :pswitch_8
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 703
    .line 704
    check-cast v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 705
    .line 706
    move-object/from16 v2, p1

    .line 707
    .line 708
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 709
    .line 710
    check-cast v1, Ljava/lang/Integer;

    .line 711
    .line 712
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    and-int/lit8 v4, v1, 0x3

    .line 721
    .line 722
    if-eq v4, v10, :cond_13

    .line 723
    .line 724
    move v4, v12

    .line 725
    goto :goto_9

    .line 726
    :cond_13
    move v4, v11

    .line 727
    :goto_9
    and-int/2addr v1, v12

    .line 728
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 729
    .line 730
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    if-eqz v1, :cond_15

    .line 735
    .line 736
    sget-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->lambda$-549760761:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 737
    .line 738
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 742
    .line 743
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 748
    .line 749
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    new-instance v1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 753
    .line 754
    new-instance v4, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 755
    .line 756
    const/4 v5, 0x7

    .line 757
    invoke-direct {v4, v5}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 758
    .line 759
    .line 760
    const/high16 v5, 0x40000000    # 2.0f

    .line 761
    .line 762
    invoke-direct {v1, v5, v12, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 763
    .line 764
    .line 765
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 766
    .line 767
    invoke-static {v1, v4, v2, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    iget-wide v4, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 772
    .line 773
    ushr-long v8, v4, v8

    .line 774
    .line 775
    xor-long/2addr v4, v8

    .line 776
    long-to-int v4, v4

    .line 777
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-static {v2, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 786
    .line 787
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    .line 789
    .line 790
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 791
    .line 792
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 793
    .line 794
    .line 795
    iget-boolean v8, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 796
    .line 797
    if-eqz v8, :cond_14

    .line 798
    .line 799
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 800
    .line 801
    .line 802
    goto :goto_a

    .line 803
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 804
    .line 805
    .line 806
    :goto_a
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 807
    .line 808
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 809
    .line 810
    .line 811
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 812
    .line 813
    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 814
    .line 815
    .line 816
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 821
    .line 822
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 823
    .line 824
    .line 825
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 826
    .line 827
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 828
    .line 829
    .line 830
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 831
    .line 832
    invoke-static {v2, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v14, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 842
    .line 843
    .line 844
    goto :goto_b

    .line 845
    :cond_15
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 846
    .line 847
    .line 848
    :goto_b
    return-object v13

    .line 849
    :pswitch_9
    move-object v15, v0

    .line 850
    check-cast v15, Ljava/lang/String;

    .line 851
    .line 852
    check-cast v14, Ljava/lang/String;

    .line 853
    .line 854
    move-object/from16 v0, p1

    .line 855
    .line 856
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 857
    .line 858
    check-cast v1, Ljava/lang/Integer;

    .line 859
    .line 860
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    and-int/lit8 v2, v1, 0x3

    .line 865
    .line 866
    if-eq v2, v10, :cond_16

    .line 867
    .line 868
    move v2, v12

    .line 869
    goto :goto_c

    .line 870
    :cond_16
    move v2, v11

    .line 871
    :goto_c
    and-int/2addr v1, v12

    .line 872
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 873
    .line 874
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    if-eqz v1, :cond_18

    .line 879
    .line 880
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 881
    .line 882
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 887
    .line 888
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    .line 890
    .line 891
    const/4 v6, 0x0

    .line 892
    const/16 v7, 0xb

    .line 893
    .line 894
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 895
    .line 896
    const/4 v3, 0x0

    .line 897
    const/4 v4, 0x0

    .line 898
    const/high16 v5, 0x41800000    # 16.0f

    .line 899
    .line 900
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 905
    .line 906
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 907
    .line 908
    invoke-static {v2, v3, v0, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    iget-wide v3, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 913
    .line 914
    ushr-long v5, v3, v8

    .line 915
    .line 916
    xor-long/2addr v3, v5

    .line 917
    long-to-int v3, v3

    .line 918
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 919
    .line 920
    .line 921
    move-result-object v4

    .line 922
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 927
    .line 928
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    .line 930
    .line 931
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 932
    .line 933
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 934
    .line 935
    .line 936
    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 937
    .line 938
    if-eqz v6, :cond_17

    .line 939
    .line 940
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 941
    .line 942
    .line 943
    goto :goto_d

    .line 944
    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 945
    .line 946
    .line 947
    :goto_d
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 948
    .line 949
    invoke-static {v0, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 950
    .line 951
    .line 952
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 953
    .line 954
    invoke-static {v0, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 955
    .line 956
    .line 957
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 962
    .line 963
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 964
    .line 965
    .line 966
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 967
    .line 968
    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 969
    .line 970
    .line 971
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 972
    .line 973
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 974
    .line 975
    .line 976
    const/16 v23, 0x0

    .line 977
    .line 978
    const/16 v24, 0x3e

    .line 979
    .line 980
    const/16 v16, 0x0

    .line 981
    .line 982
    const-wide/16 v17, 0x0

    .line 983
    .line 984
    const/16 v19, 0x0

    .line 985
    .line 986
    const/16 v20, 0x0

    .line 987
    .line 988
    const/16 v21, 0x0

    .line 989
    .line 990
    move-object/from16 v22, v0

    .line 991
    .line 992
    invoke-static/range {v15 .. v24}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 993
    .line 994
    .line 995
    const v24, 0x36000

    .line 996
    .line 997
    .line 998
    const/16 v25, 0x4e

    .line 999
    .line 1000
    const/16 v17, 0x0

    .line 1001
    .line 1002
    const-wide/16 v18, 0x0

    .line 1003
    .line 1004
    const/16 v20, 0x2

    .line 1005
    .line 1006
    const/16 v21, 0x1

    .line 1007
    .line 1008
    move-object/from16 v23, v22

    .line 1009
    .line 1010
    const/16 v22, 0x0

    .line 1011
    .line 1012
    move-object/from16 v16, v14

    .line 1013
    .line 1014
    invoke-static/range {v16 .. v25}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 1015
    .line 1016
    .line 1017
    move-object/from16 v0, v23

    .line 1018
    .line 1019
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1020
    .line 1021
    .line 1022
    goto :goto_e

    .line 1023
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1024
    .line 1025
    .line 1026
    :goto_e
    return-object v13

    .line 1027
    :pswitch_a
    check-cast v0, Ljava/lang/String;

    .line 1028
    .line 1029
    move-object v2, v14

    .line 1030
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 1031
    .line 1032
    move-object/from16 v3, p1

    .line 1033
    .line 1034
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 1035
    .line 1036
    check-cast v1, Ljava/lang/Integer;

    .line 1037
    .line 1038
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1039
    .line 1040
    .line 1041
    move-result v1

    .line 1042
    and-int/lit8 v4, v1, 0x3

    .line 1043
    .line 1044
    if-eq v4, v10, :cond_19

    .line 1045
    .line 1046
    move v11, v12

    .line 1047
    :cond_19
    and-int/2addr v1, v12

    .line 1048
    move-object v7, v3

    .line 1049
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 1050
    .line 1051
    invoke-virtual {v7, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    if-eqz v1, :cond_1a

    .line 1056
    .line 1057
    const/4 v8, 0x0

    .line 1058
    const/16 v9, 0x3c

    .line 1059
    .line 1060
    const/4 v3, 0x0

    .line 1061
    const/4 v4, 0x0

    .line 1062
    const/4 v5, 0x0

    .line 1063
    const/4 v6, 0x0

    .line 1064
    move-object v1, v0

    .line 1065
    invoke-static/range {v1 .. v9}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_f

    .line 1069
    :cond_1a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1070
    .line 1071
    .line 1072
    :goto_f
    return-object v13

    .line 1073
    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1074
    .line 1075
    check-cast v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1076
    .line 1077
    move-object/from16 v2, p1

    .line 1078
    .line 1079
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1080
    .line 1081
    check-cast v1, Ljava/lang/Integer;

    .line 1082
    .line 1083
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    .line 1085
    .line 1086
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1087
    .line 1088
    .line 1089
    move-result v1

    .line 1090
    invoke-static {v0, v14, v2, v1}, Landroidx/room/util/RelationUtil;->SaveableStateProvider(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1091
    .line 1092
    .line 1093
    return-object v13

    .line 1094
    :pswitch_c
    check-cast v0, Ljava/util/List;

    .line 1095
    .line 1096
    check-cast v14, Ljava/util/Collection;

    .line 1097
    .line 1098
    move-object/from16 v2, p1

    .line 1099
    .line 1100
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1101
    .line 1102
    check-cast v1, Ljava/lang/Integer;

    .line 1103
    .line 1104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1105
    .line 1106
    .line 1107
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1108
    .line 1109
    .line 1110
    move-result v1

    .line 1111
    invoke-static {v0, v14, v2, v1}, Landroidx/core/util/DebugUtils;->PopulateVisibleList(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V

    .line 1112
    .line 1113
    .line 1114
    return-object v13

    .line 1115
    :pswitch_d
    check-cast v0, Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 1116
    .line 1117
    check-cast v14, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1118
    .line 1119
    move-object/from16 v2, p1

    .line 1120
    .line 1121
    check-cast v2, Ljava/lang/Integer;

    .line 1122
    .line 1123
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1124
    .line 1125
    .line 1126
    move-result v2

    .line 1127
    instance-of v3, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1128
    .line 1129
    if-eqz v3, :cond_1b

    .line 1130
    .line 1131
    check-cast v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1132
    .line 1133
    iget-object v0, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/Object;

    .line 1134
    .line 1135
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 1136
    .line 1137
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1138
    .line 1139
    .line 1140
    goto :goto_10

    .line 1141
    :cond_1b
    instance-of v3, v1, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;

    .line 1142
    .line 1143
    if-nez v3, :cond_1d

    .line 1144
    .line 1145
    instance-of v3, v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1146
    .line 1147
    if-eqz v3, :cond_1c

    .line 1148
    .line 1149
    invoke-static {v14, v2, v1}, Landroidx/compose/runtime/Updater;->removeData(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 1150
    .line 1151
    .line 1152
    check-cast v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1153
    .line 1154
    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->forgetting(Landroidx/compose/runtime/GapRememberObserverHolder;)V

    .line 1155
    .line 1156
    .line 1157
    goto :goto_10

    .line 1158
    :cond_1c
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1159
    .line 1160
    if-eqz v0, :cond_1d

    .line 1161
    .line 1162
    invoke-static {v14, v2, v1}, Landroidx/compose/runtime/Updater;->removeData(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    move-object v0, v1

    .line 1166
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1167
    .line 1168
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 1169
    .line 1170
    .line 1171
    :cond_1d
    :goto_10
    return-object v13

    .line 1172
    :pswitch_e
    check-cast v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 1173
    .line 1174
    check-cast v14, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 1175
    .line 1176
    move-object/from16 v2, p1

    .line 1177
    .line 1178
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1179
    .line 1180
    check-cast v1, Ljava/lang/Integer;

    .line 1181
    .line 1182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1183
    .line 1184
    .line 1185
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1186
    .line 1187
    .line 1188
    move-result v1

    .line 1189
    invoke-virtual {v0, v14, v2, v1}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V

    .line 1190
    .line 1191
    .line 1192
    return-object v13

    .line 1193
    :pswitch_f
    check-cast v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 1194
    .line 1195
    check-cast v14, Landroidx/core/view/MenuHostHelper;

    .line 1196
    .line 1197
    move-object/from16 v2, p1

    .line 1198
    .line 1199
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1200
    .line 1201
    check-cast v1, Ljava/lang/Integer;

    .line 1202
    .line 1203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    .line 1205
    .line 1206
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    invoke-virtual {v0, v14, v2, v1}, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->BasicAlertDialog(Landroidx/core/view/MenuHostHelper;Landroidx/compose/runtime/Composer;I)V

    .line 1211
    .line 1212
    .line 1213
    return-object v13

    .line 1214
    :pswitch_10
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1215
    .line 1216
    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    .line 1217
    .line 1218
    move-object/from16 v15, p1

    .line 1219
    .line 1220
    check-cast v15, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 1221
    .line 1222
    check-cast v1, Landroid/content/Context;

    .line 1223
    .line 1224
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v2

    .line 1228
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    if-eqz v3, :cond_1e

    .line 1233
    .line 1234
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1235
    .line 1236
    move-object/from16 v18, v3

    .line 1237
    .line 1238
    goto :goto_11

    .line 1239
    :cond_1e
    move-object/from16 v18, v6

    .line 1240
    .line 1241
    :goto_11
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 1242
    .line 1243
    if-eqz v3, :cond_1f

    .line 1244
    .line 1245
    iget-wide v3, v3, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 1246
    .line 1247
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1248
    .line 1249
    shr-long v6, v3, v8

    .line 1250
    .line 1251
    long-to-int v6, v6

    .line 1252
    invoke-interface {v5, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 1253
    .line 1254
    .line 1255
    move-result v6

    .line 1256
    const-wide v7, 0xffffffffL

    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    and-long/2addr v3, v7

    .line 1262
    long-to-int v3, v3

    .line 1263
    invoke-interface {v5, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 1264
    .line 1265
    .line 1266
    move-result v3

    .line 1267
    invoke-static {v6, v3}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v3

    .line 1271
    new-instance v6, Landroidx/compose/ui/text/TextRange;

    .line 1272
    .line 1273
    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 1274
    .line 1275
    .line 1276
    :cond_1f
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 1277
    .line 1278
    new-instance v4, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 1279
    .line 1280
    const/16 v5, 0xc

    .line 1281
    .line 1282
    invoke-direct {v4, v0, v14, v1, v5}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1283
    .line 1284
    .line 1285
    sget-object v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->LocalTextClassifierCoroutineContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1286
    .line 1287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1288
    .line 1289
    const/16 v5, 0x1c

    .line 1290
    .line 1291
    if-lt v0, v5, :cond_20

    .line 1292
    .line 1293
    if-eqz v18, :cond_20

    .line 1294
    .line 1295
    if-eqz v6, :cond_20

    .line 1296
    .line 1297
    if-eqz v3, :cond_20

    .line 1298
    .line 1299
    instance-of v0, v3, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 1300
    .line 1301
    if-nez v0, :cond_21

    .line 1302
    .line 1303
    :cond_20
    move-object/from16 v16, v1

    .line 1304
    .line 1305
    move/from16 v17, v2

    .line 1306
    .line 1307
    move-object v0, v4

    .line 1308
    goto :goto_12

    .line 1309
    :cond_21
    check-cast v3, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 1310
    .line 1311
    iget-wide v7, v6, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 1312
    .line 1313
    move-object/from16 v20, v4

    .line 1314
    .line 1315
    move-object/from16 v16, v15

    .line 1316
    .line 1317
    move-object/from16 v17, v18

    .line 1318
    .line 1319
    move-object v15, v3

    .line 1320
    move-wide/from16 v18, v7

    .line 1321
    .line 1322
    invoke-virtual/range {v15 .. v20}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->addSmartSelectionTextContextMenuItems-YmzfRxQ$foundation(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Ljava/lang/String;JLandroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;)V

    .line 1323
    .line 1324
    .line 1325
    move-object/from16 v15, v16

    .line 1326
    .line 1327
    move-object/from16 v18, v17

    .line 1328
    .line 1329
    iget-wide v3, v6, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 1330
    .line 1331
    move-object/from16 v16, v1

    .line 1332
    .line 1333
    move/from16 v17, v2

    .line 1334
    .line 1335
    move-wide/from16 v19, v3

    .line 1336
    .line 1337
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/text/contextmenu/ProcessTextApi23Impl;->addProcessedTextContextMenuItems-UAq72N0(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/String;J)V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_13

    .line 1341
    :goto_12
    invoke-virtual {v0, v15}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    if-eqz v18, :cond_22

    .line 1345
    .line 1346
    if-eqz v6, :cond_22

    .line 1347
    .line 1348
    iget-wide v0, v6, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 1349
    .line 1350
    move-wide/from16 v19, v0

    .line 1351
    .line 1352
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/text/contextmenu/ProcessTextApi23Impl;->addProcessedTextContextMenuItems-UAq72N0(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/String;J)V

    .line 1353
    .line 1354
    .line 1355
    :cond_22
    :goto_13
    return-object v13

    .line 1356
    :pswitch_11
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1357
    .line 1358
    check-cast v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1359
    .line 1360
    move-object/from16 v2, p1

    .line 1361
    .line 1362
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1363
    .line 1364
    check-cast v1, Ljava/lang/Integer;

    .line 1365
    .line 1366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1367
    .line 1368
    .line 1369
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1370
    .line 1371
    .line 1372
    move-result v1

    .line 1373
    invoke-static {v0, v14, v2, v1}, Landroidx/room/util/SchemaInfoUtilKt;->SimpleLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1374
    .line 1375
    .line 1376
    return-object v13

    .line 1377
    :pswitch_12
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 1378
    .line 1379
    check-cast v14, Landroid/graphics/drawable/Drawable;

    .line 1380
    .line 1381
    move-object/from16 v2, p1

    .line 1382
    .line 1383
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1384
    .line 1385
    check-cast v1, Ljava/lang/Integer;

    .line 1386
    .line 1387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1388
    .line 1389
    .line 1390
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1391
    .line 1392
    .line 1393
    move-result v1

    .line 1394
    invoke-virtual {v0, v14, v2, v1}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->IconBox(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;I)V

    .line 1395
    .line 1396
    .line 1397
    return-object v13

    .line 1398
    :pswitch_13
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 1399
    .line 1400
    check-cast v14, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 1401
    .line 1402
    move-object/from16 v2, p1

    .line 1403
    .line 1404
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1405
    .line 1406
    check-cast v1, Ljava/lang/Integer;

    .line 1407
    .line 1408
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1409
    .line 1410
    .line 1411
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1412
    .line 1413
    .line 1414
    move-result v1

    .line 1415
    invoke-static {v0, v14, v2, v1}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V

    .line 1416
    .line 1417
    .line 1418
    return-object v13

    .line 1419
    :pswitch_14
    move-object v5, v0

    .line 1420
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 1421
    .line 1422
    check-cast v14, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 1423
    .line 1424
    move-object/from16 v0, p1

    .line 1425
    .line 1426
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1427
    .line 1428
    check-cast v1, Ljava/lang/Integer;

    .line 1429
    .line 1430
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1431
    .line 1432
    .line 1433
    move-result v1

    .line 1434
    and-int/lit8 v2, v1, 0x3

    .line 1435
    .line 1436
    if-eq v2, v10, :cond_23

    .line 1437
    .line 1438
    move v2, v12

    .line 1439
    goto :goto_14

    .line 1440
    :cond_23
    move v2, v11

    .line 1441
    :goto_14
    and-int/2addr v1, v12

    .line 1442
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1443
    .line 1444
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v1

    .line 1448
    if-eqz v1, :cond_26

    .line 1449
    .line 1450
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1451
    .line 1452
    .line 1453
    move-result v1

    .line 1454
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v2

    .line 1458
    if-nez v1, :cond_24

    .line 1459
    .line 1460
    if-ne v2, v9, :cond_25

    .line 1461
    .line 1462
    :cond_24
    new-instance v3, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 1463
    .line 1464
    const/4 v9, 0x0

    .line 1465
    const/4 v10, 0x2

    .line 1466
    const/4 v4, 0x0

    .line 1467
    const-class v6, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 1468
    .line 1469
    const-string v7, "data"

    .line 1470
    .line 1471
    const-string v8, "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;"

    .line 1472
    .line 1473
    invoke-direct/range {v3 .. v10}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1474
    .line 1475
    .line 1476
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v2

    .line 1480
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1481
    .line 1482
    .line 1483
    :cond_25
    check-cast v2, Landroidx/compose/runtime/State;

    .line 1484
    .line 1485
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v1

    .line 1489
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 1490
    .line 1491
    invoke-static {v14, v1, v0, v11}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V

    .line 1492
    .line 1493
    .line 1494
    goto :goto_15

    .line 1495
    :cond_26
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1496
    .line 1497
    .line 1498
    :goto_15
    return-object v13

    .line 1499
    :pswitch_15
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1500
    .line 1501
    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 1502
    .line 1503
    move-object/from16 v2, p1

    .line 1504
    .line 1505
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1506
    .line 1507
    check-cast v1, Ljava/lang/Integer;

    .line 1508
    .line 1509
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1510
    .line 1511
    .line 1512
    move-result v1

    .line 1513
    and-int/lit8 v3, v1, 0x3

    .line 1514
    .line 1515
    if-eq v3, v10, :cond_27

    .line 1516
    .line 1517
    move v3, v12

    .line 1518
    goto :goto_16

    .line 1519
    :cond_27
    move v3, v11

    .line 1520
    :goto_16
    and-int/2addr v1, v12

    .line 1521
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1522
    .line 1523
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v1

    .line 1527
    if-eqz v1, :cond_28

    .line 1528
    .line 1529
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v1

    .line 1533
    invoke-virtual {v0, v14, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    .line 1535
    .line 1536
    goto :goto_17

    .line 1537
    :cond_28
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1538
    .line 1539
    .line 1540
    :goto_17
    return-object v13

    .line 1541
    :pswitch_16
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 1542
    .line 1543
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 1544
    .line 1545
    move-object/from16 v2, p1

    .line 1546
    .line 1547
    check-cast v2, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 1548
    .line 1549
    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    .line 1550
    .line 1551
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 1552
    .line 1553
    invoke-direct {v3, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V

    .line 1554
    .line 1555
    .line 1556
    iget-wide v0, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1557
    .line 1558
    invoke-virtual {v14, v3, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v0

    .line 1562
    return-object v0

    .line 1563
    :pswitch_17
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 1564
    .line 1565
    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 1566
    .line 1567
    move-object/from16 v2, p1

    .line 1568
    .line 1569
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1570
    .line 1571
    check-cast v1, Ljava/lang/Integer;

    .line 1572
    .line 1573
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1574
    .line 1575
    .line 1576
    move-result v1

    .line 1577
    and-int/lit8 v3, v1, 0x3

    .line 1578
    .line 1579
    if-eq v3, v10, :cond_29

    .line 1580
    .line 1581
    move v3, v12

    .line 1582
    goto :goto_18

    .line 1583
    :cond_29
    move v3, v11

    .line 1584
    :goto_18
    and-int/2addr v1, v12

    .line 1585
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1586
    .line 1587
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v1

    .line 1591
    if-eqz v1, :cond_2f

    .line 1592
    .line 1593
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 1594
    .line 1595
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v1

    .line 1599
    move-object v15, v1

    .line 1600
    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 1601
    .line 1602
    iget v1, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    .line 1603
    .line 1604
    iget-object v3, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    .line 1605
    .line 1606
    invoke-interface {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    .line 1607
    .line 1608
    .line 1609
    move-result v4

    .line 1610
    const/4 v5, -0x1

    .line 1611
    if-ge v1, v4, :cond_2a

    .line 1612
    .line 1613
    invoke-interface {v15, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v4

    .line 1617
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1618
    .line 1619
    .line 1620
    move-result v4

    .line 1621
    if-nez v4, :cond_2b

    .line 1622
    .line 1623
    :cond_2a
    invoke-interface {v15, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getIndex(Ljava/lang/Object;)I

    .line 1624
    .line 1625
    .line 1626
    move-result v1

    .line 1627
    if-eq v1, v5, :cond_2b

    .line 1628
    .line 1629
    iput v1, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    .line 1630
    .line 1631
    :cond_2b
    if-eq v1, v5, :cond_2c

    .line 1632
    .line 1633
    const v4, -0x6339ef97

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1637
    .line 1638
    .line 1639
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1640
    .line 1641
    iget-object v4, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    .line 1642
    .line 1643
    const/16 v20, 0x0

    .line 1644
    .line 1645
    move-object/from16 v16, v0

    .line 1646
    .line 1647
    move/from16 v17, v1

    .line 1648
    .line 1649
    move-object/from16 v19, v2

    .line 1650
    .line 1651
    move-object/from16 v18, v4

    .line 1652
    .line 1653
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->SkippableItem-JVlU9Rs(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1657
    .line 1658
    .line 1659
    goto :goto_19

    .line 1660
    :cond_2c
    const v0, -0x633657e2

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1664
    .line 1665
    .line 1666
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1667
    .line 1668
    .line 1669
    :goto_19
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v1

    .line 1677
    if-nez v0, :cond_2d

    .line 1678
    .line 1679
    if-ne v1, v9, :cond_2e

    .line 1680
    .line 1681
    :cond_2d
    new-instance v1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 1682
    .line 1683
    const/16 v0, 0x12

    .line 1684
    .line 1685
    invoke-direct {v1, v0, v14}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1689
    .line 1690
    .line 1691
    :cond_2e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1692
    .line 1693
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 1694
    .line 1695
    .line 1696
    goto :goto_1a

    .line 1697
    :cond_2f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1698
    .line 1699
    .line 1700
    :goto_1a
    return-object v13

    .line 1701
    :pswitch_18
    check-cast v0, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

    .line 1702
    .line 1703
    check-cast v14, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 1704
    .line 1705
    move-object/from16 v2, p1

    .line 1706
    .line 1707
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 1708
    .line 1709
    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    .line 1710
    .line 1711
    iget-wide v3, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1712
    .line 1713
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1714
    .line 1715
    .line 1716
    move-result v3

    .line 1717
    const v4, 0x7fffffff

    .line 1718
    .line 1719
    .line 1720
    if-eq v3, v4, :cond_30

    .line 1721
    .line 1722
    goto :goto_1b

    .line 1723
    :cond_30
    const-string v3, "LazyVerticalGrid\'s width should be bound by parent."

    .line 1724
    .line 1725
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1726
    .line 1727
    .line 1728
    :goto_1b
    iget-wide v3, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1729
    .line 1730
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1731
    .line 1732
    .line 1733
    move-result v3

    .line 1734
    invoke-interface {v14}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 1735
    .line 1736
    .line 1737
    move-result v1

    .line 1738
    invoke-interface {v2, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1739
    .line 1740
    .line 1741
    move-result v1

    .line 1742
    add-int v4, v3, v1

    .line 1743
    .line 1744
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;->minSize:F

    .line 1745
    .line 1746
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1747
    .line 1748
    .line 1749
    move-result v0

    .line 1750
    add-int/2addr v0, v1

    .line 1751
    div-int/2addr v4, v0

    .line 1752
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 1753
    .line 1754
    .line 1755
    move-result v0

    .line 1756
    add-int/lit8 v4, v0, -0x1

    .line 1757
    .line 1758
    mul-int/2addr v4, v1

    .line 1759
    sub-int v1, v3, v4

    .line 1760
    .line 1761
    div-int v4, v1, v0

    .line 1762
    .line 1763
    rem-int/2addr v1, v0

    .line 1764
    new-instance v5, Ljava/util/ArrayList;

    .line 1765
    .line 1766
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1767
    .line 1768
    .line 1769
    move v6, v11

    .line 1770
    :goto_1c
    if-ge v6, v0, :cond_32

    .line 1771
    .line 1772
    if-ge v6, v1, :cond_31

    .line 1773
    .line 1774
    move v7, v12

    .line 1775
    goto :goto_1d

    .line 1776
    :cond_31
    move v7, v11

    .line 1777
    :goto_1d
    add-int/2addr v7, v4

    .line 1778
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v7

    .line 1782
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    .line 1784
    .line 1785
    add-int/lit8 v6, v6, 0x1

    .line 1786
    .line 1787
    goto :goto_1c

    .line 1788
    :cond_32
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 1789
    .line 1790
    .line 1791
    move-result-object v4

    .line 1792
    array-length v0, v4

    .line 1793
    new-array v6, v0, [I

    .line 1794
    .line 1795
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1796
    .line 1797
    move-object v1, v14

    .line 1798
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1799
    .line 1800
    .line 1801
    new-instance v0, Landroidx/cardview/widget/CardView$1;

    .line 1802
    .line 1803
    const/16 v1, 0x15

    .line 1804
    .line 1805
    invoke-direct {v0, v1, v4, v6, v11}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1806
    .line 1807
    .line 1808
    return-object v0

    .line 1809
    :pswitch_19
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1810
    .line 1811
    check-cast v14, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 1812
    .line 1813
    move-object/from16 v2, p1

    .line 1814
    .line 1815
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1816
    .line 1817
    check-cast v1, Ljava/lang/Integer;

    .line 1818
    .line 1819
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1820
    .line 1821
    .line 1822
    move-result v1

    .line 1823
    and-int/lit8 v3, v1, 0x3

    .line 1824
    .line 1825
    if-eq v3, v10, :cond_33

    .line 1826
    .line 1827
    move v3, v12

    .line 1828
    goto :goto_1e

    .line 1829
    :cond_33
    move v3, v11

    .line 1830
    :goto_1e
    and-int/2addr v1, v12

    .line 1831
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1832
    .line 1833
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v1

    .line 1837
    if-eqz v1, :cond_34

    .line 1838
    .line 1839
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v1

    .line 1843
    invoke-virtual {v0, v14, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    .line 1845
    .line 1846
    goto :goto_1f

    .line 1847
    :cond_34
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1848
    .line 1849
    .line 1850
    :goto_1f
    return-object v13

    .line 1851
    :pswitch_1a
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1852
    .line 1853
    check-cast v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1854
    .line 1855
    move-object/from16 v2, p1

    .line 1856
    .line 1857
    check-cast v2, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 1858
    .line 1859
    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    .line 1860
    .line 1861
    new-instance v3, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 1862
    .line 1863
    iget-wide v4, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1864
    .line 1865
    invoke-direct {v3, v2, v4, v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;-><init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)V

    .line 1866
    .line 1867
    .line 1868
    new-instance v4, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 1869
    .line 1870
    const/4 v5, 0x3

    .line 1871
    invoke-direct {v4, v5, v14, v3}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1872
    .line 1873
    .line 1874
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1875
    .line 1876
    const v5, -0x19bf96da

    .line 1877
    .line 1878
    .line 1879
    invoke-direct {v3, v5, v4, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 1880
    .line 1881
    .line 1882
    invoke-interface {v2, v13, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v3

    .line 1886
    iget-wide v4, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1887
    .line 1888
    invoke-interface {v0, v2, v3, v4, v5}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v0

    .line 1892
    return-object v0

    .line 1893
    :pswitch_1b
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 1894
    .line 1895
    check-cast v14, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 1896
    .line 1897
    move-object/from16 v2, p1

    .line 1898
    .line 1899
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1900
    .line 1901
    check-cast v1, Ljava/lang/Integer;

    .line 1902
    .line 1903
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1904
    .line 1905
    .line 1906
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1907
    .line 1908
    .line 1909
    move-result v1

    .line 1910
    invoke-virtual {v0, v14, v2, v1}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->Content$foundation(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/runtime/Composer;I)V

    .line 1911
    .line 1912
    .line 1913
    return-object v13

    .line 1914
    :pswitch_1c
    check-cast v0, Landroidx/compose/runtime/MovableContent;

    .line 1915
    .line 1916
    move-object/from16 v2, p1

    .line 1917
    .line 1918
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1919
    .line 1920
    check-cast v1, Ljava/lang/Integer;

    .line 1921
    .line 1922
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1923
    .line 1924
    .line 1925
    move-result v1

    .line 1926
    and-int/lit8 v3, v1, 0x3

    .line 1927
    .line 1928
    if-eq v3, v10, :cond_35

    .line 1929
    .line 1930
    move v3, v12

    .line 1931
    goto :goto_20

    .line 1932
    :cond_35
    move v3, v11

    .line 1933
    :goto_20
    and-int/2addr v1, v12

    .line 1934
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1935
    .line 1936
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1937
    .line 1938
    .line 1939
    move-result v1

    .line 1940
    if-eqz v1, :cond_36

    .line 1941
    .line 1942
    iget-object v0, v0, Landroidx/compose/runtime/MovableContent;->content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1943
    .line 1944
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v1

    .line 1948
    invoke-virtual {v0, v14, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    .line 1950
    .line 1951
    goto :goto_21

    .line 1952
    :cond_36
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1953
    .line 1954
    .line 1955
    :goto_21
    return-object v13

    .line 1956
    nop

    .line 1957
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
