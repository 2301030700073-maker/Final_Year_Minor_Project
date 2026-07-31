.class public final synthetic Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 14
    iput p1, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$2:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$0:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$2:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 4
    .line 5
    const/high16 v2, -0x40000000    # -2.0f

    .line 6
    .line 7
    const/high16 v3, 0x41800000    # 16.0f

    .line 8
    .line 9
    const/high16 v4, 0x42400000    # 48.0f

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 16
    .line 17
    iget-object v9, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$2:Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    iget-object v10, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$0:Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    iget-object v0, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    const/4 v13, 0x1

    .line 24
    const/4 v14, 0x0

    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 31
    .line 32
    move-object/from16 v2, p2

    .line 33
    .line 34
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    move-object/from16 v3, p3

    .line 37
    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    and-int/lit8 v4, v3, 0x6

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    const/4 v4, 0x4

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v4, 0x2

    .line 60
    :goto_0
    or-int/2addr v3, v4

    .line 61
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 62
    .line 63
    const/16 v15, 0x12

    .line 64
    .line 65
    if-eq v4, v15, :cond_2

    .line 66
    .line 67
    move v4, v13

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v4, v14

    .line 70
    :goto_1
    and-int/2addr v3, v13

    .line 71
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_e

    .line 76
    .line 77
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 78
    .line 79
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v2}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v1, v3, v13}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 92
    .line 93
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 94
    .line 95
    const/16 v39, 0x20

    .line 96
    .line 97
    invoke-static {v3, v4, v2, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iget-wide v11, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 102
    .line 103
    ushr-long v16, v11, v39

    .line 104
    .line 105
    xor-long v11, v11, v16

    .line 106
    .line 107
    long-to-int v11, v11

    .line 108
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-static {v2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 117
    .line 118
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 124
    .line 125
    .line 126
    iget-boolean v14, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 127
    .line 128
    if-eqz v14, :cond_3

    .line 129
    .line 130
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 135
    .line 136
    .line 137
    :goto_2
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 138
    .line 139
    invoke-static {v2, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {v2, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 152
    .line 153
    invoke-static {v2, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    .line 155
    .line 156
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 157
    .line 158
    invoke-static {v2, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 159
    .line 160
    .line 161
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 162
    .line 163
    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    const/high16 v1, 0x3f800000    # 1.0f

    .line 167
    .line 168
    move-object/from16 v40, v6

    .line 169
    .line 170
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v16

    .line 178
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-nez v16, :cond_5

    .line 183
    .line 184
    if-ne v1, v8, :cond_4

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_4
    move-object/from16 p3, v15

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_5
    :goto_3
    new-instance v1, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;

    .line 191
    .line 192
    move-object/from16 p3, v15

    .line 193
    .line 194
    const/4 v15, 0x2

    .line 195
    invoke-direct {v1, v15, v10, v9, v0}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :goto_4
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 202
    .line 203
    move-object/from16 v41, v9

    .line 204
    .line 205
    move-object/from16 v42, v10

    .line 206
    .line 207
    const/16 v9, 0xf

    .line 208
    .line 209
    const/4 v10, 0x0

    .line 210
    const/4 v15, 0x0

    .line 211
    invoke-static {v9, v6, v15, v1, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 216
    .line 217
    new-instance v9, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    const/16 v10, 0xa

    .line 220
    .line 221
    invoke-direct {v9, v10}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 222
    .line 223
    .line 224
    const/high16 v15, 0x41000000    # 8.0f

    .line 225
    .line 226
    const/4 v10, 0x1

    .line 227
    invoke-direct {v6, v15, v10, v9}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 228
    .line 229
    .line 230
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 231
    .line 232
    const/4 v10, 0x6

    .line 233
    invoke-static {v6, v9, v2, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    move-object/from16 v43, v11

    .line 238
    .line 239
    iget-wide v10, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 240
    .line 241
    ushr-long v16, v10, v39

    .line 242
    .line 243
    xor-long v10, v10, v16

    .line 244
    .line 245
    long-to-int v10, v10

    .line 246
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-static {v2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 255
    .line 256
    .line 257
    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 258
    .line 259
    if-eqz v15, :cond_6

    .line 260
    .line 261
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 266
    .line 267
    .line 268
    :goto_5
    invoke-static {v2, v6, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v2, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v6, v43

    .line 275
    .line 276
    invoke-static {v10, v2, v12, v2, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    const/16 v19, 0x0

    .line 283
    .line 284
    const/16 v20, 0xc

    .line 285
    .line 286
    const/high16 v16, 0x41c00000    # 24.0f

    .line 287
    .line 288
    const/16 v18, 0x0

    .line 289
    .line 290
    move-object/from16 v15, p3

    .line 291
    .line 292
    const/high16 v17, 0x41000000    # 8.0f

    .line 293
    .line 294
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    move-object v10, v15

    .line 299
    move/from16 v25, v16

    .line 300
    .line 301
    move/from16 v11, v17

    .line 302
    .line 303
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    check-cast v15, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 308
    .line 309
    move/from16 p3, v11

    .line 310
    .line 311
    sget-object v11, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->COMMUNITY:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 312
    .line 313
    if-ne v15, v11, :cond_7

    .line 314
    .line 315
    const/4 v11, 0x1

    .line 316
    goto :goto_6

    .line 317
    :cond_7
    const/4 v11, 0x0

    .line 318
    :goto_6
    invoke-static {v2}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    move-object/from16 v26, v1

    .line 323
    .line 324
    move-object/from16 v23, v2

    .line 325
    .line 326
    iget-wide v1, v15, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 327
    .line 328
    invoke-static/range {v23 .. v23}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 329
    .line 330
    .line 331
    move-result-object v15

    .line 332
    move-wide/from16 v16, v1

    .line 333
    .line 334
    iget-wide v1, v15, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 335
    .line 336
    const-wide/16 v21, 0x0

    .line 337
    .line 338
    const/16 v24, 0xc

    .line 339
    .line 340
    const-wide/16 v19, 0x0

    .line 341
    .line 342
    move-wide/from16 v15, v16

    .line 343
    .line 344
    move-wide/from16 v17, v1

    .line 345
    .line 346
    invoke-static/range {v15 .. v24}, Landroidx/compose/material3/CardKt;->colors-ro_MJ88(JJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/RadioButtonColors;

    .line 347
    .line 348
    .line 349
    move-result-object v19

    .line 350
    move-object/from16 v35, v23

    .line 351
    .line 352
    const/16 v21, 0x1b0

    .line 353
    .line 354
    const/16 v22, 0x28

    .line 355
    .line 356
    const/16 v16, 0x0

    .line 357
    .line 358
    const/16 v18, 0x0

    .line 359
    .line 360
    move v15, v11

    .line 361
    move-object/from16 v17, v26

    .line 362
    .line 363
    move-object/from16 v20, v35

    .line 364
    .line 365
    invoke-static/range {v15 .. v22}, Landroidx/compose/material3/CardKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/GapComposer;II)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v1, v20

    .line 369
    .line 370
    const/16 v16, 0x0

    .line 371
    .line 372
    const/16 v20, 0x1

    .line 373
    .line 374
    move/from16 v19, p3

    .line 375
    .line 376
    move/from16 v17, p3

    .line 377
    .line 378
    move-object v15, v10

    .line 379
    move/from16 v18, v25

    .line 380
    .line 381
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    move-object v11, v15

    .line 386
    move/from16 v43, v18

    .line 387
    .line 388
    const/high16 v10, 0x3f800000    # 1.0f

    .line 389
    .line 390
    invoke-static {v2, v10}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    const/4 v10, 0x0

    .line 395
    invoke-static {v3, v4, v1, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 396
    .line 397
    .line 398
    move-result-object v15

    .line 399
    move-object/from16 p3, v11

    .line 400
    .line 401
    iget-wide v10, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 402
    .line 403
    ushr-long v18, v10, v39

    .line 404
    .line 405
    xor-long v10, v10, v18

    .line 406
    .line 407
    long-to-int v10, v10

    .line 408
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 409
    .line 410
    .line 411
    move-result-object v11

    .line 412
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 417
    .line 418
    .line 419
    move-object/from16 v44, v3

    .line 420
    .line 421
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 422
    .line 423
    if-eqz v3, :cond_8

    .line 424
    .line 425
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 430
    .line 431
    .line 432
    :goto_7
    invoke-static {v1, v15, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v1, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 436
    .line 437
    .line 438
    invoke-static {v10, v1, v12, v1, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 439
    .line 440
    .line 441
    invoke-static {v1, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 442
    .line 443
    .line 444
    const v2, 0x7f1201f4

    .line 445
    .line 446
    .line 447
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v15

    .line 451
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 452
    .line 453
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 458
    .line 459
    iget-object v3, v3, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 460
    .line 461
    invoke-static {v1}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 466
    .line 467
    const/16 v37, 0x0

    .line 468
    .line 469
    const v38, 0x1fffa

    .line 470
    .line 471
    .line 472
    const/16 v16, 0x0

    .line 473
    .line 474
    const/16 v19, 0x0

    .line 475
    .line 476
    const-wide/16 v20, 0x0

    .line 477
    .line 478
    const/16 v22, 0x0

    .line 479
    .line 480
    const/16 v23, 0x0

    .line 481
    .line 482
    const-wide/16 v24, 0x0

    .line 483
    .line 484
    const/16 v26, 0x0

    .line 485
    .line 486
    const-wide/16 v27, 0x0

    .line 487
    .line 488
    const/16 v29, 0x0

    .line 489
    .line 490
    const/16 v30, 0x0

    .line 491
    .line 492
    const/16 v31, 0x0

    .line 493
    .line 494
    const/16 v32, 0x0

    .line 495
    .line 496
    const/16 v33, 0x0

    .line 497
    .line 498
    const/16 v36, 0x0

    .line 499
    .line 500
    move-wide/from16 v34, v10

    .line 501
    .line 502
    move/from16 v11, v17

    .line 503
    .line 504
    move-wide/from16 v17, v34

    .line 505
    .line 506
    move-object/from16 v35, v1

    .line 507
    .line 508
    move-object/from16 v34, v3

    .line 509
    .line 510
    invoke-static/range {v15 .. v38}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 511
    .line 512
    .line 513
    const/16 v19, 0x0

    .line 514
    .line 515
    const/16 v20, 0xd

    .line 516
    .line 517
    const/16 v16, 0x0

    .line 518
    .line 519
    const/high16 v17, 0x40800000    # 4.0f

    .line 520
    .line 521
    const/16 v18, 0x0

    .line 522
    .line 523
    move-object/from16 v15, p3

    .line 524
    .line 525
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 526
    .line 527
    .line 528
    move-result-object v16

    .line 529
    move-object v10, v15

    .line 530
    move/from16 v3, v17

    .line 531
    .line 532
    const v15, 0x7f120212

    .line 533
    .line 534
    .line 535
    invoke-static {v15, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v15

    .line 539
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v17

    .line 543
    move-object/from16 v3, v17

    .line 544
    .line 545
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 546
    .line 547
    iget-object v3, v3, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 548
    .line 549
    invoke-static {v1}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    move-object/from16 v23, v1

    .line 554
    .line 555
    move-object/from16 v46, v2

    .line 556
    .line 557
    iget-wide v1, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 558
    .line 559
    const v38, 0x1fff8

    .line 560
    .line 561
    .line 562
    const/16 v19, 0x0

    .line 563
    .line 564
    const-wide/16 v20, 0x0

    .line 565
    .line 566
    move-object/from16 v35, v23

    .line 567
    .line 568
    const/16 v23, 0x0

    .line 569
    .line 570
    const/16 v36, 0x30

    .line 571
    .line 572
    move-wide/from16 v17, v1

    .line 573
    .line 574
    move-object/from16 v34, v3

    .line 575
    .line 576
    invoke-static/range {v15 .. v38}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 577
    .line 578
    .line 579
    move-object/from16 v1, v35

    .line 580
    .line 581
    const/4 v2, 0x1

    .line 582
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 586
    .line 587
    .line 588
    const/high16 v2, 0x3f800000    # 1.0f

    .line 589
    .line 590
    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v11

    .line 602
    if-nez v2, :cond_a

    .line 603
    .line 604
    if-ne v11, v8, :cond_9

    .line 605
    .line 606
    goto :goto_8

    .line 607
    :cond_9
    move-object/from16 v8, v41

    .line 608
    .line 609
    goto :goto_9

    .line 610
    :cond_a
    :goto_8
    new-instance v11, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;

    .line 611
    .line 612
    const/4 v2, 0x3

    .line 613
    move-object/from16 v8, v41

    .line 614
    .line 615
    move-object/from16 v15, v42

    .line 616
    .line 617
    invoke-direct {v11, v2, v15, v8, v0}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    :goto_9
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 624
    .line 625
    const/16 v0, 0xf

    .line 626
    .line 627
    const/4 v2, 0x0

    .line 628
    const/4 v15, 0x0

    .line 629
    invoke-static {v0, v3, v15, v11, v2}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 634
    .line 635
    new-instance v3, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 636
    .line 637
    const/16 v11, 0xa

    .line 638
    .line 639
    invoke-direct {v3, v11}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 640
    .line 641
    .line 642
    const/4 v11, 0x1

    .line 643
    const/high16 v15, 0x41000000    # 8.0f

    .line 644
    .line 645
    invoke-direct {v2, v15, v11, v3}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 646
    .line 647
    .line 648
    const/4 v3, 0x6

    .line 649
    invoke-static {v2, v9, v1, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    move-object/from16 v41, v8

    .line 654
    .line 655
    iget-wide v8, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 656
    .line 657
    ushr-long v16, v8, v39

    .line 658
    .line 659
    xor-long v8, v8, v16

    .line 660
    .line 661
    long-to-int v3, v8

    .line 662
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 663
    .line 664
    .line 665
    move-result-object v8

    .line 666
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 671
    .line 672
    .line 673
    iget-boolean v9, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 674
    .line 675
    if-eqz v9, :cond_b

    .line 676
    .line 677
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 678
    .line 679
    .line 680
    goto :goto_a

    .line 681
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 682
    .line 683
    .line 684
    :goto_a
    invoke-static {v1, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 685
    .line 686
    .line 687
    invoke-static {v1, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v3, v1, v12, v1, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 691
    .line 692
    .line 693
    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 694
    .line 695
    .line 696
    const/16 v19, 0x0

    .line 697
    .line 698
    const/16 v20, 0xc

    .line 699
    .line 700
    const/16 v18, 0x0

    .line 701
    .line 702
    move/from16 v17, v15

    .line 703
    .line 704
    move/from16 v16, v43

    .line 705
    .line 706
    move-object v15, v10

    .line 707
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    move/from16 v11, v17

    .line 712
    .line 713
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v2

    .line 717
    check-cast v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 718
    .line 719
    sget-object v3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->PERSONALIZED:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 720
    .line 721
    if-ne v2, v3, :cond_c

    .line 722
    .line 723
    const/4 v2, 0x1

    .line 724
    goto :goto_b

    .line 725
    :cond_c
    const/4 v2, 0x0

    .line 726
    :goto_b
    invoke-static {v1}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    iget-wide v8, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 731
    .line 732
    invoke-static {v1}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    move/from16 v45, v11

    .line 737
    .line 738
    move-object/from16 p0, v12

    .line 739
    .line 740
    iget-wide v11, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 741
    .line 742
    const-wide/16 v21, 0x0

    .line 743
    .line 744
    const/16 v24, 0xc

    .line 745
    .line 746
    const-wide/16 v19, 0x0

    .line 747
    .line 748
    move-object/from16 v23, v1

    .line 749
    .line 750
    move-wide v15, v8

    .line 751
    move-wide/from16 v17, v11

    .line 752
    .line 753
    invoke-static/range {v15 .. v24}, Landroidx/compose/material3/CardKt;->colors-ro_MJ88(JJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/RadioButtonColors;

    .line 754
    .line 755
    .line 756
    move-result-object v19

    .line 757
    move-object/from16 v35, v23

    .line 758
    .line 759
    const/16 v21, 0x1b0

    .line 760
    .line 761
    const/16 v22, 0x28

    .line 762
    .line 763
    const/16 v16, 0x0

    .line 764
    .line 765
    const/16 v18, 0x0

    .line 766
    .line 767
    move-object/from16 v17, v0

    .line 768
    .line 769
    move v15, v2

    .line 770
    move-object/from16 v20, v35

    .line 771
    .line 772
    invoke-static/range {v15 .. v22}, Landroidx/compose/material3/CardKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/GapComposer;II)V

    .line 773
    .line 774
    .line 775
    move-object/from16 v1, v20

    .line 776
    .line 777
    const/16 v16, 0x0

    .line 778
    .line 779
    const/16 v20, 0x1

    .line 780
    .line 781
    move/from16 v19, v45

    .line 782
    .line 783
    move-object v15, v10

    .line 784
    move/from16 v18, v43

    .line 785
    .line 786
    move/from16 v17, v45

    .line 787
    .line 788
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    const/high16 v2, 0x3f800000    # 1.0f

    .line 793
    .line 794
    invoke-static {v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    move-object/from16 v2, v44

    .line 799
    .line 800
    const/4 v3, 0x0

    .line 801
    invoke-static {v2, v4, v1, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    iget-wide v3, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 806
    .line 807
    ushr-long v8, v3, v39

    .line 808
    .line 809
    xor-long/2addr v3, v8

    .line 810
    long-to-int v3, v3

    .line 811
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 812
    .line 813
    .line 814
    move-result-object v4

    .line 815
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 820
    .line 821
    .line 822
    iget-boolean v8, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 823
    .line 824
    if-eqz v8, :cond_d

    .line 825
    .line 826
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 827
    .line 828
    .line 829
    goto :goto_c

    .line 830
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 831
    .line 832
    .line 833
    :goto_c
    invoke-static {v1, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 834
    .line 835
    .line 836
    invoke-static {v1, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 837
    .line 838
    .line 839
    move-object/from16 v2, p0

    .line 840
    .line 841
    invoke-static {v3, v1, v2, v1, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 842
    .line 843
    .line 844
    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 845
    .line 846
    .line 847
    const v0, 0x7f1201fa

    .line 848
    .line 849
    .line 850
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v15

    .line 854
    move-object/from16 v0, v46

    .line 855
    .line 856
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 861
    .line 862
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 863
    .line 864
    invoke-static {v1}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 865
    .line 866
    .line 867
    move-result-object v3

    .line 868
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 869
    .line 870
    const/16 v37, 0x0

    .line 871
    .line 872
    const v38, 0x1fffa

    .line 873
    .line 874
    .line 875
    const/16 v16, 0x0

    .line 876
    .line 877
    const/16 v19, 0x0

    .line 878
    .line 879
    const-wide/16 v20, 0x0

    .line 880
    .line 881
    const/16 v22, 0x0

    .line 882
    .line 883
    const/16 v23, 0x0

    .line 884
    .line 885
    const-wide/16 v24, 0x0

    .line 886
    .line 887
    const/16 v26, 0x0

    .line 888
    .line 889
    const-wide/16 v27, 0x0

    .line 890
    .line 891
    const/16 v29, 0x0

    .line 892
    .line 893
    const/16 v30, 0x0

    .line 894
    .line 895
    const/16 v31, 0x0

    .line 896
    .line 897
    const/16 v32, 0x0

    .line 898
    .line 899
    const/16 v33, 0x0

    .line 900
    .line 901
    const/16 v36, 0x0

    .line 902
    .line 903
    move-object/from16 v35, v1

    .line 904
    .line 905
    move-object/from16 v34, v2

    .line 906
    .line 907
    move-wide/from16 v17, v3

    .line 908
    .line 909
    invoke-static/range {v15 .. v38}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 910
    .line 911
    .line 912
    const/16 v19, 0x0

    .line 913
    .line 914
    const/16 v20, 0xd

    .line 915
    .line 916
    const/16 v16, 0x0

    .line 917
    .line 918
    const/16 v18, 0x0

    .line 919
    .line 920
    move-object v15, v10

    .line 921
    const/high16 v17, 0x40800000    # 4.0f

    .line 922
    .line 923
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 924
    .line 925
    .line 926
    move-result-object v16

    .line 927
    const v2, 0x7f120213

    .line 928
    .line 929
    .line 930
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v15

    .line 934
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 939
    .line 940
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 941
    .line 942
    invoke-static {v1}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 943
    .line 944
    .line 945
    move-result-object v2

    .line 946
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 947
    .line 948
    const v38, 0x1fff8

    .line 949
    .line 950
    .line 951
    const/16 v19, 0x0

    .line 952
    .line 953
    const-wide/16 v20, 0x0

    .line 954
    .line 955
    const/16 v36, 0x30

    .line 956
    .line 957
    move-object/from16 v34, v0

    .line 958
    .line 959
    move-wide/from16 v17, v2

    .line 960
    .line 961
    invoke-static/range {v15 .. v38}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 962
    .line 963
    .line 964
    const/4 v2, 0x1

    .line 965
    invoke-static {v1, v2, v2, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 966
    .line 967
    .line 968
    goto :goto_d

    .line 969
    :cond_e
    move-object v1, v2

    .line 970
    move-object/from16 v40, v6

    .line 971
    .line 972
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 973
    .line 974
    .line 975
    :goto_d
    return-object v40

    .line 976
    :pswitch_0
    move-object/from16 v40, v6

    .line 977
    .line 978
    move-object v1, v9

    .line 979
    move-object v15, v10

    .line 980
    const/16 v39, 0x20

    .line 981
    .line 982
    move-object/from16 v6, p1

    .line 983
    .line 984
    check-cast v6, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 985
    .line 986
    move-object/from16 v7, p2

    .line 987
    .line 988
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 989
    .line 990
    move-object/from16 v9, p3

    .line 991
    .line 992
    check-cast v9, Ljava/lang/Integer;

    .line 993
    .line 994
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 998
    .line 999
    .line 1000
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v4

    .line 1004
    invoke-static {v4}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    sget-object v6, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1009
    .line 1010
    invoke-static {v4, v6}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v4

    .line 1014
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v6

    .line 1018
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v9

    .line 1022
    or-int/2addr v6, v9

    .line 1023
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v9

    .line 1027
    if-nez v6, :cond_f

    .line 1028
    .line 1029
    if-ne v9, v8, :cond_10

    .line 1030
    .line 1031
    :cond_f
    new-instance v9, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;

    .line 1032
    .line 1033
    const/4 v10, 0x1

    .line 1034
    invoke-direct {v9, v10, v15, v1, v0}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1038
    .line 1039
    .line 1040
    :cond_10
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1041
    .line 1042
    const/4 v0, 0x0

    .line 1043
    const/16 v1, 0xf

    .line 1044
    .line 1045
    const/4 v10, 0x0

    .line 1046
    invoke-static {v1, v4, v0, v9, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 1055
    .line 1056
    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1061
    .line 1062
    ushr-long v10, v8, v39

    .line 1063
    .line 1064
    xor-long/2addr v8, v10

    .line 1065
    long-to-int v4, v8

    .line 1066
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v6

    .line 1070
    invoke-static {v7, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1075
    .line 1076
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    .line 1078
    .line 1079
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1080
    .line 1081
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1082
    .line 1083
    .line 1084
    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1085
    .line 1086
    if-eqz v9, :cond_11

    .line 1087
    .line 1088
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_e

    .line 1092
    :cond_11
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1093
    .line 1094
    .line 1095
    :goto_e
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1096
    .line 1097
    invoke-static {v7, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1098
    .line 1099
    .line 1100
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1101
    .line 1102
    invoke-static {v7, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1110
    .line 1111
    invoke-static {v7, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1112
    .line 1113
    .line 1114
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1115
    .line 1116
    invoke-static {v7, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1117
    .line 1118
    .line 1119
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1120
    .line 1121
    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1122
    .line 1123
    .line 1124
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    const/4 v10, 0x1

    .line 1129
    invoke-static {v0, v2, v10}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v18

    .line 1133
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    check-cast v0, Ljava/lang/Boolean;

    .line 1138
    .line 1139
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    if-eqz v0, :cond_12

    .line 1144
    .line 1145
    const v0, 0x7f0801fa

    .line 1146
    .line 1147
    .line 1148
    :goto_f
    const/4 v10, 0x0

    .line 1149
    goto :goto_10

    .line 1150
    :cond_12
    const v0, 0x7f0801f9

    .line 1151
    .line 1152
    .line 1153
    goto :goto_f

    .line 1154
    :goto_10
    invoke-static {v0, v10, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v16

    .line 1158
    const v0, 0x7f1202e4

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v0, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v17

    .line 1165
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1166
    .line 1167
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1172
    .line 1173
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 1174
    .line 1175
    const/16 v22, 0x188

    .line 1176
    .line 1177
    const/16 v23, 0x0

    .line 1178
    .line 1179
    move-wide/from16 v19, v0

    .line 1180
    .line 1181
    move-object/from16 v21, v7

    .line 1182
    .line 1183
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1184
    .line 1185
    .line 1186
    move-object/from16 v0, v21

    .line 1187
    .line 1188
    const/4 v10, 0x1

    .line 1189
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1190
    .line 1191
    .line 1192
    return-object v40

    .line 1193
    :pswitch_1
    move-object/from16 v40, v6

    .line 1194
    .line 1195
    move-object v1, v9

    .line 1196
    move-object v15, v10

    .line 1197
    const/16 v39, 0x20

    .line 1198
    .line 1199
    move-object/from16 v6, p1

    .line 1200
    .line 1201
    check-cast v6, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 1202
    .line 1203
    move-object/from16 v7, p2

    .line 1204
    .line 1205
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 1206
    .line 1207
    move-object/from16 v9, p3

    .line 1208
    .line 1209
    check-cast v9, Ljava/lang/Integer;

    .line 1210
    .line 1211
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1215
    .line 1216
    .line 1217
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v4

    .line 1221
    invoke-static {v4}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v4

    .line 1225
    sget-object v6, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1226
    .line 1227
    invoke-static {v4, v6}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v4

    .line 1231
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v6

    .line 1235
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v9

    .line 1239
    or-int/2addr v6, v9

    .line 1240
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v9

    .line 1244
    if-nez v6, :cond_14

    .line 1245
    .line 1246
    if-ne v9, v8, :cond_13

    .line 1247
    .line 1248
    goto :goto_11

    .line 1249
    :cond_13
    const/4 v10, 0x0

    .line 1250
    goto :goto_12

    .line 1251
    :cond_14
    :goto_11
    new-instance v9, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;

    .line 1252
    .line 1253
    const/4 v10, 0x0

    .line 1254
    invoke-direct {v9, v10, v15, v1, v0}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda15;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1258
    .line 1259
    .line 1260
    :goto_12
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1261
    .line 1262
    const/4 v0, 0x0

    .line 1263
    const/16 v1, 0xf

    .line 1264
    .line 1265
    invoke-static {v1, v4, v0, v9, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 1274
    .line 1275
    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1280
    .line 1281
    ushr-long v10, v8, v39

    .line 1282
    .line 1283
    xor-long/2addr v8, v10

    .line 1284
    long-to-int v4, v8

    .line 1285
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v6

    .line 1289
    invoke-static {v7, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1294
    .line 1295
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1296
    .line 1297
    .line 1298
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1299
    .line 1300
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1301
    .line 1302
    .line 1303
    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1304
    .line 1305
    if-eqz v9, :cond_15

    .line 1306
    .line 1307
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_13

    .line 1311
    :cond_15
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1312
    .line 1313
    .line 1314
    :goto_13
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1315
    .line 1316
    invoke-static {v7, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1317
    .line 1318
    .line 1319
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1320
    .line 1321
    invoke-static {v7, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1322
    .line 1323
    .line 1324
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1329
    .line 1330
    invoke-static {v7, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1331
    .line 1332
    .line 1333
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1334
    .line 1335
    invoke-static {v7, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1336
    .line 1337
    .line 1338
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1339
    .line 1340
    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    const/4 v10, 0x1

    .line 1348
    invoke-static {v0, v2, v10}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v18

    .line 1352
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    check-cast v0, Ljava/lang/Boolean;

    .line 1357
    .line 1358
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v0

    .line 1362
    if-eqz v0, :cond_16

    .line 1363
    .line 1364
    const v0, 0x7f0801fc

    .line 1365
    .line 1366
    .line 1367
    :goto_14
    const/4 v10, 0x0

    .line 1368
    goto :goto_15

    .line 1369
    :cond_16
    const v0, 0x7f0801fb

    .line 1370
    .line 1371
    .line 1372
    goto :goto_14

    .line 1373
    :goto_15
    invoke-static {v0, v10, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v16

    .line 1377
    const v0, 0x7f1202e5

    .line 1378
    .line 1379
    .line 1380
    invoke-static {v0, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v17

    .line 1384
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1385
    .line 1386
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1391
    .line 1392
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 1393
    .line 1394
    const/16 v22, 0x188

    .line 1395
    .line 1396
    const/16 v23, 0x0

    .line 1397
    .line 1398
    move-wide/from16 v19, v0

    .line 1399
    .line 1400
    move-object/from16 v21, v7

    .line 1401
    .line 1402
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1403
    .line 1404
    .line 1405
    move-object/from16 v0, v21

    .line 1406
    .line 1407
    const/4 v10, 0x1

    .line 1408
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1409
    .line 1410
    .line 1411
    return-object v40

    .line 1412
    nop

    .line 1413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
