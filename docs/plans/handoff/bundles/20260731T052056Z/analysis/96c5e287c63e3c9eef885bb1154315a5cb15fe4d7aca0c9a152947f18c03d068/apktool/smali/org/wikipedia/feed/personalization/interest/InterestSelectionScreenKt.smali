.class public abstract Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final lambda$-1975292867:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$121763788:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$1475803107:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const v3, 0x741f7cc

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt;->lambda$121763788:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/feed/ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    const v3, -0x75bc93c3

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt;->lambda$-1975292867:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;

    .line 36
    .line 37
    const/16 v1, 0x1c

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 43
    .line 44
    const v3, 0x57f6f7e3

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 48
    .line 49
    .line 50
    sput-object v1, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt;->lambda$1475803107:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 51
    .line 52
    return-void
.end method

.method public static final InterestOnboardingScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/interest/ArticlesState;Ljava/util/ArrayList;ILjava/lang/String;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 40

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v11, p3

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v12, p9

    .line 8
    .line 9
    move-object/from16 v13, p11

    .line 10
    .line 11
    move-object/from16 v0, p12

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const v1, -0x621837a6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x2

    .line 43
    :goto_0
    or-int v1, p13, v1

    .line 44
    .line 45
    move-object/from16 v6, p1

    .line 46
    .line 47
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/16 v8, 0x10

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    const/16 v5, 0x20

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v5, v8

    .line 59
    :goto_1
    or-int/2addr v1, v5

    .line 60
    move-object/from16 v5, p2

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_2

    .line 67
    .line 68
    const/16 v10, 0x100

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/16 v10, 0x80

    .line 72
    .line 73
    :goto_2
    or-int/2addr v1, v10

    .line 74
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_3

    .line 79
    .line 80
    const/16 v10, 0x800

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const/16 v10, 0x400

    .line 84
    .line 85
    :goto_3
    or-int/2addr v1, v10

    .line 86
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_4

    .line 91
    .line 92
    const/16 v10, 0x4000

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    const/16 v10, 0x2000

    .line 96
    .line 97
    :goto_4
    or-int/2addr v1, v10

    .line 98
    const/high16 v10, 0x10000

    .line 99
    .line 100
    or-int/2addr v1, v10

    .line 101
    move-object/from16 v10, p6

    .line 102
    .line 103
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    if-eqz v14, :cond_5

    .line 108
    .line 109
    const/high16 v14, 0x100000

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_5
    const/high16 v14, 0x80000

    .line 113
    .line 114
    :goto_5
    or-int/2addr v1, v14

    .line 115
    move-object/from16 v14, p7

    .line 116
    .line 117
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    if-eqz v15, :cond_6

    .line 122
    .line 123
    const/high16 v15, 0x800000

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_6
    const/high16 v15, 0x400000

    .line 127
    .line 128
    :goto_6
    or-int/2addr v1, v15

    .line 129
    move-object/from16 v15, p8

    .line 130
    .line 131
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v16

    .line 135
    if-eqz v16, :cond_7

    .line 136
    .line 137
    const/high16 v16, 0x4000000

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_7
    const/high16 v16, 0x2000000

    .line 141
    .line 142
    :goto_7
    or-int v1, v1, v16

    .line 143
    .line 144
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v16

    .line 148
    if-eqz v16, :cond_8

    .line 149
    .line 150
    const/high16 v16, 0x20000000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_8
    const/high16 v16, 0x10000000

    .line 154
    .line 155
    :goto_8
    or-int v1, v1, v16

    .line 156
    .line 157
    move-object/from16 v2, p10

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v17

    .line 163
    if-eqz v17, :cond_9

    .line 164
    .line 165
    const/16 v16, 0x4

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_9
    const/16 v16, 0x2

    .line 169
    .line 170
    :goto_9
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v17

    .line 174
    if-eqz v17, :cond_a

    .line 175
    .line 176
    const/16 v8, 0x20

    .line 177
    .line 178
    :cond_a
    or-int v8, v16, v8

    .line 179
    .line 180
    const v16, 0x12492493

    .line 181
    .line 182
    .line 183
    const/16 v17, 0x20

    .line 184
    .line 185
    and-int v9, v1, v16

    .line 186
    .line 187
    const v3, 0x12492492

    .line 188
    .line 189
    .line 190
    if-ne v9, v3, :cond_c

    .line 191
    .line 192
    and-int/lit8 v3, v8, 0x13

    .line 193
    .line 194
    const/16 v8, 0x12

    .line 195
    .line 196
    if-eq v3, v8, :cond_b

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_b
    const/4 v3, 0x0

    .line 200
    goto :goto_b

    .line 201
    :cond_c
    :goto_a
    const/4 v3, 0x1

    .line 202
    :goto_b
    and-int/lit8 v8, v1, 0x1

    .line 203
    .line 204
    invoke-virtual {v0, v8, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_15

    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 211
    .line 212
    .line 213
    and-int/lit8 v3, p13, 0x1

    .line 214
    .line 215
    const v8, -0x70001

    .line 216
    .line 217
    .line 218
    if-eqz v3, :cond_e

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_d

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 228
    .line 229
    .line 230
    and-int/2addr v1, v8

    .line 231
    move/from16 v38, v1

    .line 232
    .line 233
    move-object/from16 v1, p5

    .line 234
    .line 235
    goto :goto_d

    .line 236
    :cond_e
    :goto_c
    invoke-static {v0}, Lkotlin/text/UStringsKt;->rememberLazyStaggeredGridState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    and-int/2addr v1, v8

    .line 241
    move/from16 v38, v1

    .line 242
    .line 243
    move-object v1, v3

    .line 244
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 245
    .line 246
    .line 247
    const-string v3, "shimmerTransition"

    .line 248
    .line 249
    const/4 v8, 0x0

    .line 250
    invoke-static {v3, v0, v8}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 255
    .line 256
    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    move-object/from16 p5, v1

    .line 261
    .line 262
    iget-wide v1, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 263
    .line 264
    ushr-long v19, v1, v17

    .line 265
    .line 266
    xor-long v1, v1, v19

    .line 267
    .line 268
    long-to-int v1, v1

    .line 269
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 278
    .line 279
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 283
    .line 284
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 285
    .line 286
    .line 287
    move/from16 v20, v1

    .line 288
    .line 289
    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 290
    .line 291
    if-eqz v1, :cond_f

    .line 292
    .line 293
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 294
    .line 295
    .line 296
    goto :goto_e

    .line 297
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 298
    .line 299
    .line 300
    :goto_e
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 301
    .line 302
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 303
    .line 304
    .line 305
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 306
    .line 307
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 308
    .line 309
    .line 310
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 315
    .line 316
    invoke-static {v0, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 317
    .line 318
    .line 319
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 320
    .line 321
    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 322
    .line 323
    .line 324
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 325
    .line 326
    invoke-static {v0, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 327
    .line 328
    .line 329
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 330
    .line 331
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 332
    .line 333
    move-object/from16 v39, v9

    .line 334
    .line 335
    const/4 v9, 0x0

    .line 336
    invoke-static {v8, v7, v0, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    iget-wide v8, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 341
    .line 342
    ushr-long v20, v8, v17

    .line 343
    .line 344
    xor-long v8, v8, v20

    .line 345
    .line 346
    long-to-int v8, v8

    .line 347
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 348
    .line 349
    .line 350
    move-result-object v9

    .line 351
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 352
    .line 353
    invoke-static {v0, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 358
    .line 359
    .line 360
    iget-boolean v14, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 361
    .line 362
    if-eqz v14, :cond_10

    .line 363
    .line 364
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 365
    .line 366
    .line 367
    goto :goto_f

    .line 368
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 369
    .line 370
    .line 371
    :goto_f
    invoke-static {v0, v7, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 372
    .line 373
    .line 374
    invoke-static {v0, v9, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v8, v0, v5, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v0, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 381
    .line 382
    .line 383
    const/4 v7, 0x0

    .line 384
    const/high16 v8, 0x41800000    # 16.0f

    .line 385
    .line 386
    const/4 v9, 0x2

    .line 387
    invoke-static {v11, v8, v7, v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 392
    .line 393
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 394
    .line 395
    const/16 v14, 0x30

    .line 396
    .line 397
    invoke-static {v10, v9, v0, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    move-object v14, v9

    .line 402
    iget-wide v8, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 403
    .line 404
    ushr-long v16, v8, v17

    .line 405
    .line 406
    xor-long v8, v8, v16

    .line 407
    .line 408
    long-to-int v8, v8

    .line 409
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 418
    .line 419
    .line 420
    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 421
    .line 422
    if-eqz v10, :cond_11

    .line 423
    .line 424
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 425
    .line 426
    .line 427
    goto :goto_10

    .line 428
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 429
    .line 430
    .line 431
    :goto_10
    invoke-static {v0, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v0, v9, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v8, v0, v5, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v0, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 441
    .line 442
    .line 443
    const/4 v1, 0x0

    .line 444
    if-eqz v13, :cond_12

    .line 445
    .line 446
    const v2, 0x3f29ba85

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 450
    .line 451
    .line 452
    const/16 v2, 0xf

    .line 453
    .line 454
    const/4 v8, 0x0

    .line 455
    invoke-static {v2, v11, v1, v13, v8}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 456
    .line 457
    .line 458
    move-result-object v16

    .line 459
    const v2, 0x7f080113

    .line 460
    .line 461
    .line 462
    invoke-static {v2, v8, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 467
    .line 468
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 473
    .line 474
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 475
    .line 476
    const/16 v20, 0x38

    .line 477
    .line 478
    const/16 v21, 0x0

    .line 479
    .line 480
    const/4 v15, 0x0

    .line 481
    move-object/from16 v19, v0

    .line 482
    .line 483
    move-wide/from16 v17, v2

    .line 484
    .line 485
    move v0, v8

    .line 486
    const/4 v2, 0x1

    .line 487
    invoke-static/range {v14 .. v21}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 488
    .line 489
    .line 490
    move-object/from16 v3, v19

    .line 491
    .line 492
    const/high16 v5, 0x41400000    # 12.0f

    .line 493
    .line 494
    invoke-static {v11, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 502
    .line 503
    .line 504
    goto :goto_11

    .line 505
    :cond_12
    move-object v3, v0

    .line 506
    const/4 v0, 0x0

    .line 507
    const/4 v2, 0x1

    .line 508
    const v5, 0x3f305788

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 515
    .line 516
    .line 517
    :goto_11
    const v5, 0x7f1207da

    .line 518
    .line 519
    .line 520
    invoke-static {v5, v3}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v14

    .line 524
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 525
    .line 526
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 531
    .line 532
    iget-object v15, v5, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 533
    .line 534
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 535
    .line 536
    const/16 v26, 0x0

    .line 537
    .line 538
    const v27, 0xfffffb

    .line 539
    .line 540
    .line 541
    const-wide/16 v16, 0x0

    .line 542
    .line 543
    const-wide/16 v18, 0x0

    .line 544
    .line 545
    const/16 v21, 0x0

    .line 546
    .line 547
    const-wide/16 v22, 0x0

    .line 548
    .line 549
    const-wide/16 v24, 0x0

    .line 550
    .line 551
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 552
    .line 553
    .line 554
    move-result-object v33

    .line 555
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 556
    .line 557
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 562
    .line 563
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 564
    .line 565
    const/16 v36, 0x0

    .line 566
    .line 567
    const v37, 0x1fffa

    .line 568
    .line 569
    .line 570
    const/4 v15, 0x0

    .line 571
    const/16 v18, 0x0

    .line 572
    .line 573
    const-wide/16 v19, 0x0

    .line 574
    .line 575
    const/16 v22, 0x0

    .line 576
    .line 577
    const-wide/16 v23, 0x0

    .line 578
    .line 579
    const/16 v25, 0x0

    .line 580
    .line 581
    const-wide/16 v26, 0x0

    .line 582
    .line 583
    const/16 v28, 0x0

    .line 584
    .line 585
    const/16 v29, 0x0

    .line 586
    .line 587
    const/16 v30, 0x0

    .line 588
    .line 589
    const/16 v31, 0x0

    .line 590
    .line 591
    const/16 v32, 0x0

    .line 592
    .line 593
    const/16 v35, 0x0

    .line 594
    .line 595
    move-object/from16 v34, v3

    .line 596
    .line 597
    move-wide/from16 v16, v6

    .line 598
    .line 599
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 600
    .line 601
    .line 602
    move-object/from16 v14, v34

    .line 603
    .line 604
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 605
    .line 606
    .line 607
    const/high16 v10, 0x41800000    # 16.0f

    .line 608
    .line 609
    invoke-static {v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 614
    .line 615
    .line 616
    new-instance v3, Ljava/util/Locale;

    .line 617
    .line 618
    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    if-ne v3, v2, :cond_13

    .line 626
    .line 627
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 628
    .line 629
    goto :goto_12

    .line 630
    :cond_13
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 631
    .line 632
    :goto_12
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 633
    .line 634
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 635
    .line 636
    .line 637
    move-result-object v15

    .line 638
    move/from16 v18, v0

    .line 639
    .line 640
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda13;

    .line 641
    .line 642
    move-object/from16 v7, p0

    .line 643
    .line 644
    move-object/from16 v6, p1

    .line 645
    .line 646
    move-object/from16 v3, p2

    .line 647
    .line 648
    move-object/from16 v1, p5

    .line 649
    .line 650
    move-object/from16 v10, p7

    .line 651
    .line 652
    move-object/from16 v8, p10

    .line 653
    .line 654
    move v12, v2

    .line 655
    move-object v13, v5

    .line 656
    move-object/from16 v9, v39

    .line 657
    .line 658
    move-object/from16 v5, p6

    .line 659
    .line 660
    move-object/from16 v2, p8

    .line 661
    .line 662
    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function0;Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/personalization/interest/ArticlesState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/jvm/functions/Function1;)V

    .line 663
    .line 664
    .line 665
    const v2, -0x785081ea

    .line 666
    .line 667
    .line 668
    invoke-static {v2, v0, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    const/16 v2, 0x38

    .line 673
    .line 674
    invoke-static {v15, v0, v14, v2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 678
    .line 679
    .line 680
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    .line 681
    .line 682
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 683
    .line 684
    invoke-virtual {v2, v11, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 693
    .line 694
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 695
    .line 696
    sget-object v4, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 697
    .line 698
    invoke-static {v0, v2, v3, v4}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 707
    .line 708
    if-ne v2, v3, :cond_14

    .line 709
    .line 710
    new-instance v2, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 711
    .line 712
    const/16 v3, 0x8

    .line 713
    .line 714
    invoke-direct {v2, v3}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    :cond_14
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 721
    .line 722
    const/16 v3, 0xe

    .line 723
    .line 724
    const/4 v4, 0x0

    .line 725
    const/4 v8, 0x0

    .line 726
    invoke-static {v3, v0, v4, v2, v8}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    shr-int/lit8 v2, v38, 0x9

    .line 731
    .line 732
    and-int/2addr v2, v3

    .line 733
    shr-int/lit8 v3, v38, 0x15

    .line 734
    .line 735
    and-int/lit16 v3, v3, 0x380

    .line 736
    .line 737
    or-int/2addr v2, v3

    .line 738
    move/from16 v4, p3

    .line 739
    .line 740
    move-object/from16 v10, p9

    .line 741
    .line 742
    invoke-static {v4, v2, v14, v0, v10}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt;->SelectionBottomBar(IILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 746
    .line 747
    .line 748
    move-object v6, v1

    .line 749
    goto :goto_13

    .line 750
    :cond_15
    move-object v14, v0

    .line 751
    move v4, v11

    .line 752
    move-object v10, v12

    .line 753
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 754
    .line 755
    .line 756
    move-object/from16 v6, p5

    .line 757
    .line 758
    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 759
    .line 760
    .line 761
    move-result-object v14

    .line 762
    if-eqz v14, :cond_16

    .line 763
    .line 764
    new-instance v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$$ExternalSyntheticLambda8;

    .line 765
    .line 766
    move-object/from16 v1, p0

    .line 767
    .line 768
    move-object/from16 v2, p1

    .line 769
    .line 770
    move-object/from16 v3, p2

    .line 771
    .line 772
    move-object/from16 v5, p4

    .line 773
    .line 774
    move-object/from16 v7, p6

    .line 775
    .line 776
    move-object/from16 v8, p7

    .line 777
    .line 778
    move-object/from16 v9, p8

    .line 779
    .line 780
    move-object/from16 v11, p10

    .line 781
    .line 782
    move-object/from16 v12, p11

    .line 783
    .line 784
    move/from16 v13, p13

    .line 785
    .line 786
    invoke-direct/range {v0 .. v13}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/interest/ArticlesState;Ljava/util/ArrayList;ILjava/lang/String;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 787
    .line 788
    .line 789
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 790
    .line 791
    :cond_16
    return-void
.end method

.method public static final SelectionBottomBar(IILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V
    .locals 12

    .line 1
    move-object v4, p2

    .line 2
    move-object/from16 v10, p4

    .line 3
    .line 4
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const v0, 0x6ae0038d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, p1, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

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
    or-int/2addr v0, p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, p1

    .line 29
    :goto_1
    and-int/lit8 v1, p1, 0x30

    .line 30
    .line 31
    const/16 v2, 0x20

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    invoke-virtual/range {p2 .. p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    move v1, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/16 v1, 0x10

    .line 44
    .line 45
    :goto_2
    or-int/2addr v0, v1

    .line 46
    :cond_3
    and-int/lit16 v1, p1, 0x180

    .line 47
    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {p2, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    const/16 v1, 0x100

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/16 v1, 0x80

    .line 60
    .line 61
    :goto_3
    or-int/2addr v0, v1

    .line 62
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 63
    .line 64
    const/16 v3, 0x92

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v11, 0x1

    .line 68
    if-eq v1, v3, :cond_6

    .line 69
    .line 70
    move v1, v11

    .line 71
    goto :goto_4

    .line 72
    :cond_6
    move v1, v7

    .line 73
    :goto_4
    and-int/2addr v0, v11

    .line 74
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_9

    .line 79
    .line 80
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 81
    .line 82
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 83
    .line 84
    invoke-static {v0, v1, p2, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-wide v5, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 89
    .line 90
    ushr-long v1, v5, v2

    .line 91
    .line 92
    xor-long/2addr v1, v5

    .line 93
    long-to-int v1, v1

    .line 94
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 108
    .line 109
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 110
    .line 111
    .line 112
    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 113
    .line 114
    if-eqz v6, :cond_7

    .line 115
    .line 116
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 121
    .line 122
    .line 123
    :goto_5
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {p2, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 129
    .line 130
    invoke-static {p2, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 138
    .line 139
    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 143
    .line 144
    invoke-static {p2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 148
    .line 149
    invoke-static {p2, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 153
    .line 154
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 159
    .line 160
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 161
    .line 162
    const/16 v5, 0x30

    .line 163
    .line 164
    const/4 v6, 0x1

    .line 165
    const/4 v0, 0x0

    .line 166
    const/high16 v1, 0x3f000000    # 0.5f

    .line 167
    .line 168
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 169
    .line 170
    .line 171
    if-lez p0, :cond_8

    .line 172
    .line 173
    move v7, v11

    .line 174
    :cond_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$$ExternalSyntheticLambda9;

    .line 179
    .line 180
    invoke-direct {v1, p0, v10}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$$ExternalSyntheticLambda9;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    const v2, 0x779f1874

    .line 184
    .line 185
    .line 186
    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    const/high16 v8, 0x180000

    .line 191
    .line 192
    const/16 v9, 0x3e

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    const/4 v2, 0x0

    .line 196
    const/4 v3, 0x0

    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    move-object v7, p2

    .line 200
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 201
    .line 202
    .line 203
    move-object v4, v7

    .line 204
    invoke-virtual {p2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 209
    .line 210
    .line 211
    :goto_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_a

    .line 216
    .line 217
    new-instance v1, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda4;

    .line 218
    .line 219
    move-object v2, p3

    .line 220
    invoke-direct {v1, p0, p3, v10, p1}, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda4;-><init>(ILandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;I)V

    .line 221
    .line 222
    .line 223
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 224
    .line 225
    :cond_a
    return-void
.end method

.method public static final TopicFilterChipRow(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 12

    .line 1
    move-object/from16 v9, p4

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const v0, 0x9d8ad73

    .line 10
    .line 11
    .line 12
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    :goto_0
    or-int v0, p5, v0

    .line 26
    .line 27
    or-int/lit8 v0, v0, 0x30

    .line 28
    .line 29
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x100

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v2, 0x80

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v2

    .line 42
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v6, 0x800

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    move v2, v6

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v2, 0x400

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v2

    .line 55
    and-int/lit16 v2, v0, 0x493

    .line 56
    .line 57
    const/16 v7, 0x492

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v10, 0x1

    .line 61
    if-eq v2, v7, :cond_3

    .line 62
    .line 63
    move v2, v10

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v2, v8

    .line 66
    :goto_3
    and-int/lit8 v7, v0, 0x1

    .line 67
    .line 68
    invoke-virtual {v9, v7, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_8

    .line 73
    .line 74
    sget-object p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 75
    .line 76
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/content/Context;

    .line 81
    .line 82
    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 83
    .line 84
    new-instance v2, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    const/16 v7, 0xa

    .line 87
    .line 88
    invoke-direct {v2, v7}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    const/high16 v7, 0x41000000    # 8.0f

    .line 92
    .line 93
    invoke-direct {v11, v7, v10, v2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 94
    .line 95
    .line 96
    const/high16 v2, 0x41800000    # 16.0f

    .line 97
    .line 98
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    and-int/lit16 v7, v0, 0x1c00

    .line 107
    .line 108
    if-ne v7, v6, :cond_4

    .line 109
    .line 110
    move v6, v10

    .line 111
    goto :goto_4

    .line 112
    :cond_4
    move v6, v8

    .line 113
    :goto_4
    or-int/2addr v2, v6

    .line 114
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    or-int/2addr v2, v6

    .line 119
    and-int/lit16 v0, v0, 0x380

    .line 120
    .line 121
    if-ne v0, v3, :cond_5

    .line 122
    .line 123
    move v8, v10

    .line 124
    :cond_5
    or-int v0, v2, v8

    .line 125
    .line 126
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 133
    .line 134
    if-ne v2, v0, :cond_7

    .line 135
    .line 136
    :cond_6
    new-instance v2, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;

    .line 137
    .line 138
    const/16 v7, 0xa

    .line 139
    .line 140
    move-object v3, p0

    .line 141
    move-object v5, p1

    .line 142
    move-object v6, p2

    .line 143
    move-object v4, p3

    .line 144
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    move-object v8, v2

    .line 151
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 152
    .line 153
    const/16 v10, 0x6186

    .line 154
    .line 155
    move-object v3, v11

    .line 156
    const/16 v11, 0x1ea

    .line 157
    .line 158
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 159
    .line 160
    move-object v2, v1

    .line 161
    const/4 v1, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    const/4 v5, 0x0

    .line 164
    const/4 v6, 0x0

    .line 165
    const/4 v7, 0x0

    .line 166
    invoke-static/range {v0 .. v11}, Lkotlin/ExceptionsKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 167
    .line 168
    .line 169
    move-object v4, v0

    .line 170
    goto :goto_5

    .line 171
    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    move-object v4, p1

    .line 175
    :goto_5
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_9

    .line 180
    .line 181
    new-instance v2, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 182
    .line 183
    const/4 v8, 0x7

    .line 184
    move-object v3, p0

    .line 185
    move-object v5, p2

    .line 186
    move-object v6, p3

    .line 187
    move/from16 v7, p5

    .line 188
    .line 189
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    .line 190
    .line 191
    .line 192
    iput-object v2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 193
    .line 194
    :cond_9
    return-void
.end method
