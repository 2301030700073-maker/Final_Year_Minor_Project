.class public final synthetic Lorg/wikipedia/activitytab/ReadingHistoryModuleKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;

.field public final synthetic f$1:Lj$/time/LocalDate;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;Lj$/time/LocalDate;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/activitytab/ReadingHistoryModuleKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ReadingHistoryModuleKt$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/activitytab/ReadingHistoryModuleKt$$ExternalSyntheticLambda6;->f$1:Lj$/time/LocalDate;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 62

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ReadingHistoryModuleKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v3, "MMMM d"

    .line 8
    .line 9
    const-string v4, "hhmm a"

    .line 10
    .line 11
    const/high16 v5, 0x41800000    # 16.0f

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    iget-object v9, v0, Lorg/wikipedia/activitytab/ReadingHistoryModuleKt$$ExternalSyntheticLambda6;->f$1:Lj$/time/LocalDate;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/wikipedia/activitytab/ReadingHistoryModuleKt$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;

    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    move-object/from16 v13, p2

    .line 28
    .line 29
    check-cast v13, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    and-int/lit8 v14, v13, 0x3

    .line 36
    .line 37
    if-eq v14, v6, :cond_0

    .line 38
    .line 39
    move v6, v12

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v6, v11

    .line 42
    :goto_0
    and-int/2addr v13, v12

    .line 43
    invoke-virtual {v1, v13, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_6

    .line 48
    .line 49
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLocale:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 50
    .line 51
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroidx/compose/ui/text/intl/Locale;

    .line 56
    .line 57
    iget-object v6, v6, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 58
    .line 59
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    .line 61
    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object v14, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 66
    .line 67
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 68
    .line 69
    invoke-static {v14, v15, v1, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    const/16 v22, 0x20

    .line 74
    .line 75
    iget-wide v7, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 76
    .line 77
    ushr-long v16, v7, v22

    .line 78
    .line 79
    xor-long v7, v7, v16

    .line 80
    .line 81
    long-to-int v7, v7

    .line 82
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v1, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 91
    .line 92
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 98
    .line 99
    .line 100
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 101
    .line 102
    if-eqz v15, :cond_1

    .line 103
    .line 104
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 109
    .line 110
    .line 111
    :goto_1
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 112
    .line 113
    invoke-static {v1, v14, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 117
    .line 118
    invoke-static {v1, v8, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 126
    .line 127
    invoke-static {v1, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 131
    .line 132
    invoke-static {v1, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 133
    .line 134
    .line 135
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 136
    .line 137
    invoke-static {v1, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 138
    .line 139
    .line 140
    const v5, 0x7f0801ab

    .line 141
    .line 142
    .line 143
    invoke-static {v5, v11, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    const v11, 0x7f12005e

    .line 148
    .line 149
    .line 150
    invoke-static {v11, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    move-object/from16 v19, v1

    .line 155
    .line 156
    iget-object v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->lastArticleReadTime:Lj$/time/LocalDateTime;

    .line 157
    .line 158
    move-object/from16 p1, v13

    .line 159
    .line 160
    iget v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesReadThisMonth:I

    .line 161
    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    iget-object v9, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->lastArticleReadTime:Lj$/time/LocalDateTime;

    .line 173
    .line 174
    if-eqz v1, :cond_2

    .line 175
    .line 176
    invoke-static {v6, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v9, v1}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    :goto_2
    move-object/from16 v16, v1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_2
    invoke-static {v6, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v9, v1}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    goto :goto_2

    .line 204
    :cond_3
    const/16 v16, 0x0

    .line 205
    .line 206
    :goto_3
    const v20, 0x30040

    .line 207
    .line 208
    .line 209
    const/16 v21, 0x11

    .line 210
    .line 211
    move v1, v13

    .line 212
    const/4 v13, 0x0

    .line 213
    const/16 v17, 0x0

    .line 214
    .line 215
    const/16 v18, 0x1

    .line 216
    .line 217
    move v4, v1

    .line 218
    move-object v3, v14

    .line 219
    move-object v1, v15

    .line 220
    move-object v14, v5

    .line 221
    move-object v15, v11

    .line 222
    move-object/from16 v5, p1

    .line 223
    .line 224
    invoke-static/range {v13 .. v21}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CommonCardHeader(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 225
    .line 226
    .line 227
    move-object/from16 v6, v19

    .line 228
    .line 229
    const/high16 v9, 0x3f800000    # 1.0f

    .line 230
    .line 231
    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    const/16 v18, 0xd

    .line 238
    .line 239
    const/4 v14, 0x0

    .line 240
    const/high16 v15, 0x40c00000    # 6.0f

    .line 241
    .line 242
    const/16 v16, 0x0

    .line 243
    .line 244
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    sget-object v11, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 249
    .line 250
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 251
    .line 252
    const/4 v14, 0x0

    .line 253
    invoke-static {v11, v13, v6, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    iget-wide v13, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 258
    .line 259
    ushr-long v15, v13, v22

    .line 260
    .line 261
    xor-long/2addr v13, v15

    .line 262
    long-to-int v13, v13

    .line 263
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    invoke-static {v6, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 272
    .line 273
    .line 274
    iget-boolean v15, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 275
    .line 276
    if-eqz v15, :cond_4

    .line 277
    .line 278
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 283
    .line 284
    .line 285
    :goto_4
    invoke-static {v6, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v6, v14, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v13, v6, v8, v6, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 302
    .line 303
    new-instance v14, Landroidx/compose/foundation/layout/VerticalAlignElement;

    .line 304
    .line 305
    invoke-direct {v14, v1}, Landroidx/compose/foundation/layout/VerticalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Vertical;)V

    .line 306
    .line 307
    .line 308
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 309
    .line 310
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 315
    .line 316
    iget-object v1, v1, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 317
    .line 318
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 319
    .line 320
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 321
    .line 322
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 327
    .line 328
    iget-wide v7, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 329
    .line 330
    const/16 v35, 0x0

    .line 331
    .line 332
    const v36, 0x1ffb8

    .line 333
    .line 334
    .line 335
    const/16 v17, 0x0

    .line 336
    .line 337
    const-wide/16 v18, 0x0

    .line 338
    .line 339
    const/16 v21, 0x0

    .line 340
    .line 341
    const-wide/16 v22, 0x0

    .line 342
    .line 343
    const/16 v24, 0x0

    .line 344
    .line 345
    const-wide/16 v25, 0x0

    .line 346
    .line 347
    const/16 v27, 0x0

    .line 348
    .line 349
    const/16 v28, 0x0

    .line 350
    .line 351
    const/16 v29, 0x0

    .line 352
    .line 353
    const/16 v30, 0x0

    .line 354
    .line 355
    const/16 v31, 0x0

    .line 356
    .line 357
    const/high16 v34, 0x180000

    .line 358
    .line 359
    move-object/from16 v32, v1

    .line 360
    .line 361
    move-object/from16 v33, v6

    .line 362
    .line 363
    move-wide v15, v7

    .line 364
    invoke-static/range {v13 .. v36}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 365
    .line 366
    .line 367
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 368
    .line 369
    const/4 v3, 0x1

    .line 370
    const/high16 v9, 0x3f800000    # 1.0f

    .line 371
    .line 372
    invoke-direct {v1, v9, v3}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 373
    .line 374
    .line 375
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 376
    .line 377
    .line 378
    iget-object v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesReadByWeek:Ljava/util/List;

    .line 379
    .line 380
    if-nez v4, :cond_5

    .line 381
    .line 382
    const/high16 v0, 0x42000000    # 32.0f

    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_5
    const/high16 v0, 0x42400000    # 48.0f

    .line 386
    .line 387
    :goto_5
    const/high16 v1, 0x42900000    # 72.0f

    .line 388
    .line 389
    invoke-static {v5, v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    sget-wide v15, Lorg/wikipedia/compose/ComposeColors;->Gray300:J

    .line 394
    .line 395
    sget-wide v17, Lorg/wikipedia/compose/ComposeColors;->Green600:J

    .line 396
    .line 397
    const/16 v20, 0xd80

    .line 398
    .line 399
    move-object/from16 v19, v6

    .line 400
    .line 401
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/compose/components/TabsBoxKt;->TinyBarChart-eaDK9VM(Ljava/util/List;Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/GapComposer;I)V

    .line 402
    .line 403
    .line 404
    const/4 v3, 0x1

    .line 405
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 409
    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_6
    move-object v6, v1

    .line 413
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 414
    .line 415
    .line 416
    :goto_6
    return-object v2

    .line 417
    :pswitch_0
    const/16 v22, 0x20

    .line 418
    .line 419
    move-object/from16 v13, p1

    .line 420
    .line 421
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 422
    .line 423
    move-object/from16 v1, p2

    .line 424
    .line 425
    check-cast v1, Ljava/lang/Integer;

    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 432
    .line 433
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 434
    .line 435
    and-int/lit8 v10, v1, 0x3

    .line 436
    .line 437
    if-eq v10, v6, :cond_7

    .line 438
    .line 439
    const/4 v6, 0x1

    .line 440
    :goto_7
    const/4 v10, 0x1

    .line 441
    goto :goto_8

    .line 442
    :cond_7
    const/4 v6, 0x0

    .line 443
    goto :goto_7

    .line 444
    :goto_8
    and-int/2addr v1, v10

    .line 445
    invoke-virtual {v13, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_16

    .line 450
    .line 451
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLocale:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 452
    .line 453
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    check-cast v1, Landroidx/compose/ui/text/intl/Locale;

    .line 458
    .line 459
    iget-object v1, v1, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 460
    .line 461
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 462
    .line 463
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 468
    .line 469
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 470
    .line 471
    const/4 v14, 0x0

    .line 472
    invoke-static {v10, v11, v13, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    iget-wide v11, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 477
    .line 478
    ushr-long v14, v11, v22

    .line 479
    .line 480
    xor-long/2addr v11, v14

    .line 481
    long-to-int v11, v11

    .line 482
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 483
    .line 484
    .line 485
    move-result-object v12

    .line 486
    invoke-static {v13, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 491
    .line 492
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 496
    .line 497
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 498
    .line 499
    .line 500
    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 501
    .line 502
    if-eqz v15, :cond_8

    .line 503
    .line 504
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 505
    .line 506
    .line 507
    goto :goto_9

    .line 508
    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 509
    .line 510
    .line 511
    :goto_9
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 512
    .line 513
    invoke-static {v13, v10, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 514
    .line 515
    .line 516
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 517
    .line 518
    invoke-static {v13, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v11

    .line 525
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 526
    .line 527
    invoke-static {v13, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 528
    .line 529
    .line 530
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 531
    .line 532
    invoke-static {v13, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 533
    .line 534
    .line 535
    move-object/from16 p1, v7

    .line 536
    .line 537
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 538
    .line 539
    invoke-static {v13, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 540
    .line 541
    .line 542
    const v5, 0x7f08012a

    .line 543
    .line 544
    .line 545
    move-object/from16 v19, v2

    .line 546
    .line 547
    const/4 v2, 0x0

    .line 548
    invoke-static {v5, v2, v13}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    const v2, 0x7f12005f

    .line 553
    .line 554
    .line 555
    invoke-static {v2, v13}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    move-object/from16 p2, v2

    .line 560
    .line 561
    iget-object v2, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->lastArticleSavedTime:Lj$/time/LocalDateTime;

    .line 562
    .line 563
    move-object/from16 v17, v7

    .line 564
    .line 565
    iget v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesSavedThisMonth:I

    .line 566
    .line 567
    move/from16 v18, v7

    .line 568
    .line 569
    iget-object v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesSaved:Ljava/util/List;

    .line 570
    .line 571
    if-eqz v2, :cond_a

    .line 572
    .line 573
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->lastArticleSavedTime:Lj$/time/LocalDateTime;

    .line 582
    .line 583
    if-eqz v2, :cond_9

    .line 584
    .line 585
    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-static {v2}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-virtual {v0, v2}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    :goto_a
    move-object v2, v14

    .line 598
    goto :goto_b

    .line 599
    :cond_9
    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-static {v2}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v0, v2}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    goto :goto_a

    .line 612
    :cond_a
    move-object v2, v14

    .line 613
    const/4 v0, 0x0

    .line 614
    :goto_b
    const v14, 0x30040

    .line 615
    .line 616
    .line 617
    move-object v3, v15

    .line 618
    const/16 v15, 0x11

    .line 619
    .line 620
    move-object v4, v7

    .line 621
    const/4 v7, 0x0

    .line 622
    move-object v9, v11

    .line 623
    const/4 v11, 0x0

    .line 624
    move-object/from16 v16, v12

    .line 625
    .line 626
    const/4 v12, 0x1

    .line 627
    move-object/from16 v20, v1

    .line 628
    .line 629
    move-object/from16 v21, v8

    .line 630
    .line 631
    move-object/from16 v1, v16

    .line 632
    .line 633
    move/from16 v30, v18

    .line 634
    .line 635
    move-object v8, v5

    .line 636
    move-object v5, v10

    .line 637
    move-object v10, v0

    .line 638
    move-object v0, v9

    .line 639
    move-object/from16 v9, p2

    .line 640
    .line 641
    move-object/from16 p2, v4

    .line 642
    .line 643
    move-object v4, v3

    .line 644
    move-object v3, v2

    .line 645
    move-object/from16 v2, v17

    .line 646
    .line 647
    invoke-static/range {v7 .. v15}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CommonCardHeader(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 648
    .line 649
    .line 650
    const/high16 v9, 0x3f800000    # 1.0f

    .line 651
    .line 652
    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 653
    .line 654
    .line 655
    move-result-object v24

    .line 656
    const/16 v28, 0x0

    .line 657
    .line 658
    const/16 v29, 0xd

    .line 659
    .line 660
    const/16 v25, 0x0

    .line 661
    .line 662
    const/high16 v26, 0x40c00000    # 6.0f

    .line 663
    .line 664
    const/16 v27, 0x0

    .line 665
    .line 666
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 671
    .line 672
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 673
    .line 674
    const/4 v14, 0x0

    .line 675
    invoke-static {v8, v9, v13, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 676
    .line 677
    .line 678
    move-result-object v10

    .line 679
    iget-wide v11, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 680
    .line 681
    ushr-long v14, v11, v22

    .line 682
    .line 683
    xor-long/2addr v11, v14

    .line 684
    long-to-int v11, v11

    .line 685
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 686
    .line 687
    .line 688
    move-result-object v12

    .line 689
    invoke-static {v13, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 690
    .line 691
    .line 692
    move-result-object v7

    .line 693
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 694
    .line 695
    .line 696
    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 697
    .line 698
    if-eqz v14, :cond_b

    .line 699
    .line 700
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 701
    .line 702
    .line 703
    goto :goto_c

    .line 704
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 705
    .line 706
    .line 707
    :goto_c
    invoke-static {v13, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 708
    .line 709
    .line 710
    invoke-static {v13, v12, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 711
    .line 712
    .line 713
    invoke-static {v11, v13, v1, v13, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 714
    .line 715
    .line 716
    invoke-static {v13, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 717
    .line 718
    .line 719
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v38

    .line 723
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 724
    .line 725
    new-instance v10, Landroidx/compose/foundation/layout/VerticalAlignElement;

    .line 726
    .line 727
    invoke-direct {v10, v7}, Landroidx/compose/foundation/layout/VerticalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Vertical;)V

    .line 728
    .line 729
    .line 730
    sget-object v7, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 731
    .line 732
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    check-cast v7, Landroidx/compose/material3/Typography;

    .line 737
    .line 738
    iget-object v7, v7, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 739
    .line 740
    sget-object v45, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 741
    .line 742
    sget-object v11, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 743
    .line 744
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v11

    .line 748
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 749
    .line 750
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 751
    .line 752
    const/16 v60, 0x0

    .line 753
    .line 754
    const v61, 0x1ffb8

    .line 755
    .line 756
    .line 757
    const/16 v42, 0x0

    .line 758
    .line 759
    const-wide/16 v43, 0x0

    .line 760
    .line 761
    const/16 v46, 0x0

    .line 762
    .line 763
    const-wide/16 v47, 0x0

    .line 764
    .line 765
    const/16 v49, 0x0

    .line 766
    .line 767
    const-wide/16 v50, 0x0

    .line 768
    .line 769
    const/16 v52, 0x0

    .line 770
    .line 771
    const/16 v53, 0x0

    .line 772
    .line 773
    const/16 v54, 0x0

    .line 774
    .line 775
    const/16 v55, 0x0

    .line 776
    .line 777
    const/16 v56, 0x0

    .line 778
    .line 779
    const/high16 v59, 0x180000

    .line 780
    .line 781
    move-object/from16 v57, v7

    .line 782
    .line 783
    move-object/from16 v39, v10

    .line 784
    .line 785
    move-wide/from16 v40, v11

    .line 786
    .line 787
    move-object/from16 v58, v13

    .line 788
    .line 789
    invoke-static/range {v38 .. v61}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 790
    .line 791
    .line 792
    new-instance v7, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 793
    .line 794
    const/high16 v10, 0x3f800000    # 1.0f

    .line 795
    .line 796
    const/4 v11, 0x1

    .line 797
    invoke-direct {v7, v10, v11}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 798
    .line 799
    .line 800
    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 801
    .line 802
    .line 803
    const/4 v14, 0x0

    .line 804
    invoke-static {v8, v9, v13, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 805
    .line 806
    .line 807
    move-result-object v7

    .line 808
    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 809
    .line 810
    ushr-long v10, v8, v22

    .line 811
    .line 812
    xor-long/2addr v8, v10

    .line 813
    long-to-int v8, v8

    .line 814
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 815
    .line 816
    .line 817
    move-result-object v9

    .line 818
    invoke-static {v13, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 819
    .line 820
    .line 821
    move-result-object v10

    .line 822
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 823
    .line 824
    .line 825
    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 826
    .line 827
    if-eqz v11, :cond_c

    .line 828
    .line 829
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 830
    .line 831
    .line 832
    goto :goto_d

    .line 833
    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 834
    .line 835
    .line 836
    :goto_d
    invoke-static {v13, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 837
    .line 838
    .line 839
    invoke-static {v13, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 840
    .line 841
    .line 842
    invoke-static {v8, v13, v1, v13, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 843
    .line 844
    .line 845
    invoke-static {v13, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 846
    .line 847
    .line 848
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 849
    .line 850
    .line 851
    move-result v0

    .line 852
    const/4 v2, 0x4

    .line 853
    if-gt v0, v2, :cond_d

    .line 854
    .line 855
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    goto :goto_e

    .line 860
    :cond_d
    const/4 v0, 0x3

    .line 861
    :goto_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    if-le v3, v2, :cond_e

    .line 866
    .line 867
    const/4 v2, 0x1

    .line 868
    goto :goto_f

    .line 869
    :cond_e
    const/4 v2, 0x0

    .line 870
    :goto_f
    const v3, 0x1f628415

    .line 871
    .line 872
    .line 873
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 874
    .line 875
    .line 876
    const/4 v3, 0x0

    .line 877
    :goto_10
    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 878
    .line 879
    const/high16 v5, 0x41980000    # 19.0f

    .line 880
    .line 881
    const/high16 v7, 0x42180000    # 38.0f

    .line 882
    .line 883
    if-ge v3, v0, :cond_13

    .line 884
    .line 885
    move-object/from16 v8, p2

    .line 886
    .line 887
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v9

    .line 891
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 892
    .line 893
    iget-object v9, v9, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 894
    .line 895
    if-eqz v9, :cond_f

    .line 896
    .line 897
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 898
    .line 899
    .line 900
    move-result v10

    .line 901
    if-nez v10, :cond_10

    .line 902
    .line 903
    :cond_f
    move-object/from16 v24, v6

    .line 904
    .line 905
    move-object v6, v8

    .line 906
    goto/16 :goto_11

    .line 907
    .line 908
    :cond_10
    const v4, -0x330067ac

    .line 909
    .line 910
    .line 911
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 912
    .line 913
    .line 914
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 915
    .line 916
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    move-object/from16 v24, v4

    .line 921
    .line 922
    check-cast v24, Landroid/content/Context;

    .line 923
    .line 924
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 925
    .line 926
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 927
    .line 928
    .line 929
    sget-object v4, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 930
    .line 931
    const/16 v28, 0x0

    .line 932
    .line 933
    if-eqz v4, :cond_11

    .line 934
    .line 935
    move-object/from16 v27, v26

    .line 936
    .line 937
    move-object/from16 v29, v28

    .line 938
    .line 939
    move-object/from16 v25, v9

    .line 940
    .line 941
    invoke-static/range {v24 .. v29}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 942
    .line 943
    .line 944
    move-result-object v4

    .line 945
    invoke-virtual {v4}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 946
    .line 947
    .line 948
    move-result-object v28

    .line 949
    :cond_11
    move-object/from16 v4, v28

    .line 950
    .line 951
    new-instance v10, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 952
    .line 953
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    .line 954
    .line 955
    sget-object v11, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 956
    .line 957
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v12

    .line 961
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 962
    .line 963
    iget-wide v14, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 964
    .line 965
    invoke-direct {v9, v14, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 966
    .line 967
    .line 968
    invoke-direct {v10, v9}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 969
    .line 970
    .line 971
    new-instance v9, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 972
    .line 973
    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    .line 974
    .line 975
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v11

    .line 979
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 980
    .line 981
    iget-wide v14, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 982
    .line 983
    invoke-direct {v12, v14, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 984
    .line 985
    .line 986
    invoke-direct {v9, v12}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 987
    .line 988
    .line 989
    const/16 v28, 0x0

    .line 990
    .line 991
    const/16 v29, 0xe

    .line 992
    .line 993
    const/high16 v25, 0x40800000    # 4.0f

    .line 994
    .line 995
    const/16 v26, 0x0

    .line 996
    .line 997
    const/16 v27, 0x0

    .line 998
    .line 999
    move-object/from16 v24, v6

    .line 1000
    .line 1001
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v6

    .line 1005
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v6

    .line 1009
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v5

    .line 1013
    invoke-static {v6, v5}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v5

    .line 1017
    const/16 v17, 0x6

    .line 1018
    .line 1019
    const/16 v18, 0x7be0

    .line 1020
    .line 1021
    move-object v6, v8

    .line 1022
    const/4 v8, 0x0

    .line 1023
    const/4 v12, 0x0

    .line 1024
    move-object v15, v13

    .line 1025
    const/4 v13, 0x0

    .line 1026
    sget-object v14, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 1027
    .line 1028
    const v16, 0x9030

    .line 1029
    .line 1030
    .line 1031
    move-object v7, v4

    .line 1032
    move-object v11, v9

    .line 1033
    move-object v9, v5

    .line 1034
    invoke-static/range {v7 .. v18}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 1035
    .line 1036
    .line 1037
    move-object v13, v15

    .line 1038
    const/4 v14, 0x0

    .line 1039
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1040
    .line 1041
    .line 1042
    move-object/from16 v4, p1

    .line 1043
    .line 1044
    move v5, v14

    .line 1045
    move-object/from16 v1, v21

    .line 1046
    .line 1047
    move-object/from16 v15, v24

    .line 1048
    .line 1049
    const/16 p1, 0x3

    .line 1050
    .line 1051
    goto/16 :goto_13

    .line 1052
    .line 1053
    :goto_11
    const v8, -0x3310141d

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1057
    .line 1058
    .line 1059
    const/16 v28, 0x0

    .line 1060
    .line 1061
    const/16 v29, 0xe

    .line 1062
    .line 1063
    const/high16 v25, 0x40800000    # 4.0f

    .line 1064
    .line 1065
    const/16 v26, 0x0

    .line 1066
    .line 1067
    const/16 v27, 0x0

    .line 1068
    .line 1069
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v8

    .line 1073
    move-object/from16 v15, v24

    .line 1074
    .line 1075
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v7

    .line 1079
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1080
    .line 1081
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v10

    .line 1085
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v7

    .line 1089
    sget-object v8, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1090
    .line 1091
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v8

    .line 1095
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1096
    .line 1097
    iget-wide v8, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 1098
    .line 1099
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v5

    .line 1103
    const/high16 v10, 0x3f000000    # 0.5f

    .line 1104
    .line 1105
    invoke-static {v7, v10, v8, v9, v5}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v5

    .line 1109
    move-object/from16 v7, v21

    .line 1110
    .line 1111
    const/4 v14, 0x0

    .line 1112
    invoke-static {v7, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v8

    .line 1116
    iget-wide v9, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1117
    .line 1118
    ushr-long v11, v9, v22

    .line 1119
    .line 1120
    xor-long/2addr v9, v11

    .line 1121
    long-to-int v9, v9

    .line 1122
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v10

    .line 1126
    invoke-static {v13, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v5

    .line 1130
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1131
    .line 1132
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1133
    .line 1134
    .line 1135
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1136
    .line 1137
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1138
    .line 1139
    .line 1140
    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1141
    .line 1142
    if-eqz v12, :cond_12

    .line 1143
    .line 1144
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1145
    .line 1146
    .line 1147
    goto :goto_12

    .line 1148
    :cond_12
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1149
    .line 1150
    .line 1151
    :goto_12
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1152
    .line 1153
    invoke-static {v13, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1154
    .line 1155
    .line 1156
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1157
    .line 1158
    invoke-static {v13, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v8

    .line 1165
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1166
    .line 1167
    invoke-static {v13, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1168
    .line 1169
    .line 1170
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1171
    .line 1172
    invoke-static {v13, v8}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1173
    .line 1174
    .line 1175
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1176
    .line 1177
    invoke-static {v13, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1178
    .line 1179
    .line 1180
    const/high16 v5, 0x41c00000    # 24.0f

    .line 1181
    .line 1182
    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v5

    .line 1186
    move-object/from16 v8, p1

    .line 1187
    .line 1188
    invoke-virtual {v4, v5, v8}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v9

    .line 1192
    const v4, 0x7f080215

    .line 1193
    .line 1194
    .line 1195
    const/4 v5, 0x0

    .line 1196
    invoke-static {v4, v5, v13}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v4

    .line 1200
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 1201
    .line 1202
    move-object/from16 v58, v13

    .line 1203
    .line 1204
    const/16 v13, 0xc38

    .line 1205
    .line 1206
    const/4 v14, 0x0

    .line 1207
    move-object v12, v8

    .line 1208
    const/4 v8, 0x0

    .line 1209
    move-object v1, v7

    .line 1210
    const/16 p1, 0x3

    .line 1211
    .line 1212
    move-object v7, v4

    .line 1213
    move-object v4, v12

    .line 1214
    move-object/from16 v12, v58

    .line 1215
    .line 1216
    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1217
    .line 1218
    .line 1219
    move-object v13, v12

    .line 1220
    const/4 v10, 0x1

    .line 1221
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1225
    .line 1226
    .line 1227
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 1228
    .line 1229
    move-object/from16 v21, v1

    .line 1230
    .line 1231
    move-object/from16 p1, v4

    .line 1232
    .line 1233
    move-object/from16 p2, v6

    .line 1234
    .line 1235
    move-object v6, v15

    .line 1236
    goto/16 :goto_10

    .line 1237
    .line 1238
    :cond_13
    move-object/from16 v8, p1

    .line 1239
    .line 1240
    move-object v15, v6

    .line 1241
    move-object/from16 v1, v21

    .line 1242
    .line 1243
    const/16 p1, 0x3

    .line 1244
    .line 1245
    const/4 v14, 0x0

    .line 1246
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1247
    .line 1248
    .line 1249
    if-eqz v2, :cond_15

    .line 1250
    .line 1251
    const v0, -0x32f3b945

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1255
    .line 1256
    .line 1257
    const/16 v28, 0x0

    .line 1258
    .line 1259
    const/16 v29, 0xe

    .line 1260
    .line 1261
    const/high16 v25, 0x40800000    # 4.0f

    .line 1262
    .line 1263
    const/16 v26, 0x0

    .line 1264
    .line 1265
    const/16 v27, 0x0

    .line 1266
    .line 1267
    move-object/from16 v24, v15

    .line 1268
    .line 1269
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1278
    .line 1279
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v2

    .line 1283
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1284
    .line 1285
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 1286
    .line 1287
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v5

    .line 1291
    invoke-static {v0, v2, v3, v5}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    const/4 v14, 0x0

    .line 1296
    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    iget-wide v2, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1301
    .line 1302
    ushr-long v5, v2, v22

    .line 1303
    .line 1304
    xor-long/2addr v2, v5

    .line 1305
    long-to-int v2, v2

    .line 1306
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v3

    .line 1310
    invoke-static {v13, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1315
    .line 1316
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    .line 1318
    .line 1319
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1320
    .line 1321
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1322
    .line 1323
    .line 1324
    iget-boolean v6, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1325
    .line 1326
    if-eqz v6, :cond_14

    .line 1327
    .line 1328
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1329
    .line 1330
    .line 1331
    goto :goto_14

    .line 1332
    :cond_14
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1333
    .line 1334
    .line 1335
    :goto_14
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1336
    .line 1337
    invoke-static {v13, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1338
    .line 1339
    .line 1340
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1341
    .line 1342
    invoke-static {v13, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v1

    .line 1349
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1350
    .line 1351
    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1352
    .line 1353
    .line 1354
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1355
    .line 1356
    invoke-static {v13, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1357
    .line 1358
    .line 1359
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1360
    .line 1361
    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1362
    .line 1363
    .line 1364
    add-int/lit8 v7, v30, -0x3

    .line 1365
    .line 1366
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    const/4 v3, 0x1

    .line 1371
    new-array v1, v3, [Ljava/lang/Object;

    .line 1372
    .line 1373
    const/16 v23, 0x0

    .line 1374
    .line 1375
    aput-object v0, v1, v23

    .line 1376
    .line 1377
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    const-string v1, "+%d"

    .line 1382
    .line 1383
    move-object/from16 v2, v20

    .line 1384
    .line 1385
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v24

    .line 1389
    invoke-virtual {v4, v15, v8}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v25

    .line 1393
    sget-object v31, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 1394
    .line 1395
    const/16 v0, 0xb

    .line 1396
    .line 1397
    invoke-static {v0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 1398
    .line 1399
    .line 1400
    move-result-wide v29

    .line 1401
    sget-wide v26, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1402
    .line 1403
    const/16 v46, 0x0

    .line 1404
    .line 1405
    const v47, 0x3ffa8

    .line 1406
    .line 1407
    .line 1408
    const/16 v28, 0x0

    .line 1409
    .line 1410
    const/16 v32, 0x0

    .line 1411
    .line 1412
    const-wide/16 v33, 0x0

    .line 1413
    .line 1414
    const/16 v35, 0x0

    .line 1415
    .line 1416
    const-wide/16 v36, 0x0

    .line 1417
    .line 1418
    const/16 v38, 0x0

    .line 1419
    .line 1420
    const/16 v39, 0x0

    .line 1421
    .line 1422
    const/16 v40, 0x0

    .line 1423
    .line 1424
    const/16 v41, 0x0

    .line 1425
    .line 1426
    const/16 v42, 0x0

    .line 1427
    .line 1428
    const/16 v43, 0x0

    .line 1429
    .line 1430
    const v45, 0x186180

    .line 1431
    .line 1432
    .line 1433
    move-object/from16 v44, v13

    .line 1434
    .line 1435
    invoke-static/range {v24 .. v47}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1436
    .line 1437
    .line 1438
    const/4 v3, 0x1

    .line 1439
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1440
    .line 1441
    .line 1442
    const/4 v14, 0x0

    .line 1443
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1444
    .line 1445
    .line 1446
    goto :goto_15

    .line 1447
    :cond_15
    const/4 v3, 0x1

    .line 1448
    const/4 v14, 0x0

    .line 1449
    const v0, -0x32e552ef

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1456
    .line 1457
    .line 1458
    :goto_15
    invoke-static {v13, v3, v3, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 1459
    .line 1460
    .line 1461
    goto :goto_16

    .line 1462
    :cond_16
    move-object/from16 v19, v2

    .line 1463
    .line 1464
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1465
    .line 1466
    .line 1467
    :goto_16
    return-object v19

    .line 1468
    nop

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
