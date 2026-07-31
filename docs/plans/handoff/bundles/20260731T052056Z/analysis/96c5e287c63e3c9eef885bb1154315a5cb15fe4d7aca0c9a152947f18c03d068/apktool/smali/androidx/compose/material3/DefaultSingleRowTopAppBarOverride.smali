.class public final Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
.method public final SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/GapComposer;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->expandedHeight:F

    .line 6
    .line 7
    const v3, 0x7f677649

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x4

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move v3, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v4

    .line 24
    :goto_0
    or-int v3, p3, v3

    .line 25
    .line 26
    and-int/lit8 v6, v3, 0x3

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    if-eq v6, v4, :cond_1

    .line 31
    .line 32
    move v6, v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v6, v7

    .line 35
    :goto_1
    and-int/lit8 v9, v3, 0x1

    .line 36
    .line 37
    invoke-virtual {v1, v9, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/16 v9, 0xe

    .line 42
    .line 43
    if-eqz v6, :cond_12

    .line 44
    .line 45
    iget-object v6, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    .line 46
    .line 47
    iget-object v10, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->scrollBehavior:Landroidx/compose/material3/PinnedScrollBehavior;

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-nez v11, :cond_11

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const v11, 0x7fffffff

    .line 60
    .line 61
    .line 62
    and-int/2addr v2, v11

    .line 63
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 64
    .line 65
    if-ge v2, v11, :cond_11

    .line 66
    .line 67
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    or-int/2addr v2, v11

    .line 76
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 81
    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    if-ne v11, v12, :cond_3

    .line 85
    .line 86
    :cond_2
    new-instance v2, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 87
    .line 88
    invoke-direct {v2, v8, v0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    check-cast v11, Landroidx/compose/runtime/State;

    .line 99
    .line 100
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 105
    .line 106
    iget-wide v13, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 107
    .line 108
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 109
    .line 110
    invoke-static {v2, v1}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v13, v14, v2, v1}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/State;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v11, Landroidx/compose/material3/CardKt$Card$1;

    .line 119
    .line 120
    invoke-direct {v11, v4, v0}, Landroidx/compose/material3/CardKt$Card$1;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const v4, -0x62e0c0ee

    .line 124
    .line 125
    .line 126
    invoke-static {v4, v11, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 127
    .line 128
    .line 129
    move-result-object v16

    .line 130
    const v4, 0x292236d1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v4, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    .line 140
    .line 141
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 142
    .line 143
    invoke-interface {v4, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    if-nez v13, :cond_4

    .line 156
    .line 157
    if-ne v14, v12, :cond_5

    .line 158
    .line 159
    :cond_4
    new-instance v14, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v14, v2, v7}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_5
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 168
    .line 169
    invoke-static {v4, v14}, Landroidx/compose/ui/draw/ClipKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    if-ne v4, v12, :cond_6

    .line 178
    .line 179
    new-instance v4, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 180
    .line 181
    const/16 v13, 0x12

    .line 182
    .line 183
    invoke-direct {v4, v13}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_6
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 190
    .line 191
    invoke-static {v2, v7, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    if-ne v4, v12, :cond_7

    .line 200
    .line 201
    sget-object v4, Landroidx/compose/material3/SurfaceKt$Surface$1$3$1;->INSTANCE$1:Landroidx/compose/material3/SurfaceKt$Surface$1$3$1;

    .line 202
    .line 203
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_7
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 207
    .line 208
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 209
    .line 210
    invoke-static {v2, v13, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 215
    .line 216
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 233
    .line 234
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 240
    .line 241
    .line 242
    iget-boolean v8, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 243
    .line 244
    if-eqz v8, :cond_8

    .line 245
    .line 246
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 251
    .line 252
    .line 253
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 254
    .line 255
    invoke-static {v1, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 256
    .line 257
    .line 258
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 259
    .line 260
    invoke-static {v1, v14, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 261
    .line 262
    .line 263
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 264
    .line 265
    iget-boolean v8, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 266
    .line 267
    if-nez v8, :cond_9

    .line 268
    .line 269
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_a

    .line 282
    .line 283
    :cond_9
    invoke-static {v13, v1, v13, v4}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 284
    .line 285
    .line 286
    :cond_a
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 287
    .line 288
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 289
    .line 290
    .line 291
    iget-object v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 292
    .line 293
    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    sget-object v4, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 302
    .line 303
    if-eqz v10, :cond_c

    .line 304
    .line 305
    iget-object v4, v10, Landroidx/compose/material3/PinnedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    .line 306
    .line 307
    if-eqz v4, :cond_c

    .line 308
    .line 309
    new-instance v8, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 310
    .line 311
    invoke-direct {v8, v7, v4}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v8}, Landroidx/compose/ui/layout/RulerKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    if-nez v4, :cond_b

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_b
    move-object v2, v4

    .line 322
    :cond_c
    :goto_3
    and-int/2addr v3, v9

    .line 323
    if-ne v3, v5, :cond_d

    .line 324
    .line 325
    const/4 v3, 0x1

    .line 326
    goto :goto_4

    .line 327
    :cond_d
    move v3, v7

    .line 328
    :goto_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    if-nez v3, :cond_e

    .line 333
    .line 334
    if-ne v4, v12, :cond_f

    .line 335
    .line 336
    :cond_e
    new-instance v4, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2;

    .line 337
    .line 338
    invoke-direct {v4, v7, v0}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    :cond_f
    check-cast v4, Landroidx/compose/material3/internal/FloatProducer;

    .line 345
    .line 346
    move-object v5, v2

    .line 347
    move-object v2, v4

    .line 348
    iget-wide v3, v6, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 349
    .line 350
    iget-wide v7, v6, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 351
    .line 352
    move v11, v9

    .line 353
    iget-wide v9, v6, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 354
    .line 355
    iget-wide v13, v6, Landroidx/compose/material3/TopAppBarColors;->subtitleContentColor:J

    .line 356
    .line 357
    move v6, v11

    .line 358
    iget-object v11, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->title:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 359
    .line 360
    iget-object v15, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 361
    .line 362
    move/from16 v18, v6

    .line 363
    .line 364
    move-wide/from16 v22, v13

    .line 365
    .line 366
    move-object v14, v5

    .line 367
    move-wide v5, v7

    .line 368
    move-wide/from16 v7, v22

    .line 369
    .line 370
    iget-object v13, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 371
    .line 372
    move-object/from16 v19, v15

    .line 373
    .line 374
    iget-object v15, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->navigationIcon:Lkotlin/jvm/functions/Function2;

    .line 375
    .line 376
    move-object/from16 v20, v2

    .line 377
    .line 378
    iget v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->expandedHeight:F

    .line 379
    .line 380
    move/from16 v21, v2

    .line 381
    .line 382
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    if-ne v2, v12, :cond_10

    .line 387
    .line 388
    new-instance v2, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 389
    .line 390
    const/16 v12, 0x1c

    .line 391
    .line 392
    invoke-direct {v2, v12}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    :cond_10
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 399
    .line 400
    move-object/from16 v12, v19

    .line 401
    .line 402
    const/16 v19, 0x0

    .line 403
    .line 404
    move-object/from16 v18, v1

    .line 405
    .line 406
    move-object v1, v14

    .line 407
    move/from16 v17, v21

    .line 408
    .line 409
    const/4 v0, 0x1

    .line 410
    move-object v14, v2

    .line 411
    move-object/from16 v2, v20

    .line 412
    .line 413
    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/AppBarKt;->TopAppBarLayout-lyUyIHI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/runtime/GapComposer;I)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v1, v18

    .line 417
    .line 418
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 419
    .line 420
    .line 421
    goto :goto_5

    .line 422
    :cond_11
    const-string v0, "The expandedHeight is expected to be specified and finite"

    .line 423
    .line 424
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_12
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 429
    .line 430
    .line 431
    :goto_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    if-eqz v0, :cond_13

    .line 436
    .line 437
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 438
    .line 439
    move-object/from16 v2, p0

    .line 440
    .line 441
    move-object/from16 v3, p1

    .line 442
    .line 443
    move/from16 v4, p3

    .line 444
    .line 445
    const/16 v6, 0xe

    .line 446
    .line 447
    invoke-direct {v1, v2, v3, v4, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 448
    .line 449
    .line 450
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 451
    .line 452
    :cond_13
    return-void
.end method
