.class public final Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field public final synthetic $leadingIconColor:J

.field public final synthetic $minHeight:F

.field public final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $trailingIconColor:J


# direct methods
.method public constructor <init>(FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$minHeight:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-wide p4, p0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$leadingIconColor:J

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    iput-wide p7, p0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$trailingIconColor:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    const/4 v11, 0x1

    .line 18
    const/4 v12, 0x2

    .line 19
    if-eq v2, v12, :cond_0

    .line 20
    .line 21
    move v2, v11

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    and-int/2addr v1, v11

    .line 25
    invoke-virtual {v6, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_9

    .line 30
    .line 31
    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 32
    .line 33
    invoke-static {v1, v6}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 38
    .line 39
    invoke-static {v1, v6}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 44
    .line 45
    invoke-static {v1, v6}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 46
    .line 47
    .line 48
    move-result-object v15

    .line 49
    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 50
    .line 51
    invoke-static {v1, v6}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v2, v0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$minHeight:F

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static {v3, v2, v11}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(FFI)Landroidx/compose/ui/Modifier;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v4, v0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 63
    .line 64
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 73
    .line 74
    if-ne v4, v5, :cond_1

    .line 75
    .line 76
    new-instance v4, Landroidx/compose/material3/ChipLayoutMeasurePolicy;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    check-cast v4, Landroidx/compose/material3/ChipLayoutMeasurePolicy;

    .line 85
    .line 86
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static {v6, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 104
    .line 105
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 106
    .line 107
    .line 108
    iget-boolean v9, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 109
    .line 110
    if-eqz v9, :cond_2

    .line 111
    .line 112
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 117
    .line 118
    .line 119
    :goto_1
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v6, v4, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v6, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    iget-boolean v3, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 132
    .line 133
    if-nez v3, :cond_3

    .line 134
    .line 135
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const/16 p2, 0x0

    .line 140
    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    const/16 p2, 0x0

    .line 153
    .line 154
    :goto_2
    invoke-static {v5, v6, v5, v7}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 158
    .line 159
    invoke-static {v6, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    const-string v2, "leadingIcon"

    .line 163
    .line 164
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 165
    .line 166
    invoke-static {v3, v2}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iget-object v5, v0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 171
    .line 172
    if-eqz v5, :cond_5

    .line 173
    .line 174
    move/from16 v16, v11

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    move/from16 v16, p2

    .line 178
    .line 179
    :goto_3
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 180
    .line 181
    move-object/from16 v17, v8

    .line 182
    .line 183
    const/16 v8, 0xc

    .line 184
    .line 185
    move-object/from16 v18, v2

    .line 186
    .line 187
    invoke-static {v15, v11, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->expandHorizontally$default(Landroidx/compose/animation/core/SpringSpec;Landroidx/compose/ui/BiasAlignment$Horizontal;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object/from16 v19, v3

    .line 192
    .line 193
    invoke-static {v13, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v2, v3}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v1, v11, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkHorizontally$default(Landroidx/compose/animation/core/SpringSpec;Landroidx/compose/ui/BiasAlignment$Horizontal;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v14, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    invoke-virtual {v2, v11}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    new-instance v11, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1$2$1;

    .line 214
    .line 215
    move-object/from16 v20, v9

    .line 216
    .line 217
    iget-wide v8, v0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$leadingIconColor:J

    .line 218
    .line 219
    invoke-direct {v11, v5, v8, v9}, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1$2$1;-><init>(Lkotlin/jvm/functions/Function2;J)V

    .line 220
    .line 221
    .line 222
    const v5, 0x28fd8f67

    .line 223
    .line 224
    .line 225
    invoke-static {v5, v11, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const v8, 0x30030

    .line 230
    .line 231
    .line 232
    const/16 v9, 0x10

    .line 233
    .line 234
    move-object v11, v7

    .line 235
    move-object v7, v6

    .line 236
    move-object v6, v5

    .line 237
    const/4 v5, 0x0

    .line 238
    move-object/from16 v23, v4

    .line 239
    .line 240
    move-object/from16 v24, v11

    .line 241
    .line 242
    move-object/from16 p1, v14

    .line 243
    .line 244
    move-object/from16 v21, v17

    .line 245
    .line 246
    move-object/from16 v12, v19

    .line 247
    .line 248
    move-object/from16 v22, v20

    .line 249
    .line 250
    const/4 v14, 0x0

    .line 251
    move-object v11, v1

    .line 252
    move-object v4, v2

    .line 253
    move/from16 v1, v16

    .line 254
    .line 255
    move-object/from16 v2, v18

    .line 256
    .line 257
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 258
    .line 259
    .line 260
    const-string v1, "label"

    .line 261
    .line 262
    invoke-static {v12, v1}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    sget-object v2, Landroidx/compose/material3/ChipKt;->AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 267
    .line 268
    const/high16 v2, 0x41000000    # 8.0f

    .line 269
    .line 270
    const/4 v3, 0x2

    .line 271
    invoke-static {v1, v2, v14, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 276
    .line 277
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 278
    .line 279
    const/16 v4, 0x36

    .line 280
    .line 281
    invoke-static {v2, v3, v7, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-static {v7, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 298
    .line 299
    .line 300
    iget-boolean v5, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 301
    .line 302
    if-eqz v5, :cond_6

    .line 303
    .line 304
    move-object/from16 v5, v21

    .line 305
    .line 306
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 307
    .line 308
    .line 309
    :goto_4
    move-object/from16 v5, v22

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 313
    .line 314
    .line 315
    goto :goto_4

    .line 316
    :goto_5
    invoke-static {v7, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 317
    .line 318
    .line 319
    move-object/from16 v2, v23

    .line 320
    .line 321
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 322
    .line 323
    .line 324
    iget-boolean v2, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 325
    .line 326
    if-nez v2, :cond_7

    .line 327
    .line 328
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_8

    .line 341
    .line 342
    :cond_7
    move-object/from16 v2, v24

    .line 343
    .line 344
    invoke-static {v3, v7, v3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 345
    .line 346
    .line 347
    :cond_8
    invoke-static {v7, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 348
    .line 349
    .line 350
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    iget-object v2, v0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 355
    .line 356
    invoke-virtual {v2, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    const/4 v1, 0x1

    .line 360
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 361
    .line 362
    .line 363
    const-string/jumbo v1, "trailingIcon"

    .line 364
    .line 365
    .line 366
    invoke-static {v12, v1}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 371
    .line 372
    const/16 v3, 0xc

    .line 373
    .line 374
    invoke-static {v15, v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->expandHorizontally$default(Landroidx/compose/animation/core/SpringSpec;Landroidx/compose/ui/BiasAlignment$Horizontal;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    const/4 v5, 0x2

    .line 379
    invoke-static {v13, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-virtual {v4, v6}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-static {v11, v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkHorizontally$default(Landroidx/compose/animation/core/SpringSpec;Landroidx/compose/ui/BiasAlignment$Horizontal;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    move-object/from16 v3, p1

    .line 392
    .line 393
    invoke-static {v3, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v2, v3}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    new-instance v2, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1$2$3;

    .line 402
    .line 403
    iget-wide v5, v0, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;->$trailingIconColor:J

    .line 404
    .line 405
    invoke-direct {v2, v5, v6}, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1$2$3;-><init>(J)V

    .line 406
    .line 407
    .line 408
    const v0, 0x718fd7d0

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    move-object v6, v7

    .line 416
    const v7, 0x30030

    .line 417
    .line 418
    .line 419
    const/16 v8, 0x10

    .line 420
    .line 421
    move-object v2, v4

    .line 422
    const/4 v4, 0x0

    .line 423
    move/from16 v0, p2

    .line 424
    .line 425
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 426
    .line 427
    .line 428
    move-object v7, v6

    .line 429
    const/4 v1, 0x1

    .line 430
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_9
    move-object v7, v6

    .line 435
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 436
    .line 437
    .line 438
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 439
    .line 440
    return-object v0
.end method
