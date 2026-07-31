.class public final synthetic Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 1
    const/4 p2, 0x7

    .line 2
    iput p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;->$r8$classId:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/16 v6, 0x20

    .line 12
    .line 13
    const/high16 v7, 0x41800000    # 16.0f

    .line 14
    .line 15
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 16
    .line 17
    const/4 v9, 0x4

    .line 18
    const/4 v10, 0x0

    .line 19
    const/16 v11, 0x10

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x2

    .line 23
    const/4 v15, 0x1

    .line 24
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    iget-object v0, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    check-cast v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 32
    .line 33
    move-object/from16 v19, p1

    .line 34
    .line 35
    check-cast v19, Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v20, p2

    .line 38
    .line 39
    check-cast v20, Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v1, p3

    .line 42
    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    sget v2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->$r8$clinit:I

    .line 46
    .line 47
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    :goto_0
    move v14, v15

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v14, 0x0

    .line 79
    :goto_1
    invoke-virtual {v0, v14}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->validateInput(Z)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {v0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->getViewModel()Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object v21

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v18

    .line 94
    invoke-static/range {v21 .. v21}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 99
    .line 100
    new-instance v3, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 101
    .line 102
    const/16 v4, 0xb

    .line 103
    .line 104
    invoke-direct {v3, v2, v4}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 105
    .line 106
    .line 107
    new-instance v17, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 108
    .line 109
    const/16 v23, 0x0

    .line 110
    .line 111
    move-object/from16 v22, v0

    .line 112
    .line 113
    invoke-direct/range {v17 .. v23}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v0, v17

    .line 117
    .line 118
    invoke-static {v1, v3, v12, v0, v13}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 119
    .line 120
    .line 121
    :goto_2
    return-object v16

    .line 122
    :pswitch_0
    check-cast v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    .line 123
    .line 124
    move-object/from16 v1, p1

    .line 125
    .line 126
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 127
    .line 128
    move-object/from16 v2, p2

    .line 129
    .line 130
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 131
    .line 132
    move-object/from16 v3, p3

    .line 133
    .line 134
    check-cast v3, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    and-int/lit8 v4, v3, 0x6

    .line 144
    .line 145
    if-nez v4, :cond_5

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_4

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    move v9, v13

    .line 155
    :goto_3
    or-int/2addr v3, v9

    .line 156
    :cond_5
    and-int/lit8 v4, v3, 0x13

    .line 157
    .line 158
    const/16 v9, 0x12

    .line 159
    .line 160
    if-eq v4, v9, :cond_6

    .line 161
    .line 162
    move v4, v15

    .line 163
    goto :goto_4

    .line 164
    :cond_6
    const/4 v4, 0x0

    .line 165
    :goto_4
    and-int/2addr v3, v15

    .line 166
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 173
    .line 174
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const/high16 v4, 0x41c00000    # 24.0f

    .line 179
    .line 180
    invoke-static {v1, v4, v10, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v2}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v1, v4, v15}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 193
    .line 194
    sget-object v9, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 195
    .line 196
    const/16 v10, 0x36

    .line 197
    .line 198
    invoke-static {v9, v4, v2, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iget-wide v9, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 203
    .line 204
    ushr-long v11, v9, v6

    .line 205
    .line 206
    xor-long/2addr v9, v11

    .line 207
    long-to-int v9, v9

    .line 208
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    invoke-static {v2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 217
    .line 218
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 222
    .line 223
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 224
    .line 225
    .line 226
    iget-boolean v12, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 227
    .line 228
    if-eqz v12, :cond_7

    .line 229
    .line 230
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 235
    .line 236
    .line 237
    :goto_5
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 238
    .line 239
    invoke-static {v2, v4, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 240
    .line 241
    .line 242
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 243
    .line 244
    invoke-static {v2, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 252
    .line 253
    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 254
    .line 255
    .line 256
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 257
    .line 258
    invoke-static {v2, v9}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 259
    .line 260
    .line 261
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 262
    .line 263
    invoke-static {v2, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 267
    .line 268
    .line 269
    move-result-object v18

    .line 270
    const v1, 0x7f1201f1

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v2}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v17

    .line 277
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 278
    .line 279
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 284
    .line 285
    iget-object v1, v1, Landroidx/compose/material3/Typography;->headlineMedium:Landroidx/compose/ui/text/TextStyle;

    .line 286
    .line 287
    sget-object v24, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 288
    .line 289
    const/16 v30, 0x0

    .line 290
    .line 291
    const v31, 0xfffffb

    .line 292
    .line 293
    .line 294
    const-wide/16 v20, 0x0

    .line 295
    .line 296
    const-wide/16 v22, 0x0

    .line 297
    .line 298
    const/16 v25, 0x0

    .line 299
    .line 300
    const-wide/16 v26, 0x0

    .line 301
    .line 302
    const-wide/16 v28, 0x0

    .line 303
    .line 304
    move-object/from16 v19, v1

    .line 305
    .line 306
    invoke-static/range {v19 .. v31}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 307
    .line 308
    .line 309
    move-result-object v36

    .line 310
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 311
    .line 312
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 317
    .line 318
    iget-wide v14, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 319
    .line 320
    const/16 v39, 0x0

    .line 321
    .line 322
    const v40, 0x1fff8

    .line 323
    .line 324
    .line 325
    const/16 v21, 0x0

    .line 326
    .line 327
    const/16 v24, 0x0

    .line 328
    .line 329
    const/16 v28, 0x0

    .line 330
    .line 331
    const-wide/16 v29, 0x0

    .line 332
    .line 333
    const/16 v31, 0x0

    .line 334
    .line 335
    const/16 v32, 0x0

    .line 336
    .line 337
    const/16 v33, 0x0

    .line 338
    .line 339
    const/16 v34, 0x0

    .line 340
    .line 341
    const/16 v35, 0x0

    .line 342
    .line 343
    const/16 v38, 0x30

    .line 344
    .line 345
    move-object/from16 v37, v2

    .line 346
    .line 347
    move-wide/from16 v19, v14

    .line 348
    .line 349
    invoke-static/range {v17 .. v40}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 350
    .line 351
    .line 352
    move-object/from16 v1, v37

    .line 353
    .line 354
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 359
    .line 360
    .line 361
    const/high16 v2, 0x43390000    # 185.0f

    .line 362
    .line 363
    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 368
    .line 369
    const/4 v7, 0x0

    .line 370
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    iget-wide v7, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 375
    .line 376
    ushr-long v14, v7, v6

    .line 377
    .line 378
    xor-long/2addr v7, v14

    .line 379
    long-to-int v6, v7

    .line 380
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 389
    .line 390
    .line 391
    iget-boolean v8, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 392
    .line 393
    if-eqz v8, :cond_8

    .line 394
    .line 395
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 400
    .line 401
    .line 402
    :goto_6
    invoke-static {v1, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v1, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v6, v1, v10, v1, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v1, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 419
    .line 420
    const v2, 0x180030

    .line 421
    .line 422
    .line 423
    invoke-static {v0, v3, v1, v2}, Lkotlin/text/RegexKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 424
    .line 425
    .line 426
    const/4 v0, 0x1

    .line 427
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_9
    move-object v1, v2

    .line 435
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 436
    .line 437
    .line 438
    :goto_7
    return-object v16

    .line 439
    :pswitch_1
    check-cast v0, Lorg/wikipedia/feed/dayheader/DayHeaderCard;

    .line 440
    .line 441
    iget v0, v0, Lorg/wikipedia/feed/dayheader/DayHeaderCard;->age:I

    .line 442
    .line 443
    move-object/from16 v1, p1

    .line 444
    .line 445
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 446
    .line 447
    move-object/from16 v2, p2

    .line 448
    .line 449
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 450
    .line 451
    move-object/from16 v3, p3

    .line 452
    .line 453
    check-cast v3, Ljava/lang/Integer;

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    and-int/lit8 v1, v3, 0x11

    .line 463
    .line 464
    if-eq v1, v11, :cond_a

    .line 465
    .line 466
    const/4 v1, 0x1

    .line 467
    :goto_8
    const/16 v41, 0x1

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_a
    const/4 v1, 0x0

    .line 471
    goto :goto_8

    .line 472
    :goto_9
    and-int/lit8 v3, v3, 0x1

    .line 473
    .line 474
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    if-eqz v1, :cond_c

    .line 479
    .line 480
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    int-to-long v3, v0

    .line 485
    invoke-virtual {v1, v3, v4}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    if-nez v0, :cond_b

    .line 493
    .line 494
    const/4 v15, 0x1

    .line 495
    :goto_a
    const/4 v7, 0x0

    .line 496
    goto :goto_b

    .line 497
    :cond_b
    const/4 v15, 0x0

    .line 498
    goto :goto_a

    .line 499
    :goto_b
    invoke-static {v1, v15, v2, v7, v7}, Lorg/wikipedia/feed/ForYouCardKt;->DayHeader(Lj$/time/LocalDate;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 500
    .line 501
    .line 502
    goto :goto_c

    .line 503
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 504
    .line 505
    .line 506
    :goto_c
    return-object v16

    .line 507
    :pswitch_2
    check-cast v0, Lorg/wikipedia/compose/components/error/ComposeErrorType;

    .line 508
    .line 509
    move-object/from16 v1, p1

    .line 510
    .line 511
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 512
    .line 513
    move-object/from16 v2, p2

    .line 514
    .line 515
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 516
    .line 517
    move-object/from16 v3, p3

    .line 518
    .line 519
    check-cast v3, Ljava/lang/Integer;

    .line 520
    .line 521
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    and-int/lit8 v1, v3, 0x11

    .line 529
    .line 530
    if-eq v1, v11, :cond_d

    .line 531
    .line 532
    const/4 v14, 0x1

    .line 533
    :goto_d
    const/16 v41, 0x1

    .line 534
    .line 535
    goto :goto_e

    .line 536
    :cond_d
    const/4 v14, 0x0

    .line 537
    goto :goto_d

    .line 538
    :goto_e
    and-int/lit8 v1, v3, 0x1

    .line 539
    .line 540
    invoke-virtual {v2, v1, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    if-eqz v1, :cond_e

    .line 545
    .line 546
    iget v0, v0, Lorg/wikipedia/compose/components/error/ComposeErrorType;->buttonText:I

    .line 547
    .line 548
    invoke-static {v0, v2}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v17

    .line 552
    invoke-static {v11}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 553
    .line 554
    .line 555
    move-result-wide v22

    .line 556
    const/16 v39, 0x0

    .line 557
    .line 558
    const v40, 0x3ffee

    .line 559
    .line 560
    .line 561
    const/16 v18, 0x0

    .line 562
    .line 563
    const-wide/16 v19, 0x0

    .line 564
    .line 565
    const/16 v21, 0x0

    .line 566
    .line 567
    const/16 v24, 0x0

    .line 568
    .line 569
    const/16 v25, 0x0

    .line 570
    .line 571
    const-wide/16 v26, 0x0

    .line 572
    .line 573
    const/16 v28, 0x0

    .line 574
    .line 575
    const-wide/16 v29, 0x0

    .line 576
    .line 577
    const/16 v31, 0x0

    .line 578
    .line 579
    const/16 v32, 0x0

    .line 580
    .line 581
    const/16 v33, 0x0

    .line 582
    .line 583
    const/16 v34, 0x0

    .line 584
    .line 585
    const/16 v35, 0x0

    .line 586
    .line 587
    const/16 v36, 0x0

    .line 588
    .line 589
    const/16 v38, 0x6000

    .line 590
    .line 591
    move-object/from16 v37, v2

    .line 592
    .line 593
    invoke-static/range {v17 .. v40}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 594
    .line 595
    .line 596
    goto :goto_f

    .line 597
    :cond_e
    move-object/from16 v37, v2

    .line 598
    .line 599
    invoke-virtual/range {v37 .. v37}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 600
    .line 601
    .line 602
    :goto_f
    return-object v16

    .line 603
    :pswitch_3
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 604
    .line 605
    move-object/from16 v1, p1

    .line 606
    .line 607
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 608
    .line 609
    move-object/from16 v2, p2

    .line 610
    .line 611
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 612
    .line 613
    move-object/from16 v3, p3

    .line 614
    .line 615
    check-cast v3, Ljava/lang/Integer;

    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    and-int/lit8 v1, v3, 0x11

    .line 625
    .line 626
    if-eq v1, v11, :cond_f

    .line 627
    .line 628
    const/4 v1, 0x1

    .line 629
    :goto_10
    const/16 v41, 0x1

    .line 630
    .line 631
    goto :goto_11

    .line 632
    :cond_f
    const/4 v1, 0x0

    .line 633
    goto :goto_10

    .line 634
    :goto_11
    and-int/lit8 v3, v3, 0x1

    .line 635
    .line 636
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-eqz v1, :cond_10

    .line 641
    .line 642
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 643
    .line 644
    invoke-interface {v0, v8, v1}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-static {v0, v7, v10, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 649
    .line 650
    .line 651
    move-result-object v17

    .line 652
    const/high16 v21, 0x42500000    # 52.0f

    .line 653
    .line 654
    const/16 v22, 0x5

    .line 655
    .line 656
    const/16 v18, 0x0

    .line 657
    .line 658
    const/high16 v19, 0x42000000    # 32.0f

    .line 659
    .line 660
    const/16 v20, 0x0

    .line 661
    .line 662
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    const/4 v7, 0x0

    .line 667
    invoke-static {v0, v2, v7}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->TimelineModuleEmptyView(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 668
    .line 669
    .line 670
    goto :goto_12

    .line 671
    :cond_10
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 672
    .line 673
    .line 674
    :goto_12
    return-object v16

    .line 675
    :pswitch_4
    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    .line 676
    .line 677
    move-object/from16 v1, p1

    .line 678
    .line 679
    check-cast v1, Ljava/lang/Throwable;

    .line 680
    .line 681
    move-object/from16 v1, p2

    .line 682
    .line 683
    check-cast v1, Lkotlin/Unit;

    .line 684
    .line 685
    move-object/from16 v1, p3

    .line 686
    .line 687
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 688
    .line 689
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    .line 690
    .line 691
    .line 692
    return-object v16

    .line 693
    :pswitch_5
    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 694
    .line 695
    move-object/from16 v1, p1

    .line 696
    .line 697
    check-cast v1, Ljava/lang/Throwable;

    .line 698
    .line 699
    move-object/from16 v1, p2

    .line 700
    .line 701
    check-cast v1, Lkotlin/Unit;

    .line 702
    .line 703
    move-object/from16 v1, p3

    .line 704
    .line 705
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 706
    .line 707
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->owner$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 708
    .line 709
    invoke-virtual {v1, v0, v12}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v12}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    return-object v16

    .line 716
    :pswitch_6
    check-cast v0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 717
    .line 718
    move-object/from16 v1, p1

    .line 719
    .line 720
    check-cast v1, Ljava/lang/Throwable;

    .line 721
    .line 722
    move-object/from16 v2, p3

    .line 723
    .line 724
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 725
    .line 726
    invoke-virtual {v0, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    return-object v16

    .line 730
    :pswitch_7
    check-cast v0, Lcoil3/ImageLoader$Builder;

    .line 731
    .line 732
    move-object/from16 v1, p1

    .line 733
    .line 734
    check-cast v1, Ljava/lang/Integer;

    .line 735
    .line 736
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    move-object/from16 v2, p2

    .line 741
    .line 742
    check-cast v2, Ljava/lang/String;

    .line 743
    .line 744
    move-object/from16 v3, p3

    .line 745
    .line 746
    check-cast v3, Landroidx/navigation/NavType;

    .line 747
    .line 748
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    instance-of v3, v3, Landroidx/navigation/CollectionNavType;

    .line 755
    .line 756
    if-nez v3, :cond_12

    .line 757
    .line 758
    iget-object v3, v0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 761
    .line 762
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    if-eqz v1, :cond_11

    .line 771
    .line 772
    goto :goto_13

    .line 773
    :cond_11
    sget-object v1, Landroidx/navigation/serialization/RouteBuilder$ParamType;->PATH:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    .line 774
    .line 775
    goto :goto_14

    .line 776
    :cond_12
    :goto_13
    sget-object v1, Landroidx/navigation/serialization/RouteBuilder$ParamType;->QUERY:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    .line 777
    .line 778
    :goto_14
    sget-object v3, Landroidx/navigation/serialization/RouteBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 779
    .line 780
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    aget v1, v3, v1

    .line 785
    .line 786
    const/16 v3, 0x7d

    .line 787
    .line 788
    const-string/jumbo v4, "{"

    .line 789
    .line 790
    .line 791
    const/4 v5, 0x1

    .line 792
    if-eq v1, v5, :cond_14

    .line 793
    .line 794
    if-ne v1, v13, :cond_13

    .line 795
    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v0, v2, v1}, Lcoil3/ImageLoader$Builder;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    goto :goto_15

    .line 815
    :cond_13
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 816
    .line 817
    .line 818
    goto :goto_16

    .line 819
    :cond_14
    invoke-static {v3, v4, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    iget-object v3, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 826
    .line 827
    check-cast v3, Ljava/lang/String;

    .line 828
    .line 829
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    const/16 v3, 0x2f

    .line 833
    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    iput-object v1, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 845
    .line 846
    :goto_15
    move-object/from16 v12, v16

    .line 847
    .line 848
    :goto_16
    return-object v12

    .line 849
    :pswitch_8
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 850
    .line 851
    move-object/from16 v1, p1

    .line 852
    .line 853
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 854
    .line 855
    move-object/from16 v5, p2

    .line 856
    .line 857
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 858
    .line 859
    move-object/from16 v6, p3

    .line 860
    .line 861
    check-cast v6, Ljava/lang/Integer;

    .line 862
    .line 863
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    .line 865
    .line 866
    const v6, 0x760d4197

    .line 867
    .line 868
    .line 869
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 870
    .line 871
    .line 872
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 873
    .line 874
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v6

    .line 878
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 879
    .line 880
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v7

    .line 884
    if-ne v7, v4, :cond_15

    .line 885
    .line 886
    new-instance v7, Landroidx/compose/ui/unit/IntSize;

    .line 887
    .line 888
    invoke-direct {v7, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 889
    .line 890
    .line 891
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 892
    .line 893
    .line 894
    move-result-object v7

    .line 895
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    :cond_15
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 899
    .line 900
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    if-nez v2, :cond_16

    .line 909
    .line 910
    if-ne v3, v4, :cond_17

    .line 911
    .line 912
    :cond_16
    new-instance v3, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 913
    .line 914
    const/16 v2, 0x13

    .line 915
    .line 916
    invoke-direct {v3, v2, v0, v7}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 920
    .line 921
    .line 922
    :cond_17
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 923
    .line 924
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    if-nez v0, :cond_18

    .line 933
    .line 934
    if-ne v2, v4, :cond_19

    .line 935
    .line 936
    :cond_18
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;

    .line 937
    .line 938
    const/4 v0, 0x3

    .line 939
    invoke-direct {v2, v6, v7, v0}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 943
    .line 944
    .line 945
    :cond_19
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 946
    .line 947
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    .line 948
    .line 949
    new-instance v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 950
    .line 951
    invoke-direct {v0, v9, v3, v2}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    const/4 v7, 0x0

    .line 959
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 960
    .line 961
    .line 962
    return-object v0

    .line 963
    :pswitch_9
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 964
    .line 965
    move-object/from16 v1, p1

    .line 966
    .line 967
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 968
    .line 969
    move-object/from16 v5, p2

    .line 970
    .line 971
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 972
    .line 973
    move-object/from16 v6, p3

    .line 974
    .line 975
    check-cast v6, Ljava/lang/Integer;

    .line 976
    .line 977
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    .line 979
    .line 980
    const v6, -0x721d4498

    .line 981
    .line 982
    .line 983
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 984
    .line 985
    .line 986
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 987
    .line 988
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v6

    .line 992
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 993
    .line 994
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v7

    .line 998
    if-ne v7, v4, :cond_1a

    .line 999
    .line 1000
    new-instance v7, Landroidx/compose/ui/unit/IntSize;

    .line 1001
    .line 1002
    invoke-direct {v7, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v7

    .line 1009
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1010
    .line 1011
    .line 1012
    :cond_1a
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 1013
    .line 1014
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v2

    .line 1018
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    if-nez v2, :cond_1b

    .line 1023
    .line 1024
    if-ne v3, v4, :cond_1c

    .line 1025
    .line 1026
    :cond_1b
    new-instance v3, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 1027
    .line 1028
    const/16 v2, 0x11

    .line 1029
    .line 1030
    invoke-direct {v3, v2, v0, v7}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1034
    .line 1035
    .line 1036
    :cond_1c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 1037
    .line 1038
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    if-nez v0, :cond_1d

    .line 1047
    .line 1048
    if-ne v2, v4, :cond_1e

    .line 1049
    .line 1050
    :cond_1d
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;

    .line 1051
    .line 1052
    const/4 v0, 0x1

    .line 1053
    invoke-direct {v2, v6, v7, v0}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_1e
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1060
    .line 1061
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    .line 1062
    .line 1063
    new-instance v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 1064
    .line 1065
    invoke-direct {v0, v9, v3, v2}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    const/4 v7, 0x0

    .line 1073
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1074
    .line 1075
    .line 1076
    return-object v0

    .line 1077
    :pswitch_a
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    .line 1078
    .line 1079
    move-object/from16 v1, p1

    .line 1080
    .line 1081
    check-cast v1, Ljava/lang/Integer;

    .line 1082
    .line 1083
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1084
    .line 1085
    .line 1086
    move-result v1

    .line 1087
    move-object/from16 v2, p2

    .line 1088
    .line 1089
    check-cast v2, Ljava/lang/Integer;

    .line 1090
    .line 1091
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1092
    .line 1093
    .line 1094
    move-result v2

    .line 1095
    move-object/from16 v3, p3

    .line 1096
    .line 1097
    check-cast v3, Ljava/lang/Boolean;

    .line 1098
    .line 1099
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v3

    .line 1103
    if-eqz v3, :cond_1f

    .line 1104
    .line 1105
    goto :goto_17

    .line 1106
    :cond_1f
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1107
    .line 1108
    invoke-interface {v4, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    :goto_17
    if-eqz v3, :cond_20

    .line 1113
    .line 1114
    goto :goto_18

    .line 1115
    :cond_20
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1116
    .line 1117
    invoke-interface {v4, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 1118
    .line 1119
    .line 1120
    move-result v2

    .line 1121
    :goto_18
    iget-boolean v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->enabled:Z

    .line 1122
    .line 1123
    if-nez v4, :cond_21

    .line 1124
    .line 1125
    :goto_19
    const/4 v14, 0x0

    .line 1126
    goto :goto_1c

    .line 1127
    :cond_21
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1128
    .line 1129
    iget-wide v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1130
    .line 1131
    sget v7, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 1132
    .line 1133
    shr-long v6, v4, v6

    .line 1134
    .line 1135
    long-to-int v6, v6

    .line 1136
    if-ne v1, v6, :cond_22

    .line 1137
    .line 1138
    const-wide v6, 0xffffffffL

    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    and-long/2addr v4, v6

    .line 1144
    long-to-int v4, v4

    .line 1145
    if-ne v2, v4, :cond_22

    .line 1146
    .line 1147
    goto :goto_19

    .line 1148
    :cond_22
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 1149
    .line 1150
    .line 1151
    move-result v4

    .line 1152
    if-ltz v4, :cond_25

    .line 1153
    .line 1154
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1155
    .line 1156
    .line 1157
    move-result v4

    .line 1158
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1159
    .line 1160
    iget-object v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1161
    .line 1162
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1163
    .line 1164
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1165
    .line 1166
    .line 1167
    move-result v5

    .line 1168
    if-gt v4, v5, :cond_25

    .line 1169
    .line 1170
    if-nez v3, :cond_24

    .line 1171
    .line 1172
    if-ne v1, v2, :cond_23

    .line 1173
    .line 1174
    goto :goto_1a

    .line 1175
    :cond_23
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1176
    .line 1177
    const/4 v5, 0x1

    .line 1178
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation(Z)V

    .line 1179
    .line 1180
    .line 1181
    goto :goto_1b

    .line 1182
    :cond_24
    :goto_1a
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1183
    .line 1184
    const/4 v7, 0x0

    .line 1185
    invoke-virtual {v3, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 1186
    .line 1187
    .line 1188
    sget-object v4, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 1189
    .line 1190
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 1191
    .line 1192
    .line 1193
    :goto_1b
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1194
    .line 1195
    iget-object v3, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 1196
    .line 1197
    new-instance v4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1198
    .line 1199
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1200
    .line 1201
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1202
    .line 1203
    invoke-static {v1, v2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 1204
    .line 1205
    .line 1206
    move-result-wide v1

    .line 1207
    invoke-direct {v4, v0, v1, v2, v12}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    const/4 v14, 0x1

    .line 1214
    goto :goto_1c

    .line 1215
    :cond_25
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1216
    .line 1217
    const/4 v1, 0x0

    .line 1218
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 1219
    .line 1220
    .line 1221
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 1222
    .line 1223
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 1224
    .line 1225
    .line 1226
    move v14, v1

    .line 1227
    :goto_1c
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    return-object v0

    .line 1232
    :pswitch_b
    check-cast v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda0;

    .line 1233
    .line 1234
    move-object/from16 v1, p1

    .line 1235
    .line 1236
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1237
    .line 1238
    move-object/from16 v1, p2

    .line 1239
    .line 1240
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1241
    .line 1242
    move-object/from16 v2, p3

    .line 1243
    .line 1244
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 1245
    .line 1246
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1247
    .line 1248
    iget-object v0, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text/TextDragObserver;

    .line 1249
    .line 1250
    sget-object v3, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->None:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    .line 1251
    .line 1252
    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/foundation/text/TextDragObserver;->onStart-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;)V

    .line 1253
    .line 1254
    .line 1255
    return-object v16

    .line 1256
    :pswitch_c
    const/4 v1, 0x0

    .line 1257
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 1258
    .line 1259
    move-object/from16 v2, p1

    .line 1260
    .line 1261
    check-cast v2, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1262
    .line 1263
    move-object/from16 v3, p2

    .line 1264
    .line 1265
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1266
    .line 1267
    move-object/from16 v4, p3

    .line 1268
    .line 1269
    check-cast v4, Ljava/lang/Integer;

    .line 1270
    .line 1271
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1272
    .line 1273
    .line 1274
    move-result v4

    .line 1275
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1276
    .line 1277
    .line 1278
    and-int/lit8 v2, v4, 0x11

    .line 1279
    .line 1280
    if-eq v2, v11, :cond_26

    .line 1281
    .line 1282
    const/4 v14, 0x1

    .line 1283
    :goto_1d
    const/16 v41, 0x1

    .line 1284
    .line 1285
    goto :goto_1e

    .line 1286
    :cond_26
    move v14, v1

    .line 1287
    goto :goto_1d

    .line 1288
    :goto_1e
    and-int/lit8 v1, v4, 0x1

    .line 1289
    .line 1290
    invoke-virtual {v3, v1, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v1

    .line 1294
    if-eqz v1, :cond_27

    .line 1295
    .line 1296
    invoke-static {v8, v7, v10, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v1

    .line 1304
    const/4 v2, 0x6

    .line 1305
    invoke-static {v1, v0, v3, v2}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityDisclaimer(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Landroidx/compose/runtime/GapComposer;I)V

    .line 1306
    .line 1307
    .line 1308
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 1313
    .line 1314
    .line 1315
    goto :goto_1f

    .line 1316
    :cond_27
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1317
    .line 1318
    .line 1319
    :goto_1f
    return-object v16

    .line 1320
    nop

    .line 1321
    :pswitch_data_0
    .packed-switch 0x0
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
