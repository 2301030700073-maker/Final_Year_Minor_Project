.class public final synthetic Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 89

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/4 v4, 0x6

    .line 10
    const/16 v5, 0x20

    .line 11
    .line 12
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x1

    .line 17
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    iget-object v11, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 22
    .line 23
    packed-switch v2, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object v15, v0

    .line 27
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    move-object/from16 v0, p1

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    and-int/lit8 v2, v1, 0x3

    .line 42
    .line 43
    if-eq v2, v7, :cond_0

    .line 44
    .line 45
    move v8, v9

    .line 46
    :cond_0
    and-int/2addr v1, v9

    .line 47
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    sget-object v1, Lnewpipe/shared/generated/resources/String0_commonMainKt;->settings$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 56
    .line 57
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 62
    .line 63
    invoke-static {v1, v0}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    new-instance v1, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    const/16 v2, 0xc

    .line 70
    .line 71
    invoke-direct {v1, v11, v2}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    const v2, -0x8e856af

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 78
    .line 79
    .line 80
    move-result-object v17

    .line 81
    const/high16 v19, 0x30000

    .line 82
    .line 83
    const/16 v20, 0x15

    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v14, 0x0

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    move-object/from16 v18, v0

    .line 90
    .line 91
    invoke-static/range {v12 .. v20}, Lnet/newpipe/app/composable/TopAppBarKt;->TopAppBar(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/TopAppBarColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    move-object/from16 v18, v0

    .line 96
    .line 97
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-object v10

    .line 101
    :pswitch_0
    check-cast v0, Lnet/newpipe/app/navigation/Navigator;

    .line 102
    .line 103
    check-cast v11, Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;

    .line 104
    .line 105
    move-object/from16 v2, p1

    .line 106
    .line 107
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    check-cast v1, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v0, v11, v2, v1}, Lnet/newpipe/app/screen/settings/SettingsHomeScreenKt;->SettingsHomeScreen(Lnet/newpipe/app/navigation/Navigator;Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;Landroidx/compose/runtime/Composer;I)V

    .line 119
    .line 120
    .line 121
    return-object v10

    .line 122
    :pswitch_1
    check-cast v0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;

    .line 123
    .line 124
    check-cast v11, Lnet/newpipe/app/platform/ShareHandler;

    .line 125
    .line 126
    move-object/from16 v2, p1

    .line 127
    .line 128
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 129
    .line 130
    check-cast v1, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v0, v11, v2, v1}, Lnet/newpipe/app/screen/about/AboutPageKt;->LicensePage(Lnet/newpipe/app/viewmodel/about/AboutViewModel;Lnet/newpipe/app/platform/ShareHandler;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    return-object v10

    .line 143
    :pswitch_2
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 144
    .line 145
    check-cast v11, Lnet/newpipe/app/model/License;

    .line 146
    .line 147
    move-object/from16 v2, p1

    .line 148
    .line 149
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 150
    .line 151
    check-cast v1, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    and-int/lit8 v4, v1, 0x3

    .line 158
    .line 159
    if-eq v4, v7, :cond_2

    .line 160
    .line 161
    move v4, v9

    .line 162
    goto :goto_1

    .line 163
    :cond_2
    move v4, v8

    .line 164
    :goto_1
    and-int/2addr v1, v9

    .line 165
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 166
    .line 167
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    or-int/2addr v1, v4

    .line 182
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    if-nez v1, :cond_3

    .line 187
    .line 188
    if-ne v4, v3, :cond_4

    .line 189
    .line 190
    :cond_3
    new-instance v4, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    const/16 v1, 0x13

    .line 193
    .line 194
    invoke-direct {v4, v0, v11, v1}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    move-object v12, v4

    .line 201
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 202
    .line 203
    iget-object v0, v11, Lnet/newpipe/app/model/License;->website:Ljava/lang/String;

    .line 204
    .line 205
    if-eqz v0, :cond_5

    .line 206
    .line 207
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_6

    .line 212
    .line 213
    :cond_5
    move v8, v9

    .line 214
    :cond_6
    xor-int/lit8 v14, v8, 0x1

    .line 215
    .line 216
    sget-object v18, Lnet/newpipe/app/screen/about/AboutPageKt;->lambda$1832483989:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 217
    .line 218
    const/high16 v20, 0x30000000

    .line 219
    .line 220
    const/16 v21, 0x1fa

    .line 221
    .line 222
    const/4 v13, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    const/16 v16, 0x0

    .line 225
    .line 226
    const/16 v17, 0x0

    .line 227
    .line 228
    move-object/from16 v19, v2

    .line 229
    .line 230
    invoke-static/range {v12 .. v21}, Landroidx/compose/material3/BadgeKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_7
    move-object/from16 v19, v2

    .line 235
    .line 236
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 237
    .line 238
    .line 239
    :goto_2
    return-object v10

    .line 240
    :pswitch_3
    check-cast v0, Lnet/newpipe/app/screen/about/navigation/Page;

    .line 241
    .line 242
    check-cast v11, Landroidx/compose/material3/ColorScheme;

    .line 243
    .line 244
    move-object/from16 v2, p1

    .line 245
    .line 246
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 247
    .line 248
    check-cast v1, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    and-int/lit8 v3, v1, 0x3

    .line 255
    .line 256
    if-eq v3, v7, :cond_8

    .line 257
    .line 258
    move v8, v9

    .line 259
    :cond_8
    and-int/2addr v1, v9

    .line 260
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 261
    .line 262
    invoke-virtual {v2, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_9

    .line 267
    .line 268
    invoke-virtual {v0}, Lnet/newpipe/app/screen/about/navigation/Page;->getLocalizedTitle()Lorg/jetbrains/compose/resources/StringResource;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v0, v2}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    iget-wide v14, v11, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 277
    .line 278
    const/16 v29, 0x0

    .line 279
    .line 280
    const v30, 0x3fffa

    .line 281
    .line 282
    .line 283
    const/4 v13, 0x0

    .line 284
    const-wide/16 v16, 0x0

    .line 285
    .line 286
    const-wide/16 v18, 0x0

    .line 287
    .line 288
    const/16 v20, 0x0

    .line 289
    .line 290
    const-wide/16 v21, 0x0

    .line 291
    .line 292
    const/16 v23, 0x0

    .line 293
    .line 294
    const/16 v24, 0x0

    .line 295
    .line 296
    const/16 v25, 0x0

    .line 297
    .line 298
    const/16 v26, 0x0

    .line 299
    .line 300
    const/16 v27, 0x0

    .line 301
    .line 302
    move-object/from16 v28, v2

    .line 303
    .line 304
    invoke-static/range {v12 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_9
    move-object/from16 v28, v2

    .line 309
    .line 310
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 311
    .line 312
    .line 313
    :goto_3
    return-object v10

    .line 314
    :pswitch_4
    check-cast v0, Lnet/newpipe/app/model/Library;

    .line 315
    .line 316
    move-object v12, v11

    .line 317
    check-cast v12, Ljava/lang/String;

    .line 318
    .line 319
    move-object/from16 v2, p1

    .line 320
    .line 321
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 322
    .line 323
    check-cast v1, Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    and-int/lit8 v3, v1, 0x3

    .line 330
    .line 331
    if-eq v3, v7, :cond_a

    .line 332
    .line 333
    move v3, v9

    .line 334
    goto :goto_4

    .line 335
    :cond_a
    move v3, v8

    .line 336
    :goto_4
    and-int/2addr v1, v9

    .line 337
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 338
    .line 339
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_c

    .line 344
    .line 345
    sget-object v1, Landroidx/compose/foundation/layout/SpacerKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 346
    .line 347
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 348
    .line 349
    invoke-static {v1, v3, v2, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    iget-wide v3, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 354
    .line 355
    ushr-long v7, v3, v5

    .line 356
    .line 357
    xor-long/2addr v3, v7

    .line 358
    long-to-int v3, v3

    .line 359
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-static {v2, v6}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 368
    .line 369
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 373
    .line 374
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 375
    .line 376
    .line 377
    iget-boolean v7, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 378
    .line 379
    if-eqz v7, :cond_b

    .line 380
    .line 381
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 382
    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 386
    .line 387
    .line 388
    :goto_5
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 389
    .line 390
    invoke-static {v2, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 391
    .line 392
    .line 393
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 394
    .line 395
    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 403
    .line 404
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 405
    .line 406
    .line 407
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 408
    .line 409
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 410
    .line 411
    .line 412
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 413
    .line 414
    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 415
    .line 416
    .line 417
    iget-object v13, v0, Lnet/newpipe/app/model/Library;->name:Ljava/lang/String;

    .line 418
    .line 419
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 420
    .line 421
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    check-cast v1, Landroidx/compose/material3/MaterialTheme$Values;

    .line 426
    .line 427
    iget-object v1, v1, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 428
    .line 429
    iget-object v1, v1, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 430
    .line 431
    const/16 v30, 0x0

    .line 432
    .line 433
    const v31, 0x1fffe

    .line 434
    .line 435
    .line 436
    const/4 v14, 0x0

    .line 437
    const-wide/16 v15, 0x0

    .line 438
    .line 439
    const-wide/16 v17, 0x0

    .line 440
    .line 441
    const-wide/16 v19, 0x0

    .line 442
    .line 443
    const/16 v21, 0x0

    .line 444
    .line 445
    const-wide/16 v22, 0x0

    .line 446
    .line 447
    const/16 v24, 0x0

    .line 448
    .line 449
    const/16 v25, 0x0

    .line 450
    .line 451
    const/16 v26, 0x0

    .line 452
    .line 453
    const/16 v27, 0x0

    .line 454
    .line 455
    move-object/from16 v28, v1

    .line 456
    .line 457
    move-object/from16 v29, v2

    .line 458
    .line 459
    invoke-static/range {v13 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 467
    .line 468
    iget-object v0, v0, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 469
    .line 470
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 471
    .line 472
    const/16 v29, 0x0

    .line 473
    .line 474
    const v30, 0x1fffe

    .line 475
    .line 476
    .line 477
    const/4 v13, 0x0

    .line 478
    const-wide/16 v14, 0x0

    .line 479
    .line 480
    const-wide/16 v16, 0x0

    .line 481
    .line 482
    const-wide/16 v18, 0x0

    .line 483
    .line 484
    const/16 v20, 0x0

    .line 485
    .line 486
    const-wide/16 v21, 0x0

    .line 487
    .line 488
    const/16 v23, 0x0

    .line 489
    .line 490
    move-object/from16 v27, v0

    .line 491
    .line 492
    move-object/from16 v28, v2

    .line 493
    .line 494
    invoke-static/range {v12 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 498
    .line 499
    .line 500
    goto :goto_6

    .line 501
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 502
    .line 503
    .line 504
    :goto_6
    return-object v10

    .line 505
    :pswitch_5
    move-object/from16 v17, v0

    .line 506
    .line 507
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 508
    .line 509
    check-cast v11, Landroidx/compose/ui/graphics/painter/Painter;

    .line 510
    .line 511
    move-object/from16 v0, p1

    .line 512
    .line 513
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 514
    .line 515
    check-cast v1, Ljava/lang/Integer;

    .line 516
    .line 517
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    and-int/lit8 v2, v1, 0x3

    .line 522
    .line 523
    if-eq v2, v7, :cond_d

    .line 524
    .line 525
    move v2, v9

    .line 526
    goto :goto_7

    .line 527
    :cond_d
    move v2, v8

    .line 528
    :goto_7
    and-int/2addr v1, v9

    .line 529
    move-object v13, v0

    .line 530
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 531
    .line 532
    invoke-virtual {v13, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_f

    .line 537
    .line 538
    if-eqz v17, :cond_e

    .line 539
    .line 540
    const v0, 0x850778d

    .line 541
    .line 542
    .line 543
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 544
    .line 545
    .line 546
    new-instance v0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;

    .line 547
    .line 548
    invoke-direct {v0, v11, v8}, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/painter/Painter;I)V

    .line 549
    .line 550
    .line 551
    const v1, -0x241e2a52

    .line 552
    .line 553
    .line 554
    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 555
    .line 556
    .line 557
    move-result-object v14

    .line 558
    const/high16 v11, 0x180000

    .line 559
    .line 560
    const/4 v12, 0x0

    .line 561
    const/4 v15, 0x0

    .line 562
    const/16 v16, 0x0

    .line 563
    .line 564
    const/16 v18, 0x0

    .line 565
    .line 566
    invoke-static/range {v11 .. v18}, Landroidx/compose/material3/BadgeKt;->IconButton(ILandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;Z)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 570
    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_e
    const v0, 0x8546d1b

    .line 574
    .line 575
    .line 576
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 580
    .line 581
    .line 582
    goto :goto_8

    .line 583
    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 584
    .line 585
    .line 586
    :goto_8
    return-object v10

    .line 587
    :pswitch_6
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 588
    .line 589
    check-cast v11, Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 590
    .line 591
    move-object/from16 v2, p1

    .line 592
    .line 593
    check-cast v2, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 594
    .line 595
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    new-array v2, v8, [Lkotlin/Pair;

    .line 607
    .line 608
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    check-cast v2, [Lkotlin/Pair;

    .line 613
    .line 614
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    new-instance v3, Landroidx/savedstate/serialization/SavedStateEncoder;

    .line 619
    .line 620
    invoke-direct {v3, v2, v11}, Landroidx/savedstate/serialization/SavedStateEncoder;-><init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3, v0, v1}, Landroidx/savedstate/serialization/SavedStateEncoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    return-object v2

    .line 627
    :pswitch_7
    check-cast v0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 628
    .line 629
    check-cast v11, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 630
    .line 631
    move-object/from16 v2, p1

    .line 632
    .line 633
    check-cast v2, Ljava/lang/Integer;

    .line 634
    .line 635
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    instance-of v3, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 640
    .line 641
    if-eqz v3, :cond_10

    .line 642
    .line 643
    check-cast v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 644
    .line 645
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 646
    .line 647
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 648
    .line 649
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    goto :goto_9

    .line 653
    :cond_10
    instance-of v3, v1, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;

    .line 654
    .line 655
    if-nez v3, :cond_12

    .line 656
    .line 657
    instance-of v3, v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 658
    .line 659
    if-eqz v3, :cond_11

    .line 660
    .line 661
    invoke-static {v11, v2, v1}, Landroidx/compose/runtime/Updater;->removeData(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    check-cast v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 665
    .line 666
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->forgetting(Landroidx/compose/runtime/GapRememberObserverHolder;)V

    .line 667
    .line 668
    .line 669
    goto :goto_9

    .line 670
    :cond_11
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 671
    .line 672
    if-eqz v0, :cond_12

    .line 673
    .line 674
    invoke-static {v11, v2, v1}, Landroidx/compose/runtime/Updater;->removeData(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    move-object v0, v1

    .line 678
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 679
    .line 680
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 681
    .line 682
    .line 683
    :cond_12
    :goto_9
    return-object v10

    .line 684
    :pswitch_8
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 685
    .line 686
    check-cast v11, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;

    .line 687
    .line 688
    move-object/from16 v2, p1

    .line 689
    .line 690
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 691
    .line 692
    check-cast v1, Ljava/lang/Integer;

    .line 693
    .line 694
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    and-int/lit8 v3, v1, 0x3

    .line 699
    .line 700
    if-eq v3, v7, :cond_13

    .line 701
    .line 702
    move v8, v9

    .line 703
    :cond_13
    and-int/2addr v1, v9

    .line 704
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 705
    .line 706
    invoke-virtual {v2, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_14

    .line 711
    .line 712
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-virtual {v0, v11, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    goto :goto_a

    .line 720
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 721
    .line 722
    .line 723
    :goto_a
    return-object v10

    .line 724
    :pswitch_9
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 725
    .line 726
    check-cast v11, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    .line 727
    .line 728
    move-object/from16 v2, p1

    .line 729
    .line 730
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 731
    .line 732
    check-cast v1, Ljava/lang/Integer;

    .line 733
    .line 734
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    and-int/lit8 v3, v1, 0x3

    .line 739
    .line 740
    if-eq v3, v7, :cond_15

    .line 741
    .line 742
    move v3, v9

    .line 743
    goto :goto_b

    .line 744
    :cond_15
    move v3, v8

    .line 745
    :goto_b
    and-int/2addr v1, v9

    .line 746
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 747
    .line 748
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    if-eqz v1, :cond_17

    .line 753
    .line 754
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 755
    .line 756
    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    iget-wide v7, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 761
    .line 762
    ushr-long v12, v7, v5

    .line 763
    .line 764
    xor-long/2addr v7, v12

    .line 765
    long-to-int v3, v7

    .line 766
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    invoke-static {v2, v6}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 771
    .line 772
    .line 773
    move-result-object v6

    .line 774
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 775
    .line 776
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 780
    .line 781
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 782
    .line 783
    .line 784
    iget-boolean v8, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 785
    .line 786
    if-eqz v8, :cond_16

    .line 787
    .line 788
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 789
    .line 790
    .line 791
    goto :goto_c

    .line 792
    :cond_16
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 793
    .line 794
    .line 795
    :goto_c
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 796
    .line 797
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 798
    .line 799
    .line 800
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 801
    .line 802
    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 803
    .line 804
    .line 805
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 810
    .line 811
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 812
    .line 813
    .line 814
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 815
    .line 816
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 817
    .line 818
    .line 819
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 820
    .line 821
    invoke-static {v2, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 822
    .line 823
    .line 824
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    invoke-virtual {v0, v11, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 832
    .line 833
    .line 834
    goto :goto_d

    .line 835
    :cond_17
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 836
    .line 837
    .line 838
    :goto_d
    return-object v10

    .line 839
    :pswitch_a
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 840
    .line 841
    move-object/from16 v16, v11

    .line 842
    .line 843
    check-cast v16, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 844
    .line 845
    move-object/from16 v2, p1

    .line 846
    .line 847
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 848
    .line 849
    check-cast v1, Ljava/lang/Integer;

    .line 850
    .line 851
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    and-int/lit8 v3, v1, 0x3

    .line 856
    .line 857
    if-eq v3, v7, :cond_18

    .line 858
    .line 859
    move v8, v9

    .line 860
    :cond_18
    and-int/2addr v1, v9

    .line 861
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 862
    .line 863
    invoke-virtual {v2, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    if-eqz v1, :cond_1a

    .line 868
    .line 869
    if-nez v0, :cond_19

    .line 870
    .line 871
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 872
    .line 873
    sget-wide v23, Landroidx/compose/material3/tokens/PaletteTokens;->Primary30:J

    .line 874
    .line 875
    sget-wide v33, Landroidx/compose/material3/tokens/PaletteTokens;->Secondary30:J

    .line 876
    .line 877
    sget-wide v41, Landroidx/compose/material3/tokens/PaletteTokens;->Tertiary30:J

    .line 878
    .line 879
    sget-wide v65, Landroidx/compose/material3/tokens/PaletteTokens;->Error30:J

    .line 880
    .line 881
    const v87, -0x2001109

    .line 882
    .line 883
    .line 884
    const v88, 0xffff

    .line 885
    .line 886
    .line 887
    const-wide/16 v17, 0x0

    .line 888
    .line 889
    const-wide/16 v19, 0x0

    .line 890
    .line 891
    const-wide/16 v21, 0x0

    .line 892
    .line 893
    const-wide/16 v25, 0x0

    .line 894
    .line 895
    const-wide/16 v27, 0x0

    .line 896
    .line 897
    const-wide/16 v29, 0x0

    .line 898
    .line 899
    const-wide/16 v31, 0x0

    .line 900
    .line 901
    const-wide/16 v35, 0x0

    .line 902
    .line 903
    const-wide/16 v37, 0x0

    .line 904
    .line 905
    const-wide/16 v39, 0x0

    .line 906
    .line 907
    const-wide/16 v43, 0x0

    .line 908
    .line 909
    const-wide/16 v45, 0x0

    .line 910
    .line 911
    const-wide/16 v47, 0x0

    .line 912
    .line 913
    const-wide/16 v49, 0x0

    .line 914
    .line 915
    const-wide/16 v51, 0x0

    .line 916
    .line 917
    const-wide/16 v53, 0x0

    .line 918
    .line 919
    const-wide/16 v55, 0x0

    .line 920
    .line 921
    const-wide/16 v57, 0x0

    .line 922
    .line 923
    const-wide/16 v59, 0x0

    .line 924
    .line 925
    const-wide/16 v61, 0x0

    .line 926
    .line 927
    const-wide/16 v63, 0x0

    .line 928
    .line 929
    const-wide/16 v67, 0x0

    .line 930
    .line 931
    const-wide/16 v69, 0x0

    .line 932
    .line 933
    const-wide/16 v71, 0x0

    .line 934
    .line 935
    const-wide/16 v73, 0x0

    .line 936
    .line 937
    const-wide/16 v75, 0x0

    .line 938
    .line 939
    const-wide/16 v77, 0x0

    .line 940
    .line 941
    const-wide/16 v79, 0x0

    .line 942
    .line 943
    const-wide/16 v81, 0x0

    .line 944
    .line 945
    const-wide/16 v83, 0x0

    .line 946
    .line 947
    const-wide/16 v85, 0x0

    .line 948
    .line 949
    invoke-static/range {v17 .. v88}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-_VG5OTI$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    :cond_19
    move-object v12, v0

    .line 954
    sget-object v13, Landroidx/compose/material3/MotionScheme$ExpressiveMotionSchemeImpl;->INSTANCE:Landroidx/compose/material3/MotionScheme$ExpressiveMotionSchemeImpl;

    .line 955
    .line 956
    new-instance v14, Landroidx/compose/material3/Shapes;

    .line 957
    .line 958
    invoke-direct {v14}, Landroidx/compose/material3/Shapes;-><init>()V

    .line 959
    .line 960
    .line 961
    new-instance v15, Landroidx/compose/material3/Typography;

    .line 962
    .line 963
    invoke-direct {v15}, Landroidx/compose/material3/Typography;-><init>()V

    .line 964
    .line 965
    .line 966
    const/16 v18, 0x0

    .line 967
    .line 968
    move-object/from16 v17, v2

    .line 969
    .line 970
    invoke-static/range {v12 .. v18}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 971
    .line 972
    .line 973
    goto :goto_e

    .line 974
    :cond_1a
    move-object/from16 v17, v2

    .line 975
    .line 976
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 977
    .line 978
    .line 979
    :goto_e
    return-object v10

    .line 980
    :pswitch_b
    check-cast v0, Landroidx/compose/material3/ListItemColors;

    .line 981
    .line 982
    move-object v4, v11

    .line 983
    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 984
    .line 985
    move-object/from16 v2, p1

    .line 986
    .line 987
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 988
    .line 989
    check-cast v1, Ljava/lang/Integer;

    .line 990
    .line 991
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    and-int/lit8 v3, v1, 0x3

    .line 996
    .line 997
    if-eq v3, v7, :cond_1b

    .line 998
    .line 999
    move v8, v9

    .line 1000
    :cond_1b
    and-int/2addr v1, v9

    .line 1001
    move-object v5, v2

    .line 1002
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1003
    .line 1004
    invoke-virtual {v5, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v1

    .line 1008
    if-eqz v1, :cond_1c

    .line 1009
    .line 1010
    iget-wide v1, v0, Landroidx/compose/material3/ListItemColors;->contentColor:J

    .line 1011
    .line 1012
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 1013
    .line 1014
    const/16 v6, 0x30

    .line 1015
    .line 1016
    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ListItemKt;->ProvideTextStyleFromToken-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1017
    .line 1018
    .line 1019
    goto :goto_f

    .line 1020
    :cond_1c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1021
    .line 1022
    .line 1023
    :goto_f
    return-object v10

    .line 1024
    :pswitch_c
    check-cast v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 1025
    .line 1026
    check-cast v11, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 1027
    .line 1028
    move-object/from16 v2, p1

    .line 1029
    .line 1030
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1031
    .line 1032
    check-cast v1, Ljava/lang/Integer;

    .line 1033
    .line 1034
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1038
    .line 1039
    .line 1040
    move-result v1

    .line 1041
    invoke-virtual {v0, v11, v2, v1}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V

    .line 1042
    .line 1043
    .line 1044
    return-object v10

    .line 1045
    :pswitch_d
    check-cast v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 1046
    .line 1047
    check-cast v11, Lorg/acra/util/ProcessFinisher;

    .line 1048
    .line 1049
    move-object/from16 v2, p1

    .line 1050
    .line 1051
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1052
    .line 1053
    check-cast v1, Ljava/lang/Integer;

    .line 1054
    .line 1055
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    .line 1057
    .line 1058
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1059
    .line 1060
    .line 1061
    move-result v1

    .line 1062
    invoke-virtual {v0, v11, v2, v1}, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->BasicAlertDialog(Lorg/acra/util/ProcessFinisher;Landroidx/compose/runtime/Composer;I)V

    .line 1063
    .line 1064
    .line 1065
    return-object v10

    .line 1066
    :pswitch_e
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1067
    .line 1068
    check-cast v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1069
    .line 1070
    move-object/from16 v2, p1

    .line 1071
    .line 1072
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1073
    .line 1074
    check-cast v1, Ljava/lang/Integer;

    .line 1075
    .line 1076
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    and-int/lit8 v3, v1, 0x3

    .line 1081
    .line 1082
    if-eq v3, v7, :cond_1d

    .line 1083
    .line 1084
    move v8, v9

    .line 1085
    :cond_1d
    and-int/2addr v1, v9

    .line 1086
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1087
    .line 1088
    invoke-virtual {v2, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v1

    .line 1092
    if-eqz v1, :cond_1f

    .line 1093
    .line 1094
    sget v1, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    .line 1095
    .line 1096
    sget v3, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    .line 1097
    .line 1098
    invoke-static {v6, v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    sget-object v1, Landroidx/compose/foundation/layout/SpacerKt;->Center:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 1107
    .line 1108
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    iget-wide v6, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1113
    .line 1114
    ushr-long v12, v6, v5

    .line 1115
    .line 1116
    xor-long/2addr v6, v12

    .line 1117
    long-to-int v3, v6

    .line 1118
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v5

    .line 1122
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1127
    .line 1128
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1129
    .line 1130
    .line 1131
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1132
    .line 1133
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1134
    .line 1135
    .line 1136
    iget-boolean v7, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1137
    .line 1138
    if-eqz v7, :cond_1e

    .line 1139
    .line 1140
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1141
    .line 1142
    .line 1143
    goto :goto_10

    .line 1144
    :cond_1e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1145
    .line 1146
    .line 1147
    :goto_10
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1148
    .line 1149
    invoke-static {v2, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1150
    .line 1151
    .line 1152
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1153
    .line 1154
    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1162
    .line 1163
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1164
    .line 1165
    .line 1166
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1167
    .line 1168
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1169
    .line 1170
    .line 1171
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1172
    .line 1173
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1174
    .line 1175
    .line 1176
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 1177
    .line 1178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    invoke-virtual {v11, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1186
    .line 1187
    .line 1188
    goto :goto_11

    .line 1189
    :cond_1f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1190
    .line 1191
    .line 1192
    :goto_11
    return-object v10

    .line 1193
    :pswitch_f
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1194
    .line 1195
    check-cast v11, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;

    .line 1196
    .line 1197
    move-object/from16 v2, p1

    .line 1198
    .line 1199
    check-cast v2, Ljava/lang/Float;

    .line 1200
    .line 1201
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    check-cast v1, Ljava/lang/Float;

    .line 1206
    .line 1207
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1208
    .line 1209
    .line 1210
    iget v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1211
    .line 1212
    sub-float/2addr v2, v1

    .line 1213
    iget-object v1, v11, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;->this$0:Ljava/lang/Object;

    .line 1214
    .line 1215
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1216
    .line 1217
    invoke-interface {v1, v2}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    .line 1218
    .line 1219
    .line 1220
    move-result v1

    .line 1221
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1222
    .line 1223
    add-float/2addr v2, v1

    .line 1224
    iput v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1225
    .line 1226
    return-object v10

    .line 1227
    :pswitch_10
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1228
    .line 1229
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 1230
    .line 1231
    move-object/from16 v2, p1

    .line 1232
    .line 1233
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1234
    .line 1235
    check-cast v1, Ljava/lang/Integer;

    .line 1236
    .line 1237
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1238
    .line 1239
    .line 1240
    move-result v1

    .line 1241
    and-int/lit8 v3, v1, 0x3

    .line 1242
    .line 1243
    if-eq v3, v7, :cond_20

    .line 1244
    .line 1245
    move v3, v9

    .line 1246
    goto :goto_12

    .line 1247
    :cond_20
    move v3, v8

    .line 1248
    :goto_12
    and-int/2addr v1, v9

    .line 1249
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1250
    .line 1251
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v1

    .line 1255
    if-eqz v1, :cond_21

    .line 1256
    .line 1257
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    invoke-virtual {v0, v11, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    goto :goto_13

    .line 1265
    :cond_21
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1266
    .line 1267
    .line 1268
    :goto_13
    return-object v10

    .line 1269
    :pswitch_11
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 1270
    .line 1271
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 1272
    .line 1273
    move-object/from16 v2, p1

    .line 1274
    .line 1275
    check-cast v2, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 1276
    .line 1277
    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    .line 1278
    .line 1279
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 1280
    .line 1281
    invoke-direct {v3, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V

    .line 1282
    .line 1283
    .line 1284
    iget-wide v0, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1285
    .line 1286
    invoke-interface {v11, v3, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;->measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    return-object v0

    .line 1291
    :pswitch_12
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 1292
    .line 1293
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 1294
    .line 1295
    move-object/from16 v2, p1

    .line 1296
    .line 1297
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1298
    .line 1299
    check-cast v1, Ljava/lang/Integer;

    .line 1300
    .line 1301
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1302
    .line 1303
    .line 1304
    move-result v1

    .line 1305
    and-int/lit8 v4, v1, 0x3

    .line 1306
    .line 1307
    if-eq v4, v7, :cond_22

    .line 1308
    .line 1309
    move v4, v9

    .line 1310
    goto :goto_14

    .line 1311
    :cond_22
    move v4, v8

    .line 1312
    :goto_14
    and-int/2addr v1, v9

    .line 1313
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1314
    .line 1315
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v1

    .line 1319
    if-eqz v1, :cond_28

    .line 1320
    .line 1321
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Lnet/newpipe/app/screen/about/LicensePageKt$$ExternalSyntheticLambda4;

    .line 1322
    .line 1323
    invoke-virtual {v1}, Lnet/newpipe/app/screen/about/LicensePageKt$$ExternalSyntheticLambda4;->invoke()Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v1

    .line 1327
    move-object v12, v1

    .line 1328
    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 1329
    .line 1330
    iget v1, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    .line 1331
    .line 1332
    iget-object v4, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    .line 1333
    .line 1334
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    .line 1335
    .line 1336
    .line 1337
    move-result v5

    .line 1338
    const/4 v6, -0x1

    .line 1339
    if-ge v1, v5, :cond_24

    .line 1340
    .line 1341
    invoke-interface {v12, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v5

    .line 1345
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v5

    .line 1349
    if-nez v5, :cond_23

    .line 1350
    .line 1351
    goto :goto_16

    .line 1352
    :cond_23
    :goto_15
    move v14, v1

    .line 1353
    goto :goto_17

    .line 1354
    :cond_24
    :goto_16
    invoke-interface {v12, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getIndex(Ljava/lang/Object;)I

    .line 1355
    .line 1356
    .line 1357
    move-result v1

    .line 1358
    if-eq v1, v6, :cond_23

    .line 1359
    .line 1360
    iput v1, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    .line 1361
    .line 1362
    goto :goto_15

    .line 1363
    :goto_17
    if-eq v14, v6, :cond_25

    .line 1364
    .line 1365
    const v1, -0x6339ef97

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1369
    .line 1370
    .line 1371
    iget-object v13, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1372
    .line 1373
    iget-object v15, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    .line 1374
    .line 1375
    const/16 v17, 0x0

    .line 1376
    .line 1377
    move-object/from16 v16, v2

    .line 1378
    .line 1379
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->SkippableItem-JVlU9Rs(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1383
    .line 1384
    .line 1385
    goto :goto_18

    .line 1386
    :cond_25
    const v0, -0x633657e2

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1393
    .line 1394
    .line 1395
    :goto_18
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v0

    .line 1399
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v1

    .line 1403
    if-nez v0, :cond_26

    .line 1404
    .line 1405
    if-ne v1, v3, :cond_27

    .line 1406
    .line 1407
    :cond_26
    new-instance v1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 1408
    .line 1409
    const/4 v0, 0x5

    .line 1410
    invoke-direct {v1, v11, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1414
    .line 1415
    .line 1416
    :cond_27
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1417
    .line 1418
    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 1419
    .line 1420
    .line 1421
    goto :goto_19

    .line 1422
    :cond_28
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1423
    .line 1424
    .line 1425
    :goto_19
    return-object v10

    .line 1426
    :pswitch_13
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1427
    .line 1428
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 1429
    .line 1430
    move-object/from16 v2, p1

    .line 1431
    .line 1432
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1433
    .line 1434
    check-cast v1, Ljava/lang/Integer;

    .line 1435
    .line 1436
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1437
    .line 1438
    .line 1439
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1440
    .line 1441
    .line 1442
    move-result v1

    .line 1443
    invoke-static {v0, v11, v2, v1}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 1444
    .line 1445
    .line 1446
    return-object v10

    .line 1447
    :pswitch_14
    check-cast v0, Landroidx/compose/ui/text/TextStyle;

    .line 1448
    .line 1449
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 1450
    .line 1451
    move-object/from16 v2, p1

    .line 1452
    .line 1453
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1454
    .line 1455
    check-cast v1, Ljava/lang/Integer;

    .line 1456
    .line 1457
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1458
    .line 1459
    .line 1460
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1461
    .line 1462
    .line 1463
    move-result v1

    .line 1464
    invoke-static {v0, v11, v2, v1}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1465
    .line 1466
    .line 1467
    return-object v10

    .line 1468
    nop

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
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
