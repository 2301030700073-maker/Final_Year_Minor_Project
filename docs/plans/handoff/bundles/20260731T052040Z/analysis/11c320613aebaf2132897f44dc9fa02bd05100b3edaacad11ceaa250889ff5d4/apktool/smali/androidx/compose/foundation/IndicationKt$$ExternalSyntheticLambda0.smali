.class public final synthetic Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/16 v4, 0x10

    .line 9
    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    iget-object v8, v0, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 28
    .line 29
    move-object/from16 v3, p2

    .line 30
    .line 31
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    move-object/from16 v9, p3

    .line 34
    .line 35
    check-cast v9, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    and-int/lit8 v1, v9, 0x11

    .line 45
    .line 46
    if-eq v1, v4, :cond_0

    .line 47
    .line 48
    move v1, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v1, v7

    .line 51
    :goto_0
    and-int/lit8 v4, v9, 0x1

    .line 52
    .line 53
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {v3, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 62
    .line 63
    const/high16 v4, 0x41200000    # 10.0f

    .line 64
    .line 65
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SpacerKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    new-instance v9, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 70
    .line 71
    new-instance v10, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    const/high16 v11, 0x40800000    # 4.0f

    .line 77
    .line 78
    invoke-direct {v9, v11, v6, v10}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;)V

    .line 79
    .line 80
    .line 81
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 82
    .line 83
    invoke-static {v9, v10, v3, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    iget-wide v9, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 88
    .line 89
    const/16 v11, 0x20

    .line 90
    .line 91
    ushr-long v11, v9, v11

    .line 92
    .line 93
    xor-long/2addr v9, v11

    .line 94
    long-to-int v9, v9

    .line 95
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 104
    .line 105
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 111
    .line 112
    .line 113
    iget-boolean v12, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 114
    .line 115
    if-eqz v12, :cond_1

    .line 116
    .line 117
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 122
    .line 123
    .line 124
    :goto_1
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v3, v7, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    invoke-static {v3, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 139
    .line 140
    invoke-static {v3, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 144
    .line 145
    invoke-static {v3, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 146
    .line 147
    .line 148
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 149
    .line 150
    invoke-static {v3, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    sget-object v4, Lnewpipe/shared/generated/resources/String0_commonMainKt;->app_license_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 154
    .line 155
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Lorg/jetbrains/compose/resources/StringResource;

    .line 160
    .line 161
    invoke-static {v4, v3}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    sget-object v4, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Landroidx/compose/material3/MaterialTheme$Values;

    .line 172
    .line 173
    iget-object v7, v7, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 174
    .line 175
    iget-object v7, v7, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 176
    .line 177
    const/16 v26, 0x0

    .line 178
    .line 179
    const v27, 0x1fffe

    .line 180
    .line 181
    .line 182
    const/4 v10, 0x0

    .line 183
    const-wide/16 v11, 0x0

    .line 184
    .line 185
    const-wide/16 v13, 0x0

    .line 186
    .line 187
    const-wide/16 v15, 0x0

    .line 188
    .line 189
    const/16 v17, 0x0

    .line 190
    .line 191
    const-wide/16 v18, 0x0

    .line 192
    .line 193
    const/16 v20, 0x0

    .line 194
    .line 195
    const/16 v21, 0x0

    .line 196
    .line 197
    const/16 v22, 0x0

    .line 198
    .line 199
    const/16 v23, 0x0

    .line 200
    .line 201
    move-object/from16 v25, v3

    .line 202
    .line 203
    move-object/from16 v24, v7

    .line 204
    .line 205
    invoke-static/range {v9 .. v27}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 206
    .line 207
    .line 208
    sget-object v7, Lnewpipe/shared/generated/resources/String0_commonMainKt;->app_license$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 209
    .line 210
    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    check-cast v7, Lorg/jetbrains/compose/resources/StringResource;

    .line 215
    .line 216
    invoke-static {v7, v3}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    check-cast v7, Landroidx/compose/material3/MaterialTheme$Values;

    .line 225
    .line 226
    iget-object v7, v7, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 227
    .line 228
    iget-object v7, v7, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 229
    .line 230
    move-object/from16 v24, v7

    .line 231
    .line 232
    invoke-static/range {v9 .. v27}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 233
    .line 234
    .line 235
    invoke-static {v1}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    or-int/2addr v1, v7

    .line 248
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    if-nez v1, :cond_2

    .line 253
    .line 254
    if-ne v7, v2, :cond_3

    .line 255
    .line 256
    :cond_2
    new-instance v7, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 257
    .line 258
    const/16 v1, 0x14

    .line 259
    .line 260
    invoke-direct {v7, v0, v8, v1}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_3
    move-object v9, v7

    .line 267
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 268
    .line 269
    sget-object v15, Lnet/newpipe/app/screen/about/AboutPageKt;->lambda$-329735335:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 270
    .line 271
    const v17, 0x30000030

    .line 272
    .line 273
    .line 274
    const/16 v18, 0x1fc

    .line 275
    .line 276
    const/4 v11, 0x0

    .line 277
    const/4 v12, 0x0

    .line 278
    const/4 v13, 0x0

    .line 279
    const/4 v14, 0x0

    .line 280
    move-object/from16 v16, v3

    .line 281
    .line 282
    invoke-static/range {v9 .. v18}, Landroidx/compose/material3/BadgeKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 283
    .line 284
    .line 285
    sget-object v0, Lnewpipe/shared/generated/resources/String0_commonMainKt;->title_licenses$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 286
    .line 287
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Lorg/jetbrains/compose/resources/StringResource;

    .line 292
    .line 293
    invoke-static {v0, v3}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 302
    .line 303
    iget-object v0, v0, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 304
    .line 305
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 306
    .line 307
    const/16 v26, 0x0

    .line 308
    .line 309
    const v27, 0x1fffe

    .line 310
    .line 311
    .line 312
    const/4 v10, 0x0

    .line 313
    const-wide/16 v11, 0x0

    .line 314
    .line 315
    const-wide/16 v13, 0x0

    .line 316
    .line 317
    const-wide/16 v15, 0x0

    .line 318
    .line 319
    const/16 v17, 0x0

    .line 320
    .line 321
    const-wide/16 v18, 0x0

    .line 322
    .line 323
    const/16 v20, 0x0

    .line 324
    .line 325
    const/16 v21, 0x0

    .line 326
    .line 327
    const/16 v22, 0x0

    .line 328
    .line 329
    const/16 v23, 0x0

    .line 330
    .line 331
    move-object/from16 v24, v0

    .line 332
    .line 333
    move-object/from16 v25, v3

    .line 334
    .line 335
    invoke-static/range {v9 .. v27}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 343
    .line 344
    .line 345
    :goto_2
    return-object v5

    .line 346
    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 347
    .line 348
    check-cast v8, Landroidx/compose/material3/ColorScheme;

    .line 349
    .line 350
    move-object/from16 v1, p1

    .line 351
    .line 352
    check-cast v1, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;

    .line 353
    .line 354
    move-object/from16 v2, p2

    .line 355
    .line 356
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 357
    .line 358
    move-object/from16 v4, p3

    .line 359
    .line 360
    check-cast v4, Ljava/lang/Integer;

    .line 361
    .line 362
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    and-int/lit8 v9, v4, 0x6

    .line 370
    .line 371
    if-nez v9, :cond_7

    .line 372
    .line 373
    and-int/lit8 v9, v4, 0x8

    .line 374
    .line 375
    if-nez v9, :cond_5

    .line 376
    .line 377
    move-object v9, v2

    .line 378
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 379
    .line 380
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    goto :goto_3

    .line 385
    :cond_5
    move-object v9, v2

    .line 386
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 387
    .line 388
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    :goto_3
    if-eqz v9, :cond_6

    .line 393
    .line 394
    const/4 v3, 0x4

    .line 395
    :cond_6
    or-int/2addr v4, v3

    .line 396
    :cond_7
    and-int/lit8 v3, v4, 0x13

    .line 397
    .line 398
    const/16 v9, 0x12

    .line 399
    .line 400
    if-eq v3, v9, :cond_8

    .line 401
    .line 402
    move v7, v6

    .line 403
    :cond_8
    and-int/lit8 v3, v4, 0x1

    .line 404
    .line 405
    move-object v14, v2

    .line 406
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 407
    .line 408
    invoke-virtual {v14, v3, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-eqz v2, :cond_9

    .line 413
    .line 414
    sget-object v9, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    .line 415
    .line 416
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    new-instance v10, Landroidx/compose/material3/TabIndicatorModifier;

    .line 421
    .line 422
    iget-object v2, v1, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;->tabPositions:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 423
    .line 424
    iget-object v1, v1, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;->$tabIndicatorAnimationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 425
    .line 426
    invoke-direct {v10, v2, v0, v1}, Landroidx/compose/material3/TabIndicatorModifier;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;ILandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 427
    .line 428
    .line 429
    iget-wide v12, v8, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 430
    .line 431
    const/16 v15, 0xc00

    .line 432
    .line 433
    const/16 v16, 0x2

    .line 434
    .line 435
    const/4 v11, 0x0

    .line 436
    invoke-virtual/range {v9 .. v16}, Landroidx/compose/material3/TabRowDefaults;->SecondaryIndicator-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 437
    .line 438
    .line 439
    goto :goto_4

    .line 440
    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 441
    .line 442
    .line 443
    :goto_4
    return-object v5

    .line 444
    :pswitch_1
    check-cast v0, Landroidx/navigation3/runtime/NavEntryDecorator;

    .line 445
    .line 446
    check-cast v8, Landroidx/navigation3/runtime/NavEntry;

    .line 447
    .line 448
    move-object/from16 v1, p2

    .line 449
    .line 450
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 451
    .line 452
    move-object/from16 v2, p3

    .line 453
    .line 454
    check-cast v2, Ljava/lang/Integer;

    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    and-int/lit8 v3, v2, 0x11

    .line 461
    .line 462
    if-eq v3, v4, :cond_a

    .line 463
    .line 464
    move v3, v6

    .line 465
    goto :goto_5

    .line 466
    :cond_a
    move v3, v7

    .line 467
    :goto_5
    and-int/2addr v2, v6

    .line 468
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 469
    .line 470
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_b

    .line 475
    .line 476
    iget-object v0, v0, Landroidx/navigation3/runtime/NavEntryDecorator;->decorate:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 477
    .line 478
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v0, v8, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    goto :goto_6

    .line 486
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 487
    .line 488
    .line 489
    :goto_6
    return-object v5

    .line 490
    :pswitch_2
    check-cast v0, Landroid/text/Spannable;

    .line 491
    .line 492
    check-cast v8, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    .line 493
    .line 494
    move-object/from16 v1, p1

    .line 495
    .line 496
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 497
    .line 498
    move-object/from16 v2, p2

    .line 499
    .line 500
    check-cast v2, Ljava/lang/Integer;

    .line 501
    .line 502
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    move-object/from16 v4, p3

    .line 507
    .line 508
    check-cast v4, Ljava/lang/Integer;

    .line 509
    .line 510
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 511
    .line 512
    .line 513
    move-result v4

    .line 514
    new-instance v6, Lio/noties/markwon/core/spans/CodeSpan;

    .line 515
    .line 516
    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 517
    .line 518
    iget-object v10, v1, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 519
    .line 520
    if-nez v10, :cond_c

    .line 521
    .line 522
    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 523
    .line 524
    :cond_c
    iget-object v11, v1, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 525
    .line 526
    if-eqz v11, :cond_d

    .line 527
    .line 528
    iget v7, v11, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 529
    .line 530
    :cond_d
    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 531
    .line 532
    if-eqz v1, :cond_e

    .line 533
    .line 534
    iget v1, v1, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :cond_e
    const v1, 0xffff

    .line 538
    .line 539
    .line 540
    :goto_7
    iget-object v8, v8, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v8, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 543
    .line 544
    iget-object v11, v8, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 545
    .line 546
    check-cast v11, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 547
    .line 548
    invoke-virtual {v11, v9, v10, v7, v1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    instance-of v7, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 553
    .line 554
    if-nez v7, :cond_f

    .line 555
    .line 556
    new-instance v7, Lorg/acra/util/ProcessFinisher;

    .line 557
    .line 558
    iget-object v9, v8, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

    .line 559
    .line 560
    invoke-direct {v7, v1, v9}, Lorg/acra/util/ProcessFinisher;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Lorg/acra/util/ProcessFinisher;)V

    .line 561
    .line 562
    .line 563
    iput-object v7, v8, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

    .line 564
    .line 565
    iget-object v1, v7, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    check-cast v1, Landroid/graphics/Typeface;

    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_f
    iget-object v1, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    check-cast v1, Landroid/graphics/Typeface;

    .line 579
    .line 580
    :goto_8
    invoke-direct {v6, v1, v3}, Lio/noties/markwon/core/spans/CodeSpan;-><init>(Ljava/lang/Object;I)V

    .line 581
    .line 582
    .line 583
    const/16 v1, 0x21

    .line 584
    .line 585
    invoke-interface {v0, v6, v2, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 586
    .line 587
    .line 588
    return-object v5

    .line 589
    :pswitch_3
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 590
    .line 591
    check-cast v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 592
    .line 593
    move-object/from16 v1, p1

    .line 594
    .line 595
    check-cast v1, Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    .line 596
    .line 597
    move-object/from16 v1, p2

    .line 598
    .line 599
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 600
    .line 601
    move-object/from16 v2, p3

    .line 602
    .line 603
    check-cast v2, Ljava/lang/Integer;

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    and-int/lit8 v3, v2, 0x11

    .line 610
    .line 611
    if-eq v3, v4, :cond_10

    .line 612
    .line 613
    move v7, v6

    .line 614
    :cond_10
    and-int/2addr v2, v6

    .line 615
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 616
    .line 617
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    if-eqz v2, :cond_11

    .line 622
    .line 623
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 624
    .line 625
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    const/16 v2, 0x8

    .line 630
    .line 631
    invoke-static {v0, v8, v1, v2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 632
    .line 633
    .line 634
    goto :goto_9

    .line 635
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 636
    .line 637
    .line 638
    :goto_9
    return-object v5

    .line 639
    :pswitch_4
    check-cast v0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 640
    .line 641
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 642
    .line 643
    move-object/from16 v1, p1

    .line 644
    .line 645
    check-cast v1, Ljava/lang/Float;

    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    move-object/from16 v2, p2

    .line 652
    .line 653
    check-cast v2, Ljava/lang/Float;

    .line 654
    .line 655
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    move-object/from16 v4, p3

    .line 660
    .line 661
    check-cast v4, Ljava/lang/Float;

    .line 662
    .line 663
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    invoke-static {v0, v1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 672
    .line 673
    .line 674
    move-result-object v9

    .line 675
    iget-object v9, v9, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 676
    .line 677
    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 678
    .line 679
    if-ne v9, v10, :cond_12

    .line 680
    .line 681
    goto :goto_a

    .line 682
    :cond_12
    sget-object v9, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 683
    .line 684
    if-ne v8, v9, :cond_13

    .line 685
    .line 686
    goto :goto_a

    .line 687
    :cond_13
    if-nez v5, :cond_14

    .line 688
    .line 689
    move v5, v6

    .line 690
    goto :goto_a

    .line 691
    :cond_14
    move v5, v7

    .line 692
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    iget v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 697
    .line 698
    const/4 v9, 0x0

    .line 699
    if-nez v8, :cond_15

    .line 700
    .line 701
    move v10, v9

    .line 702
    goto :goto_b

    .line 703
    :cond_15
    invoke-static {v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    .line 704
    .line 705
    .line 706
    move-result v10

    .line 707
    int-to-float v8, v8

    .line 708
    div-float/2addr v10, v8

    .line 709
    :goto_b
    float-to-int v8, v10

    .line 710
    int-to-float v8, v8

    .line 711
    sub-float v8, v10, v8

    .line 712
    .line 713
    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 714
    .line 715
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 716
    .line 717
    .line 718
    move-result v12

    .line 719
    const/high16 v13, 0x43c80000    # 400.0f

    .line 720
    .line 721
    invoke-interface {v11, v13}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 722
    .line 723
    .line 724
    move-result v11

    .line 725
    cmpg-float v11, v12, v11

    .line 726
    .line 727
    if-gez v11, :cond_16

    .line 728
    .line 729
    goto :goto_c

    .line 730
    :cond_16
    cmpl-float v1, v1, v9

    .line 731
    .line 732
    if-lez v1, :cond_17

    .line 733
    .line 734
    move v7, v6

    .line 735
    goto :goto_c

    .line 736
    :cond_17
    move v7, v3

    .line 737
    :goto_c
    if-nez v7, :cond_1a

    .line 738
    .line 739
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    const/high16 v3, 0x3f000000    # 0.5f

    .line 744
    .line 745
    cmpl-float v1, v1, v3

    .line 746
    .line 747
    if-lez v1, :cond_18

    .line 748
    .line 749
    if-eqz v5, :cond_1e

    .line 750
    .line 751
    goto :goto_d

    .line 752
    :cond_18
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 757
    .line 758
    sget-object v6, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 759
    .line 760
    const/high16 v6, 0x42600000    # 56.0f

    .line 761
    .line 762
    invoke-interface {v3, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 767
    .line 768
    .line 769
    move-result v6

    .line 770
    int-to-float v6, v6

    .line 771
    const/high16 v7, 0x40000000    # 2.0f

    .line 772
    .line 773
    div-float/2addr v6, v7

    .line 774
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    int-to-float v0, v0

    .line 783
    div-float/2addr v3, v0

    .line 784
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 785
    .line 786
    .line 787
    move-result v0

    .line 788
    cmpl-float v0, v1, v0

    .line 789
    .line 790
    if-ltz v0, :cond_19

    .line 791
    .line 792
    if-eqz v5, :cond_1b

    .line 793
    .line 794
    goto :goto_e

    .line 795
    :cond_19
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    cmpg-float v0, v0, v1

    .line 804
    .line 805
    if-gez v0, :cond_1b

    .line 806
    .line 807
    goto :goto_e

    .line 808
    :cond_1a
    if-ne v7, v6, :cond_1c

    .line 809
    .line 810
    :cond_1b
    :goto_d
    move v2, v4

    .line 811
    goto :goto_e

    .line 812
    :cond_1c
    if-ne v7, v3, :cond_1d

    .line 813
    .line 814
    goto :goto_e

    .line 815
    :cond_1d
    move v2, v9

    .line 816
    :cond_1e
    :goto_e
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    return-object v0

    .line 821
    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/IndicationNodeFactory;

    .line 822
    .line 823
    check-cast v8, Landroidx/compose/foundation/interaction/InteractionSource;

    .line 824
    .line 825
    move-object/from16 v1, p1

    .line 826
    .line 827
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 828
    .line 829
    move-object/from16 v1, p2

    .line 830
    .line 831
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 832
    .line 833
    move-object/from16 v3, p3

    .line 834
    .line 835
    check-cast v3, Ljava/lang/Integer;

    .line 836
    .line 837
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 841
    .line 842
    const v3, -0x15193045

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 846
    .line 847
    .line 848
    invoke-interface {v0, v8, v1}, Landroidx/compose/foundation/IndicationNodeFactory;->rememberUpdatedInstance(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/GapComposer;)V

    .line 849
    .line 850
    .line 851
    sget-object v0, Landroidx/compose/foundation/NoIndicationInstance;->INSTANCE:Landroidx/compose/foundation/NoIndicationInstance;

    .line 852
    .line 853
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v3

    .line 857
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    if-nez v3, :cond_1f

    .line 862
    .line 863
    if-ne v4, v2, :cond_20

    .line 864
    .line 865
    :cond_1f
    new-instance v4, Landroidx/compose/foundation/IndicationModifier;

    .line 866
    .line 867
    invoke-direct {v4, v0}, Landroidx/compose/foundation/IndicationModifier;-><init>(Landroidx/compose/foundation/NoIndicationInstance;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    :cond_20
    check-cast v4, Landroidx/compose/foundation/IndicationModifier;

    .line 874
    .line 875
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 876
    .line 877
    .line 878
    return-object v4

    .line 879
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
