.class public abstract Landroidx/compose/material3/internal/Icons$Filled;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

.field public static final EmptyStackTraceElements:[Ljava/lang/StackTraceElement;

.field public static _arrowDropDown:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _check:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/text/PlatformTextStyle;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/text/PlatformTextStyle;-><init>(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/compose/material3/internal/Icons$Filled;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 16
    .line 17
    sput-object v0, Landroidx/compose/material3/internal/Icons$Filled;->EmptyStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 18
    .line 19
    return-void
.end method

.method public static final BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x4fd2508f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p3

    .line 25
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 42
    .line 43
    const/16 v2, 0x12

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    move v1, v4

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    move v1, v3

    .line 52
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 53
    .line 54
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    and-int/lit8 v0, v0, 0x7e

    .line 61
    .line 62
    invoke-static {p0, p1, p2, v0, v3}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 63
    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 67
    .line 68
    .line 69
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    new-instance v0, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticLambda3;

    .line 76
    .line 77
    invoke-direct {v0, p0, p1, p3, v4}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticLambda3;-><init>(ZLkotlin/Function;II)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    :cond_6
    return-void
.end method

.method public static final BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    move/from16 v9, p5

    .line 6
    .line 7
    move-object/from16 v6, p4

    .line 8
    .line 9
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x48d45f10

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v9, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x2

    .line 32
    :goto_0
    or-int/2addr v2, v9

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object/from16 v0, p0

    .line 35
    .line 36
    move v2, v9

    .line 37
    :goto_1
    and-int/lit8 v3, v9, 0x30

    .line 38
    .line 39
    move-object/from16 v5, p1

    .line 40
    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const/16 v3, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v3, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v2, v3

    .line 55
    :cond_3
    and-int/lit16 v3, v9, 0x180

    .line 56
    .line 57
    if-nez v3, :cond_6

    .line 58
    .line 59
    and-int/lit16 v3, v9, 0x200

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    :goto_3
    if-eqz v3, :cond_5

    .line 73
    .line 74
    const/16 v3, 0x100

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    const/16 v3, 0x80

    .line 78
    .line 79
    :goto_4
    or-int/2addr v2, v3

    .line 80
    :cond_6
    and-int/lit16 v3, v9, 0xc00

    .line 81
    .line 82
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 83
    .line 84
    if-nez v3, :cond_8

    .line 85
    .line 86
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    const/16 v3, 0x800

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_7
    const/16 v3, 0x400

    .line 96
    .line 97
    :goto_5
    or-int/2addr v2, v3

    .line 98
    :cond_8
    and-int/lit16 v3, v9, 0x6000

    .line 99
    .line 100
    if-nez v3, :cond_a

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_9

    .line 108
    .line 109
    const/16 v3, 0x4000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const/16 v3, 0x2000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v2, v3

    .line 115
    :cond_a
    const/high16 v3, 0x30000

    .line 116
    .line 117
    and-int v7, v9, v3

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    if-nez v7, :cond_c

    .line 121
    .line 122
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_b

    .line 127
    .line 128
    const/high16 v7, 0x20000

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_b
    const/high16 v7, 0x10000

    .line 132
    .line 133
    :goto_7
    or-int/2addr v2, v7

    .line 134
    :cond_c
    const/high16 v7, 0x180000

    .line 135
    .line 136
    and-int/2addr v7, v9

    .line 137
    const/4 v12, 0x1

    .line 138
    if-nez v7, :cond_e

    .line 139
    .line 140
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_d

    .line 145
    .line 146
    const/high16 v7, 0x100000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_d
    const/high16 v7, 0x80000

    .line 150
    .line 151
    :goto_8
    or-int/2addr v2, v7

    .line 152
    :cond_e
    const/high16 v7, 0xc00000

    .line 153
    .line 154
    and-int/2addr v7, v9

    .line 155
    if-nez v7, :cond_10

    .line 156
    .line 157
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_f

    .line 162
    .line 163
    const/high16 v7, 0x800000

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_f
    const/high16 v7, 0x400000

    .line 167
    .line 168
    :goto_9
    or-int/2addr v2, v7

    .line 169
    :cond_10
    const/high16 v7, 0x6000000

    .line 170
    .line 171
    and-int/2addr v7, v9

    .line 172
    if-nez v7, :cond_12

    .line 173
    .line 174
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_11

    .line 179
    .line 180
    const/high16 v7, 0x4000000

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_11
    const/high16 v7, 0x2000000

    .line 184
    .line 185
    :goto_a
    or-int/2addr v2, v7

    .line 186
    :cond_12
    move v13, v2

    .line 187
    const v2, 0x2492493

    .line 188
    .line 189
    .line 190
    and-int/2addr v2, v13

    .line 191
    const v7, 0x2492492

    .line 192
    .line 193
    .line 194
    if-eq v2, v7, :cond_13

    .line 195
    .line 196
    move v2, v12

    .line 197
    goto :goto_b

    .line 198
    :cond_13
    move v2, v11

    .line 199
    :goto_b
    and-int/lit8 v7, v13, 0x1

    .line 200
    .line 201
    invoke-virtual {v6, v7, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_1e

    .line 206
    .line 207
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 212
    .line 213
    if-ne v2, v14, :cond_14

    .line 214
    .line 215
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_14
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 223
    .line 224
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    if-ne v7, v14, :cond_15

    .line 229
    .line 230
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 231
    .line 232
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :cond_15
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 240
    .line 241
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 242
    .line 243
    invoke-static {v15, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    move/from16 p4, v3

    .line 248
    .line 249
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-static {v6, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 262
    .line 263
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 267
    .line 268
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 269
    .line 270
    .line 271
    iget-boolean v11, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 272
    .line 273
    if-eqz v11, :cond_16

    .line 274
    .line 275
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 276
    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_16
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 280
    .line 281
    .line 282
    :goto_c
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 283
    .line 284
    invoke-static {v6, v15, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 285
    .line 286
    .line 287
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 288
    .line 289
    invoke-static {v6, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 290
    .line 291
    .line 292
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 293
    .line 294
    iget-boolean v11, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 295
    .line 296
    if-nez v11, :cond_17

    .line 297
    .line 298
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    if-nez v11, :cond_18

    .line 311
    .line 312
    :cond_17
    invoke-static {v3, v6, v3, v10}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 313
    .line 314
    .line 315
    :cond_18
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 316
    .line 317
    invoke-static {v6, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eqz v3, :cond_19

    .line 325
    .line 326
    const v3, -0x70ba143f

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 330
    .line 331
    .line 332
    and-int/lit8 v3, v13, 0xe

    .line 333
    .line 334
    or-int v3, v3, p4

    .line 335
    .line 336
    shr-int/lit8 v4, v13, 0x3

    .line 337
    .line 338
    and-int/lit8 v4, v4, 0x70

    .line 339
    .line 340
    or-int/2addr v3, v4

    .line 341
    shr-int/lit8 v4, v13, 0x6

    .line 342
    .line 343
    and-int/lit16 v4, v4, 0x380

    .line 344
    .line 345
    or-int/2addr v3, v4

    .line 346
    shl-int/lit8 v4, v13, 0xf

    .line 347
    .line 348
    const/high16 v10, 0x380000

    .line 349
    .line 350
    and-int/2addr v4, v10

    .line 351
    or-int/2addr v3, v4

    .line 352
    move-object v4, v7

    .line 353
    move v7, v3

    .line 354
    const/4 v3, 0x0

    .line 355
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/internal/Icons$Filled;->TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipStateImpl;Lkotlinx/coroutines/CoroutineScope;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 356
    .line 357
    .line 358
    const/4 v0, 0x0

    .line 359
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 360
    .line 361
    .line 362
    goto :goto_d

    .line 363
    :cond_19
    move-object v4, v7

    .line 364
    const/4 v0, 0x0

    .line 365
    const v2, -0x70b44974

    .line 366
    .line 367
    .line 368
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 372
    .line 373
    .line 374
    :goto_d
    shr-int/lit8 v2, v13, 0x12

    .line 375
    .line 376
    and-int/lit8 v2, v2, 0xe

    .line 377
    .line 378
    or-int/lit16 v2, v2, 0x180

    .line 379
    .line 380
    shr-int/lit8 v3, v13, 0x3

    .line 381
    .line 382
    and-int/lit8 v3, v3, 0x70

    .line 383
    .line 384
    or-int/2addr v2, v3

    .line 385
    shr-int/lit8 v3, v13, 0xc

    .line 386
    .line 387
    and-int/lit16 v3, v3, 0x1c00

    .line 388
    .line 389
    or-int/2addr v2, v3

    .line 390
    const v3, 0xe000

    .line 391
    .line 392
    .line 393
    shl-int/lit8 v5, v13, 0x3

    .line 394
    .line 395
    and-int/2addr v3, v5

    .line 396
    or-int/2addr v2, v3

    .line 397
    shr-int/lit8 v3, v13, 0x9

    .line 398
    .line 399
    const/high16 v5, 0x70000

    .line 400
    .line 401
    and-int/2addr v3, v5

    .line 402
    or-int/2addr v2, v3

    .line 403
    invoke-static {v1, v4, v8, v6, v2}, Landroidx/compose/material3/internal/Icons$Filled;->WrappedAnchor(Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 404
    .line 405
    .line 406
    const/4 v2, 0x1

    .line 407
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 408
    .line 409
    .line 410
    and-int/lit16 v3, v13, 0x380

    .line 411
    .line 412
    const/16 v4, 0x100

    .line 413
    .line 414
    if-eq v3, v4, :cond_1b

    .line 415
    .line 416
    and-int/lit16 v3, v13, 0x200

    .line 417
    .line 418
    if-eqz v3, :cond_1a

    .line 419
    .line 420
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-eqz v3, :cond_1a

    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_1a
    move v11, v0

    .line 428
    goto :goto_f

    .line 429
    :cond_1b
    :goto_e
    move v11, v2

    .line 430
    :goto_f
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    if-nez v11, :cond_1c

    .line 435
    .line 436
    if-ne v0, v14, :cond_1d

    .line 437
    .line 438
    :cond_1c
    new-instance v0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 439
    .line 440
    const/4 v2, 0x5

    .line 441
    invoke-direct {v0, v2, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    :cond_1d
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 448
    .line 449
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 450
    .line 451
    .line 452
    goto :goto_10

    .line 453
    :cond_1e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 454
    .line 455
    .line 456
    :goto_10
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 457
    .line 458
    .line 459
    move-result-object v7

    .line 460
    if-eqz v7, :cond_1f

    .line 461
    .line 462
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 463
    .line 464
    const/4 v6, 0x1

    .line 465
    move-object/from16 v2, p1

    .line 466
    .line 467
    move-object v3, v1

    .line 468
    move-object v4, v8

    .line 469
    move v5, v9

    .line 470
    move-object/from16 v1, p0

    .line 471
    .line 472
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 473
    .line 474
    .line 475
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 476
    .line 477
    :cond_1f
    return-void
.end method

.method public static final CommonDecorationBox(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 45

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v5, p11

    move/from16 v6, p13

    move/from16 v7, p14

    .line 1
    move-object/from16 v8, p12

    check-cast v8, Landroidx/compose/runtime/GapComposer;

    const v9, 0x20979528

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v9, v6, 0x6

    const/4 v12, 0x1

    if-nez v9, :cond_1

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v6

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    and-int/lit8 v16, v6, 0x30

    const/16 v17, 0x10

    const/16 v18, 0x20

    move-object/from16 v11, p0

    if-nez v16, :cond_3

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    move/from16 v16, v18

    goto :goto_2

    :cond_2
    move/from16 v16, v17

    :goto_2
    or-int v9, v9, v16

    :cond_3
    and-int/lit16 v10, v6, 0x180

    const/16 v16, 0x80

    const/16 v19, 0x100

    if-nez v10, :cond_5

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move/from16 v20, v19

    goto :goto_3

    :cond_4
    move/from16 v20, v16

    :goto_3
    or-int v9, v9, v20

    goto :goto_4

    :cond_5
    move-object/from16 v10, p1

    :goto_4
    and-int/lit16 v12, v6, 0xc00

    const/16 v20, 0x400

    move/from16 v21, v9

    if-nez v12, :cond_7

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_5

    :cond_6
    move/from16 v12, v20

    :goto_5
    or-int v12, v21, v12

    move/from16 v21, v12

    :cond_7
    and-int/lit16 v12, v6, 0x6000

    const/16 v22, 0x2000

    const/16 v24, 0x4000

    if-nez v12, :cond_9

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v12, v24

    goto :goto_6

    :cond_8
    move/from16 v12, v22

    :goto_6
    or-int v21, v21, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int v25, v6, v12

    const/high16 v26, 0x10000

    const/high16 v27, 0x20000

    const/4 v9, 0x0

    if-nez v25, :cond_b

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    move/from16 v25, v27

    goto :goto_7

    :cond_a
    move/from16 v25, v26

    :goto_7
    or-int v21, v21, v25

    :cond_b
    const/high16 v25, 0x180000

    and-int v28, v6, v25

    const/high16 v29, 0x80000

    const/high16 v30, 0x100000

    if-nez v28, :cond_d

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    move/from16 v28, v30

    goto :goto_8

    :cond_c
    move/from16 v28, v29

    :goto_8
    or-int v21, v21, v28

    :cond_d
    const/high16 v28, 0xc00000

    and-int v31, v6, v28

    const/high16 v32, 0x400000

    const/high16 v33, 0x800000

    if-nez v31, :cond_f

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v33

    goto :goto_9

    :cond_e
    move/from16 v31, v32

    :goto_9
    or-int v21, v21, v31

    :cond_f
    const/high16 v31, 0x6000000

    and-int v31, v6, v31

    if-nez v31, :cond_11

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    const/high16 v31, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v31, 0x2000000

    :goto_a
    or-int v21, v21, v31

    :cond_11
    const/high16 v31, 0x30000000

    and-int v31, v6, v31

    if-nez v31, :cond_13

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    const/high16 v31, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v31, 0x10000000

    :goto_b
    or-int v21, v21, v31

    :cond_13
    move/from16 v34, v21

    and-int/lit8 v21, v7, 0x6

    if-nez v21, :cond_15

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x4

    goto :goto_c

    :cond_14
    const/4 v9, 0x2

    :goto_c
    or-int/2addr v9, v7

    goto :goto_d

    :cond_15
    move v9, v7

    :goto_d
    and-int/lit8 v21, v7, 0x30

    move/from16 v3, p5

    if-nez v21, :cond_17

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_16

    move/from16 v17, v18

    :cond_16
    or-int v9, v9, v17

    :cond_17
    move/from16 v17, v12

    and-int/lit16 v12, v7, 0x180

    if-nez v12, :cond_19

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_18

    move/from16 v16, v19

    :cond_18
    or-int v9, v9, v16

    :cond_19
    and-int/lit16 v12, v7, 0xc00

    if-nez v12, :cond_1b

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v20, 0x800

    :cond_1a
    or-int v9, v9, v20

    :cond_1b
    and-int/lit16 v12, v7, 0x6000

    if-nez v12, :cond_1d

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    move/from16 v22, v24

    :cond_1c
    or-int v9, v9, v22

    :cond_1d
    and-int v12, v7, v17

    if-nez v12, :cond_1f

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    move/from16 v26, v27

    :cond_1e
    or-int v9, v9, v26

    :cond_1f
    and-int v12, v7, v25

    if-nez v12, :cond_21

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    move/from16 v29, v30

    :cond_20
    or-int v9, v9, v29

    :cond_21
    and-int v12, v7, v28

    if-nez v12, :cond_23

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    move/from16 v32, v33

    :cond_22
    or-int v9, v9, v32

    :cond_23
    move/from16 v24, v9

    const v9, 0x12492493

    move/from16 v12, v34

    and-int/2addr v9, v12

    const v1, 0x12492492

    if-ne v9, v1, :cond_25

    const v1, 0x492493

    and-int v1, v24, v1

    const v9, 0x492492

    if-eq v1, v9, :cond_24

    goto :goto_e

    :cond_24
    const/4 v1, 0x0

    goto :goto_f

    :cond_25
    :goto_e
    const/4 v1, 0x1

    :goto_f
    and-int/lit8 v9, v12, 0x1

    invoke-virtual {v8, v9, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_5c

    shr-int/lit8 v1, v24, 0xc

    and-int/lit8 v1, v1, 0xe

    .line 2
    invoke-static {v13, v8, v1}, Lcom/fsck/k9/sasl/OAuthBearer;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3
    sget-object v9, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    sget-object v3, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    move/from16 v26, v1

    sget-object v1, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    if-eqz v26, :cond_26

    move-object v2, v1

    goto :goto_10

    .line 4
    :cond_26
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_27

    move-object v2, v3

    goto :goto_10

    :cond_27
    move-object v2, v9

    :goto_10
    if-nez p6, :cond_28

    .line 5
    iget-wide v4, v15, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    goto :goto_11

    :cond_28
    if-eqz p7, :cond_29

    .line 6
    iget-wide v4, v15, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    goto :goto_11

    :cond_29
    if-eqz v26, :cond_2a

    .line 7
    iget-wide v4, v15, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    goto :goto_11

    .line 8
    :cond_2a
    iget-wide v4, v15, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    .line 9
    :goto_11
    sget-object v6, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 11
    check-cast v6, Landroidx/compose/material3/Typography;

    .line 12
    iget-object v7, v6, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 13
    iget-object v6, v6, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v28, v6

    move-object/from16 v27, v7

    .line 14
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    .line 15
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 16
    invoke-static {v6, v7, v10, v11}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 17
    :cond_2b
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_2d

    :cond_2c
    const/4 v6, 0x1

    goto :goto_12

    :cond_2d
    const/4 v6, 0x0

    .line 18
    :goto_12
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v10

    const-wide/16 v16, 0x10

    if-eqz v6, :cond_2f

    cmp-long v7, v10, v16

    if-eqz v7, :cond_2e

    goto :goto_13

    :cond_2e
    move-wide v10, v4

    .line 19
    :cond_2f
    :goto_13
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v18

    if-eqz v6, :cond_31

    cmp-long v7, v18, v16

    if-eqz v7, :cond_30

    goto :goto_14

    :cond_30
    move-wide/from16 v29, v4

    goto :goto_15

    :cond_31
    :goto_14
    move-wide/from16 v29, v18

    :goto_15
    if-eqz p3, :cond_32

    const/4 v7, 0x1

    :goto_16
    move/from16 v31, v6

    goto :goto_17

    :cond_32
    const/4 v7, 0x0

    goto :goto_16

    .line 20
    :goto_17
    const-string v6, "TextFieldInputState"

    move/from16 v32, v7

    const/16 v7, 0x30

    move-wide/from16 v33, v10

    const/4 v10, 0x0

    invoke-static {v2, v6, v8, v7, v10}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v2

    iget-object v6, v2, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    iget-object v7, v2, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 21
    sget-object v10, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v10, v8}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v19

    .line 22
    sget-object v20, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 23
    invoke-virtual {v6}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    .line 24
    check-cast v10, Landroidx/compose/material3/internal/InputPhase;

    const v11, -0x559dce72

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 25
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v35, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    if-eqz v10, :cond_33

    const/4 v11, 0x1

    if-eq v10, v11, :cond_35

    const/4 v11, 0x2

    if-ne v10, v11, :cond_34

    :cond_33
    move/from16 v10, v36

    :goto_18
    const/4 v11, 0x0

    goto :goto_19

    :cond_34
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_35
    if-eqz v32, :cond_33

    move/from16 v10, v35

    goto :goto_18

    .line 26
    :goto_19
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 27
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 28
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 29
    check-cast v10, Landroidx/compose/material3/internal/InputPhase;

    const v11, -0x559dce72

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 30
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_36

    const/4 v11, 0x1

    if-eq v10, v11, :cond_38

    const/4 v11, 0x2

    if-ne v10, v11, :cond_37

    :cond_36
    move/from16 v10, v36

    :goto_1a
    const/4 v11, 0x0

    goto :goto_1b

    :cond_37
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_38
    if-eqz v32, :cond_36

    move/from16 v10, v35

    goto :goto_1a

    .line 31
    :goto_1b
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 32
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    .line 33
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v10, -0x2a50698e

    .line 34
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 35
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/high16 v22, 0x30000

    move-object/from16 v16, v2

    move-object/from16 v21, v8

    .line 36
    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v41

    move-object/from16 v2, v21

    .line 37
    sget-object v8, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v8, v2}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v10

    .line 38
    sget-object v11, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v11, v2}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v11

    .line 39
    invoke-virtual {v6}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    move-result-object v17

    .line 40
    check-cast v17, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v37, v6

    const v6, -0x4128d333

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 41
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_3c

    move-object/from16 v38, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3a

    const/4 v7, 0x2

    if-ne v6, v7, :cond_39

    :goto_1c
    move/from16 v6, v35

    :goto_1d
    const/4 v7, 0x0

    goto :goto_1f

    :cond_39
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_3a
    if-eqz v32, :cond_3b

    goto :goto_1c

    :cond_3b
    :goto_1e
    move/from16 v6, v36

    goto :goto_1d

    :cond_3c
    move-object/from16 v38, v7

    goto :goto_1e

    .line 42
    :goto_1f
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 43
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 44
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 45
    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    const v7, -0x4128d333

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 46
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3e

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3d

    :goto_20
    move/from16 v6, v35

    :goto_21
    const/4 v7, 0x0

    goto :goto_22

    :cond_3d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_3e
    if-eqz v32, :cond_3f

    goto :goto_20

    :cond_3f
    move/from16 v6, v36

    goto :goto_21

    .line 47
    :goto_22
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 48
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    .line 49
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v6

    const v7, -0x3aa6c997

    .line 50
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 51
    invoke-interface {v6, v1, v3}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v7

    if-eqz v7, :cond_41

    :cond_40
    move-object/from16 v19, v10

    :goto_23
    const/4 v7, 0x0

    goto :goto_24

    .line 52
    :cond_41
    invoke-interface {v6, v3, v1}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 53
    invoke-interface {v6, v9, v3}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_42
    move-object/from16 v19, v11

    goto :goto_23

    .line 54
    :goto_24
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v21, v2

    .line 55
    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v1

    .line 56
    invoke-virtual/range {v37 .. v37}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    move-result-object v3

    .line 57
    check-cast v3, Landroidx/compose/material3/internal/InputPhase;

    const v6, -0x4b028119

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 58
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_43

    const/4 v7, 0x1

    if-eq v3, v7, :cond_45

    const/4 v7, 0x2

    if-ne v3, v7, :cond_44

    :cond_43
    move/from16 v3, v36

    :goto_25
    const/4 v7, 0x0

    goto :goto_26

    :cond_44
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_45
    if-eqz v32, :cond_43

    move/from16 v3, v35

    goto :goto_25

    .line 59
    :goto_26
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 60
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 61
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 62
    check-cast v3, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 63
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_46

    const/4 v7, 0x1

    if-eq v3, v7, :cond_48

    const/4 v7, 0x2

    if-ne v3, v7, :cond_47

    :cond_46
    move/from16 v35, v36

    :goto_27
    const/4 v7, 0x0

    goto :goto_28

    :cond_47
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_48
    if-eqz v32, :cond_46

    goto :goto_27

    .line 64
    :goto_28
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 65
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    .line 66
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v3, 0x7ebca8cb

    .line 67
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 68
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v21, v2

    move-object/from16 v19, v10

    .line 69
    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v2

    move-object/from16 v3, v21

    .line 70
    invoke-static {v8, v3}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v19

    .line 71
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 72
    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    const v7, -0xc5f552

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 73
    sget-object v8, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_49

    move-wide/from16 v9, v33

    :goto_29
    const/4 v11, 0x0

    goto :goto_2a

    :cond_49
    move-wide/from16 v9, v29

    goto :goto_29

    .line 74
    :goto_2a
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 75
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v6

    .line 76
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 77
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .line 78
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v9, :cond_4a

    if-ne v10, v11, :cond_4b

    .line 79
    :cond_4a
    sget-object v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$5:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    new-instance v10, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    const/4 v7, 0x2

    invoke-direct {v10, v7, v6}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 80
    new-instance v6, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v6, v9, v10}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 81
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v10, v6

    .line 82
    :cond_4b
    move-object/from16 v20, v10

    check-cast v20, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 83
    invoke-virtual/range {v37 .. v37}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    .line 84
    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    const v7, -0xc5f552

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 85
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_4c

    move-wide/from16 v9, v33

    :goto_2b
    const/4 v6, 0x0

    goto :goto_2c

    :cond_4c
    move-wide/from16 v9, v29

    goto :goto_2b

    .line 86
    :goto_2c
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 87
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v6, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 88
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 89
    check-cast v9, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 90
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4d

    move-wide/from16 v7, v33

    :goto_2d
    const/4 v10, 0x0

    goto :goto_2e

    :cond_4d
    move-wide/from16 v7, v29

    goto :goto_2d

    .line 91
    :goto_2e
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 92
    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 93
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v7, 0x747961b9

    .line 94
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 95
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v21, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    .line 96
    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v3

    move-object/from16 v6, v21

    .line 97
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 98
    check-cast v7, Landroidx/compose/material3/internal/InputPhase;

    const v7, -0x1bb38f5d

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 99
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 100
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v8

    .line 101
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 102
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_4e

    if-ne v10, v11, :cond_4f

    .line 103
    :cond_4e
    sget-object v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$5:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    new-instance v10, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    const/4 v7, 0x2

    invoke-direct {v10, v7, v8}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 104
    new-instance v7, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v7, v9, v10}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 105
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v10, v7

    .line 106
    :cond_4f
    move-object/from16 v20, v10

    check-cast v20, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 107
    invoke-virtual/range {v37 .. v37}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    move-result-object v7

    .line 108
    check-cast v7, Landroidx/compose/material3/internal/InputPhase;

    const v7, -0x1bb38f5d

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v10, 0x0

    .line 109
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 110
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 111
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 112
    check-cast v9, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 113
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 114
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 115
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v4, 0x46fc0e6e

    .line 116
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 117
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v21, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 118
    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v8

    move-object/from16 v4, v21

    .line 119
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v11, :cond_50

    .line 120
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    .line 121
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 123
    :cond_50
    check-cast v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    const/16 v16, 0x0

    if-nez p3, :cond_51

    const v3, -0x70c16e39

    .line 124
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v6, 0x0

    .line 125
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v13, v4

    move-object v3, v11

    move/from16 v44, v12

    move-object/from16 v4, v16

    move-object/from16 v7, v41

    const/16 v23, 0x1

    goto :goto_2f

    :cond_51
    const/4 v6, 0x0

    const v7, -0x70c16e38

    .line 126
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    move-object/from16 v21, v4

    .line 127
    new-instance v4, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;

    move-object v10, v3

    move v14, v6

    move-object v3, v11

    move/from16 v44, v12

    move-object/from16 v13, v21

    move-object/from16 v6, v28

    move/from16 v9, v31

    move-object/from16 v7, v41

    const/16 v23, 0x1

    move-object/from16 v11, p3

    move-object v12, v5

    move-object/from16 v5, v27

    invoke-direct/range {v4 .. v12}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;ZLandroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V

    const v5, -0x402b4ec0

    invoke-static {v5, v4, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    .line 128
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 129
    :goto_2f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    if-ne v5, v3, :cond_52

    .line 130
    sget-object v5, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v8, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;

    invoke-direct {v8, v1, v6}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-static {v5, v8}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v5

    .line 131
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    :cond_52
    check-cast v5, Landroidx/compose/runtime/State;

    const v1, -0x70aa6c96

    .line 133
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v10, 0x0

    .line 134
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 135
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_53

    .line 136
    sget-object v1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v5, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;

    const/4 v8, 0x4

    invoke-direct {v5, v2, v8}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-static {v1, v5}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    .line 137
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    :cond_53
    check-cast v1, Landroidx/compose/runtime/State;

    const v1, -0x709f7ed6

    .line 139
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v10, 0x0

    .line 140
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const v1, -0x7096b376

    .line 141
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 142
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const v1, -0x7094085f

    .line 143
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 144
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    if-nez p6, :cond_54

    .line 145
    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    goto :goto_30

    :cond_54
    if-eqz p7, :cond_55

    .line 146
    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    goto :goto_30

    :cond_55
    if-eqz v26, :cond_56

    .line 147
    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    goto :goto_30

    .line 148
    :cond_56
    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    :goto_30
    if-nez v0, :cond_57

    const v1, -0x708fc380

    .line 149
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v10, 0x0

    .line 150
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v1, v16

    goto :goto_31

    :cond_57
    const/4 v10, 0x0

    const v5, -0x708fc37f

    .line 151
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 152
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;

    invoke-direct {v5, v1, v2, v0}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v1, 0x4f8b22f9

    invoke-static {v1, v5, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    .line 153
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_31
    const v2, -0x708b48fc

    .line 154
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 155
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const v2, -0x7075f34a

    .line 156
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 157
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_58

    .line 158
    new-instance v2, Landroidx/compose/ui/geometry/Size;

    const-wide/16 v8, 0x0

    invoke-direct {v2, v8, v9}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 159
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    .line 160
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 161
    :cond_58
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 162
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;

    move-object/from16 v8, p2

    move-object/from16 v14, p9

    move-object/from16 v12, p11

    invoke-direct {v5, v2, v8, v14, v12}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v9, 0x1f7a6892

    invoke-static {v9, v5, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    .line 163
    new-instance v37, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    const/16 v38, 0x0

    const/16 v39, 0x4

    .line 164
    const-class v40, Landroidx/compose/runtime/State;

    const-string/jumbo v42, "value"

    const-string v43, "getValue()Ljava/lang/Object;"

    move-object/from16 v41, v7

    invoke-direct/range {v37 .. v43}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v37

    .line 165
    new-instance v9, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;

    invoke-direct {v9, v5}, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;)V

    move/from16 p12, v6

    move/from16 v5, v44

    and-int/lit16 v6, v5, 0x1c00

    const/16 v10, 0x800

    if-ne v6, v10, :cond_59

    goto :goto_32

    :cond_59
    const/16 v23, 0x0

    .line 166
    :goto_32
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int v6, v23, v6

    .line 167
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_5a

    if-ne v10, v3, :cond_5b

    .line 168
    :cond_5a
    new-instance v10, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    const/16 v3, 0x14

    invoke-direct {v10, v8, v7, v2, v3}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 169
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 170
    :cond_5b
    check-cast v10, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v2, v5, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    shl-int/lit8 v3, v24, 0x15

    const/high16 v6, 0xe000000

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    shl-int/lit8 v3, v5, 0x12

    const/high16 v5, 0x70000000

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const v3, 0xe000

    shr-int/lit8 v5, v24, 0x3

    and-int/2addr v3, v5

    or-int/lit16 v3, v3, 0x180

    move v15, v2

    move-object v2, v4

    move-object v4, v1

    move-object/from16 v1, v16

    move/from16 v16, v3

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v12, v1

    move-object v0, v14

    move-object v14, v13

    move-object v13, v0

    move-object/from16 v0, p1

    move/from16 v7, p5

    .line 171
    invoke-static/range {v0 .. v16}, Landroidx/compose/material3/CardKt;->OutlinedTextFieldLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v14

    const/4 v10, 0x0

    .line 172
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_33

    :cond_5c
    move-object v2, v8

    .line 173
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 174
    :goto_33
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_5d

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 175
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5d
    return-void
.end method

.method public static final Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v5, p5

    .line 2
    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x17a3cff9

    .line 8
    .line 9
    .line 10
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v10, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, v5

    .line 23
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v1, 0x10

    .line 33
    .line 34
    :goto_1
    or-int/2addr v0, v1

    .line 35
    and-int/lit16 v1, v5, 0x180

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v10, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    :cond_3
    and-int/lit16 v1, v0, 0x93

    .line 52
    .line 53
    const/16 v2, 0x92

    .line 54
    .line 55
    if-eq v1, v2, :cond_4

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/4 v1, 0x0

    .line 60
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 61
    .line 62
    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    and-int/lit16 v11, v0, 0x3fe

    .line 69
    .line 70
    move-wide v6, p0

    .line 71
    move-object v8, p2

    .line 72
    move-object v9, p3

    .line 73
    invoke-static/range {v6 .. v11}, Landroidx/compose/material3/internal/Icons$Filled;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 78
    .line 79
    .line 80
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    if-eqz v7, :cond_6

    .line 85
    .line 86
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda7;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    move-wide v1, p0

    .line 90
    move-object v3, p2

    .line 91
    move-object v4, p3

    .line 92
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda7;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    .line 93
    .line 94
    .line 95
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 96
    .line 97
    :cond_6
    return-void
.end method

.method public static final Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x2330c171

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit8 v1, v0, 0x13

    .line 32
    .line 33
    const/16 v2, 0x12

    .line 34
    .line 35
    if-eq v1, v2, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v1, 0x0

    .line 40
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 49
    .line 50
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 51
    .line 52
    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    and-int/lit8 v0, v0, 0x70

    .line 60
    .line 61
    const/16 v2, 0x8

    .line 62
    .line 63
    or-int/2addr v0, v2

    .line 64
    invoke-static {v1, p2, p3, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    if-eqz p3, :cond_4

    .line 76
    .line 77
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;

    .line 78
    .line 79
    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;-><init>(JLkotlin/jvm/functions/Function2;I)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method public static final ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x28d355e8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p5, 0x6

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p4, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    or-int/2addr v0, p5

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, p5

    .line 26
    :goto_1
    and-int/lit8 v2, p5, 0x30

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v2, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v2

    .line 42
    :cond_3
    and-int/lit16 v2, p5, 0x180

    .line 43
    .line 44
    if-nez v2, :cond_5

    .line 45
    .line 46
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    const/16 v2, 0x100

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/16 v2, 0x80

    .line 56
    .line 57
    :goto_3
    or-int/2addr v0, v2

    .line 58
    :cond_5
    and-int/lit16 v2, v0, 0x93

    .line 59
    .line 60
    const/16 v3, 0x92

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eq v2, v3, :cond_6

    .line 65
    .line 66
    move v2, v5

    .line 67
    goto :goto_4

    .line 68
    :cond_6
    move v2, v4

    .line 69
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 70
    .line 71
    invoke-virtual {p4, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_7

    .line 76
    .line 77
    sget-object v2, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 78
    .line 79
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    .line 84
    .line 85
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    sget-object v6, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 90
    .line 91
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 92
    .line 93
    invoke-direct {v7, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 105
    .line 106
    aput-object v6, v1, v4

    .line 107
    .line 108
    aput-object v2, v1, v5

    .line 109
    .line 110
    shr-int/lit8 v0, v0, 0x3

    .line 111
    .line 112
    and-int/lit8 v0, v0, 0x70

    .line 113
    .line 114
    const/16 v2, 0x8

    .line 115
    .line 116
    or-int/2addr v0, v2

    .line 117
    invoke-static {v1, p3, p4, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 122
    .line 123
    .line 124
    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    if-eqz p4, :cond_8

    .line 129
    .line 130
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda7;

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    move-wide v1, p0

    .line 134
    move-object v3, p2

    .line 135
    move-object v4, p3

    .line 136
    move v5, p5

    .line 137
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda7;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 141
    .line 142
    :cond_8
    return-void
.end method

.method public static final TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipStateImpl;Lkotlinx/coroutines/CoroutineScope;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    move-object v4, p6

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p6, -0x5443a8da

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p6}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p6, p7, 0x6

    .line 11
    .line 12
    if-nez p6, :cond_1

    .line 13
    .line 14
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p6

    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    const/4 p6, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p6, 0x2

    .line 23
    :goto_0
    or-int/2addr p6, p7

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p6, p7

    .line 26
    :goto_1
    and-int/lit8 v0, p7, 0x30

    .line 27
    .line 28
    const/16 v1, 0x20

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    and-int/lit8 v0, p7, 0x40

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    move v0, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    const/16 v0, 0x10

    .line 50
    .line 51
    :goto_3
    or-int/2addr p6, v0

    .line 52
    :cond_4
    and-int/lit16 v0, p7, 0x180

    .line 53
    .line 54
    const/16 v2, 0x100

    .line 55
    .line 56
    if-nez v0, :cond_6

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    move v0, v2

    .line 66
    goto :goto_4

    .line 67
    :cond_5
    const/16 v0, 0x80

    .line 68
    .line 69
    :goto_4
    or-int/2addr p6, v0

    .line 70
    :cond_6
    and-int/lit16 v0, p7, 0xc00

    .line 71
    .line 72
    if-nez v0, :cond_8

    .line 73
    .line 74
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    const/16 v0, 0x800

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_7
    const/16 v0, 0x400

    .line 84
    .line 85
    :goto_5
    or-int/2addr p6, v0

    .line 86
    :cond_8
    and-int/lit16 v0, p7, 0x6000

    .line 87
    .line 88
    if-nez v0, :cond_a

    .line 89
    .line 90
    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_9

    .line 95
    .line 96
    const/16 v0, 0x4000

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_9
    const/16 v0, 0x2000

    .line 100
    .line 101
    :goto_6
    or-int/2addr p6, v0

    .line 102
    :cond_a
    const/high16 v0, 0x30000

    .line 103
    .line 104
    and-int/2addr v0, p7

    .line 105
    const/high16 v3, 0x20000

    .line 106
    .line 107
    if-nez v0, :cond_c

    .line 108
    .line 109
    invoke-virtual {v4, p4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_b

    .line 114
    .line 115
    move v0, v3

    .line 116
    goto :goto_7

    .line 117
    :cond_b
    const/high16 v0, 0x10000

    .line 118
    .line 119
    :goto_7
    or-int/2addr p6, v0

    .line 120
    :cond_c
    const/high16 v0, 0x180000

    .line 121
    .line 122
    and-int/2addr v0, p7

    .line 123
    if-nez v0, :cond_e

    .line 124
    .line 125
    invoke-virtual {v4, p5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_d

    .line 130
    .line 131
    const/high16 v0, 0x100000

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_d
    const/high16 v0, 0x80000

    .line 135
    .line 136
    :goto_8
    or-int/2addr p6, v0

    .line 137
    :cond_e
    const v0, 0x92493

    .line 138
    .line 139
    .line 140
    and-int/2addr v0, p6

    .line 141
    const v5, 0x92492

    .line 142
    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v7, 0x1

    .line 146
    if-eq v0, v5, :cond_f

    .line 147
    .line 148
    move v0, v7

    .line 149
    goto :goto_9

    .line 150
    :cond_f
    move v0, v6

    .line 151
    :goto_9
    and-int/lit8 v5, p6, 0x1

    .line 152
    .line 153
    invoke-virtual {v4, v5, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_16

    .line 158
    .line 159
    const v0, 0x7f12064e

    .line 160
    .line 161
    .line 162
    invoke-static {v4, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    and-int/lit16 v5, p6, 0x380

    .line 167
    .line 168
    if-ne v5, v2, :cond_10

    .line 169
    .line 170
    move v2, v7

    .line 171
    goto :goto_a

    .line 172
    :cond_10
    move v2, v6

    .line 173
    :goto_a
    and-int/lit8 v5, p6, 0x70

    .line 174
    .line 175
    if-eq v5, v1, :cond_12

    .line 176
    .line 177
    and-int/lit8 v1, p6, 0x40

    .line 178
    .line 179
    if-eqz v1, :cond_11

    .line 180
    .line 181
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_11

    .line 186
    .line 187
    goto :goto_b

    .line 188
    :cond_11
    move v1, v6

    .line 189
    goto :goto_c

    .line 190
    :cond_12
    :goto_b
    move v1, v7

    .line 191
    :goto_c
    or-int/2addr v1, v2

    .line 192
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    or-int/2addr v1, v2

    .line 197
    const/high16 v2, 0x70000

    .line 198
    .line 199
    and-int/2addr v2, p6

    .line 200
    if-ne v2, v3, :cond_13

    .line 201
    .line 202
    move v6, v7

    .line 203
    :cond_13
    or-int/2addr v1, v6

    .line 204
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-nez v1, :cond_14

    .line 209
    .line 210
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 211
    .line 212
    if-ne v2, v1, :cond_15

    .line 213
    .line 214
    :cond_14
    new-instance v2, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 215
    .line 216
    const/4 v1, 0x6

    .line 217
    invoke-direct {v2, p1, p2, p4, v1}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_15
    move-object v1, v2

    .line 224
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 225
    .line 226
    new-instance v2, Landroidx/compose/ui/window/PopupProperties;

    .line 227
    .line 228
    invoke-direct {v2, p3}, Landroidx/compose/ui/window/PopupProperties;-><init>(Z)V

    .line 229
    .line 230
    .line 231
    new-instance v3, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 232
    .line 233
    const/4 v5, 0x5

    .line 234
    invoke-direct {v3, v5, v0, p5}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    const v0, -0x4cc0d43c

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v3, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    and-int/lit8 p6, p6, 0xe

    .line 245
    .line 246
    or-int/lit16 v5, p6, 0xc00

    .line 247
    .line 248
    const/4 v6, 0x0

    .line 249
    move-object v0, p0

    .line 250
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 251
    .line 252
    .line 253
    goto :goto_d

    .line 254
    :cond_16
    move-object v0, p0

    .line 255
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 256
    .line 257
    .line 258
    :goto_d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    if-eqz v1, :cond_17

    .line 263
    .line 264
    new-instance p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 265
    .line 266
    move-object p6, p5

    .line 267
    move-object p5, p4

    .line 268
    move p4, p3

    .line 269
    move-object p3, p2

    .line 270
    move-object p2, p1

    .line 271
    move-object p1, v0

    .line 272
    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipStateImpl;Lkotlinx/coroutines/CoroutineScope;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 273
    .line 274
    .line 275
    iput-object p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 276
    .line 277
    :cond_17
    return-void
.end method

.method public static final WrappedAnchor(Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x6fa740c0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int/2addr v0, p4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, p4

    .line 26
    :goto_1
    and-int/lit8 v2, p4, 0x30

    .line 27
    .line 28
    const/16 v3, 0x10

    .line 29
    .line 30
    if-nez v2, :cond_4

    .line 31
    .line 32
    and-int/lit8 v2, p4, 0x40

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_2
    if-eqz v2, :cond_3

    .line 46
    .line 47
    const/16 v2, 0x20

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move v2, v3

    .line 51
    :goto_3
    or-int/2addr v0, v2

    .line 52
    :cond_4
    and-int/lit16 v2, p4, 0x180

    .line 53
    .line 54
    if-nez v2, :cond_6

    .line 55
    .line 56
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    const/16 v2, 0x100

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_5
    const/16 v2, 0x80

    .line 66
    .line 67
    :goto_4
    or-int/2addr v0, v2

    .line 68
    :cond_6
    and-int/lit16 v2, p4, 0xc00

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    if-nez v2, :cond_8

    .line 72
    .line 73
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_7

    .line 78
    .line 79
    const/16 v2, 0x800

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_7
    const/16 v2, 0x400

    .line 83
    .line 84
    :goto_5
    or-int/2addr v0, v2

    .line 85
    :cond_8
    and-int/lit16 v2, p4, 0x6000

    .line 86
    .line 87
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 88
    .line 89
    if-nez v2, :cond_a

    .line 90
    .line 91
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_9

    .line 96
    .line 97
    const/16 v2, 0x4000

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_9
    const/16 v2, 0x2000

    .line 101
    .line 102
    :goto_6
    or-int/2addr v0, v2

    .line 103
    :cond_a
    const/high16 v2, 0x30000

    .line 104
    .line 105
    and-int/2addr v2, p4

    .line 106
    if-nez v2, :cond_c

    .line 107
    .line 108
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_b

    .line 113
    .line 114
    const/high16 v2, 0x20000

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_b
    const/high16 v2, 0x10000

    .line 118
    .line 119
    :goto_7
    or-int/2addr v0, v2

    .line 120
    :cond_c
    const v2, 0x12493

    .line 121
    .line 122
    .line 123
    and-int/2addr v2, v0

    .line 124
    const v6, 0x12492

    .line 125
    .line 126
    .line 127
    if-eq v2, v6, :cond_d

    .line 128
    .line 129
    move v2, v1

    .line 130
    goto :goto_8

    .line 131
    :cond_d
    move v2, v4

    .line 132
    :goto_8
    and-int/lit8 v6, v0, 0x1

    .line 133
    .line 134
    invoke-virtual {p3, v6, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_12

    .line 139
    .line 140
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 145
    .line 146
    if-ne v2, v6, :cond_e

    .line 147
    .line 148
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_e
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 156
    .line 157
    const v6, 0x7f12064f

    .line 158
    .line 159
    .line 160
    invoke-static {p3, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    new-instance v7, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;

    .line 165
    .line 166
    invoke-direct {v7, p0, v4}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v5, p0, v7}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    new-instance v7, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;

    .line 174
    .line 175
    invoke-direct {v7, p0, v1}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v5, p0, v7}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    new-instance v7, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    invoke-direct {v7, v6, v2, p0, v3}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 185
    .line 186
    .line 187
    new-instance v3, Landroidx/compose/material3/internal/ParentSemanticsNodeElement;

    .line 188
    .line 189
    invoke-direct {v3, v7}, Landroidx/compose/material3/internal/ParentSemanticsNodeElement;-><init>(Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v5, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    new-instance v5, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 197
    .line 198
    const/16 v6, 0x13

    .line 199
    .line 200
    invoke-direct {v5, v6, v2, p0}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v5}, Landroidx/compose/ui/focus/FocusTraversalKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    new-instance v3, Landroidx/compose/runtime/Latch$await$2$2;

    .line 208
    .line 209
    const/4 v5, 0x5

    .line 210
    invoke-direct {v3, v5, p0, p1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v3}, Landroidx/compose/ui/input/key/Key_androidKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 218
    .line 219
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-static {p3, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 241
    .line 242
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 243
    .line 244
    .line 245
    iget-boolean v7, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 246
    .line 247
    if-eqz v7, :cond_f

    .line 248
    .line 249
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 250
    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_f
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 254
    .line 255
    .line 256
    :goto_9
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 257
    .line 258
    invoke-static {p3, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 259
    .line 260
    .line 261
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 262
    .line 263
    invoke-static {p3, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    .line 265
    .line 266
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 267
    .line 268
    iget-boolean v5, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 269
    .line 270
    if-nez v5, :cond_10

    .line 271
    .line 272
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-nez v5, :cond_11

    .line 285
    .line 286
    :cond_10
    invoke-static {v4, p3, v4, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 287
    .line 288
    .line 289
    :cond_11
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 290
    .line 291
    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 292
    .line 293
    .line 294
    shr-int/lit8 v0, v0, 0xf

    .line 295
    .line 296
    and-int/lit8 v0, v0, 0xe

    .line 297
    .line 298
    invoke-static {v0, p2, p3, v1}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 299
    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_12
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 303
    .line 304
    .line 305
    :goto_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 306
    .line 307
    .line 308
    move-result-object p3

    .line 309
    if-eqz p3, :cond_13

    .line 310
    .line 311
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 312
    .line 313
    const/16 v5, 0xb

    .line 314
    .line 315
    move-object v1, p0

    .line 316
    move-object v2, p1

    .line 317
    move-object v3, p2

    .line 318
    move v4, p4

    .line 319
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 320
    .line 321
    .line 322
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 323
    .line 324
    :cond_13
    return-void
.end method

.method public static final access$restartable(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/material3/internal/AnchoredDragFinishedSignal; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :try_start_1
    new-instance p2, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 49
    .line 50
    const/16 v1, 0x19

    .line 51
    .line 52
    invoke-direct {p2, p0, p1, v2, v1}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 53
    .line 54
    .line 55
    iput v3, v0, Landroidx/compose/material3/internal/AnchoredDraggableKt$restartable$1;->label:I

    .line 56
    .line 57
    invoke-static {p2, v0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0
    :try_end_1
    .catch Landroidx/compose/material3/internal/AnchoredDragFinishedSignal; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 62
    .line 63
    if-ne p0, p1, :cond_3

    .line 64
    .line 65
    return-object p1

    .line 66
    :catch_0
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method public static childSemantics$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;-><init>(Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final draggableAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/AnchoredDraggableState;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material3/internal/DraggableAnchorsElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/material3/internal/DraggableAnchorsElement;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;Lkotlin/jvm/functions/Function2;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutIdModifier;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/ui/layout/LayoutIdModifier;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdModifier;->layoutId:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    return-object v1
.end method

.method public static final getMinimizedAlignment(Landroidx/compose/material3/TextFieldLabelPosition$Attached;)Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;->minimizedAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v0, "Unknown position: "

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static final getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final minimizedLabelHalfHeight(Landroidx/compose/runtime/Composer;)F
    .locals 8

    .line 1
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 14
    .line 15
    iget-wide v0, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 16
    .line 17
    sget-wide v2, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallLineHeight:J

    .line 18
    .line 19
    const-wide v4, 0xff00000000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v4, v0

    .line 25
    const-wide v6, 0x100000000L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    cmp-long v4, v4, v6

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-wide v0, v2

    .line 36
    :goto_0
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/compose/ui/unit/Density;

    .line 43
    .line 44
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float/2addr p0, v0

    .line 51
    return p0
.end method

.method public static final subtractConstraintSafely(II)I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    sub-int/2addr p0, p1

    .line 8
    if-gez p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_1
    return p0
.end method

.method public static final textFieldHorizontalIconPadding(Landroidx/compose/runtime/Composer;)F
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 10
    .line 11
    iget p0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move p0, v1

    .line 21
    :cond_0
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->IconSize$2:F

    .line 22
    .line 23
    sub-float/2addr p0, v0

    .line 24
    const/high16 v0, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr p0, v0

    .line 27
    cmpg-float v0, p0, v1

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    return p0
.end method
