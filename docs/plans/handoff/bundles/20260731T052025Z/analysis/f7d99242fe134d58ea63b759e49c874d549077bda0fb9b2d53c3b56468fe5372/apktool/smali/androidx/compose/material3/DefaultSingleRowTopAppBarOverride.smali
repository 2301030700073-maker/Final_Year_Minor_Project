.class public final Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->INSTANCE:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->expandedHeight:F

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v4, 0x7f677649

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move v4, v6

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v5

    .line 28
    :goto_0
    or-int/2addr v4, v1

    .line 29
    and-int/lit8 v7, v4, 0x3

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x1

    .line 33
    if-eq v7, v5, :cond_1

    .line 34
    .line 35
    move v7, v9

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v7, v8

    .line 38
    :goto_1
    and-int/lit8 v10, v4, 0x1

    .line 39
    .line 40
    invoke-virtual {v3, v10, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/16 v10, 0xe

    .line 45
    .line 46
    if-eqz v7, :cond_10

    .line 47
    .line 48
    iget-object v7, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-nez v11, :cond_f

    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const v11, 0x7fffffff

    .line 61
    .line 62
    .line 63
    and-int/2addr v2, v11

    .line 64
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 65
    .line 66
    if-ge v2, v11, :cond_f

    .line 67
    .line 68
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v11, 0x0

    .line 73
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    or-int/2addr v2, v11

    .line 78
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    if-ne v11, v12, :cond_3

    .line 87
    .line 88
    :cond_2
    new-instance v2, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 89
    .line 90
    invoke-direct {v2, v9, v0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    check-cast v11, Landroidx/compose/runtime/State;

    .line 101
    .line 102
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 107
    .line 108
    iget-wide v13, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 109
    .line 110
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 111
    .line 112
    invoke-static {v2, v3}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v13, v14, v2, v3}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v11, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 121
    .line 122
    invoke-direct {v11, v5, v0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const v5, -0x62e0c0ee

    .line 126
    .line 127
    .line 128
    invoke-static {v5, v11, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v18

    .line 132
    const v5, 0x292236d1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v5, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 144
    .line 145
    invoke-interface {v5, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    if-nez v13, :cond_4

    .line 158
    .line 159
    if-ne v14, v12, :cond_5

    .line 160
    .line 161
    :cond_4
    new-instance v14, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    invoke-direct {v14, v9, v2}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 170
    .line 171
    invoke-static {v5, v14}, Landroidx/compose/ui/draw/ClipKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    if-ne v5, v12, :cond_6

    .line 180
    .line 181
    new-instance v5, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 182
    .line 183
    const/4 v13, 0x6

    .line 184
    invoke-direct {v5, v13}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 191
    .line 192
    invoke-static {v2, v8, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    if-ne v5, v12, :cond_7

    .line 201
    .line 202
    sget-object v5, Landroidx/compose/material3/SurfaceKt$Surface$1$3$1;->INSTANCE$1:Landroidx/compose/material3/SurfaceKt$Surface$1$3$1;

    .line 203
    .line 204
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 208
    .line 209
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 210
    .line 211
    invoke-static {v2, v13, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 216
    .line 217
    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 226
    .line 227
    .line 228
    move-result-object v14

    .line 229
    invoke-static {v3, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 234
    .line 235
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 239
    .line 240
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 241
    .line 242
    .line 243
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 244
    .line 245
    if-eqz v8, :cond_8

    .line 246
    .line 247
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 252
    .line 253
    .line 254
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 255
    .line 256
    invoke-static {v3, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 260
    .line 261
    invoke-static {v3, v14, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 262
    .line 263
    .line 264
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 265
    .line 266
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 267
    .line 268
    if-nez v8, :cond_9

    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-nez v8, :cond_a

    .line 283
    .line 284
    :cond_9
    invoke-static {v13, v3, v13, v5}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 285
    .line 286
    .line 287
    :cond_a
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 288
    .line 289
    invoke-static {v3, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 290
    .line 291
    .line 292
    iget-object v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 293
    .line 294
    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    sget-object v5, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 303
    .line 304
    and-int/2addr v4, v10

    .line 305
    if-ne v4, v6, :cond_b

    .line 306
    .line 307
    move v8, v9

    .line 308
    goto :goto_3

    .line 309
    :cond_b
    const/4 v8, 0x0

    .line 310
    :goto_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    if-nez v8, :cond_c

    .line 315
    .line 316
    if-ne v4, v12, :cond_d

    .line 317
    .line 318
    :cond_c
    new-instance v4, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2;

    .line 319
    .line 320
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_d
    check-cast v4, Landroidx/compose/material3/internal/FloatProducer;

    .line 327
    .line 328
    iget-wide v5, v7, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 329
    .line 330
    iget-wide v13, v7, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 331
    .line 332
    iget-wide v9, v7, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 333
    .line 334
    move-wide v15, v9

    .line 335
    iget-wide v8, v7, Landroidx/compose/material3/TopAppBarColors;->subtitleContentColor:J

    .line 336
    .line 337
    move-wide v9, v8

    .line 338
    move-wide v7, v13

    .line 339
    iget-object v13, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->title:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 340
    .line 341
    iget-object v14, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 342
    .line 343
    move-wide/from16 v16, v15

    .line 344
    .line 345
    iget-object v15, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 346
    .line 347
    iget-object v11, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->navigationIcon:Lkotlin/jvm/functions/Function2;

    .line 348
    .line 349
    move-object/from16 v20, v2

    .line 350
    .line 351
    iget v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->expandedHeight:F

    .line 352
    .line 353
    move/from16 v21, v2

    .line 354
    .line 355
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    if-ne v2, v12, :cond_e

    .line 360
    .line 361
    new-instance v2, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 362
    .line 363
    const/16 v12, 0x1d

    .line 364
    .line 365
    invoke-direct {v2, v12}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 372
    .line 373
    move/from16 v19, v21

    .line 374
    .line 375
    const/16 v12, 0xe

    .line 376
    .line 377
    const/16 v21, 0x0

    .line 378
    .line 379
    move-wide/from16 v22, v16

    .line 380
    .line 381
    move-object/from16 v17, v11

    .line 382
    .line 383
    move-wide/from16 v11, v22

    .line 384
    .line 385
    move-object/from16 v22, v20

    .line 386
    .line 387
    move-object/from16 v20, v3

    .line 388
    .line 389
    move-object/from16 v3, v22

    .line 390
    .line 391
    move-object/from16 v16, v2

    .line 392
    .line 393
    const/4 v2, 0x1

    .line 394
    invoke-static/range {v3 .. v21}, Landroidx/compose/material3/AppBarKt;->TopAppBarLayout-lyUyIHI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/runtime/Composer;I)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v3, v20

    .line 398
    .line 399
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 400
    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_f
    const-string v0, "The expandedHeight is expected to be specified and finite"

    .line 404
    .line 405
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :cond_10
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 410
    .line 411
    .line 412
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-eqz v2, :cond_11

    .line 417
    .line 418
    new-instance v3, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 419
    .line 420
    const/16 v12, 0xe

    .line 421
    .line 422
    move-object/from16 v4, p0

    .line 423
    .line 424
    invoke-direct {v3, v1, v12, v4, v0}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 428
    .line 429
    :cond_11
    return-void
.end method
