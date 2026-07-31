.class public abstract Lorg/jsoup/Jsoup;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static final DefinitionList(Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const v3, 0x11ae2ce2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v3, p3, 0x6

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x2

    .line 32
    :goto_0
    or-int v3, p3, v3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move/from16 v3, p3

    .line 36
    .line 37
    :goto_1
    and-int/lit8 v4, p3, 0x30

    .line 38
    .line 39
    const/16 v5, 0x20

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    move v4, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v4, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v3, v4

    .line 54
    :cond_3
    move/from16 v26, v3

    .line 55
    .line 56
    and-int/lit8 v3, v26, 0x13

    .line 57
    .line 58
    const/16 v4, 0x12

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x1

    .line 62
    if-eq v3, v4, :cond_4

    .line 63
    .line 64
    move v3, v7

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v3, v6

    .line 67
    :goto_3
    and-int/lit8 v4, v26, 0x1

    .line 68
    .line 69
    invoke-virtual {v2, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_8

    .line 74
    .line 75
    const/high16 v3, 0x3f800000    # 1.0f

    .line 76
    .line 77
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 78
    .line 79
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const/high16 v12, 0x41000000    # 8.0f

    .line 84
    .line 85
    const/4 v13, 0x7

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 94
    .line 95
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 96
    .line 97
    invoke-static {v8, v9, v2, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    iget-wide v9, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 102
    .line 103
    ushr-long v11, v9, v5

    .line 104
    .line 105
    xor-long/2addr v9, v11

    .line 106
    long-to-int v5, v9

    .line 107
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-static {v2, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 116
    .line 117
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 123
    .line 124
    .line 125
    iget-boolean v11, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 126
    .line 127
    if-eqz v11, :cond_5

    .line 128
    .line 129
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 134
    .line 135
    .line 136
    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 137
    .line 138
    invoke-static {v2, v8, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 142
    .line 143
    invoke-static {v2, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {v2, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 156
    .line 157
    invoke-static {v2, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 158
    .line 159
    .line 160
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 161
    .line 162
    invoke-static {v2, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 166
    .line 167
    iget-object v3, v0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->partOfSpeech:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const/16 v5, 0xe

    .line 174
    .line 175
    invoke-static {v5}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v8

    .line 179
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 180
    .line 181
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 186
    .line 187
    iget-wide v10, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 188
    .line 189
    const/high16 v5, 0x40800000    # 4.0f

    .line 190
    .line 191
    const/4 v12, 0x0

    .line 192
    invoke-static {v4, v12, v5, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const/16 v24, 0x0

    .line 197
    .line 198
    const v25, 0x3ffe8

    .line 199
    .line 200
    .line 201
    move v5, v6

    .line 202
    const/4 v6, 0x0

    .line 203
    move v12, v7

    .line 204
    move-wide v7, v8

    .line 205
    const/4 v9, 0x0

    .line 206
    move-object v2, v3

    .line 207
    move-object v3, v4

    .line 208
    move-wide/from16 v28, v10

    .line 209
    .line 210
    move v11, v5

    .line 211
    move-wide/from16 v4, v28

    .line 212
    .line 213
    const/4 v10, 0x0

    .line 214
    move v13, v11

    .line 215
    move v14, v12

    .line 216
    const-wide/16 v11, 0x0

    .line 217
    .line 218
    move v15, v13

    .line 219
    const/4 v13, 0x0

    .line 220
    move/from16 v17, v14

    .line 221
    .line 222
    move/from16 v16, v15

    .line 223
    .line 224
    const-wide/16 v14, 0x0

    .line 225
    .line 226
    move/from16 v18, v16

    .line 227
    .line 228
    const/16 v16, 0x0

    .line 229
    .line 230
    move/from16 v19, v17

    .line 231
    .line 232
    const/16 v17, 0x0

    .line 233
    .line 234
    move/from16 v20, v18

    .line 235
    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    move/from16 v21, v19

    .line 239
    .line 240
    const/16 v19, 0x0

    .line 241
    .line 242
    move/from16 v22, v20

    .line 243
    .line 244
    const/16 v20, 0x0

    .line 245
    .line 246
    move/from16 v23, v21

    .line 247
    .line 248
    const/16 v21, 0x0

    .line 249
    .line 250
    move/from16 v27, v23

    .line 251
    .line 252
    const/16 v23, 0x6030

    .line 253
    .line 254
    move-object/from16 v22, p2

    .line 255
    .line 256
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 257
    .line 258
    .line 259
    move-object/from16 v2, v22

    .line 260
    .line 261
    const v3, -0x46dc55fb

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 265
    .line 266
    .line 267
    iget-object v3, v0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->definitions:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    const/4 v6, 0x0

    .line 274
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_7

    .line 279
    .line 280
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;

    .line 285
    .line 286
    iget-object v5, v4, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->definition:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-lez v5, :cond_6

    .line 293
    .line 294
    const v5, -0x2488f815

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 298
    .line 299
    .line 300
    add-int/lit8 v6, v6, 0x1

    .line 301
    .line 302
    shl-int/lit8 v5, v26, 0x3

    .line 303
    .line 304
    and-int/lit16 v5, v5, 0x380

    .line 305
    .line 306
    invoke-static {v4, v6, v1, v2, v5}, Lorg/jsoup/Jsoup;->DefinitionWithExamples(Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 307
    .line 308
    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_6
    const/4 v13, 0x0

    .line 315
    const v4, -0x2485f688

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_7
    const/4 v13, 0x0

    .line 326
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 327
    .line 328
    .line 329
    const/4 v12, 0x1

    .line 330
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_8
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 335
    .line 336
    .line 337
    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-eqz v2, :cond_9

    .line 342
    .line 343
    new-instance v3, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;

    .line 344
    .line 345
    const/16 v4, 0x11

    .line 346
    .line 347
    move/from16 v5, p3

    .line 348
    .line 349
    invoke-direct {v3, v0, v1, v5, v4}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 350
    .line 351
    .line 352
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 353
    .line 354
    :cond_9
    return-void
.end method

.method public static final DefinitionWithExamples(Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, -0x6f856af4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v0, p4, 0x6

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v1, p4, 0x30

    .line 27
    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    :cond_3
    and-int/lit16 v1, p4, 0x180

    .line 44
    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const/16 v1, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v1, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, v1

    .line 59
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 60
    .line 61
    const/16 v3, 0x92

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x1

    .line 65
    if-eq v1, v3, :cond_6

    .line 66
    .line 67
    move v1, v5

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v1, v4

    .line 70
    :goto_4
    and-int/2addr v0, v5

    .line 71
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_a

    .line 76
    .line 77
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 78
    .line 79
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/content/Context;

    .line 84
    .line 85
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 86
    .line 87
    const/high16 v3, 0x3f800000    # 1.0f

    .line 88
    .line 89
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 94
    .line 95
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 96
    .line 97
    invoke-static {v3, v6, p3, v4}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-wide v6, p3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 102
    .line 103
    ushr-long v8, v6, v2

    .line 104
    .line 105
    xor-long/2addr v6, v8

    .line 106
    long-to-int v2, v6

    .line 107
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {p3, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 121
    .line 122
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 123
    .line 124
    .line 125
    iget-boolean v8, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 126
    .line 127
    if-eqz v8, :cond_7

    .line 128
    .line 129
    invoke-virtual {p3, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 134
    .line 135
    .line 136
    :goto_5
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 137
    .line 138
    invoke-static {p3, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 142
    .line 143
    invoke-static {p3, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 156
    .line 157
    invoke-static {p3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 158
    .line 159
    .line 160
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 161
    .line 162
    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    new-instance v1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 166
    .line 167
    invoke-direct {v1, p1, p0, v0, p2}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(ILorg/wikipedia/dataclient/restbase/RbDefinition$Definition;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 168
    .line 169
    .line 170
    const v2, -0x4fea30ad

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v1, p3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const/4 v2, 0x0

    .line 178
    const/16 v3, 0x30

    .line 179
    .line 180
    invoke-static {v2, v1, p3, v3}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SelectionContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->examples:Ljava/util/List;

    .line 184
    .line 185
    if-nez v1, :cond_8

    .line 186
    .line 187
    const v0, -0x764b12c6

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_8
    const v6, -0x764b12c5

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_9

    .line 212
    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Ljava/lang/String;

    .line 218
    .line 219
    new-instance v7, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 220
    .line 221
    invoke-direct {v7, v6, v0, p2}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 222
    .line 223
    .line 224
    const v6, 0x3d443d88

    .line 225
    .line 226
    .line 227
    invoke-static {v6, v7, p3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v2, v6, p3, v3}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SelectionContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_9
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 236
    .line 237
    .line 238
    :goto_7
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 243
    .line 244
    .line 245
    :goto_8
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    if-eqz p3, :cond_b

    .line 250
    .line 251
    new-instance v0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;

    .line 252
    .line 253
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;ILkotlin/jvm/functions/Function1;I)V

    .line 254
    .line 255
    .line 256
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 257
    .line 258
    :cond_b
    return-void
.end method

.method public static final GamesHubLanguageChip(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 45

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    move-object/from16 v10, p4

    .line 10
    .line 11
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const v1, -0x27f8a238

    .line 21
    .line 22
    .line 23
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x2

    .line 35
    :goto_0
    or-int v1, p5, v1

    .line 36
    .line 37
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v1, v2

    .line 49
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const/16 v2, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v2, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v1, v2

    .line 61
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    const/16 v2, 0x800

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v2, 0x400

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v2

    .line 73
    and-int/lit16 v2, v1, 0x493

    .line 74
    .line 75
    const/16 v5, 0x492

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    if-eq v2, v5, :cond_4

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move v2, v7

    .line 83
    :goto_4
    and-int/lit8 v5, v1, 0x1

    .line 84
    .line 85
    invoke-virtual {v10, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_b

    .line 90
    .line 91
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 92
    .line 93
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2, v12}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-nez v2, :cond_5

    .line 106
    .line 107
    move-object v2, v12

    .line 108
    :cond_5
    sget-object v5, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 109
    .line 110
    filled-new-array {v12}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v5, v8}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_6

    .line 119
    .line 120
    const v8, -0xc58bd2c

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v10}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    iget-wide v8, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 131
    .line 132
    :goto_5
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_6
    const v8, -0xc58b82b

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {v10}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    iget-wide v8, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :goto_6
    const v11, 0x7f12025c

    .line 150
    .line 151
    .line 152
    invoke-static {v11, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    sget v15, Landroidx/compose/material3/FilterChipDefaults;->Height:F

    .line 157
    .line 158
    sget-object v15, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 159
    .line 160
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    check-cast v15, Landroidx/compose/material3/ColorScheme;

    .line 165
    .line 166
    invoke-static {v15}, Landroidx/compose/material3/FilterChipDefaults;->getDefaultFilterChipColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SelectableChipColors;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    invoke-static {v10}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    move-wide/from16 v43, v8

    .line 175
    .line 176
    iget-wide v7, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 177
    .line 178
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->containerColor:J

    .line 179
    .line 180
    move-wide/from16 v33, v7

    .line 181
    .line 182
    iget-wide v6, v15, Landroidx/compose/material3/SelectableChipColors;->labelColor:J

    .line 183
    .line 184
    iget-wide v8, v15, Landroidx/compose/material3/SelectableChipColors;->leadingIconColor:J

    .line 185
    .line 186
    move-wide/from16 v17, v3

    .line 187
    .line 188
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->trailingIconColor:J

    .line 189
    .line 190
    move-wide/from16 v23, v3

    .line 191
    .line 192
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->disabledContainerColor:J

    .line 193
    .line 194
    move-wide/from16 v25, v3

    .line 195
    .line 196
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->disabledLabelColor:J

    .line 197
    .line 198
    move-wide/from16 v27, v3

    .line 199
    .line 200
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->disabledLeadingIconColor:J

    .line 201
    .line 202
    move-wide/from16 v29, v3

    .line 203
    .line 204
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->disabledTrailingIconColor:J

    .line 205
    .line 206
    move-wide/from16 v31, v3

    .line 207
    .line 208
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->disabledSelectedContainerColor:J

    .line 209
    .line 210
    move-wide/from16 v35, v3

    .line 211
    .line 212
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->selectedLabelColor:J

    .line 213
    .line 214
    move-wide/from16 v37, v3

    .line 215
    .line 216
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->selectedLeadingIconColor:J

    .line 217
    .line 218
    move-wide/from16 v39, v3

    .line 219
    .line 220
    iget-wide v3, v15, Landroidx/compose/material3/SelectableChipColors;->selectedTrailingIconColor:J

    .line 221
    .line 222
    move-wide/from16 v41, v3

    .line 223
    .line 224
    move-wide/from16 v19, v6

    .line 225
    .line 226
    move-wide/from16 v21, v8

    .line 227
    .line 228
    move-object/from16 v16, v15

    .line 229
    .line 230
    invoke-virtual/range {v16 .. v42}, Landroidx/compose/material3/SelectableChipColors;->copy-daRQuJA(JJJJJJJJJJJJJ)Landroidx/compose/material3/SelectableChipColors;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v10}, Lorg/jsoup/select/NodeTraversor;->getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 239
    .line 240
    const/high16 v6, 0x3f800000    # 1.0f

    .line 241
    .line 242
    invoke-static {v6, v3, v4}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    and-int/lit16 v4, v1, 0x380

    .line 251
    .line 252
    const/16 v6, 0x100

    .line 253
    .line 254
    if-ne v4, v6, :cond_7

    .line 255
    .line 256
    const/4 v4, 0x1

    .line 257
    goto :goto_7

    .line 258
    :cond_7
    const/4 v4, 0x0

    .line 259
    :goto_7
    or-int/2addr v3, v4

    .line 260
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    or-int/2addr v3, v4

    .line 265
    and-int/lit16 v4, v1, 0x1c00

    .line 266
    .line 267
    const/16 v6, 0x800

    .line 268
    .line 269
    if-ne v4, v6, :cond_8

    .line 270
    .line 271
    const/4 v6, 0x1

    .line 272
    goto :goto_8

    .line 273
    :cond_8
    const/4 v6, 0x0

    .line 274
    :goto_8
    or-int/2addr v3, v6

    .line 275
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    if-nez v3, :cond_9

    .line 280
    .line 281
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 282
    .line 283
    if-ne v4, v3, :cond_a

    .line 284
    .line 285
    :cond_9
    new-instance v4, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;

    .line 286
    .line 287
    invoke-direct {v4, v5, v13, v11, v14}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;-><init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_a
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 294
    .line 295
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;

    .line 296
    .line 297
    move-wide/from16 v5, v43

    .line 298
    .line 299
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    .line 300
    .line 301
    .line 302
    const v2, 0x407d8c3b

    .line 303
    .line 304
    .line 305
    invoke-static {v2, v3, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;

    .line 310
    .line 311
    const/4 v5, 0x0

    .line 312
    invoke-direct {v3, v5, v0}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;-><init>(IZ)V

    .line 313
    .line 314
    .line 315
    const v5, -0x1445a3c2

    .line 316
    .line 317
    .line 318
    invoke-static {v5, v3, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    and-int/lit8 v1, v1, 0xe

    .line 323
    .line 324
    const v3, 0x30180

    .line 325
    .line 326
    .line 327
    or-int v11, v1, v3

    .line 328
    .line 329
    const/4 v3, 0x0

    .line 330
    move-object v1, v4

    .line 331
    const/4 v4, 0x0

    .line 332
    const/4 v6, 0x0

    .line 333
    const/4 v8, 0x0

    .line 334
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ChipKt;->FilterChip(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V

    .line 335
    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_b
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 339
    .line 340
    .line 341
    :goto_9
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    if-eqz v7, :cond_c

    .line 346
    .line 347
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;

    .line 348
    .line 349
    const/4 v6, 0x0

    .line 350
    move/from16 v1, p0

    .line 351
    .line 352
    move/from16 v5, p5

    .line 353
    .line 354
    move-object v2, v12

    .line 355
    move-object v3, v13

    .line 356
    move-object v4, v14

    .line 357
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;-><init>(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;II)V

    .line 358
    .line 359
    .line 360
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 361
    .line 362
    :cond_c
    return-void
.end method

.method public static final GamesHubLoadingShimmer(Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V
    .locals 9

    .line 1
    const v0, -0x3498f4be    # -1.5141698E7f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    or-int/2addr v0, p2

    .line 18
    and-int/lit8 v2, v0, 0x3

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v2, v1, :cond_1

    .line 23
    .line 24
    move v1, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, v3

    .line 27
    :goto_1
    and-int/2addr v0, v4

    .line 28
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 35
    .line 36
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 37
    .line 38
    invoke-static {v0, v1, p1, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-wide v1, p1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 43
    .line 44
    const/16 v5, 0x20

    .line 45
    .line 46
    ushr-long v5, v1, v5

    .line 47
    .line 48
    xor-long/2addr v1, v5

    .line 49
    long-to-int v1, v1

    .line 50
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 55
    .line 56
    invoke-static {p1, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 68
    .line 69
    .line 70
    iget-boolean v8, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 71
    .line 72
    if-eqz v8, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 79
    .line 80
    .line 81
    :goto_2
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 82
    .line 83
    invoke-static {p1, v0, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 87
    .line 88
    invoke-static {p1, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 96
    .line 97
    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 101
    .line 102
    invoke-static {p1, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 106
    .line 107
    invoke-static {p1, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    .line 111
    .line 112
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/high16 v2, 0x41000000    # 8.0f

    .line 117
    .line 118
    const/high16 v6, 0x41800000    # 16.0f

    .line 119
    .line 120
    invoke-static {v1, v6, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const/high16 v2, 0x42400000    # 48.0f

    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const/high16 v2, 0x40800000    # 4.0f

    .line 131
    .line 132
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v1, v7}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const/4 v7, 0x0

    .line 141
    const/4 v8, 0x7

    .line 142
    invoke-static {v1, v7, p0, v8}, Lorg/jsoup/Jsoup;->shimmerEffect$default(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1, p1, v3}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0, v6, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const/high16 v1, 0x43af0000    # 350.0f

    .line 158
    .line 159
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0, v7, p0, v8}, Lorg/jsoup/Jsoup;->shimmerEffect$default(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)Landroidx/compose/ui/Modifier;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0, p1, v3}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_4

    .line 190
    .line 191
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    invoke-direct {v0, p0, p2, v3}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/InfiniteTransition;II)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 197
    .line 198
    :cond_4
    return-void
.end method

.method public static final GamesHubScreen(Lorg/wikipedia/games/GamesHubViewModel;Lorg/wikipedia/util/UiState;Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v12, p8

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const v0, 0x1bf641ac

    .line 27
    .line 28
    .line 29
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int v0, p9, v0

    .line 42
    .line 43
    move-object/from16 v8, p1

    .line 44
    .line 45
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const/16 v2, 0x20

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/16 v2, 0x10

    .line 55
    .line 56
    :goto_1
    or-int/2addr v0, v2

    .line 57
    move-object/from16 v7, p2

    .line 58
    .line 59
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    const/16 v2, 0x100

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/16 v2, 0x80

    .line 69
    .line 70
    :goto_2
    or-int/2addr v0, v2

    .line 71
    move-object/from16 v11, p3

    .line 72
    .line 73
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    const/16 v2, 0x800

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/16 v2, 0x400

    .line 83
    .line 84
    :goto_3
    or-int/2addr v0, v2

    .line 85
    move-object/from16 v10, p4

    .line 86
    .line 87
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    const/16 v2, 0x4000

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    const/16 v2, 0x2000

    .line 97
    .line 98
    :goto_4
    or-int/2addr v0, v2

    .line 99
    move-object/from16 v6, p5

    .line 100
    .line 101
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    const/high16 v2, 0x20000

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_5
    const/high16 v2, 0x10000

    .line 111
    .line 112
    :goto_5
    or-int/2addr v0, v2

    .line 113
    move-object/from16 v5, p6

    .line 114
    .line 115
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    const/high16 v2, 0x100000

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_6
    const/high16 v2, 0x80000

    .line 125
    .line 126
    :goto_6
    or-int/2addr v0, v2

    .line 127
    move-object/from16 v9, p7

    .line 128
    .line 129
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_7

    .line 134
    .line 135
    const/high16 v2, 0x800000

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_7
    const/high16 v2, 0x400000

    .line 139
    .line 140
    :goto_7
    or-int/2addr v0, v2

    .line 141
    const v2, 0x492493

    .line 142
    .line 143
    .line 144
    and-int/2addr v2, v0

    .line 145
    const v3, 0x492492

    .line 146
    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    if-eq v2, v3, :cond_8

    .line 150
    .line 151
    move v2, v4

    .line 152
    goto :goto_8

    .line 153
    :cond_8
    const/4 v2, 0x0

    .line 154
    :goto_8
    and-int/2addr v0, v4

    .line 155
    invoke-virtual {v12, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_b

    .line 160
    .line 161
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 166
    .line 167
    if-ne v0, v2, :cond_9

    .line 168
    .line 169
    iget-object v0, v1, Lorg/wikipedia/games/GamesHubViewModel;->selectedLanguage:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    move-object v4, v0

    .line 179
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 180
    .line 181
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-ne v0, v2, :cond_a

    .line 186
    .line 187
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_a
    move-object v3, v0

    .line 197
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 198
    .line 199
    invoke-static {v12}, Lkotlin/text/RegexKt;->rememberPullToRefreshState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 204
    .line 205
    sget-object v13, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 206
    .line 207
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    check-cast v14, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 212
    .line 213
    iget-wide v14, v14, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 214
    .line 215
    sget-object v1, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 216
    .line 217
    invoke-static {v0, v14, v15, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object v14

    .line 221
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 226
    .line 227
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 228
    .line 229
    move-wide v15, v0

    .line 230
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda18;

    .line 231
    .line 232
    move-object/from16 v1, p0

    .line 233
    .line 234
    invoke-direct/range {v0 .. v11}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda18;-><init>(Lorg/wikipedia/games/GamesHubViewModel;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Lorg/wikipedia/util/UiState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    .line 235
    .line 236
    .line 237
    const v1, -0x7d883c5

    .line 238
    .line 239
    .line 240
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    const/high16 v13, 0x30000000

    .line 245
    .line 246
    move-object v0, v14

    .line 247
    const/16 v14, 0x1be

    .line 248
    .line 249
    const/4 v1, 0x0

    .line 250
    const/4 v2, 0x0

    .line 251
    const/4 v3, 0x0

    .line 252
    const/4 v4, 0x0

    .line 253
    const/4 v5, 0x0

    .line 254
    const-wide/16 v8, 0x0

    .line 255
    .line 256
    const/4 v10, 0x0

    .line 257
    move-wide v6, v15

    .line 258
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 259
    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_b
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 263
    .line 264
    .line 265
    :goto_9
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    if-eqz v11, :cond_c

    .line 270
    .line 271
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda5;

    .line 272
    .line 273
    const/4 v10, 0x5

    .line 274
    move-object/from16 v1, p0

    .line 275
    .line 276
    move-object/from16 v2, p1

    .line 277
    .line 278
    move-object/from16 v3, p2

    .line 279
    .line 280
    move-object/from16 v4, p3

    .line 281
    .line 282
    move-object/from16 v5, p4

    .line 283
    .line 284
    move-object/from16 v6, p5

    .line 285
    .line 286
    move-object/from16 v7, p6

    .line 287
    .line 288
    move-object/from16 v8, p7

    .line 289
    .line 290
    move/from16 v9, p9

    .line 291
    .line 292
    invoke-direct/range {v0 .. v10}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 296
    .line 297
    :cond_c
    return-void
.end method

.method public static final HomeFeedDefaultViewScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    const v1, -0x6b3d07d9

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    or-int/lit8 v1, p5, 0x6

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/16 v2, 0x20

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v2, 0x10

    .line 33
    .line 34
    :goto_1
    or-int/2addr v1, v2

    .line 35
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const/16 v2, 0x100

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v2, 0x80

    .line 45
    .line 46
    :goto_2
    or-int/2addr v1, v2

    .line 47
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const/16 v2, 0x800

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    const/16 v2, 0x400

    .line 57
    .line 58
    :goto_3
    or-int/2addr v1, v2

    .line 59
    and-int/lit16 v2, v1, 0x493

    .line 60
    .line 61
    const/16 v5, 0x492

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x1

    .line 65
    if-eq v2, v5, :cond_4

    .line 66
    .line 67
    move v2, v7

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    move v2, v6

    .line 70
    :goto_4
    and-int/2addr v1, v7

    .line 71
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_a

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 82
    .line 83
    if-ne v1, v2, :cond_5

    .line 84
    .line 85
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-ne v5, v2, :cond_6

    .line 99
    .line 100
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-ne v7, v2, :cond_7

    .line 116
    .line 117
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 127
    .line 128
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_9

    .line 151
    .line 152
    const v2, -0x732c9df9

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 156
    .line 157
    .line 158
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-interface {v7, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    sget-object v2, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Landroid/app/Activity;

    .line 170
    .line 171
    if-eqz v2, :cond_8

    .line 172
    .line 173
    const v7, 0x7f120299

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v7}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    const v2, -0x7329fa45

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 190
    .line 191
    .line 192
    :goto_5
    new-instance v2, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;

    .line 193
    .line 194
    const/4 v7, 0x7

    .line 195
    invoke-direct {v2, v3, v7, v6}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function0;IB)V

    .line 196
    .line 197
    .line 198
    const v6, -0x6594791d

    .line 199
    .line 200
    .line 201
    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 212
    .line 213
    iget-wide v11, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 214
    .line 215
    new-instance v2, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;

    .line 216
    .line 217
    invoke-direct {v2, v4, v5, v1}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 218
    .line 219
    .line 220
    const v1, 0x49c333b8    # 1599095.0f

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 224
    .line 225
    .line 226
    move-result-object v16

    .line 227
    const v18, 0x30000036

    .line 228
    .line 229
    .line 230
    const/16 v19, 0x1bc

    .line 231
    .line 232
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 233
    .line 234
    const/4 v7, 0x0

    .line 235
    const/4 v8, 0x0

    .line 236
    const/4 v9, 0x0

    .line 237
    const/4 v10, 0x0

    .line 238
    const-wide/16 v13, 0x0

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    move-object/from16 v17, v0

    .line 242
    .line 243
    invoke-static/range {v5 .. v19}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 244
    .line 245
    .line 246
    move-object v1, v5

    .line 247
    goto :goto_6

    .line 248
    :cond_a
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 249
    .line 250
    .line 251
    move-object/from16 v1, p0

    .line 252
    .line 253
    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    if-eqz v6, :cond_b

    .line 258
    .line 259
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 260
    .line 261
    move-object/from16 v2, p1

    .line 262
    .line 263
    move/from16 v5, p5

    .line 264
    .line 265
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 266
    .line 267
    .line 268
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 269
    .line 270
    :cond_b
    return-void
.end method

.method public static final OnThisDayGameCardContent(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;ILandroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    move/from16 v0, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    move/from16 v1, p8

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v3, v2, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;->state:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

    .line 19
    .line 20
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const v5, -0x2f0d750

    .line 27
    .line 28
    .line 29
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v5, v1, 0x6

    .line 33
    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    move-object/from16 v5, p0

    .line 37
    .line 38
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_0

    .line 43
    .line 44
    const/4 v9, 0x4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v9, 0x2

    .line 47
    :goto_0
    or-int/2addr v9, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object/from16 v5, p0

    .line 50
    .line 51
    move v9, v1

    .line 52
    :goto_1
    and-int/lit8 v10, v1, 0x30

    .line 53
    .line 54
    if-nez v10, :cond_3

    .line 55
    .line 56
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_2

    .line 61
    .line 62
    const/16 v10, 0x20

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v10, 0x10

    .line 66
    .line 67
    :goto_2
    or-int/2addr v9, v10

    .line 68
    :cond_3
    and-int/lit16 v10, v1, 0x180

    .line 69
    .line 70
    if-nez v10, :cond_5

    .line 71
    .line 72
    move-object/from16 v10, p2

    .line 73
    .line 74
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_4

    .line 79
    .line 80
    const/16 v12, 0x100

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    const/16 v12, 0x80

    .line 84
    .line 85
    :goto_3
    or-int/2addr v9, v12

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    move-object/from16 v10, p2

    .line 88
    .line 89
    :goto_4
    and-int/lit16 v12, v1, 0xc00

    .line 90
    .line 91
    if-nez v12, :cond_7

    .line 92
    .line 93
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_6

    .line 98
    .line 99
    const/16 v12, 0x800

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    const/16 v12, 0x400

    .line 103
    .line 104
    :goto_5
    or-int/2addr v9, v12

    .line 105
    :cond_7
    and-int/lit16 v12, v1, 0x6000

    .line 106
    .line 107
    if-nez v12, :cond_9

    .line 108
    .line 109
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v12, :cond_8

    .line 114
    .line 115
    const/16 v12, 0x4000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_8
    const/16 v12, 0x2000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v9, v12

    .line 121
    :cond_9
    const/high16 v12, 0x30000

    .line 122
    .line 123
    and-int/2addr v12, v1

    .line 124
    if-nez v12, :cond_b

    .line 125
    .line 126
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-eqz v12, :cond_a

    .line 131
    .line 132
    const/high16 v12, 0x20000

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_a
    const/high16 v12, 0x10000

    .line 136
    .line 137
    :goto_7
    or-int/2addr v9, v12

    .line 138
    :cond_b
    const/high16 v12, 0x180000

    .line 139
    .line 140
    and-int/2addr v12, v1

    .line 141
    if-nez v12, :cond_d

    .line 142
    .line 143
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-eqz v12, :cond_c

    .line 148
    .line 149
    const/high16 v12, 0x100000

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_c
    const/high16 v12, 0x80000

    .line 153
    .line 154
    :goto_8
    or-int/2addr v9, v12

    .line 155
    :cond_d
    move v12, v9

    .line 156
    const v9, 0x92493

    .line 157
    .line 158
    .line 159
    and-int/2addr v9, v12

    .line 160
    const v15, 0x92492

    .line 161
    .line 162
    .line 163
    const/4 v14, 0x0

    .line 164
    if-eq v9, v15, :cond_e

    .line 165
    .line 166
    const/4 v9, 0x1

    .line 167
    goto :goto_9

    .line 168
    :cond_e
    move v9, v14

    .line 169
    :goto_9
    and-int/lit8 v15, v12, 0x1

    .line 170
    .line 171
    invoke-virtual {v8, v15, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-eqz v9, :cond_31

    .line 176
    .line 177
    if-eqz v4, :cond_f

    .line 178
    .line 179
    add-int/lit8 v9, v0, 0x1

    .line 180
    .line 181
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    goto :goto_a

    .line 186
    :cond_f
    const/4 v9, 0x0

    .line 187
    :goto_a
    if-eqz v4, :cond_10

    .line 188
    .line 189
    const-string v15, "archive"

    .line 190
    .line 191
    :goto_b
    const/16 v16, 0x20

    .line 192
    .line 193
    goto :goto_c

    .line 194
    :cond_10
    const-string v15, "today"

    .line 195
    .line 196
    goto :goto_b

    .line 197
    :goto_c
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 198
    .line 199
    const/high16 v13, 0x3f800000    # 1.0f

    .line 200
    .line 201
    invoke-static {v11, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 206
    .line 207
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 208
    .line 209
    invoke-static {v13, v0, v8, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object v13, v15

    .line 214
    iget-wide v14, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 215
    .line 216
    ushr-long v18, v14, v16

    .line 217
    .line 218
    xor-long v14, v14, v18

    .line 219
    .line 220
    long-to-int v14, v14

    .line 221
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    invoke-static {v8, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 230
    .line 231
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 235
    .line 236
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 237
    .line 238
    .line 239
    iget-boolean v2, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 240
    .line 241
    if-eqz v2, :cond_11

    .line 242
    .line 243
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 244
    .line 245
    .line 246
    goto :goto_d

    .line 247
    :cond_11
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 248
    .line 249
    .line 250
    :goto_d
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 251
    .line 252
    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 253
    .line 254
    .line 255
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 256
    .line 257
    invoke-static {v8, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 265
    .line 266
    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 267
    .line 268
    .line 269
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 270
    .line 271
    invoke-static {v8, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 272
    .line 273
    .line 274
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 275
    .line 276
    invoke-static {v8, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    instance-of v0, v3, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;

    .line 280
    .line 281
    const v1, 0xe000

    .line 282
    .line 283
    .line 284
    const/high16 v2, 0x70000

    .line 285
    .line 286
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 287
    .line 288
    if-eqz v0, :cond_1b

    .line 289
    .line 290
    const v0, 0x39b412fc

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 294
    .line 295
    .line 296
    if-nez v4, :cond_16

    .line 297
    .line 298
    const v0, 0x39b45178

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 302
    .line 303
    .line 304
    move-object v9, v3

    .line 305
    check-cast v9, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;

    .line 306
    .line 307
    and-int v0, v12, v2

    .line 308
    .line 309
    const/high16 v2, 0x20000

    .line 310
    .line 311
    if-ne v0, v2, :cond_12

    .line 312
    .line 313
    const/4 v0, 0x1

    .line 314
    goto :goto_e

    .line 315
    :cond_12
    const/4 v0, 0x0

    .line 316
    :goto_e
    and-int/2addr v1, v12

    .line 317
    const/16 v2, 0x4000

    .line 318
    .line 319
    if-ne v1, v2, :cond_13

    .line 320
    .line 321
    const/4 v1, 0x1

    .line 322
    goto :goto_f

    .line 323
    :cond_13
    const/4 v1, 0x0

    .line 324
    :goto_f
    or-int/2addr v0, v1

    .line 325
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-nez v0, :cond_14

    .line 330
    .line 331
    if-ne v1, v11, :cond_15

    .line 332
    .line 333
    :cond_14
    new-instance v1, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda10;

    .line 334
    .line 335
    invoke-direct {v1, v6, v7}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_15
    move-object v11, v1

    .line 342
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 343
    .line 344
    and-int/lit16 v13, v12, 0x38e

    .line 345
    .line 346
    move-object v12, v8

    .line 347
    const/4 v0, 0x1

    .line 348
    move-object v8, v5

    .line 349
    invoke-static/range {v8 .. v13}, Lokio/Options$Companion;->OnThisDayGameCardPreview(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 350
    .line 351
    .line 352
    move-object v8, v12

    .line 353
    const/4 v3, 0x0

    .line 354
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 355
    .line 356
    .line 357
    move v5, v3

    .line 358
    move-object v14, v8

    .line 359
    goto :goto_12

    .line 360
    :cond_16
    const/4 v0, 0x1

    .line 361
    const/4 v3, 0x0

    .line 362
    const v5, 0x39bc477a

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 366
    .line 367
    .line 368
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 369
    .line 370
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 375
    .line 376
    iget-wide v13, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 377
    .line 378
    and-int/2addr v2, v12

    .line 379
    const/high16 v5, 0x20000

    .line 380
    .line 381
    if-ne v2, v5, :cond_17

    .line 382
    .line 383
    move v2, v0

    .line 384
    goto :goto_10

    .line 385
    :cond_17
    move v2, v3

    .line 386
    :goto_10
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    or-int/2addr v2, v5

    .line 391
    and-int/2addr v1, v12

    .line 392
    const/16 v5, 0x4000

    .line 393
    .line 394
    if-ne v1, v5, :cond_18

    .line 395
    .line 396
    move v1, v0

    .line 397
    goto :goto_11

    .line 398
    :cond_18
    move v1, v3

    .line 399
    :goto_11
    or-int/2addr v1, v2

    .line 400
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    if-nez v1, :cond_19

    .line 405
    .line 406
    if-ne v2, v11, :cond_1a

    .line 407
    .line 408
    :cond_19
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 409
    .line 410
    invoke-direct {v2, v6, v9, v7}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_1a
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 417
    .line 418
    and-int/lit8 v1, v12, 0xe

    .line 419
    .line 420
    shl-int/lit8 v5, v12, 0x3

    .line 421
    .line 422
    and-int/lit16 v5, v5, 0x1c00

    .line 423
    .line 424
    or-int v15, v1, v5

    .line 425
    .line 426
    const v9, 0x7f08015f

    .line 427
    .line 428
    .line 429
    move-object/from16 v12, p2

    .line 430
    .line 431
    move v5, v3

    .line 432
    move-wide v10, v13

    .line 433
    move-object v13, v2

    .line 434
    move-object v14, v8

    .line 435
    move-object/from16 v8, p0

    .line 436
    .line 437
    invoke-static/range {v8 .. v15}, Lokio/Options$Companion;->OnThisDayGameCardSimple-T042LqI(Landroidx/compose/ui/Modifier;IJLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 441
    .line 442
    .line 443
    :goto_12
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 444
    .line 445
    .line 446
    move-object v2, v7

    .line 447
    move-object v8, v14

    .line 448
    goto/16 :goto_20

    .line 449
    .line 450
    :cond_1b
    move-object v14, v8

    .line 451
    const/4 v0, 0x1

    .line 452
    const/4 v5, 0x0

    .line 453
    instance-of v8, v3, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 454
    .line 455
    if-eqz v8, :cond_20

    .line 456
    .line 457
    const v8, 0x39c6fefa

    .line 458
    .line 459
    .line 460
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 461
    .line 462
    .line 463
    check-cast v3, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 464
    .line 465
    and-int/2addr v2, v12

    .line 466
    const/high16 v8, 0x20000

    .line 467
    .line 468
    move-object v7, v13

    .line 469
    if-ne v2, v8, :cond_1c

    .line 470
    .line 471
    move v13, v0

    .line 472
    goto :goto_13

    .line 473
    :cond_1c
    move v13, v5

    .line 474
    :goto_13
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    or-int/2addr v2, v13

    .line 479
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v8

    .line 483
    or-int/2addr v2, v8

    .line 484
    and-int/2addr v1, v12

    .line 485
    const/16 v8, 0x4000

    .line 486
    .line 487
    if-ne v1, v8, :cond_1d

    .line 488
    .line 489
    move v13, v0

    .line 490
    goto :goto_14

    .line 491
    :cond_1d
    move v13, v5

    .line 492
    :goto_14
    or-int v1, v2, v13

    .line 493
    .line 494
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    if-nez v1, :cond_1e

    .line 499
    .line 500
    if-ne v2, v11, :cond_1f

    .line 501
    .line 502
    :cond_1e
    move/from16 v17, v5

    .line 503
    .line 504
    goto :goto_15

    .line 505
    :cond_1f
    move v13, v5

    .line 506
    goto :goto_16

    .line 507
    :goto_15
    new-instance v5, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;

    .line 508
    .line 509
    const/4 v10, 0x0

    .line 510
    move-object v8, v9

    .line 511
    move/from16 v13, v17

    .line 512
    .line 513
    move-object/from16 v9, p4

    .line 514
    .line 515
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    move-object v2, v5

    .line 522
    :goto_16
    move-object v7, v2

    .line 523
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 524
    .line 525
    and-int/lit8 v1, v12, 0xe

    .line 526
    .line 527
    shr-int/lit8 v2, v12, 0x6

    .line 528
    .line 529
    and-int/lit8 v2, v2, 0x70

    .line 530
    .line 531
    or-int/2addr v1, v2

    .line 532
    shl-int/lit8 v2, v12, 0x3

    .line 533
    .line 534
    and-int/lit16 v2, v2, 0x1c00

    .line 535
    .line 536
    or-int v9, v1, v2

    .line 537
    .line 538
    move-object/from16 v6, p2

    .line 539
    .line 540
    move-object v5, v3

    .line 541
    move-object v8, v14

    .line 542
    move-object/from16 v3, p0

    .line 543
    .line 544
    invoke-static/range {v3 .. v9}, Lokio/Options$Companion;->OnThisDayGameCardProgress(Landroidx/compose/ui/Modifier;ZLorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 548
    .line 549
    .line 550
    move-object/from16 v2, p4

    .line 551
    .line 552
    goto/16 :goto_20

    .line 553
    .line 554
    :cond_20
    move-object v6, v13

    .line 555
    move v13, v5

    .line 556
    move-object v5, v6

    .line 557
    move-object v6, v9

    .line 558
    instance-of v4, v3, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 559
    .line 560
    if-eqz v4, :cond_30

    .line 561
    .line 562
    const v4, 0x39d0e4fc

    .line 563
    .line 564
    .line 565
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 566
    .line 567
    .line 568
    move-object v9, v3

    .line 569
    check-cast v9, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 570
    .line 571
    and-int/2addr v2, v12

    .line 572
    const/high16 v8, 0x20000

    .line 573
    .line 574
    if-ne v2, v8, :cond_21

    .line 575
    .line 576
    move v3, v0

    .line 577
    goto :goto_17

    .line 578
    :cond_21
    move v3, v13

    .line 579
    :goto_17
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    or-int/2addr v3, v4

    .line 584
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    or-int/2addr v3, v4

    .line 589
    and-int/2addr v1, v12

    .line 590
    const/16 v8, 0x4000

    .line 591
    .line 592
    if-ne v1, v8, :cond_22

    .line 593
    .line 594
    move v4, v0

    .line 595
    goto :goto_18

    .line 596
    :cond_22
    move v4, v13

    .line 597
    :goto_18
    or-int/2addr v3, v4

    .line 598
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    if-nez v3, :cond_23

    .line 603
    .line 604
    if-ne v4, v11, :cond_24

    .line 605
    .line 606
    :cond_23
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;

    .line 607
    .line 608
    const/4 v8, 0x1

    .line 609
    move-object/from16 v7, p4

    .line 610
    .line 611
    move-object/from16 v4, p5

    .line 612
    .line 613
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    move-object v4, v3

    .line 620
    :cond_24
    move-object v10, v4

    .line 621
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 622
    .line 623
    const/high16 v8, 0x20000

    .line 624
    .line 625
    if-ne v2, v8, :cond_25

    .line 626
    .line 627
    move v3, v0

    .line 628
    goto :goto_19

    .line 629
    :cond_25
    move v3, v13

    .line 630
    :goto_19
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    or-int/2addr v3, v4

    .line 635
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    or-int/2addr v3, v4

    .line 640
    const/16 v8, 0x4000

    .line 641
    .line 642
    if-ne v1, v8, :cond_26

    .line 643
    .line 644
    move v4, v0

    .line 645
    goto :goto_1a

    .line 646
    :cond_26
    move v4, v13

    .line 647
    :goto_1a
    or-int/2addr v3, v4

    .line 648
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    if-nez v3, :cond_27

    .line 653
    .line 654
    if-ne v4, v11, :cond_28

    .line 655
    .line 656
    :cond_27
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;

    .line 657
    .line 658
    const/4 v8, 0x2

    .line 659
    move-object/from16 v7, p4

    .line 660
    .line 661
    move-object/from16 v4, p5

    .line 662
    .line 663
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;I)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    move-object v4, v3

    .line 670
    :cond_28
    move-object v15, v4

    .line 671
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 672
    .line 673
    const/high16 v8, 0x20000

    .line 674
    .line 675
    if-ne v2, v8, :cond_29

    .line 676
    .line 677
    move v2, v0

    .line 678
    goto :goto_1b

    .line 679
    :cond_29
    move v2, v13

    .line 680
    :goto_1b
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v3

    .line 684
    or-int/2addr v2, v3

    .line 685
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    or-int/2addr v2, v3

    .line 690
    const/16 v8, 0x4000

    .line 691
    .line 692
    if-ne v1, v8, :cond_2a

    .line 693
    .line 694
    move v3, v0

    .line 695
    goto :goto_1c

    .line 696
    :cond_2a
    move v3, v13

    .line 697
    :goto_1c
    or-int/2addr v2, v3

    .line 698
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    if-nez v2, :cond_2c

    .line 703
    .line 704
    if-ne v3, v11, :cond_2b

    .line 705
    .line 706
    goto :goto_1d

    .line 707
    :cond_2b
    move-object/from16 v2, p4

    .line 708
    .line 709
    goto :goto_1e

    .line 710
    :cond_2c
    :goto_1d
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;

    .line 711
    .line 712
    const/4 v8, 0x3

    .line 713
    move-object/from16 v7, p4

    .line 714
    .line 715
    move-object/from16 v4, p5

    .line 716
    .line 717
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;I)V

    .line 718
    .line 719
    .line 720
    move-object v2, v7

    .line 721
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    :goto_1e
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 725
    .line 726
    const/16 v8, 0x4000

    .line 727
    .line 728
    if-ne v1, v8, :cond_2d

    .line 729
    .line 730
    move v1, v0

    .line 731
    goto :goto_1f

    .line 732
    :cond_2d
    move v1, v13

    .line 733
    :goto_1f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    if-nez v1, :cond_2e

    .line 738
    .line 739
    if-ne v4, v11, :cond_2f

    .line 740
    .line 741
    :cond_2e
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 742
    .line 743
    const/16 v1, 0x1c

    .line 744
    .line 745
    invoke-direct {v4, v2, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    :cond_2f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 752
    .line 753
    and-int/lit8 v1, v12, 0xe

    .line 754
    .line 755
    shr-int/lit8 v5, v12, 0x6

    .line 756
    .line 757
    and-int/lit8 v5, v5, 0x70

    .line 758
    .line 759
    or-int/2addr v1, v5

    .line 760
    shl-int/lit8 v5, v12, 0x3

    .line 761
    .line 762
    and-int/lit16 v5, v5, 0x1c00

    .line 763
    .line 764
    or-int v12, v1, v5

    .line 765
    .line 766
    move-object/from16 v6, p2

    .line 767
    .line 768
    move-object v5, v9

    .line 769
    move-object v7, v10

    .line 770
    move-object v11, v14

    .line 771
    move-object v8, v15

    .line 772
    move-object v9, v3

    .line 773
    move-object v10, v4

    .line 774
    move-object/from16 v3, p0

    .line 775
    .line 776
    move/from16 v4, p3

    .line 777
    .line 778
    invoke-static/range {v3 .. v12}, Lokio/Options$Companion;->OnThisDayGameCardCompleted(Landroidx/compose/ui/Modifier;ZLorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 779
    .line 780
    .line 781
    move-object v8, v11

    .line 782
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 783
    .line 784
    .line 785
    :goto_20
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 786
    .line 787
    .line 788
    goto :goto_21

    .line 789
    :cond_30
    move-object v8, v14

    .line 790
    const v0, 0x1260a542

    .line 791
    .line 792
    .line 793
    invoke-static {v8, v0, v13}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    throw v0

    .line 798
    :cond_31
    move-object v2, v7

    .line 799
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 800
    .line 801
    .line 802
    :goto_21
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 803
    .line 804
    .line 805
    move-result-object v9

    .line 806
    if-eqz v9, :cond_32

    .line 807
    .line 808
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda17;

    .line 809
    .line 810
    move-object/from16 v1, p0

    .line 811
    .line 812
    move-object/from16 v3, p2

    .line 813
    .line 814
    move/from16 v4, p3

    .line 815
    .line 816
    move-object/from16 v6, p5

    .line 817
    .line 818
    move/from16 v7, p6

    .line 819
    .line 820
    move/from16 v8, p8

    .line 821
    .line 822
    move-object v5, v2

    .line 823
    move-object/from16 v2, p1

    .line 824
    .line 825
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda17;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;II)V

    .line 826
    .line 827
    .line 828
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 829
    .line 830
    :cond_32
    return-void
.end method

.method public static final OnThisDayGameCards(ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V
    .locals 39

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v14, p4

    .line 10
    .line 11
    move/from16 v0, p5

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const v5, 0x735f7a5a

    .line 23
    .line 24
    .line 25
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    .line 28
    and-int/lit8 v5, v0, 0x6

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v5, 0x2

    .line 41
    :goto_0
    or-int/2addr v5, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v5, v0

    .line 44
    :goto_1
    and-int/lit8 v7, v0, 0x30

    .line 45
    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    const/16 v7, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v7, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v5, v7

    .line 60
    :cond_3
    and-int/lit16 v7, v0, 0x180

    .line 61
    .line 62
    if-nez v7, :cond_5

    .line 63
    .line 64
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_4

    .line 69
    .line 70
    const/16 v7, 0x100

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/16 v7, 0x80

    .line 74
    .line 75
    :goto_3
    or-int/2addr v5, v7

    .line 76
    :cond_5
    and-int/lit16 v7, v0, 0xc00

    .line 77
    .line 78
    if-nez v7, :cond_7

    .line 79
    .line 80
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_6

    .line 85
    .line 86
    const/16 v7, 0x800

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    const/16 v7, 0x400

    .line 90
    .line 91
    :goto_4
    or-int/2addr v5, v7

    .line 92
    :cond_7
    and-int/lit16 v7, v5, 0x493

    .line 93
    .line 94
    const/16 v10, 0x492

    .line 95
    .line 96
    const/4 v12, 0x0

    .line 97
    if-eq v7, v10, :cond_8

    .line 98
    .line 99
    const/4 v7, 0x1

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move v7, v12

    .line 102
    :goto_5
    and-int/lit8 v10, v5, 0x1

    .line 103
    .line 104
    invoke-virtual {v14, v10, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_e

    .line 109
    .line 110
    sget-object v7, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 111
    .line 112
    filled-new-array {v2}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v7, v10}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_d

    .line 121
    .line 122
    const v7, 0x13e47293

    .line 123
    .line 124
    .line 125
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 126
    .line 127
    .line 128
    const/high16 v7, 0x41000000    # 8.0f

    .line 129
    .line 130
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 131
    .line 132
    const/high16 v13, 0x41800000    # 16.0f

    .line 133
    .line 134
    invoke-static {v10, v13, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 139
    .line 140
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    check-cast v15, Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {}, Lorg/wikipedia/games/WikiGames;->getEntries()Lkotlin/enums/EnumEntries;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    move-object/from16 v6, v16

    .line 151
    .line 152
    check-cast v6, Lkotlin/enums/EnumEntriesList;

    .line 153
    .line 154
    invoke-virtual {v6, v1}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Lorg/wikipedia/games/WikiGames;

    .line 159
    .line 160
    invoke-virtual {v6}, Lorg/wikipedia/games/WikiGames;->getTitleRes()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    new-array v8, v12, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-static {v15, v2, v6, v8}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    sget-object v8, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 171
    .line 172
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    check-cast v8, Landroidx/compose/material3/Typography;

    .line 177
    .line 178
    iget-object v8, v8, Landroidx/compose/material3/Typography;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 179
    .line 180
    move v15, v12

    .line 181
    sget-object v12, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 182
    .line 183
    sget-object v9, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 184
    .line 185
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 190
    .line 191
    move-object/from16 v20, v12

    .line 192
    .line 193
    iget-wide v11, v9, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 194
    .line 195
    const/16 v27, 0x0

    .line 196
    .line 197
    const v28, 0x1ffb8

    .line 198
    .line 199
    .line 200
    const/4 v9, 0x0

    .line 201
    move-object/from16 v24, v8

    .line 202
    .line 203
    move-object/from16 v21, v10

    .line 204
    .line 205
    move-wide/from16 v37, v11

    .line 206
    .line 207
    move v12, v5

    .line 208
    move-object v5, v6

    .line 209
    move-object v6, v7

    .line 210
    move-wide/from16 v7, v37

    .line 211
    .line 212
    const-wide/16 v10, 0x0

    .line 213
    .line 214
    move/from16 v22, v13

    .line 215
    .line 216
    const/4 v13, 0x0

    .line 217
    move/from16 v23, v15

    .line 218
    .line 219
    const-wide/16 v14, 0x0

    .line 220
    .line 221
    const/16 v25, 0x20

    .line 222
    .line 223
    const/16 v16, 0x0

    .line 224
    .line 225
    const/16 v26, 0x800

    .line 226
    .line 227
    const/16 v29, 0x2

    .line 228
    .line 229
    const-wide/16 v17, 0x0

    .line 230
    .line 231
    const/16 v30, 0x1

    .line 232
    .line 233
    const/16 v19, 0x0

    .line 234
    .line 235
    move/from16 v31, v12

    .line 236
    .line 237
    move-object/from16 v12, v20

    .line 238
    .line 239
    const/16 v20, 0x0

    .line 240
    .line 241
    move-object/from16 v32, v21

    .line 242
    .line 243
    const/16 v21, 0x0

    .line 244
    .line 245
    move/from16 v33, v22

    .line 246
    .line 247
    const/16 v22, 0x0

    .line 248
    .line 249
    move/from16 v34, v23

    .line 250
    .line 251
    const/16 v23, 0x0

    .line 252
    .line 253
    move/from16 v35, v26

    .line 254
    .line 255
    const v26, 0x180030

    .line 256
    .line 257
    .line 258
    move-object/from16 v25, p4

    .line 259
    .line 260
    move/from16 v36, v31

    .line 261
    .line 262
    move-object/from16 v0, v32

    .line 263
    .line 264
    move/from16 v1, v33

    .line 265
    .line 266
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 267
    .line 268
    .line 269
    move-object/from16 v14, v25

    .line 270
    .line 271
    const/high16 v5, 0x3f800000    # 1.0f

    .line 272
    .line 273
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 278
    .line 279
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 280
    .line 281
    new-instance v0, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 282
    .line 283
    const/16 v6, 0xa

    .line 284
    .line 285
    invoke-direct {v0, v6}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 286
    .line 287
    .line 288
    const/4 v6, 0x1

    .line 289
    invoke-direct {v8, v1, v6, v0}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 290
    .line 291
    .line 292
    const/4 v0, 0x2

    .line 293
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    move/from16 v12, v36

    .line 302
    .line 303
    and-int/lit16 v1, v12, 0x1c00

    .line 304
    .line 305
    const/16 v10, 0x800

    .line 306
    .line 307
    if-ne v1, v10, :cond_9

    .line 308
    .line 309
    move v11, v6

    .line 310
    goto :goto_6

    .line 311
    :cond_9
    const/4 v11, 0x0

    .line 312
    :goto_6
    or-int/2addr v0, v11

    .line 313
    and-int/lit8 v1, v12, 0x70

    .line 314
    .line 315
    const/16 v10, 0x20

    .line 316
    .line 317
    if-ne v1, v10, :cond_a

    .line 318
    .line 319
    move v11, v6

    .line 320
    goto :goto_7

    .line 321
    :cond_a
    const/4 v11, 0x0

    .line 322
    :goto_7
    or-int/2addr v0, v11

    .line 323
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    if-nez v0, :cond_b

    .line 328
    .line 329
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 330
    .line 331
    if-ne v1, v0, :cond_c

    .line 332
    .line 333
    :cond_b
    new-instance v1, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 334
    .line 335
    const/16 v0, 0x18

    .line 336
    .line 337
    invoke-direct {v1, v3, v4, v2, v0}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_c
    move-object v13, v1

    .line 344
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 345
    .line 346
    const v15, 0x36186

    .line 347
    .line 348
    .line 349
    const/16 v16, 0x1ca

    .line 350
    .line 351
    const/4 v6, 0x0

    .line 352
    const/4 v10, 0x0

    .line 353
    const/4 v11, 0x0

    .line 354
    const/4 v12, 0x0

    .line 355
    invoke-static/range {v5 .. v16}, Lkotlin/ExceptionsKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 356
    .line 357
    .line 358
    const/4 v15, 0x0

    .line 359
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_d
    move v15, v12

    .line 364
    const v0, 0x140e8488

    .line 365
    .line 366
    .line 367
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 371
    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 375
    .line 376
    .line 377
    :goto_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    if-eqz v6, :cond_f

    .line 382
    .line 383
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda2;

    .line 384
    .line 385
    move/from16 v1, p0

    .line 386
    .line 387
    move/from16 v5, p5

    .line 388
    .line 389
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;I)V

    .line 390
    .line 391
    .line 392
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 393
    .line 394
    :cond_f
    return-void
.end method

.method public static final WiktionaryDialogContent(Ljava/lang/String;Lorg/wikipedia/util/Resource;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 41

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    move/from16 v0, p4

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v1, 0x1c45c571

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v1, v0, 0x6

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move-object/from16 v1, p0

    .line 27
    .line 28
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v5, v4

    .line 37
    :goto_0
    or-int/2addr v5, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object/from16 v1, p0

    .line 40
    .line 41
    move v5, v0

    .line 42
    :goto_1
    and-int/lit8 v6, v0, 0x30

    .line 43
    .line 44
    const/16 v28, 0x20

    .line 45
    .line 46
    if-nez v6, :cond_3

    .line 47
    .line 48
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    move/from16 v6, v28

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v6, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v5, v6

    .line 60
    :cond_3
    and-int/lit16 v6, v0, 0x180

    .line 61
    .line 62
    if-nez v6, :cond_5

    .line 63
    .line 64
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    const/16 v6, 0x100

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/16 v6, 0x80

    .line 74
    .line 75
    :goto_3
    or-int/2addr v5, v6

    .line 76
    :cond_5
    move v14, v5

    .line 77
    and-int/lit16 v5, v14, 0x93

    .line 78
    .line 79
    const/16 v6, 0x92

    .line 80
    .line 81
    const/4 v15, 0x0

    .line 82
    const/4 v7, 0x1

    .line 83
    if-eq v5, v6, :cond_6

    .line 84
    .line 85
    move v5, v7

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    move v5, v15

    .line 88
    :goto_4
    and-int/lit8 v6, v14, 0x1

    .line 89
    .line 90
    invoke-virtual {v11, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_11

    .line 95
    .line 96
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 97
    .line 98
    const/high16 v6, 0x3f800000    # 1.0f

    .line 99
    .line 100
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 105
    .line 106
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Landroid/view/View;

    .line 111
    .line 112
    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 113
    .line 114
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 119
    .line 120
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    or-int/2addr v12, v13

    .line 129
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    if-nez v12, :cond_7

    .line 134
    .line 135
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 136
    .line 137
    if-ne v13, v12, :cond_8

    .line 138
    .line 139
    :cond_7
    new-instance v13, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    .line 140
    .line 141
    invoke-interface {v10}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumFlingVelocity()F

    .line 142
    .line 143
    .line 144
    invoke-direct {v13, v9}, Landroidx/compose/ui/platform/NestedScrollInteropConnection;-><init>(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_8
    check-cast v13, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    invoke-static {v8, v13, v9}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-static {v11}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-static {v8, v9, v7}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    const/high16 v9, 0x41800000    # 16.0f

    .line 166
    .line 167
    const/4 v10, 0x0

    .line 168
    invoke-static {v8, v9, v10, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    .line 174
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 179
    .line 180
    sget-object v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 181
    .line 182
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    check-cast v12, Landroid/content/res/Resources;

    .line 187
    .line 188
    const v13, 0x7f070057

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    invoke-interface {v8}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    div-float/2addr v12, v8

    .line 200
    invoke-static {v4, v12}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 205
    .line 206
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 207
    .line 208
    invoke-static {v8, v12, v11, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    move-object/from16 v17, v8

    .line 213
    .line 214
    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 215
    .line 216
    ushr-long v18, v7, v28

    .line 217
    .line 218
    xor-long v7, v7, v18

    .line 219
    .line 220
    long-to-int v7, v7

    .line 221
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-static {v11, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 230
    .line 231
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    move/from16 v18, v14

    .line 235
    .line 236
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 237
    .line 238
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 239
    .line 240
    .line 241
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 242
    .line 243
    if-eqz v9, :cond_9

    .line 244
    .line 245
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 250
    .line 251
    .line 252
    :goto_5
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 253
    .line 254
    invoke-static {v11, v13, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 255
    .line 256
    .line 257
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 258
    .line 259
    invoke-static {v11, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 267
    .line 268
    invoke-static {v11, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    .line 270
    .line 271
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 272
    .line 273
    invoke-static {v11, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 274
    .line 275
    .line 276
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 277
    .line 278
    invoke-static {v11, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    move-object/from16 v21, v12

    .line 286
    .line 287
    const/high16 v12, 0x42800000    # 64.0f

    .line 288
    .line 289
    invoke-static {v4, v12}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 294
    .line 295
    sget-object v12, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 296
    .line 297
    const/16 v15, 0x30

    .line 298
    .line 299
    invoke-static {v12, v6, v11, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    iget-wide v0, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 304
    .line 305
    ushr-long v25, v0, v28

    .line 306
    .line 307
    xor-long v0, v0, v25

    .line 308
    .line 309
    long-to-int v0, v0

    .line 310
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-static {v11, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 319
    .line 320
    .line 321
    iget-boolean v12, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 322
    .line 323
    if-eqz v12, :cond_a

    .line 324
    .line 325
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 330
    .line 331
    .line 332
    :goto_6
    invoke-static {v11, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 333
    .line 334
    .line 335
    invoke-static {v11, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v0, v11, v8, v11, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v11, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 342
    .line 343
    .line 344
    const v0, 0x7f08014c

    .line 345
    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    invoke-static {v0, v1, v11}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    const/high16 v0, 0x42100000    # 36.0f

    .line 353
    .line 354
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 355
    .line 356
    .line 357
    move-result-object v29

    .line 358
    const/16 v33, 0x0

    .line 359
    .line 360
    const/16 v34, 0xb

    .line 361
    .line 362
    const/16 v30, 0x0

    .line 363
    .line 364
    const/16 v31, 0x0

    .line 365
    .line 366
    const/high16 v32, 0x41400000    # 12.0f

    .line 367
    .line 368
    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    const/16 v12, 0x61b8

    .line 373
    .line 374
    move-object v0, v13

    .line 375
    const/16 v13, 0x68

    .line 376
    .line 377
    move-object v15, v5

    .line 378
    const/4 v5, 0x0

    .line 379
    move-object/from16 v24, v7

    .line 380
    .line 381
    const/4 v7, 0x0

    .line 382
    move-object/from16 v25, v8

    .line 383
    .line 384
    sget-object v8, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 385
    .line 386
    move-object/from16 v26, v9

    .line 387
    .line 388
    const/4 v9, 0x0

    .line 389
    move-object/from16 v27, v10

    .line 390
    .line 391
    const/4 v10, 0x0

    .line 392
    move-object/from16 v1, v17

    .line 393
    .line 394
    move-object/from16 v17, v0

    .line 395
    .line 396
    move-object v0, v1

    .line 397
    move-object/from16 v16, v14

    .line 398
    .line 399
    move-object v14, v15

    .line 400
    move-object/from16 v35, v24

    .line 401
    .line 402
    move-object/from16 v1, v25

    .line 403
    .line 404
    move-object/from16 v36, v27

    .line 405
    .line 406
    const/4 v15, 0x1

    .line 407
    const/high16 v29, 0x41800000    # 16.0f

    .line 408
    .line 409
    const/high16 v30, 0x42800000    # 64.0f

    .line 410
    .line 411
    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 412
    .line 413
    .line 414
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 415
    .line 416
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 421
    .line 422
    iget-wide v6, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 423
    .line 424
    const/16 v5, 0x14

    .line 425
    .line 426
    invoke-static {v5}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 427
    .line 428
    .line 429
    move-result-wide v9

    .line 430
    const/high16 v5, 0x41000000    # 8.0f

    .line 431
    .line 432
    invoke-static {v14, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    new-instance v8, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 437
    .line 438
    const/high16 v12, 0x3f800000    # 1.0f

    .line 439
    .line 440
    invoke-direct {v8, v12, v15}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 441
    .line 442
    .line 443
    invoke-interface {v5, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    and-int/lit8 v8, v18, 0xe

    .line 448
    .line 449
    or-int/lit16 v8, v8, 0x6000

    .line 450
    .line 451
    move-object/from16 v13, v26

    .line 452
    .line 453
    const/16 v26, 0x6180

    .line 454
    .line 455
    const v27, 0x3afe8

    .line 456
    .line 457
    .line 458
    move/from16 v25, v8

    .line 459
    .line 460
    const/4 v8, 0x0

    .line 461
    const/4 v11, 0x0

    .line 462
    move/from16 v22, v12

    .line 463
    .line 464
    const/4 v12, 0x0

    .line 465
    move-object/from16 v19, v13

    .line 466
    .line 467
    move-object/from16 v20, v14

    .line 468
    .line 469
    const-wide/16 v13, 0x0

    .line 470
    .line 471
    move/from16 v23, v15

    .line 472
    .line 473
    const/4 v15, 0x0

    .line 474
    move-object/from16 v31, v16

    .line 475
    .line 476
    move-object/from16 v32, v17

    .line 477
    .line 478
    const-wide/16 v16, 0x0

    .line 479
    .line 480
    move/from16 v33, v18

    .line 481
    .line 482
    const/16 v18, 0x2

    .line 483
    .line 484
    move-object/from16 v34, v19

    .line 485
    .line 486
    const/16 v19, 0x0

    .line 487
    .line 488
    move-object/from16 v37, v20

    .line 489
    .line 490
    const/16 v20, 0x1

    .line 491
    .line 492
    move-object/from16 v38, v21

    .line 493
    .line 494
    const/16 v21, 0x0

    .line 495
    .line 496
    move/from16 v39, v22

    .line 497
    .line 498
    const/16 v22, 0x0

    .line 499
    .line 500
    move/from16 v40, v23

    .line 501
    .line 502
    const/16 v23, 0x0

    .line 503
    .line 504
    move-object/from16 v24, p3

    .line 505
    .line 506
    move/from16 v3, v40

    .line 507
    .line 508
    move-object/from16 v40, v31

    .line 509
    .line 510
    move-object/from16 v31, v0

    .line 511
    .line 512
    move-object/from16 v0, v37

    .line 513
    .line 514
    move-object/from16 v37, v34

    .line 515
    .line 516
    move-object/from16 v34, v32

    .line 517
    .line 518
    move-object/from16 v32, v1

    .line 519
    .line 520
    move-object v1, v4

    .line 521
    move-object/from16 v4, p0

    .line 522
    .line 523
    invoke-static/range {v4 .. v27}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 524
    .line 525
    .line 526
    move-object/from16 v11, v24

    .line 527
    .line 528
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 536
    .line 537
    iget-wide v6, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 538
    .line 539
    const/high16 v12, 0x3f800000    # 1.0f

    .line 540
    .line 541
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    const/16 v9, 0x36

    .line 546
    .line 547
    const/4 v10, 0x0

    .line 548
    const/high16 v5, 0x3f000000    # 0.5f

    .line 549
    .line 550
    move-object v8, v11

    .line 551
    invoke-static/range {v4 .. v10}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 552
    .line 553
    .line 554
    instance-of v4, v2, Lorg/wikipedia/util/Resource$Loading;

    .line 555
    .line 556
    if-eqz v4, :cond_c

    .line 557
    .line 558
    const v4, -0x1c999a07

    .line 559
    .line 560
    .line 561
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 562
    .line 563
    .line 564
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 565
    .line 566
    .line 567
    move-result-object v21

    .line 568
    const/16 v25, 0x0

    .line 569
    .line 570
    const/16 v26, 0xd

    .line 571
    .line 572
    const/16 v22, 0x0

    .line 573
    .line 574
    const/16 v24, 0x0

    .line 575
    .line 576
    move/from16 v23, v30

    .line 577
    .line 578
    invoke-static/range {v21 .. v26}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 583
    .line 584
    const/4 v15, 0x0

    .line 585
    invoke-static {v4, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    iget-wide v5, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 590
    .line 591
    ushr-long v7, v5, v28

    .line 592
    .line 593
    xor-long/2addr v5, v7

    .line 594
    long-to-int v5, v5

    .line 595
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 604
    .line 605
    .line 606
    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 607
    .line 608
    if-eqz v7, :cond_b

    .line 609
    .line 610
    move-object/from16 v7, v40

    .line 611
    .line 612
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 613
    .line 614
    .line 615
    :goto_7
    move-object/from16 v13, v37

    .line 616
    .line 617
    goto :goto_8

    .line 618
    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 619
    .line 620
    .line 621
    goto :goto_7

    .line 622
    :goto_8
    invoke-static {v11, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 623
    .line 624
    .line 625
    move-object/from16 v4, v34

    .line 626
    .line 627
    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 628
    .line 629
    .line 630
    move-object/from16 v6, v32

    .line 631
    .line 632
    move-object/from16 v8, v35

    .line 633
    .line 634
    invoke-static {v5, v11, v6, v11, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 635
    .line 636
    .line 637
    move-object/from16 v5, v36

    .line 638
    .line 639
    invoke-static {v11, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 647
    .line 648
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 649
    .line 650
    const/4 v13, 0x0

    .line 651
    const/16 v14, 0x3d

    .line 652
    .line 653
    const/4 v4, 0x0

    .line 654
    const/4 v7, 0x0

    .line 655
    const-wide/16 v8, 0x0

    .line 656
    .line 657
    const/4 v10, 0x0

    .line 658
    const/4 v11, 0x0

    .line 659
    move-object/from16 v12, p3

    .line 660
    .line 661
    invoke-static/range {v4 .. v14}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-4lLiAd8(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/GapComposer;II)V

    .line 662
    .line 663
    .line 664
    move-object v14, v12

    .line 665
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 669
    .line 670
    .line 671
    move-object/from16 v6, p2

    .line 672
    .line 673
    move-object v11, v14

    .line 674
    goto/16 :goto_b

    .line 675
    .line 676
    :cond_c
    move-object v14, v11

    .line 677
    move-object/from16 v6, v32

    .line 678
    .line 679
    move-object/from16 v4, v34

    .line 680
    .line 681
    move-object/from16 v8, v35

    .line 682
    .line 683
    move-object/from16 v5, v36

    .line 684
    .line 685
    move-object/from16 v13, v37

    .line 686
    .line 687
    move-object/from16 v7, v40

    .line 688
    .line 689
    const/4 v15, 0x0

    .line 690
    instance-of v9, v2, Lorg/wikipedia/util/Resource$Error;

    .line 691
    .line 692
    if-eqz v9, :cond_d

    .line 693
    .line 694
    const v4, -0x1c92de42

    .line 695
    .line 696
    .line 697
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 698
    .line 699
    .line 700
    const v4, 0x7f120a94

    .line 701
    .line 702
    .line 703
    invoke-static {v4, v14}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 712
    .line 713
    iget-wide v6, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 714
    .line 715
    const/4 v12, 0x0

    .line 716
    const/16 v13, 0xd

    .line 717
    .line 718
    const/4 v9, 0x0

    .line 719
    const/4 v11, 0x0

    .line 720
    move-object v8, v0

    .line 721
    move/from16 v10, v29

    .line 722
    .line 723
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    const/16 v26, 0x0

    .line 728
    .line 729
    const v27, 0x3fff8

    .line 730
    .line 731
    .line 732
    const/4 v8, 0x0

    .line 733
    const-wide/16 v9, 0x0

    .line 734
    .line 735
    const/4 v11, 0x0

    .line 736
    const/4 v12, 0x0

    .line 737
    const-wide/16 v13, 0x0

    .line 738
    .line 739
    move/from16 v24, v15

    .line 740
    .line 741
    const/4 v15, 0x0

    .line 742
    const-wide/16 v16, 0x0

    .line 743
    .line 744
    const/16 v18, 0x0

    .line 745
    .line 746
    const/16 v19, 0x0

    .line 747
    .line 748
    const/16 v20, 0x0

    .line 749
    .line 750
    const/16 v21, 0x0

    .line 751
    .line 752
    const/16 v22, 0x0

    .line 753
    .line 754
    const/16 v23, 0x0

    .line 755
    .line 756
    const/16 v25, 0x30

    .line 757
    .line 758
    move/from16 v1, v24

    .line 759
    .line 760
    move-object/from16 v24, p3

    .line 761
    .line 762
    invoke-static/range {v4 .. v27}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 763
    .line 764
    .line 765
    move-object/from16 v11, v24

    .line 766
    .line 767
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 768
    .line 769
    .line 770
    move-object/from16 v6, p2

    .line 771
    .line 772
    goto/16 :goto_b

    .line 773
    .line 774
    :cond_d
    move-object v11, v14

    .line 775
    move v1, v15

    .line 776
    move-object v14, v0

    .line 777
    instance-of v0, v2, Lorg/wikipedia/util/Resource$Success;

    .line 778
    .line 779
    if-eqz v0, :cond_10

    .line 780
    .line 781
    const v0, -0x1c8e87b5

    .line 782
    .line 783
    .line 784
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 785
    .line 786
    .line 787
    const/high16 v12, 0x3f800000    # 1.0f

    .line 788
    .line 789
    invoke-static {v14, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    const/high16 v9, 0x40800000    # 4.0f

    .line 794
    .line 795
    const/4 v10, 0x0

    .line 796
    invoke-static {v0, v10, v9, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    move-object/from16 v9, v31

    .line 801
    .line 802
    move-object/from16 v10, v38

    .line 803
    .line 804
    invoke-static {v9, v10, v11, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 805
    .line 806
    .line 807
    move-result-object v9

    .line 808
    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 809
    .line 810
    ushr-long v16, v14, v28

    .line 811
    .line 812
    xor-long v14, v14, v16

    .line 813
    .line 814
    long-to-int v10, v14

    .line 815
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 816
    .line 817
    .line 818
    move-result-object v12

    .line 819
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 824
    .line 825
    .line 826
    iget-boolean v14, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 827
    .line 828
    if-eqz v14, :cond_e

    .line 829
    .line 830
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 831
    .line 832
    .line 833
    goto :goto_9

    .line 834
    :cond_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 835
    .line 836
    .line 837
    :goto_9
    invoke-static {v11, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 838
    .line 839
    .line 840
    invoke-static {v11, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v10, v11, v6, v11, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 844
    .line 845
    .line 846
    invoke-static {v11, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 847
    .line 848
    .line 849
    const v0, 0x645ceb02

    .line 850
    .line 851
    .line 852
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 853
    .line 854
    .line 855
    move-object v0, v2

    .line 856
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 857
    .line 858
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 859
    .line 860
    check-cast v0, Ljava/lang/Iterable;

    .line 861
    .line 862
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 867
    .line 868
    .line 869
    move-result v4

    .line 870
    if-eqz v4, :cond_f

    .line 871
    .line 872
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v4

    .line 876
    check-cast v4, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;

    .line 877
    .line 878
    shr-int/lit8 v5, v33, 0x3

    .line 879
    .line 880
    and-int/lit8 v5, v5, 0x70

    .line 881
    .line 882
    move-object/from16 v6, p2

    .line 883
    .line 884
    invoke-static {v4, v6, v11, v5}, Lorg/jsoup/Jsoup;->DefinitionList(Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 885
    .line 886
    .line 887
    goto :goto_a

    .line 888
    :cond_f
    move-object/from16 v6, p2

    .line 889
    .line 890
    invoke-static {v11, v1, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 891
    .line 892
    .line 893
    goto :goto_b

    .line 894
    :cond_10
    move-object/from16 v6, p2

    .line 895
    .line 896
    const v0, -0x1c894699

    .line 897
    .line 898
    .line 899
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 903
    .line 904
    .line 905
    :goto_b
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 906
    .line 907
    .line 908
    goto :goto_c

    .line 909
    :cond_11
    move-object v6, v3

    .line 910
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 911
    .line 912
    .line 913
    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 914
    .line 915
    .line 916
    move-result-object v7

    .line 917
    if-eqz v7, :cond_12

    .line 918
    .line 919
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 920
    .line 921
    const/16 v5, 0x15

    .line 922
    .line 923
    move-object/from16 v1, p0

    .line 924
    .line 925
    move/from16 v4, p4

    .line 926
    .line 927
    move-object v3, v6

    .line 928
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    .line 929
    .line 930
    .line 931
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 932
    .line 933
    :cond_12
    return-void
.end method

.method public static final WiktionaryDialogScreen(Lorg/wikipedia/wiktionary/WiktionaryViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const v0, -0x71856ca4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v1, v0, 0x13

    .line 36
    .line 37
    const/16 v2, 0x12

    .line 38
    .line 39
    if-eq v1, v2, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 45
    .line 46
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 53
    .line 54
    invoke-static {v1, p2}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 63
    .line 64
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 65
    .line 66
    iget-object v3, p0, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->selectedText:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    const-string v3, ""

    .line 71
    .line 72
    :cond_3
    const/16 v4, 0x23

    .line 73
    .line 74
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v4, "_"

    .line 79
    .line 80
    const-string v5, " "

    .line 81
    .line 82
    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    shl-int/lit8 v0, v0, 0x3

    .line 87
    .line 88
    and-int/lit16 v0, v0, 0x380

    .line 89
    .line 90
    invoke-static {v3, v1, p1, p2, v0}, Lorg/jsoup/Jsoup;->WiktionaryDialogContent(Ljava/lang/String;Lorg/wikipedia/util/Resource;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    new-instance v0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    invoke-direct {v0, p0, p1, p3, v2}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 109
    .line 110
    :cond_5
    return-void
.end method

.method public static final commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Headers;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, [Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static final commonName(Lokhttp3/Headers;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 5
    .line 6
    mul-int/lit8 v0, p1, 0x2

    .line 7
    .line 8
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "name["

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x5d

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static final commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, v1}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object p0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static final commonValue(Lokhttp3/Headers;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 5
    .line 6
    mul-int/lit8 v0, p1, 0x2

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v1, "value["

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x5d

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public static drawMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget v0, Lorg/wikipedia/places/PlacesFragment;->MARKER_SIZE:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    .line 18
    div-float/2addr v0, v1

    .line 19
    invoke-virtual {p0, v0, v0, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p5, p2, p1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    sget p1, Lorg/wikipedia/places/PlacesFragment;->MARKER_BORDER_SIZE:F

    .line 40
    .line 41
    div-float/2addr p1, v1

    .line 42
    sub-float p1, v0, p1

    .line 43
    .line 44
    invoke-virtual {p0, v0, v0, p1, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static getInstance()Lorg/wikipedia/WikipediaApp;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "instance"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public static getMarkerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/high16 v0, 0x42200000    # 40.0f

    .line 14
    .line 15
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Canvas;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 37
    .line 38
    .line 39
    sget-object v2, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 40
    .line 41
    move-object v6, p0

    .line 42
    move-object v2, p1

    .line 43
    move-object v3, p2

    .line 44
    move-object v4, p3

    .line 45
    move-object v5, p4

    .line 46
    invoke-static/range {v1 .. v6}, Lorg/jsoup/Jsoup;->drawMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static getMarkerBitmapBase(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/wikipedia/places/PlacesFragment;->MARKER_SIZE:I

    .line 5
    .line 6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    const v3, 0x7f080210

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v3}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/UnsignedKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v3, v4, v4, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lorg/jsoup/Jsoup;->getMarkerPaintSrc(Landroid/content/Context;)Landroid/graphics/Paint;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {}, Lorg/jsoup/Jsoup;->getMarkerPaintSrcIn()Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {p0}, Lorg/jsoup/Jsoup;->getMarkerBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-static/range {v2 .. v7}, Lorg/jsoup/Jsoup;->drawMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V

    .line 60
    .line 61
    .line 62
    return-object v1
.end method

.method public static getMarkerBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lorg/wikipedia/places/PlacesFragment;->MARKER_BORDER_SIZE:F

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/util/TypedValue;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const v2, 0x7f0404e7

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v1, v2

    .line 41
    :goto_0
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget p0, v1, Landroid/util/TypedValue;->data:I

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_1
    const-string p0, "Attribute not found; ID=2130969831"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v2
.end method

.method public static getMarkerPaintSrc(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/util/TypedValue;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v3, 0x7f04054f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v2, v1

    .line 34
    :goto_0
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget p0, v2, Landroid/util/TypedValue;->data:I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    .line 42
    .line 43
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 44
    .line 45
    invoke-direct {p0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_1
    const-string p0, "Attribute not found; ID=2130969935"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public static getMarkerPaintSrcIn()Landroid/graphics/Paint;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 11
    .line 12
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static getPowerGradient(II)Landroid/graphics/drawable/PaintDrawable;
    .locals 13

    .line 1
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    new-array v7, v1, [I

    .line 17
    .line 18
    shr-int/lit8 v2, p0, 0x18

    .line 19
    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 21
    .line 22
    shr-int/lit8 v3, p0, 0x10

    .line 23
    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 25
    .line 26
    shr-int/lit8 v4, p0, 0x8

    .line 27
    .line 28
    and-int/lit16 v4, v4, 0xff

    .line 29
    .line 30
    and-int/lit16 p0, p0, 0xff

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    if-ge v5, v1, :cond_0

    .line 37
    .line 38
    int-to-float v9, v5

    .line 39
    mul-float/2addr v9, v6

    .line 40
    const/high16 v10, 0x40e00000    # 7.0f

    .line 41
    .line 42
    div-float/2addr v9, v10

    .line 43
    float-to-double v9, v9

    .line 44
    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 45
    .line 46
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    double-to-float v9, v9

    .line 51
    invoke-static {v9, v8, v6}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    int-to-float v8, v2

    .line 56
    mul-float/2addr v8, v6

    .line 57
    float-to-int v6, v8

    .line 58
    invoke-static {v6, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    aput v6, v7, v5

    .line 63
    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    and-int/lit8 p0, p1, 0x70

    .line 68
    .line 69
    const/16 p1, 0x30

    .line 70
    .line 71
    if-eq p0, p1, :cond_2

    .line 72
    .line 73
    const/16 p1, 0x50

    .line 74
    .line 75
    if-eq p0, p1, :cond_1

    .line 76
    .line 77
    move v4, v8

    .line 78
    move v6, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v4, v8

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v4, v6

    .line 83
    move v6, v8

    .line 84
    :goto_1
    new-instance v2, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;-><init>(FFFF[I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public static final headersCheckName(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x21

    .line 22
    .line 23
    if-gt v3, v2, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x7f

    .line 26
    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Unexpected char 0x"

    .line 35
    .line 36
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x10

    .line 40
    .line 41
    invoke-static {v3}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x2

    .line 56
    if-ge v3, v4, :cond_1

    .line 57
    .line 58
    const-string v3, "0"

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " at "

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " in header name: "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_2
    return-void

    .line 98
    :cond_3
    const-string p0, "name is empty"

    .line 99
    .line 100
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static final headersCheckValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x9

    .line 19
    .line 20
    if-eq v2, v3, :cond_3

    .line 21
    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-gt v3, v2, :cond_0

    .line 25
    .line 26
    const/16 v3, 0x7f

    .line 27
    .line 28
    if-ge v2, v3, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Unexpected char 0x"

    .line 34
    .line 35
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x10

    .line 39
    .line 40
    invoke-static {v3}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x2

    .line 55
    if-ge v3, v4, :cond_1

    .line 56
    .line 57
    const-string v3, "0"

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " at "

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, " in "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " value"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lokhttp3/internal/_UtilCommonKt;->isSensitiveHeader(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    const-string p0, ""

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const-string p1, ": "

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    return-void
.end method

.method public static noRippleClickable$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/16 v6, 0x10

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    move-object v0, p0

    .line 14
    move-object v5, p1

    .line 15
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/RippleNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 6

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lorg/jsoup/parser/Parser;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lorg/jsoup/nodes/Document;

    .line 17
    .line 18
    invoke-direct {v2}, Lorg/jsoup/nodes/Document;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 22
    .line 23
    iput-object p0, v2, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    .line 24
    .line 25
    iput-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    .line 26
    .line 27
    iget-object v2, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 28
    .line 29
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 30
    .line 31
    new-instance v2, Lorg/jsoup/parser/CharacterReader;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/StringReader;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, v2, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v2, Lorg/jsoup/parser/Tokeniser;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    const/16 v3, 0x20

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 56
    .line 57
    iget-object v2, p0, Lorg/jsoup/parser/Parser;->tagSet:Lorg/jsoup/parser/TagSet;

    .line 58
    .line 59
    if-nez v2, :cond_0

    .line 60
    .line 61
    new-instance v2, Lorg/jsoup/parser/TagSet;

    .line 62
    .line 63
    sget-object v3, Lorg/jsoup/parser/TagSet;->HtmlTagSet:Lorg/jsoup/parser/TagSet;

    .line 64
    .line 65
    invoke-direct {v2, v3, v1}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lorg/jsoup/parser/Parser;->tagSet:Lorg/jsoup/parser/TagSet;

    .line 69
    .line 70
    :cond_0
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tagSet:Lorg/jsoup/parser/TagSet;

    .line 71
    .line 72
    new-instance p0, Lorg/jsoup/parser/Token$StartTag;

    .line 73
    .line 74
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 75
    .line 76
    .line 77
    iput-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    .line 78
    .line 79
    iput-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 80
    .line 81
    const-string p0, ""

    .line 82
    .line 83
    iput-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    .line 84
    .line 85
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 86
    .line 87
    iput-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 88
    .line 89
    iput-object v1, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->originalState:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    iput-boolean p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 93
    .line 94
    iput-object v1, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->headElement:Lorg/jsoup/nodes/Element;

    .line 95
    .line 96
    iput-object v1, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 97
    .line 98
    new-instance v2, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 104
    .line 105
    new-instance v2, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    .line 111
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/ArrayList;

    .line 118
    .line 119
    new-instance v2, Lorg/jsoup/parser/Token$EndTag;

    .line 120
    .line 121
    invoke-direct {v2, v0}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 122
    .line 123
    .line 124
    iput-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->emptyEnd:Lorg/jsoup/parser/Token$EndTag;

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    iput-boolean v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 128
    .line 129
    iput-boolean p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    .line 130
    .line 131
    :goto_0
    iget-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 132
    .line 133
    iget-object v2, v2, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lorg/jsoup/parser/Token$TokenType;

    .line 136
    .line 137
    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 138
    .line 139
    if-ne v2, v3, :cond_4

    .line 140
    .line 141
    iget-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 142
    .line 143
    if-nez v2, :cond_2

    .line 144
    .line 145
    iget-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 146
    .line 147
    if-nez p0, :cond_1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 151
    .line 152
    .line 153
    iput-object v1, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 154
    .line 155
    iput-object v1, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 156
    .line 157
    iput-object v1, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 158
    .line 159
    :goto_1
    iget-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 160
    .line 161
    return-object p0

    .line 162
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_3

    .line 167
    .line 168
    iput-object v1, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    iget-object v2, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 176
    .line 177
    iget-object v3, v2, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    .line 178
    .line 179
    :goto_2
    iget-boolean v4, v2, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 180
    .line 181
    if-nez v4, :cond_5

    .line 182
    .line 183
    iget-object v4, v2, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    .line 184
    .line 185
    iget-object v5, v2, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 186
    .line 187
    invoke-virtual {v4, v2, v5}, Lorg/jsoup/parser/TokeniserState;->read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    iget-object v4, v3, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    .line 192
    .line 193
    invoke-virtual {v4}, Lokhttp3/FormBody$Builder;->hasData()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    iput-boolean p0, v2, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 201
    .line 202
    iget-object v3, v2, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    .line 203
    .line 204
    :goto_3
    iput-object v3, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lorg/jsoup/parser/Token;->reset()V

    .line 210
    .line 211
    .line 212
    goto :goto_0
.end method

.method public static shimmerEffect$default(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    and-int/lit8 p3, p3, 0x8

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const/high16 p3, 0x3f800000    # 1.0f

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p3, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, p1, p2, v0, p3}, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/animation/core/Easing;F)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static unmarshal()Lkotlinx/coroutines/internal/Symbol;
    .locals 7

    .line 1
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 8
    .line 9
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCookies()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 33
    .line 34
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 43
    .line 44
    :cond_1
    const-string v1, "GeoIP"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcoil3/network/NetworkHeaders$Builder;->getCookieValueByName(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_7

    .line 58
    .line 59
    const-string v2, ":"

    .line 60
    .line 61
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/4 v4, 0x0

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 89
    .line 90
    const/16 v5, 0xa

    .line 91
    .line 92
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    move v5, v4

    .line 96
    :cond_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_3

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-interface {v0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-object v0, v3

    .line 137
    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    .line 138
    .line 139
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, [Ljava/lang/String;

    .line 144
    .line 145
    array-length v2, v0

    .line 146
    invoke-static {}, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->getEntries()Lkotlin/enums/EnumEntries;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lkotlin/collections/AbstractCollection;

    .line 151
    .line 152
    invoke-virtual {v3}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-lt v2, v3, :cond_6

    .line 157
    .line 158
    sget-object v2, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->VERSION:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    aget-object v2, v0, v2

    .line 165
    .line 166
    const-string/jumbo v3, "v4"

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_5

    .line 174
    .line 175
    sget-object v2, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->LATITUDE:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    aget-object v3, v0, v3

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-lez v3, :cond_4

    .line 188
    .line 189
    sget-object v3, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->LONGITUDE:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    aget-object v4, v0, v4

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-lez v4, :cond_4

    .line 202
    .line 203
    new-instance v4, Landroid/location/Location;

    .line 204
    .line 205
    const-string v5, ""

    .line 206
    .line 207
    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    aget-object v2, v0, v2

    .line 215
    .line 216
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 217
    .line 218
    .line 219
    move-result-wide v5

    .line 220
    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    aget-object v2, v0, v2

    .line 228
    .line 229
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 230
    .line 231
    .line 232
    move-result-wide v2

    .line 233
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :catch_1
    const-string v0, "Location is malformed."

    .line 238
    .line 239
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-object v1

    .line 243
    :cond_4
    :goto_2
    new-instance v1, Lkotlinx/coroutines/internal/Symbol;

    .line 244
    .line 245
    sget-object v2, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->COUNTRY:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    aget-object v2, v0, v2

    .line 252
    .line 253
    sget-object v3, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->REGION:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    aget-object v3, v0, v3

    .line 260
    .line 261
    sget-object v4, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->CITY:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 262
    .line 263
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    aget-object v0, v0, v4

    .line 268
    .line 269
    invoke-direct {v1, v2, v3, v0}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-object v1

    .line 273
    :cond_5
    const-string v0, "Incorrect cookie version."

    .line 274
    .line 275
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-object v1

    .line 279
    :cond_6
    const-string v0, "Cookie is malformed."

    .line 280
    .line 281
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-object v1

    .line 285
    :cond_7
    const-string v0, "Cookie is empty."

    .line 286
    .line 287
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v1
.end method
