.class public final Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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
    .locals 25

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
    move-object/from16 v7, p2

    .line 8
    .line 9
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v3, 0x7f677649

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v9, 0x4

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    move v3, v9

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v4

    .line 28
    :goto_0
    or-int v10, v1, v3

    .line 29
    .line 30
    and-int/lit8 v3, v10, 0x3

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x1

    .line 34
    if-eq v3, v4, :cond_1

    .line 35
    .line 36
    move v3, v12

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v3, v11

    .line 39
    :goto_1
    and-int/lit8 v4, v10, 0x1

    .line 40
    .line 41
    invoke-virtual {v7, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_10

    .line 46
    .line 47
    iget-object v13, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_f

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const v3, 0x7fffffff

    .line 60
    .line 61
    .line 62
    and-int/2addr v2, v3

    .line 63
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 64
    .line 65
    if-ge v2, v3, :cond_f

    .line 66
    .line 67
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v14, 0x0

    .line 72
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    or-int/2addr v2, v3

    .line 77
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 82
    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    if-ne v3, v15, :cond_3

    .line 86
    .line 87
    :cond_2
    new-instance v2, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 88
    .line 89
    invoke-direct {v2, v0, v12}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    check-cast v3, Landroidx/compose/runtime/State;

    .line 100
    .line 101
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 106
    .line 107
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 108
    .line 109
    sget-object v4, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 110
    .line 111
    invoke-static {v4, v7}, Landroidx/compose/material3/BadgeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    if-ne v6, v15, :cond_5

    .line 130
    .line 131
    :cond_4
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    sget-object v6, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$2:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 136
    .line 137
    new-instance v8, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    .line 138
    .line 139
    invoke-direct {v8, v4}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 140
    .line 141
    .line 142
    new-instance v4, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 143
    .line 144
    invoke-direct {v4, v6, v8}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object v6, v4

    .line 151
    :cond_5
    move-object v4, v6

    .line 152
    check-cast v4, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 153
    .line 154
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 155
    .line 156
    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 157
    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    move-object v3, v6

    .line 161
    const-string v6, "ColorAnimation"

    .line 162
    .line 163
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    new-instance v3, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    const/4 v4, 0x5

    .line 170
    invoke-direct {v3, v0, v4}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    const v4, -0x62e0c0ee

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 177
    .line 178
    .line 179
    move-result-object v18

    .line 180
    const v3, 0x2921b6f1

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 187
    .line 188
    .line 189
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 190
    .line 191
    iget-object v4, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    invoke-interface {v4, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-nez v4, :cond_6

    .line 206
    .line 207
    if-ne v5, v15, :cond_7

    .line 208
    .line 209
    :cond_6
    new-instance v5, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    const/16 v4, 0xa

    .line 212
    .line 213
    invoke-direct {v5, v2, v4}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 220
    .line 221
    invoke-static {v3, v5}, Landroidx/compose/ui/draw/ClipKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-ne v3, v15, :cond_8

    .line 230
    .line 231
    new-instance v3, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;

    .line 232
    .line 233
    const/4 v4, 0x7

    .line 234
    invoke-direct {v3, v4}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_8
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 241
    .line 242
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    if-ne v3, v15, :cond_9

    .line 251
    .line 252
    sget-object v3, Landroidx/compose/material3/SurfaceKt$Surface$1$3$1;->INSTANCE$1:Landroidx/compose/material3/SurfaceKt$Surface$1$3$1;

    .line 253
    .line 254
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_9
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 258
    .line 259
    sget-object v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 260
    .line 261
    new-instance v4, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 262
    .line 263
    const/4 v5, 0x6

    .line 264
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 265
    .line 266
    invoke-direct {v4, v6, v14, v3, v5}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Landroidx/work/OperationKt;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 274
    .line 275
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    iget-wide v4, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 280
    .line 281
    const/16 v6, 0x20

    .line 282
    .line 283
    ushr-long v16, v4, v6

    .line 284
    .line 285
    xor-long v4, v4, v16

    .line 286
    .line 287
    long-to-int v4, v4

    .line 288
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-static {v7, v2}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 297
    .line 298
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 302
    .line 303
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 304
    .line 305
    .line 306
    iget-boolean v8, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 307
    .line 308
    if-eqz v8, :cond_a

    .line 309
    .line 310
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 315
    .line 316
    .line 317
    :goto_2
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 318
    .line 319
    invoke-static {v7, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 320
    .line 321
    .line 322
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 323
    .line 324
    invoke-static {v7, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 332
    .line 333
    invoke-static {v7, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    .line 335
    .line 336
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 337
    .line 338
    invoke-static {v7, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 339
    .line 340
    .line 341
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 342
    .line 343
    invoke-static {v7, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 344
    .line 345
    .line 346
    iget-object v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 347
    .line 348
    invoke-static {v2}, Landroidx/compose/foundation/layout/SpacerKt;->windowInsetsPadding(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    sget-object v2, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 357
    .line 358
    and-int/lit8 v2, v10, 0xe

    .line 359
    .line 360
    if-ne v2, v9, :cond_b

    .line 361
    .line 362
    move v11, v12

    .line 363
    :cond_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-nez v11, :cond_c

    .line 368
    .line 369
    if-ne v2, v15, :cond_d

    .line 370
    .line 371
    :cond_c
    new-instance v2, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda3;

    .line 372
    .line 373
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :cond_d
    move-object v4, v2

    .line 380
    check-cast v4, Landroidx/compose/material3/internal/FloatProducer;

    .line 381
    .line 382
    iget-wide v5, v13, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 383
    .line 384
    iget-wide v8, v13, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 385
    .line 386
    move v2, v12

    .line 387
    iget-wide v11, v13, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 388
    .line 389
    iget-wide v13, v13, Landroidx/compose/material3/TopAppBarColors;->subtitleContentColor:J

    .line 390
    .line 391
    move-wide/from16 v16, v8

    .line 392
    .line 393
    move-wide v9, v13

    .line 394
    iget-object v13, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->title:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 395
    .line 396
    iget-object v14, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 397
    .line 398
    iget-object v8, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 399
    .line 400
    iget-object v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->navigationIcon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 401
    .line 402
    move-object/from16 v19, v2

    .line 403
    .line 404
    iget v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->expandedHeight:F

    .line 405
    .line 406
    move/from16 v20, v2

    .line 407
    .line 408
    iget-object v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 409
    .line 410
    move-object/from16 v21, v2

    .line 411
    .line 412
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-ne v2, v15, :cond_e

    .line 417
    .line 418
    new-instance v2, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 419
    .line 420
    const/16 v15, 0xc

    .line 421
    .line 422
    invoke-direct {v2, v15}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 429
    .line 430
    const/16 v22, 0x0

    .line 431
    .line 432
    move-object v15, v8

    .line 433
    move-wide/from16 v23, v16

    .line 434
    .line 435
    move-object/from16 v16, v2

    .line 436
    .line 437
    move-object/from16 v17, v19

    .line 438
    .line 439
    move/from16 v19, v20

    .line 440
    .line 441
    move-object/from16 v20, v21

    .line 442
    .line 443
    const/4 v2, 0x1

    .line 444
    move-object/from16 v21, v7

    .line 445
    .line 446
    move-wide/from16 v7, v23

    .line 447
    .line 448
    invoke-static/range {v3 .. v22}, Landroidx/compose/material3/AppBarKt;->TopAppBarLayout-_5F1rQI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 449
    .line 450
    .line 451
    move-object/from16 v7, v21

    .line 452
    .line 453
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 454
    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_f
    const-string v0, "The expandedHeight is expected to be specified and finite"

    .line 458
    .line 459
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :cond_10
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 464
    .line 465
    .line 466
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    if-eqz v2, :cond_11

    .line 471
    .line 472
    new-instance v3, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 473
    .line 474
    const/16 v4, 0x8

    .line 475
    .line 476
    move-object/from16 v5, p0

    .line 477
    .line 478
    invoke-direct {v3, v1, v5, v0, v4}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 479
    .line 480
    .line 481
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 482
    .line 483
    :cond_11
    return-void
.end method
