.class public final synthetic Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Ljava/util/Map;

.field public final synthetic f$6:Ljava/lang/Object;

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(IIIJLjava/util/Map;Ljava/util/Map;Ljava/text/NumberFormat;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$0:I

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$2:I

    .line 12
    .line 13
    iput-wide p4, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$3:J

    .line 14
    .line 15
    iput-object p6, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p7, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$5:Ljava/util/Map;

    .line 18
    .line 19
    iput-object p8, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Object;

    .line 20
    .line 21
    iput-wide p9, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$7:J

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIIJLjava/util/Map;JLjava/util/Map;I)V
    .locals 0

    .line 24
    const/4 p11, 0x1

    iput p11, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Object;

    iput p2, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$0:I

    iput p3, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$1:I

    iput p4, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$2:I

    iput-wide p5, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$3:J

    iput-object p7, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    iput-wide p8, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$7:J

    iput-object p10, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$5:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 79

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v5, v3

    .line 14
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    move-object/from16 v15, p1

    .line 17
    .line 18
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    iget v6, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$0:I

    .line 32
    .line 33
    iget v7, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$1:I

    .line 34
    .line 35
    iget v8, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$2:I

    .line 36
    .line 37
    iget-wide v9, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$3:J

    .line 38
    .line 39
    iget-object v11, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    .line 40
    .line 41
    iget-wide v12, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$7:J

    .line 42
    .line 43
    iget-object v14, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$5:Ljava/util/Map;

    .line 44
    .line 45
    invoke-static/range {v5 .. v16}, Lorg/wikipedia/activitytab/ImpactModuleKt;->AllTimeImpactCard(Landroidx/compose/ui/Modifier;IIIJLjava/util/Map;JLjava/util/Map;Landroidx/compose/runtime/GapComposer;I)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :pswitch_0
    check-cast v3, Ljava/text/NumberFormat;

    .line 50
    .line 51
    move-object/from16 v9, p1

    .line 52
    .line 53
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    move-object/from16 v1, p2

    .line 56
    .line 57
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 64
    .line 65
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 66
    .line 67
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 68
    .line 69
    and-int/lit8 v8, v1, 0x3

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x2

    .line 73
    if-eq v8, v11, :cond_0

    .line 74
    .line 75
    move v8, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v8, v10

    .line 78
    :goto_0
    and-int/2addr v1, v4

    .line 79
    invoke-virtual {v9, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_f

    .line 84
    .line 85
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 86
    .line 87
    const/high16 v8, 0x41800000    # 16.0f

    .line 88
    .line 89
    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 94
    .line 95
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 96
    .line 97
    invoke-static {v13, v14, v9, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    iget-wide v10, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 102
    .line 103
    const/16 v29, 0x20

    .line 104
    .line 105
    ushr-long v16, v10, v29

    .line 106
    .line 107
    xor-long v10, v10, v16

    .line 108
    .line 109
    long-to-int v10, v10

    .line 110
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    invoke-static {v9, v12}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 119
    .line 120
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 124
    .line 125
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 126
    .line 127
    .line 128
    iget-boolean v8, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 129
    .line 130
    if-eqz v8, :cond_1

    .line 131
    .line 132
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 137
    .line 138
    .line 139
    :goto_1
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {v9, v15, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 145
    .line 146
    invoke-static {v9, v11, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 154
    .line 155
    invoke-static {v9, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 159
    .line 160
    invoke-static {v9, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v17, v6

    .line 164
    .line 165
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v9, v12, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    const v12, 0x7f120049

    .line 171
    .line 172
    .line 173
    invoke-static {v12, v9}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    move-object/from16 v18, v6

    .line 178
    .line 179
    sget-object v6, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 180
    .line 181
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v19

    .line 185
    move-object/from16 v30, v2

    .line 186
    .line 187
    move-object/from16 v2, v19

    .line 188
    .line 189
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 190
    .line 191
    iget-object v2, v2, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 192
    .line 193
    sget-object v36, Landroidx/compose/ui/text/font/FontWeight;->SemiBold:Landroidx/compose/ui/text/font/FontWeight;

    .line 194
    .line 195
    const/16 v42, 0x0

    .line 196
    .line 197
    const v43, 0xfffffb

    .line 198
    .line 199
    .line 200
    const-wide/16 v32, 0x0

    .line 201
    .line 202
    const-wide/16 v34, 0x0

    .line 203
    .line 204
    const/16 v37, 0x0

    .line 205
    .line 206
    const-wide/16 v38, 0x0

    .line 207
    .line 208
    const-wide/16 v40, 0x0

    .line 209
    .line 210
    move-object/from16 v31, v2

    .line 211
    .line 212
    invoke-static/range {v31 .. v43}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 213
    .line 214
    .line 215
    move-result-object v24

    .line 216
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 217
    .line 218
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v19

    .line 222
    move-object/from16 v20, v5

    .line 223
    .line 224
    move-object/from16 v5, v19

    .line 225
    .line 226
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 227
    .line 228
    move-object/from16 v19, v7

    .line 229
    .line 230
    move-object/from16 v21, v8

    .line 231
    .line 232
    iget-wide v7, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 233
    .line 234
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 239
    .line 240
    iget-object v5, v5, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 241
    .line 242
    iget-object v5, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 243
    .line 244
    move-object/from16 v22, v6

    .line 245
    .line 246
    iget-wide v5, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 247
    .line 248
    const/16 v27, 0x0

    .line 249
    .line 250
    const v28, 0x1f7fa

    .line 251
    .line 252
    .line 253
    move-object/from16 v23, v18

    .line 254
    .line 255
    move-wide/from16 v77, v5

    .line 256
    .line 257
    move-object/from16 v5, v17

    .line 258
    .line 259
    move-wide/from16 v17, v77

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    move-object/from16 v25, v9

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    move-object/from16 v31, v10

    .line 266
    .line 267
    move-object/from16 v26, v11

    .line 268
    .line 269
    const-wide/16 v10, 0x0

    .line 270
    .line 271
    move-object/from16 v32, v5

    .line 272
    .line 273
    move-object v5, v12

    .line 274
    const/4 v12, 0x0

    .line 275
    move-object/from16 v33, v13

    .line 276
    .line 277
    const/4 v13, 0x0

    .line 278
    move-object/from16 v34, v14

    .line 279
    .line 280
    move-object/from16 v35, v15

    .line 281
    .line 282
    const-wide/16 v14, 0x0

    .line 283
    .line 284
    const/high16 v37, 0x41800000    # 16.0f

    .line 285
    .line 286
    const/16 v16, 0x0

    .line 287
    .line 288
    move-object/from16 v38, v19

    .line 289
    .line 290
    const/16 v19, 0x0

    .line 291
    .line 292
    move-object/from16 v39, v20

    .line 293
    .line 294
    const/16 v20, 0x0

    .line 295
    .line 296
    move-object/from16 v40, v21

    .line 297
    .line 298
    const/16 v21, 0x0

    .line 299
    .line 300
    move-object/from16 v41, v22

    .line 301
    .line 302
    const/16 v22, 0x0

    .line 303
    .line 304
    move-object/from16 v42, v23

    .line 305
    .line 306
    const/16 v23, 0x0

    .line 307
    .line 308
    move-object/from16 v43, v26

    .line 309
    .line 310
    const/16 v26, 0x0

    .line 311
    .line 312
    move-object/from16 p2, v2

    .line 313
    .line 314
    move-object/from16 v44, v3

    .line 315
    .line 316
    move-object/from16 v50, v31

    .line 317
    .line 318
    move-object/from16 v46, v32

    .line 319
    .line 320
    move-object/from16 v47, v33

    .line 321
    .line 322
    move-object/from16 v48, v34

    .line 323
    .line 324
    move-object/from16 v0, v35

    .line 325
    .line 326
    move-object/from16 v3, v38

    .line 327
    .line 328
    move-object/from16 v45, v39

    .line 329
    .line 330
    move-object/from16 v2, v40

    .line 331
    .line 332
    move-object/from16 v52, v41

    .line 333
    .line 334
    move-object/from16 v51, v42

    .line 335
    .line 336
    move-object/from16 v49, v43

    .line 337
    .line 338
    const/16 p1, 0x0

    .line 339
    .line 340
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 341
    .line 342
    .line 343
    move-object/from16 v9, v25

    .line 344
    .line 345
    const/high16 v11, 0x3f800000    # 1.0f

    .line 346
    .line 347
    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    const/16 v16, 0x0

    .line 352
    .line 353
    const/16 v17, 0xd

    .line 354
    .line 355
    const/4 v13, 0x0

    .line 356
    const/4 v15, 0x0

    .line 357
    move/from16 v14, v37

    .line 358
    .line 359
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 364
    .line 365
    new-instance v7, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 366
    .line 367
    const/16 v12, 0xa

    .line 368
    .line 369
    invoke-direct {v7, v12}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 370
    .line 371
    .line 372
    const/4 v8, 0x1

    .line 373
    invoke-direct {v6, v14, v8, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 374
    .line 375
    .line 376
    const/4 v13, 0x6

    .line 377
    invoke-static {v6, v3, v9, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    iget-wide v7, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 382
    .line 383
    ushr-long v15, v7, v29

    .line 384
    .line 385
    xor-long/2addr v7, v15

    .line 386
    long-to-int v7, v7

    .line 387
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 388
    .line 389
    .line 390
    move-result-object v8

    .line 391
    invoke-static {v9, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 396
    .line 397
    .line 398
    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 399
    .line 400
    if-eqz v10, :cond_2

    .line 401
    .line 402
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 403
    .line 404
    .line 405
    goto :goto_2

    .line 406
    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 407
    .line 408
    .line 409
    :goto_2
    invoke-static {v9, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v9, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 413
    .line 414
    .line 415
    move-object/from16 v15, v49

    .line 416
    .line 417
    move-object/from16 v6, v50

    .line 418
    .line 419
    invoke-static {v7, v9, v15, v9, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 420
    .line 421
    .line 422
    move-object/from16 v7, v51

    .line 423
    .line 424
    invoke-static {v9, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v1, v11}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    move-object/from16 v8, p0

    .line 432
    .line 433
    iget v10, v8, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$0:I

    .line 434
    .line 435
    move-object/from16 v18, v7

    .line 436
    .line 437
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    const v12, 0x7f100006

    .line 442
    .line 443
    .line 444
    invoke-static {v12, v10, v9}, Lcoil3/util/UtilsKt;->pluralStringResource(IILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    move/from16 v17, v10

    .line 449
    .line 450
    const/4 v10, 0x0

    .line 451
    move-object/from16 v31, v6

    .line 452
    .line 453
    const v6, 0x7f0801a4

    .line 454
    .line 455
    .line 456
    move-object/from16 v53, v12

    .line 457
    .line 458
    move-object v12, v8

    .line 459
    move-object/from16 v8, v53

    .line 460
    .line 461
    move-object/from16 v54, v18

    .line 462
    .line 463
    move-object/from16 v53, v31

    .line 464
    .line 465
    move/from16 v18, v17

    .line 466
    .line 467
    invoke-static/range {v5 .. v10}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ImpactStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 468
    .line 469
    .line 470
    iget v5, v12, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$1:I

    .line 471
    .line 472
    const-string v19, "-"

    .line 473
    .line 474
    if-lez v5, :cond_3

    .line 475
    .line 476
    const v6, 0x432f1ec4

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 480
    .line 481
    .line 482
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    const/4 v8, 0x1

    .line 487
    new-array v7, v8, [Ljava/lang/Object;

    .line 488
    .line 489
    aput-object v6, v7, p1

    .line 490
    .line 491
    const/high16 v6, 0x7f100000

    .line 492
    .line 493
    invoke-static {v6, v5, v7, v9}, Lcoil3/util/UtilsKt;->pluralStringResource(II[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    move/from16 v6, p1

    .line 498
    .line 499
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 500
    .line 501
    .line 502
    move-object v7, v5

    .line 503
    goto :goto_3

    .line 504
    :cond_3
    move/from16 v6, p1

    .line 505
    .line 506
    const v5, 0x433175d1

    .line 507
    .line 508
    .line 509
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v7, v19

    .line 516
    .line 517
    :goto_3
    invoke-static {v1, v11}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    const v6, 0x7f12004a

    .line 522
    .line 523
    .line 524
    invoke-static {v6, v9}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    const/4 v10, 0x0

    .line 529
    const v6, 0x7f0800c5

    .line 530
    .line 531
    .line 532
    invoke-static/range {v5 .. v10}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ImpactStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 533
    .line 534
    .line 535
    const/4 v8, 0x1

    .line 536
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 537
    .line 538
    .line 539
    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 540
    .line 541
    .line 542
    move-result-object v12

    .line 543
    const/16 v5, 0xa

    .line 544
    .line 545
    const/16 v16, 0x0

    .line 546
    .line 547
    const/16 v17, 0xd

    .line 548
    .line 549
    move v6, v13

    .line 550
    const/4 v13, 0x0

    .line 551
    move-object/from16 v49, v15

    .line 552
    .line 553
    const/4 v15, 0x0

    .line 554
    move v7, v5

    .line 555
    move v10, v6

    .line 556
    move-object/from16 v6, v49

    .line 557
    .line 558
    move-object/from16 v5, p0

    .line 559
    .line 560
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 561
    .line 562
    .line 563
    move-result-object v12

    .line 564
    new-instance v13, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 565
    .line 566
    new-instance v15, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 567
    .line 568
    invoke-direct {v15, v7}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 569
    .line 570
    .line 571
    invoke-direct {v13, v14, v8, v15}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 572
    .line 573
    .line 574
    invoke-static {v13, v3, v9, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    iget-wide v14, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 579
    .line 580
    ushr-long v20, v14, v29

    .line 581
    .line 582
    xor-long v14, v14, v20

    .line 583
    .line 584
    long-to-int v10, v14

    .line 585
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 586
    .line 587
    .line 588
    move-result-object v13

    .line 589
    invoke-static {v9, v12}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 590
    .line 591
    .line 592
    move-result-object v12

    .line 593
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 594
    .line 595
    .line 596
    iget-boolean v14, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 597
    .line 598
    if-eqz v14, :cond_4

    .line 599
    .line 600
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 601
    .line 602
    .line 603
    goto :goto_4

    .line 604
    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 605
    .line 606
    .line 607
    :goto_4
    invoke-static {v9, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 608
    .line 609
    .line 610
    invoke-static {v9, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 611
    .line 612
    .line 613
    move-object/from16 v13, v53

    .line 614
    .line 615
    invoke-static {v10, v9, v6, v9, v13}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v14, v54

    .line 619
    .line 620
    invoke-static {v9, v12, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 621
    .line 622
    .line 623
    invoke-static {v1, v11}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 624
    .line 625
    .line 626
    move-result-object v8

    .line 627
    iget v10, v5, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$2:I

    .line 628
    .line 629
    move v12, v7

    .line 630
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v7

    .line 634
    const v15, 0x7f100005

    .line 635
    .line 636
    .line 637
    invoke-static {v15, v10, v9}, Lcoil3/util/UtilsKt;->pluralStringResource(IILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v10

    .line 641
    move-object v5, v8

    .line 642
    move-object v8, v10

    .line 643
    const/4 v10, 0x0

    .line 644
    move-object/from16 v49, v6

    .line 645
    .line 646
    const v6, 0x7f0801b5

    .line 647
    .line 648
    .line 649
    move v15, v12

    .line 650
    move-object/from16 v12, p0

    .line 651
    .line 652
    invoke-static/range {v5 .. v10}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ImpactStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 653
    .line 654
    .line 655
    const-wide/16 v5, 0x0

    .line 656
    .line 657
    iget-wide v7, v12, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$3:J

    .line 658
    .line 659
    cmp-long v5, v7, v5

    .line 660
    .line 661
    if-lez v5, :cond_5

    .line 662
    .line 663
    sget-object v5, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 664
    .line 665
    new-instance v5, Ljava/util/Date;

    .line 666
    .line 667
    const-wide/16 v19, 0x3e8

    .line 668
    .line 669
    mul-long v7, v7, v19

    .line 670
    .line 671
    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 672
    .line 673
    .line 674
    const-string v6, "MM/dd/yyyy"

    .line 675
    .line 676
    invoke-static {v6, v5}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v19

    .line 680
    :cond_5
    move-object/from16 v7, v19

    .line 681
    .line 682
    invoke-static {v1, v11}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    const v6, 0x7f12004f

    .line 687
    .line 688
    .line 689
    invoke-static {v6, v9}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    const/4 v10, 0x0

    .line 694
    const v6, 0x7f0800e1

    .line 695
    .line 696
    .line 697
    invoke-static/range {v5 .. v10}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ImpactStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 698
    .line 699
    .line 700
    const/4 v8, 0x1

    .line 701
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 702
    .line 703
    .line 704
    if-lez v18, :cond_e

    .line 705
    .line 706
    const v5, 0x5808551a

    .line 707
    .line 708
    .line 709
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 710
    .line 711
    .line 712
    const/high16 v37, 0x41800000    # 16.0f

    .line 713
    .line 714
    const/16 v16, 0x0

    .line 715
    .line 716
    const/16 v17, 0xd

    .line 717
    .line 718
    move-object/from16 v31, v13

    .line 719
    .line 720
    const/4 v13, 0x0

    .line 721
    move v5, v15

    .line 722
    const/4 v15, 0x0

    .line 723
    move-object v12, v1

    .line 724
    move-object/from16 v18, v14

    .line 725
    .line 726
    move/from16 v14, v37

    .line 727
    .line 728
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    move-object v13, v12

    .line 733
    move-object/from16 v12, p2

    .line 734
    .line 735
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 740
    .line 741
    iget-wide v7, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 742
    .line 743
    const/4 v10, 0x6

    .line 744
    move v15, v11

    .line 745
    const/4 v11, 0x2

    .line 746
    move/from16 v16, v5

    .line 747
    .line 748
    move-object v5, v6

    .line 749
    const/4 v6, 0x0

    .line 750
    invoke-static/range {v5 .. v11}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 751
    .line 752
    .line 753
    move/from16 v5, v16

    .line 754
    .line 755
    const/16 v16, 0x0

    .line 756
    .line 757
    move-object v6, v12

    .line 758
    move-object v12, v13

    .line 759
    const/4 v13, 0x0

    .line 760
    move v7, v15

    .line 761
    const/4 v15, 0x0

    .line 762
    move v10, v5

    .line 763
    move-object v8, v6

    .line 764
    move v11, v7

    .line 765
    move-object/from16 v7, v18

    .line 766
    .line 767
    move-object/from16 v6, v31

    .line 768
    .line 769
    move-object/from16 v5, v49

    .line 770
    .line 771
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 772
    .line 773
    .line 774
    move-result-object v13

    .line 775
    move-object/from16 v55, v12

    .line 776
    .line 777
    move-object/from16 v12, v47

    .line 778
    .line 779
    const/4 v15, 0x0

    .line 780
    move/from16 v47, v14

    .line 781
    .line 782
    move-object/from16 v14, v48

    .line 783
    .line 784
    invoke-static {v12, v14, v9, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 785
    .line 786
    .line 787
    move-result-object v12

    .line 788
    iget-wide v14, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 789
    .line 790
    ushr-long v16, v14, v29

    .line 791
    .line 792
    xor-long v14, v14, v16

    .line 793
    .line 794
    long-to-int v14, v14

    .line 795
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 796
    .line 797
    .line 798
    move-result-object v15

    .line 799
    invoke-static {v9, v13}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 800
    .line 801
    .line 802
    move-result-object v13

    .line 803
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 804
    .line 805
    .line 806
    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 807
    .line 808
    if-eqz v10, :cond_6

    .line 809
    .line 810
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 811
    .line 812
    .line 813
    goto :goto_5

    .line 814
    :cond_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 815
    .line 816
    .line 817
    :goto_5
    invoke-static {v9, v12, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 818
    .line 819
    .line 820
    invoke-static {v9, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 821
    .line 822
    .line 823
    invoke-static {v14, v9, v5, v9, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 824
    .line 825
    .line 826
    invoke-static {v9, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 827
    .line 828
    .line 829
    const v10, 0x7f120051

    .line 830
    .line 831
    .line 832
    invoke-static {v10, v9}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v10

    .line 836
    move-object/from16 v12, v52

    .line 837
    .line 838
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v13

    .line 842
    check-cast v13, Landroidx/compose/material3/Typography;

    .line 843
    .line 844
    iget-object v13, v13, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 845
    .line 846
    const/16 v42, 0x0

    .line 847
    .line 848
    const v43, 0xfffffb

    .line 849
    .line 850
    .line 851
    const-wide/16 v32, 0x0

    .line 852
    .line 853
    const-wide/16 v34, 0x0

    .line 854
    .line 855
    const/16 v37, 0x0

    .line 856
    .line 857
    const-wide/16 v38, 0x0

    .line 858
    .line 859
    const-wide/16 v40, 0x0

    .line 860
    .line 861
    move-object/from16 v31, v13

    .line 862
    .line 863
    invoke-static/range {v31 .. v43}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 864
    .line 865
    .line 866
    move-result-object v24

    .line 867
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v13

    .line 871
    check-cast v13, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 872
    .line 873
    iget-wide v13, v13, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 874
    .line 875
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v15

    .line 879
    check-cast v15, Landroidx/compose/material3/Typography;

    .line 880
    .line 881
    iget-object v15, v15, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 882
    .line 883
    iget-object v15, v15, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 884
    .line 885
    move-object/from16 v22, v12

    .line 886
    .line 887
    iget-wide v11, v15, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 888
    .line 889
    const/16 v27, 0x0

    .line 890
    .line 891
    const v28, 0x1f7fa

    .line 892
    .line 893
    .line 894
    move-object/from16 v31, v6

    .line 895
    .line 896
    const/4 v6, 0x0

    .line 897
    move-object/from16 v25, v9

    .line 898
    .line 899
    const/4 v9, 0x0

    .line 900
    move-object/from16 v49, v5

    .line 901
    .line 902
    move-object v5, v10

    .line 903
    move-wide/from16 v17, v11

    .line 904
    .line 905
    const-wide/16 v10, 0x0

    .line 906
    .line 907
    const/4 v12, 0x0

    .line 908
    move-object v15, v8

    .line 909
    move-wide/from16 v77, v13

    .line 910
    .line 911
    move-object v14, v7

    .line 912
    move-wide/from16 v7, v77

    .line 913
    .line 914
    const/4 v13, 0x0

    .line 915
    move-object/from16 v51, v14

    .line 916
    .line 917
    move-object/from16 v19, v15

    .line 918
    .line 919
    const-wide/16 v14, 0x0

    .line 920
    .line 921
    const/16 v20, 0xa

    .line 922
    .line 923
    const/16 v16, 0x0

    .line 924
    .line 925
    move-object/from16 v21, v19

    .line 926
    .line 927
    const/16 v19, 0x0

    .line 928
    .line 929
    move/from16 v23, v20

    .line 930
    .line 931
    const/16 v20, 0x0

    .line 932
    .line 933
    move-object/from16 v26, v21

    .line 934
    .line 935
    const/16 v21, 0x0

    .line 936
    .line 937
    move-object/from16 v52, v22

    .line 938
    .line 939
    const/16 v22, 0x0

    .line 940
    .line 941
    move/from16 v32, v23

    .line 942
    .line 943
    const/16 v23, 0x0

    .line 944
    .line 945
    move-object/from16 v33, v26

    .line 946
    .line 947
    const/16 v26, 0x0

    .line 948
    .line 949
    move-object/from16 v38, v3

    .line 950
    .line 951
    move-object/from16 v58, v33

    .line 952
    .line 953
    move-object/from16 v3, v49

    .line 954
    .line 955
    move-object/from16 v56, v51

    .line 956
    .line 957
    move-object/from16 v57, v52

    .line 958
    .line 959
    const/high16 v1, 0x3f800000    # 1.0f

    .line 960
    .line 961
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 962
    .line 963
    .line 964
    move-object/from16 v9, v25

    .line 965
    .line 966
    move-object/from16 v5, v55

    .line 967
    .line 968
    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 969
    .line 970
    .line 971
    move-result-object v12

    .line 972
    const/16 v16, 0x0

    .line 973
    .line 974
    const/16 v17, 0xd

    .line 975
    .line 976
    const/4 v13, 0x0

    .line 977
    const/4 v15, 0x0

    .line 978
    move/from16 v14, v47

    .line 979
    .line 980
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 981
    .line 982
    .line 983
    move-result-object v6

    .line 984
    move/from16 v37, v14

    .line 985
    .line 986
    new-instance v7, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 987
    .line 988
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 989
    .line 990
    const/16 v15, 0xa

    .line 991
    .line 992
    invoke-direct {v8, v15}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 993
    .line 994
    .line 995
    const/high16 v10, 0x40800000    # 4.0f

    .line 996
    .line 997
    const/4 v11, 0x1

    .line 998
    invoke-direct {v7, v10, v11, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 999
    .line 1000
    .line 1001
    const/16 v8, 0x36

    .line 1002
    .line 1003
    move-object/from16 v11, v46

    .line 1004
    .line 1005
    invoke-static {v7, v11, v9, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v7

    .line 1009
    iget-wide v12, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1010
    .line 1011
    ushr-long v14, v12, v29

    .line 1012
    .line 1013
    xor-long/2addr v12, v14

    .line 1014
    long-to-int v12, v12

    .line 1015
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v13

    .line 1019
    invoke-static {v9, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v6

    .line 1023
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1024
    .line 1025
    .line 1026
    iget-boolean v14, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1027
    .line 1028
    if-eqz v14, :cond_7

    .line 1029
    .line 1030
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_6

    .line 1034
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1035
    .line 1036
    .line 1037
    :goto_6
    invoke-static {v9, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-static {v9, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1041
    .line 1042
    .line 1043
    move-object/from16 v7, v31

    .line 1044
    .line 1045
    invoke-static {v12, v9, v3, v9, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1046
    .line 1047
    .line 1048
    move-object/from16 v12, v56

    .line 1049
    .line 1050
    invoke-static {v9, v6, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1051
    .line 1052
    .line 1053
    move-object/from16 v6, p0

    .line 1054
    .line 1055
    iget-object v13, v6, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$5:Ljava/util/Map;

    .line 1056
    .line 1057
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v14

    .line 1061
    check-cast v14, Ljava/lang/Iterable;

    .line 1062
    .line 1063
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v14

    .line 1070
    const/4 v15, 0x0

    .line 1071
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1072
    .line 1073
    .line 1074
    move-result v16

    .line 1075
    if-eqz v16, :cond_8

    .line 1076
    .line 1077
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v16

    .line 1081
    check-cast v16, Ljava/lang/Number;

    .line 1082
    .line 1083
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 1084
    .line 1085
    .line 1086
    move-result v16

    .line 1087
    add-int v15, v16, v15

    .line 1088
    .line 1089
    goto :goto_7

    .line 1090
    :cond_8
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v14

    .line 1094
    new-instance v6, Landroidx/compose/foundation/layout/VerticalAlignElement;

    .line 1095
    .line 1096
    invoke-direct {v6, v11}, Landroidx/compose/foundation/layout/VerticalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Vertical;)V

    .line 1097
    .line 1098
    .line 1099
    move-object/from16 v1, v57

    .line 1100
    .line 1101
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v16

    .line 1105
    move-object/from16 v8, v16

    .line 1106
    .line 1107
    check-cast v8, Landroidx/compose/material3/Typography;

    .line 1108
    .line 1109
    iget-object v8, v8, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1110
    .line 1111
    sget-object v64, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 1112
    .line 1113
    move-object/from16 v10, v58

    .line 1114
    .line 1115
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v18

    .line 1119
    move-object/from16 v55, v5

    .line 1120
    .line 1121
    move-object/from16 v5, v18

    .line 1122
    .line 1123
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1124
    .line 1125
    move-object/from16 v18, v6

    .line 1126
    .line 1127
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1128
    .line 1129
    const/16 v27, 0x0

    .line 1130
    .line 1131
    const v28, 0x1ffb8

    .line 1132
    .line 1133
    .line 1134
    move-object/from16 v25, v9

    .line 1135
    .line 1136
    const/4 v9, 0x0

    .line 1137
    move-object/from16 v33, v10

    .line 1138
    .line 1139
    move-object/from16 v46, v11

    .line 1140
    .line 1141
    const-wide/16 v10, 0x0

    .line 1142
    .line 1143
    move-object/from16 v19, v13

    .line 1144
    .line 1145
    const/4 v13, 0x0

    .line 1146
    move-object/from16 v31, v7

    .line 1147
    .line 1148
    move-object/from16 v24, v8

    .line 1149
    .line 1150
    move/from16 v20, v15

    .line 1151
    .line 1152
    move-wide v7, v5

    .line 1153
    move-object v5, v14

    .line 1154
    const-wide/16 v14, 0x0

    .line 1155
    .line 1156
    const/high16 v6, 0x40800000    # 4.0f

    .line 1157
    .line 1158
    const/16 v16, 0x0

    .line 1159
    .line 1160
    move/from16 v21, v6

    .line 1161
    .line 1162
    move-object/from16 v6, v18

    .line 1163
    .line 1164
    const/16 v22, 0x36

    .line 1165
    .line 1166
    const-wide/16 v17, 0x0

    .line 1167
    .line 1168
    move-object/from16 v23, v19

    .line 1169
    .line 1170
    const/16 v19, 0x0

    .line 1171
    .line 1172
    move/from16 v26, v20

    .line 1173
    .line 1174
    const/16 v20, 0x0

    .line 1175
    .line 1176
    move/from16 v34, v21

    .line 1177
    .line 1178
    const/16 v21, 0x0

    .line 1179
    .line 1180
    move/from16 v35, v22

    .line 1181
    .line 1182
    const/16 v22, 0x0

    .line 1183
    .line 1184
    move-object/from16 v36, v23

    .line 1185
    .line 1186
    const/16 v23, 0x0

    .line 1187
    .line 1188
    move/from16 v39, v26

    .line 1189
    .line 1190
    const/high16 v26, 0x180000

    .line 1191
    .line 1192
    move-object/from16 v35, v0

    .line 1193
    .line 1194
    move-object/from16 v40, v2

    .line 1195
    .line 1196
    move-object/from16 v43, v3

    .line 1197
    .line 1198
    move-object/from16 v74, v12

    .line 1199
    .line 1200
    move-object/from16 v73, v31

    .line 1201
    .line 1202
    move-object/from16 v3, v33

    .line 1203
    .line 1204
    move/from16 v0, v39

    .line 1205
    .line 1206
    move-object/from16 v72, v46

    .line 1207
    .line 1208
    move-object/from16 v2, v55

    .line 1209
    .line 1210
    move-object/from16 v12, v64

    .line 1211
    .line 1212
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1213
    .line 1214
    .line 1215
    move-object/from16 v9, v25

    .line 1216
    .line 1217
    const v5, 0x7f100003

    .line 1218
    .line 1219
    .line 1220
    invoke-static {v5, v0, v9}, Lcoil3/util/UtilsKt;->pluralStringResource(IILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v0

    .line 1224
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1225
    .line 1226
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v5

    .line 1230
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1238
    .line 1239
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 1240
    .line 1241
    const/16 v1, 0x16

    .line 1242
    .line 1243
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 1244
    .line 1245
    .line 1246
    move-result-wide v68

    .line 1247
    const/16 v70, 0x0

    .line 1248
    .line 1249
    const v71, 0xfdfffb

    .line 1250
    .line 1251
    .line 1252
    const-wide/16 v60, 0x0

    .line 1253
    .line 1254
    const-wide/16 v62, 0x0

    .line 1255
    .line 1256
    const/16 v65, 0x0

    .line 1257
    .line 1258
    const-wide/16 v66, 0x0

    .line 1259
    .line 1260
    move-object/from16 v59, v0

    .line 1261
    .line 1262
    invoke-static/range {v59 .. v71}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v24

    .line 1266
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1271
    .line 1272
    iget-wide v7, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1273
    .line 1274
    const v28, 0x1fffa

    .line 1275
    .line 1276
    .line 1277
    const/4 v6, 0x0

    .line 1278
    const/4 v9, 0x0

    .line 1279
    const/4 v12, 0x0

    .line 1280
    const/16 v26, 0x0

    .line 1281
    .line 1282
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1283
    .line 1284
    .line 1285
    move-object/from16 v9, v25

    .line 1286
    .line 1287
    const/4 v8, 0x1

    .line 1288
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1289
    .line 1290
    .line 1291
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1292
    .line 1293
    invoke-static {v2, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v16

    .line 1297
    const/16 v20, 0x0

    .line 1298
    .line 1299
    const/16 v21, 0xd

    .line 1300
    .line 1301
    const/16 v17, 0x0

    .line 1302
    .line 1303
    const/high16 v12, 0x41000000    # 8.0f

    .line 1304
    .line 1305
    const/16 v19, 0x0

    .line 1306
    .line 1307
    move/from16 v18, v12

    .line 1308
    .line 1309
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    move-object/from16 v5, v38

    .line 1314
    .line 1315
    move-object/from16 v3, v45

    .line 1316
    .line 1317
    const/4 v15, 0x0

    .line 1318
    invoke-static {v3, v5, v9, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v6

    .line 1322
    iget-wide v7, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1323
    .line 1324
    ushr-long v10, v7, v29

    .line 1325
    .line 1326
    xor-long/2addr v7, v10

    .line 1327
    long-to-int v7, v7

    .line 1328
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v8

    .line 1332
    invoke-static {v9, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1337
    .line 1338
    .line 1339
    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1340
    .line 1341
    if-eqz v10, :cond_9

    .line 1342
    .line 1343
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1344
    .line 1345
    .line 1346
    :goto_8
    move-object/from16 v4, v40

    .line 1347
    .line 1348
    goto :goto_9

    .line 1349
    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1350
    .line 1351
    .line 1352
    goto :goto_8

    .line 1353
    :goto_9
    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1354
    .line 1355
    .line 1356
    move-object/from16 v4, v35

    .line 1357
    .line 1358
    invoke-static {v9, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1359
    .line 1360
    .line 1361
    move-object/from16 v15, v43

    .line 1362
    .line 1363
    move-object/from16 v6, v73

    .line 1364
    .line 1365
    invoke-static {v7, v9, v15, v9, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1366
    .line 1367
    .line 1368
    move-object/from16 v14, v74

    .line 1369
    .line 1370
    invoke-static {v9, v0, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1371
    .line 1372
    .line 1373
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->size()I

    .line 1374
    .line 1375
    .line 1376
    move-result v0

    .line 1377
    const v4, -0x4789de19

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1381
    .line 1382
    .line 1383
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v4

    .line 1387
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v4

    .line 1391
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1392
    .line 1393
    .line 1394
    move-result v6

    .line 1395
    if-eqz v6, :cond_b

    .line 1396
    .line 1397
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v6

    .line 1401
    check-cast v6, Ljava/util/Map$Entry;

    .line 1402
    .line 1403
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v6

    .line 1407
    check-cast v6, Ljava/lang/Number;

    .line 1408
    .line 1409
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 1410
    .line 1411
    .line 1412
    move-result v6

    .line 1413
    if-lez v6, :cond_a

    .line 1414
    .line 1415
    const v6, -0x3479f1a7    # -1.7570994E7f

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1419
    .line 1420
    .line 1421
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1422
    .line 1423
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v6

    .line 1427
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1428
    .line 1429
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 1430
    .line 1431
    const/4 v8, 0x0

    .line 1432
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1433
    .line 1434
    .line 1435
    goto :goto_b

    .line 1436
    :cond_a
    const/4 v8, 0x0

    .line 1437
    const v6, -0x34784fc2

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1441
    .line 1442
    .line 1443
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1444
    .line 1445
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v6

    .line 1449
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1450
    .line 1451
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 1452
    .line 1453
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1454
    .line 1455
    .line 1456
    :goto_b
    int-to-float v10, v0

    .line 1457
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1458
    .line 1459
    div-float v11, v15, v10

    .line 1460
    .line 1461
    invoke-static {v2, v11}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v10

    .line 1465
    const/high16 v11, 0x41c00000    # 24.0f

    .line 1466
    .line 1467
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v10

    .line 1471
    const/4 v11, 0x0

    .line 1472
    const/4 v13, 0x2

    .line 1473
    invoke-static {v10, v15, v11, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v10

    .line 1477
    invoke-static {v12}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v11

    .line 1481
    invoke-static {v10, v6, v7, v11}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v6

    .line 1485
    invoke-static {v6, v9, v8}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 1486
    .line 1487
    .line 1488
    goto :goto_a

    .line 1489
    :cond_b
    const/4 v8, 0x0

    .line 1490
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1491
    .line 1492
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1493
    .line 1494
    .line 1495
    const/4 v11, 0x1

    .line 1496
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1497
    .line 1498
    .line 1499
    invoke-static {v2, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v10

    .line 1503
    const/4 v14, 0x0

    .line 1504
    const/16 v15, 0xd

    .line 1505
    .line 1506
    const/4 v11, 0x0

    .line 1507
    const/4 v13, 0x0

    .line 1508
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v0

    .line 1512
    move v4, v12

    .line 1513
    invoke-static {v3, v5, v9, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v3

    .line 1517
    iget-wide v5, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1518
    .line 1519
    ushr-long v7, v5, v29

    .line 1520
    .line 1521
    xor-long/2addr v5, v7

    .line 1522
    long-to-int v5, v5

    .line 1523
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v6

    .line 1527
    invoke-static {v9, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v0

    .line 1531
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1532
    .line 1533
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1534
    .line 1535
    .line 1536
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1537
    .line 1538
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1539
    .line 1540
    .line 1541
    iget-boolean v8, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1542
    .line 1543
    if-eqz v8, :cond_c

    .line 1544
    .line 1545
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1546
    .line 1547
    .line 1548
    goto :goto_c

    .line 1549
    :cond_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1550
    .line 1551
    .line 1552
    :goto_c
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1553
    .line 1554
    invoke-static {v9, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1555
    .line 1556
    .line 1557
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1558
    .line 1559
    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1560
    .line 1561
    .line 1562
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v5

    .line 1566
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1567
    .line 1568
    invoke-static {v9, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1569
    .line 1570
    .line 1571
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1572
    .line 1573
    invoke-static {v9, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1574
    .line 1575
    .line 1576
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1577
    .line 1578
    const/4 v11, 0x1

    .line 1579
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1580
    .line 1581
    invoke-static {v9, v0, v10, v15, v11}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v0

    .line 1585
    sget-object v11, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1586
    .line 1587
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v11

    .line 1591
    check-cast v11, Ljava/lang/Iterable;

    .line 1592
    .line 1593
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v11

    .line 1597
    check-cast v11, Ljava/lang/String;

    .line 1598
    .line 1599
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1600
    .line 1601
    .line 1602
    new-instance v12, Ljava/text/SimpleDateFormat;

    .line 1603
    .line 1604
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v13

    .line 1608
    const-string/jumbo v14, "yyyy-MM-dd"

    .line 1609
    .line 1610
    .line 1611
    invoke-direct {v12, v14, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v12, v11}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v11

    .line 1618
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1619
    .line 1620
    .line 1621
    const-string v12, "MMMM d"

    .line 1622
    .line 1623
    invoke-static {v12, v11}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v11

    .line 1627
    sget-object v13, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1628
    .line 1629
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v15

    .line 1633
    check-cast v15, Landroidx/compose/material3/Typography;

    .line 1634
    .line 1635
    iget-object v15, v15, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 1636
    .line 1637
    move/from16 v31, v1

    .line 1638
    .line 1639
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1640
    .line 1641
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v16

    .line 1645
    move-object/from16 v4, v16

    .line 1646
    .line 1647
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1648
    .line 1649
    move-object/from16 v16, v5

    .line 1650
    .line 1651
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1652
    .line 1653
    const/16 v27, 0x0

    .line 1654
    .line 1655
    const v28, 0x1fff8

    .line 1656
    .line 1657
    .line 1658
    move-object/from16 v25, v9

    .line 1659
    .line 1660
    const/4 v9, 0x0

    .line 1661
    move-object/from16 v18, v8

    .line 1662
    .line 1663
    move-object/from16 v17, v10

    .line 1664
    .line 1665
    move-wide/from16 v77, v4

    .line 1666
    .line 1667
    move-object v4, v7

    .line 1668
    move-wide/from16 v7, v77

    .line 1669
    .line 1670
    move-object v5, v11

    .line 1671
    const-wide/16 v10, 0x0

    .line 1672
    .line 1673
    move-object/from16 v19, v12

    .line 1674
    .line 1675
    const/4 v12, 0x0

    .line 1676
    move-object/from16 v20, v13

    .line 1677
    .line 1678
    const/4 v13, 0x0

    .line 1679
    move-object/from16 v21, v14

    .line 1680
    .line 1681
    move-object/from16 v24, v15

    .line 1682
    .line 1683
    const-wide/16 v14, 0x0

    .line 1684
    .line 1685
    move-object/from16 v22, v16

    .line 1686
    .line 1687
    const/16 v16, 0x0

    .line 1688
    .line 1689
    move-object/from16 v26, v17

    .line 1690
    .line 1691
    move-object/from16 v23, v18

    .line 1692
    .line 1693
    const-wide/16 v17, 0x0

    .line 1694
    .line 1695
    move-object/from16 v34, v19

    .line 1696
    .line 1697
    const/16 v19, 0x0

    .line 1698
    .line 1699
    move-object/from16 v35, v20

    .line 1700
    .line 1701
    const/16 v20, 0x0

    .line 1702
    .line 1703
    move-object/from16 v38, v21

    .line 1704
    .line 1705
    const/16 v21, 0x0

    .line 1706
    .line 1707
    move-object/from16 v39, v22

    .line 1708
    .line 1709
    const/16 v22, 0x0

    .line 1710
    .line 1711
    move-object/from16 v40, v23

    .line 1712
    .line 1713
    const/16 v23, 0x0

    .line 1714
    .line 1715
    move-object/from16 v41, v26

    .line 1716
    .line 1717
    const/16 v26, 0x0

    .line 1718
    .line 1719
    move-object/from16 v55, v2

    .line 1720
    .line 1721
    move-object/from16 v2, v35

    .line 1722
    .line 1723
    move-object/from16 v75, v39

    .line 1724
    .line 1725
    move-object/from16 v76, v41

    .line 1726
    .line 1727
    move-object/from16 v35, v3

    .line 1728
    .line 1729
    move-object/from16 v3, v34

    .line 1730
    .line 1731
    move-object/from16 v34, v6

    .line 1732
    .line 1733
    move-object v6, v0

    .line 1734
    move-object/from16 v0, v38

    .line 1735
    .line 1736
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1737
    .line 1738
    .line 1739
    move-object/from16 v9, v25

    .line 1740
    .line 1741
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v5

    .line 1745
    check-cast v5, Ljava/lang/Iterable;

    .line 1746
    .line 1747
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v5

    .line 1751
    check-cast v5, Ljava/lang/String;

    .line 1752
    .line 1753
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1754
    .line 1755
    .line 1756
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 1757
    .line 1758
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v7

    .line 1762
    invoke-direct {v6, v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1763
    .line 1764
    .line 1765
    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v0

    .line 1769
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1770
    .line 1771
    .line 1772
    invoke-static {v3, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v5

    .line 1776
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v0

    .line 1780
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1781
    .line 1782
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 1783
    .line 1784
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v3

    .line 1788
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1789
    .line 1790
    iget-wide v7, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1791
    .line 1792
    const v28, 0x1fffa

    .line 1793
    .line 1794
    .line 1795
    const/4 v6, 0x0

    .line 1796
    const/4 v9, 0x0

    .line 1797
    move-object/from16 v24, v0

    .line 1798
    .line 1799
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1800
    .line 1801
    .line 1802
    move-object/from16 v9, v25

    .line 1803
    .line 1804
    const/4 v8, 0x1

    .line 1805
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1806
    .line 1807
    .line 1808
    const/16 v16, 0x0

    .line 1809
    .line 1810
    const/16 v17, 0xd

    .line 1811
    .line 1812
    const/4 v13, 0x0

    .line 1813
    const/4 v15, 0x0

    .line 1814
    move/from16 v14, v37

    .line 1815
    .line 1816
    move-object/from16 v12, v55

    .line 1817
    .line 1818
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v5

    .line 1822
    move-object v0, v12

    .line 1823
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v3

    .line 1827
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1828
    .line 1829
    iget-wide v7, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 1830
    .line 1831
    const/4 v10, 0x6

    .line 1832
    const/4 v11, 0x2

    .line 1833
    const/4 v6, 0x0

    .line 1834
    invoke-static/range {v5 .. v11}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 1835
    .line 1836
    .line 1837
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1838
    .line 1839
    invoke-static {v0, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v12

    .line 1843
    const/4 v15, 0x0

    .line 1844
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v3

    .line 1848
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 1849
    .line 1850
    new-instance v6, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 1851
    .line 1852
    const/16 v15, 0xa

    .line 1853
    .line 1854
    invoke-direct {v6, v15}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1855
    .line 1856
    .line 1857
    const/high16 v7, 0x40800000    # 4.0f

    .line 1858
    .line 1859
    const/4 v8, 0x1

    .line 1860
    invoke-direct {v5, v7, v8, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 1861
    .line 1862
    .line 1863
    move-object/from16 v11, v72

    .line 1864
    .line 1865
    const/16 v6, 0x36

    .line 1866
    .line 1867
    invoke-static {v5, v11, v9, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v5

    .line 1871
    iget-wide v6, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1872
    .line 1873
    ushr-long v12, v6, v29

    .line 1874
    .line 1875
    xor-long/2addr v6, v12

    .line 1876
    long-to-int v6, v6

    .line 1877
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v7

    .line 1881
    invoke-static {v9, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v3

    .line 1885
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1886
    .line 1887
    .line 1888
    iget-boolean v8, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1889
    .line 1890
    if-eqz v8, :cond_d

    .line 1891
    .line 1892
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1893
    .line 1894
    .line 1895
    :goto_d
    move-object/from16 v4, v40

    .line 1896
    .line 1897
    goto :goto_e

    .line 1898
    :cond_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1899
    .line 1900
    .line 1901
    goto :goto_d

    .line 1902
    :goto_e
    invoke-static {v9, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1903
    .line 1904
    .line 1905
    move-object/from16 v4, v35

    .line 1906
    .line 1907
    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1908
    .line 1909
    .line 1910
    move-object/from16 v4, v34

    .line 1911
    .line 1912
    move-object/from16 v5, v75

    .line 1913
    .line 1914
    invoke-static {v6, v9, v4, v9, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1915
    .line 1916
    .line 1917
    move-object/from16 v4, v76

    .line 1918
    .line 1919
    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1920
    .line 1921
    .line 1922
    move-object/from16 v3, p0

    .line 1923
    .line 1924
    iget-wide v4, v3, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$7:J

    .line 1925
    .line 1926
    move-object/from16 v6, v44

    .line 1927
    .line 1928
    invoke-virtual {v6, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v6

    .line 1932
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1933
    .line 1934
    .line 1935
    move-wide v7, v4

    .line 1936
    move-object v5, v6

    .line 1937
    new-instance v6, Landroidx/compose/foundation/layout/VerticalAlignElement;

    .line 1938
    .line 1939
    invoke-direct {v6, v11}, Landroidx/compose/foundation/layout/VerticalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Vertical;)V

    .line 1940
    .line 1941
    .line 1942
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v4

    .line 1946
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 1947
    .line 1948
    iget-object v4, v4, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1949
    .line 1950
    sget-object v15, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 1951
    .line 1952
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v10

    .line 1956
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1957
    .line 1958
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1959
    .line 1960
    const/16 v27, 0x0

    .line 1961
    .line 1962
    const v28, 0x1ffb8

    .line 1963
    .line 1964
    .line 1965
    move-object/from16 v25, v9

    .line 1966
    .line 1967
    const/4 v9, 0x0

    .line 1968
    move-wide v12, v7

    .line 1969
    move-wide v7, v10

    .line 1970
    const-wide/16 v10, 0x0

    .line 1971
    .line 1972
    move-wide/from16 v16, v12

    .line 1973
    .line 1974
    const/4 v13, 0x0

    .line 1975
    move-object v12, v15

    .line 1976
    const-wide/16 v14, 0x0

    .line 1977
    .line 1978
    move-wide/from16 v17, v16

    .line 1979
    .line 1980
    const/16 v16, 0x0

    .line 1981
    .line 1982
    move-wide/from16 v19, v17

    .line 1983
    .line 1984
    const-wide/16 v17, 0x0

    .line 1985
    .line 1986
    move-wide/from16 v20, v19

    .line 1987
    .line 1988
    const/16 v19, 0x0

    .line 1989
    .line 1990
    move-wide/from16 v21, v20

    .line 1991
    .line 1992
    const/16 v20, 0x0

    .line 1993
    .line 1994
    move-wide/from16 v22, v21

    .line 1995
    .line 1996
    const/16 v21, 0x0

    .line 1997
    .line 1998
    move-wide/from16 v23, v22

    .line 1999
    .line 2000
    const/16 v22, 0x0

    .line 2001
    .line 2002
    move-wide/from16 v34, v23

    .line 2003
    .line 2004
    const/16 v23, 0x0

    .line 2005
    .line 2006
    const/high16 v26, 0x180000

    .line 2007
    .line 2008
    move-object/from16 v24, v4

    .line 2009
    .line 2010
    move-wide/from16 v3, v34

    .line 2011
    .line 2012
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 2013
    .line 2014
    .line 2015
    move-object/from16 v9, v25

    .line 2016
    .line 2017
    const v5, 0x7f100004

    .line 2018
    .line 2019
    .line 2020
    long-to-int v3, v3

    .line 2021
    invoke-static {v5, v3, v9}, Lcoil3/util/UtilsKt;->pluralStringResource(IILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v3

    .line 2025
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2026
    .line 2027
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v5

    .line 2031
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v2

    .line 2038
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 2039
    .line 2040
    iget-object v10, v2, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 2041
    .line 2042
    invoke-static/range {v31 .. v31}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 2043
    .line 2044
    .line 2045
    move-result-wide v19

    .line 2046
    const/16 v21, 0x0

    .line 2047
    .line 2048
    const v22, 0xfdfffb

    .line 2049
    .line 2050
    .line 2051
    move-object v15, v12

    .line 2052
    const-wide/16 v11, 0x0

    .line 2053
    .line 2054
    const-wide/16 v13, 0x0

    .line 2055
    .line 2056
    invoke-static/range {v10 .. v22}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v24

    .line 2060
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v2

    .line 2064
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2065
    .line 2066
    iget-wide v7, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 2067
    .line 2068
    const v28, 0x1fffa

    .line 2069
    .line 2070
    .line 2071
    const/4 v6, 0x0

    .line 2072
    const/4 v9, 0x0

    .line 2073
    const-wide/16 v10, 0x0

    .line 2074
    .line 2075
    const/4 v12, 0x0

    .line 2076
    const/4 v13, 0x0

    .line 2077
    const-wide/16 v14, 0x0

    .line 2078
    .line 2079
    const/16 v19, 0x0

    .line 2080
    .line 2081
    const/16 v20, 0x0

    .line 2082
    .line 2083
    const/16 v21, 0x0

    .line 2084
    .line 2085
    const/16 v22, 0x0

    .line 2086
    .line 2087
    const/16 v26, 0x0

    .line 2088
    .line 2089
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 2090
    .line 2091
    .line 2092
    move-object/from16 v9, v25

    .line 2093
    .line 2094
    const/4 v8, 0x1

    .line 2095
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2096
    .line 2097
    .line 2098
    const/high16 v15, 0x3f800000    # 1.0f

    .line 2099
    .line 2100
    invoke-static {v0, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v0

    .line 2104
    const/high16 v2, 0x42000000    # 32.0f

    .line 2105
    .line 2106
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v10

    .line 2110
    const/4 v14, 0x0

    .line 2111
    const/16 v15, 0xd

    .line 2112
    .line 2113
    const/4 v11, 0x0

    .line 2114
    const/4 v13, 0x0

    .line 2115
    const/high16 v12, 0x41000000    # 8.0f

    .line 2116
    .line 2117
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v6

    .line 2121
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v0

    .line 2125
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2126
    .line 2127
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 2128
    .line 2129
    const/16 v12, 0xdb0

    .line 2130
    .line 2131
    move-object/from16 v3, p0

    .line 2132
    .line 2133
    iget-object v5, v3, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    .line 2134
    .line 2135
    const/16 v7, 0x5a

    .line 2136
    .line 2137
    const/high16 v8, 0x40000000    # 2.0f

    .line 2138
    .line 2139
    move-object v11, v9

    .line 2140
    move-wide v9, v0

    .line 2141
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/compose/components/TabsBoxKt;->LineChart-xfPyhaw(Ljava/util/Map;Landroidx/compose/ui/Modifier;IFJLandroidx/compose/runtime/GapComposer;I)V

    .line 2142
    .line 2143
    .line 2144
    move-object v9, v11

    .line 2145
    const/4 v8, 0x1

    .line 2146
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2147
    .line 2148
    .line 2149
    const/4 v15, 0x0

    .line 2150
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2151
    .line 2152
    .line 2153
    goto :goto_f

    .line 2154
    :cond_e
    const/4 v8, 0x1

    .line 2155
    const/4 v15, 0x0

    .line 2156
    const v0, 0x5861ed78

    .line 2157
    .line 2158
    .line 2159
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2160
    .line 2161
    .line 2162
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2163
    .line 2164
    .line 2165
    :goto_f
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2166
    .line 2167
    .line 2168
    goto :goto_10

    .line 2169
    :cond_f
    move-object/from16 v30, v2

    .line 2170
    .line 2171
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2172
    .line 2173
    .line 2174
    :goto_10
    return-object v30

    .line 2175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
