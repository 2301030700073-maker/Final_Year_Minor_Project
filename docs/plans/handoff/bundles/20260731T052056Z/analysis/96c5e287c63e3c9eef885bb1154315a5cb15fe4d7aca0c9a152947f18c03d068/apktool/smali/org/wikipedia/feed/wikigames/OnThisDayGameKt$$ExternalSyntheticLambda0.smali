.class public final synthetic Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    .line 16
    iput p6, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-wide p1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$2:J

    iput-object p3, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput p5, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;IJLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    .line 11
    iput-wide p3, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$2:J

    .line 12
    .line 13
    iput-object p5, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget v4, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    iget-object v5, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object v9, v6

    .line 18
    check-cast v9, Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    move-object v10, v5

    .line 21
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 22
    .line 23
    move-object/from16 v11, p1

    .line 24
    .line 25
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    or-int/lit8 v1, v4, 0x1

    .line 35
    .line 36
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    iget-wide v7, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$2:J

    .line 41
    .line 42
    invoke-static/range {v7 .. v12}, Landroidx/compose/material3/internal/LayoutUtilKt;->Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :pswitch_0
    move-object v15, v6

    .line 47
    check-cast v15, Landroidx/compose/ui/text/TextStyle;

    .line 48
    .line 49
    move-object/from16 v16, v5

    .line 50
    .line 51
    check-cast v16, Lkotlin/jvm/functions/Function2;

    .line 52
    .line 53
    move-object/from16 v17, p1

    .line 54
    .line 55
    check-cast v17, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    move-object/from16 v1, p2

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    or-int/lit8 v1, v4, 0x1

    .line 65
    .line 66
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 67
    .line 68
    .line 69
    move-result v18

    .line 70
    iget-wide v13, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$2:J

    .line 71
    .line 72
    invoke-static/range {v13 .. v18}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :pswitch_1
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    move-object v7, v5

    .line 79
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v13, p1

    .line 82
    .line 83
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    move-object/from16 v1, p2

    .line 86
    .line 87
    check-cast v1, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    and-int/lit8 v5, v1, 0x3

    .line 94
    .line 95
    const/4 v8, 0x2

    .line 96
    const/4 v9, 0x0

    .line 97
    if-eq v5, v8, :cond_0

    .line 98
    .line 99
    move v5, v3

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    move v5, v9

    .line 102
    :goto_0
    and-int/2addr v1, v3

    .line 103
    invoke-virtual {v13, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-nez v1, :cond_1

    .line 118
    .line 119
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 120
    .line 121
    if-ne v5, v1, :cond_2

    .line 122
    .line 123
    :cond_1
    new-instance v5, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    const/16 v1, 0x14

    .line 126
    .line 127
    invoke-direct {v5, v1, v6}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 134
    .line 135
    const/16 v1, 0xf

    .line 136
    .line 137
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    invoke-static {v1, v6, v8, v5, v9}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 145
    .line 146
    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget-wide v10, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 151
    .line 152
    const/16 v8, 0x20

    .line 153
    .line 154
    ushr-long v14, v10, v8

    .line 155
    .line 156
    xor-long/2addr v10, v14

    .line 157
    long-to-int v10, v10

    .line 158
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-static {v13, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 167
    .line 168
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 172
    .line 173
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 174
    .line 175
    .line 176
    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 177
    .line 178
    if-eqz v14, :cond_3

    .line 179
    .line 180
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 185
    .line 186
    .line 187
    :goto_1
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 188
    .line 189
    invoke-static {v13, v5, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 193
    .line 194
    invoke-static {v13, v11, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 202
    .line 203
    invoke-static {v13, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 204
    .line 205
    .line 206
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 207
    .line 208
    invoke-static {v13, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 209
    .line 210
    .line 211
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 212
    .line 213
    invoke-static {v13, v1, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    const/high16 v1, 0x41800000    # 16.0f

    .line 217
    .line 218
    move/from16 p1, v8

    .line 219
    .line 220
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 225
    .line 226
    invoke-interface {v8, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 231
    .line 232
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 233
    .line 234
    invoke-static {v8, v3, v13, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    move-object v8, v10

    .line 239
    iget-wide v9, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 240
    .line 241
    ushr-long v17, v9, p1

    .line 242
    .line 243
    xor-long v9, v9, v17

    .line 244
    .line 245
    long-to-int v9, v9

    .line 246
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    invoke-static {v13, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 255
    .line 256
    .line 257
    move-object/from16 v31, v2

    .line 258
    .line 259
    iget-boolean v2, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 260
    .line 261
    if-eqz v2, :cond_4

    .line 262
    .line 263
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_4
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 268
    .line 269
    .line 270
    :goto_2
    invoke-static {v13, v3, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v13, v10, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v9, v13, v11, v13, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v13, v1, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    const/high16 v1, 0x42300000    # 44.0f

    .line 283
    .line 284
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    const/4 v1, 0x0

    .line 289
    invoke-static {v4, v1, v13}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    const/16 v14, 0x1b8

    .line 294
    .line 295
    const/4 v15, 0x0

    .line 296
    const/4 v9, 0x0

    .line 297
    iget-wide v11, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;->f$2:J

    .line 298
    .line 299
    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 300
    .line 301
    .line 302
    const/16 v18, 0x0

    .line 303
    .line 304
    const/16 v19, 0xd

    .line 305
    .line 306
    const/4 v15, 0x0

    .line 307
    const/16 v17, 0x0

    .line 308
    .line 309
    move-object v14, v6

    .line 310
    const/high16 v16, 0x41800000    # 16.0f

    .line 311
    .line 312
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 317
    .line 318
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 323
    .line 324
    iget-wide v9, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 325
    .line 326
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 327
    .line 328
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 333
    .line 334
    iget-object v14, v0, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 335
    .line 336
    sget-object v19, Landroidx/compose/ui/text/font/FontWeight;->SemiBold:Landroidx/compose/ui/text/font/FontWeight;

    .line 337
    .line 338
    const-wide v0, 0x3fc3333333333333L    # 0.15

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->getSp(D)J

    .line 344
    .line 345
    .line 346
    move-result-wide v21

    .line 347
    const/16 v25, 0x0

    .line 348
    .line 349
    const v26, 0xffff7b

    .line 350
    .line 351
    .line 352
    const-wide/16 v15, 0x0

    .line 353
    .line 354
    const-wide/16 v17, 0x0

    .line 355
    .line 356
    const/16 v20, 0x0

    .line 357
    .line 358
    const-wide/16 v23, 0x0

    .line 359
    .line 360
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 361
    .line 362
    .line 363
    move-result-object v26

    .line 364
    const/16 v29, 0x0

    .line 365
    .line 366
    const v30, 0x1fff8

    .line 367
    .line 368
    .line 369
    const/4 v11, 0x0

    .line 370
    move-object/from16 v27, v13

    .line 371
    .line 372
    const-wide/16 v12, 0x0

    .line 373
    .line 374
    const/4 v14, 0x0

    .line 375
    const/4 v15, 0x0

    .line 376
    const-wide/16 v16, 0x0

    .line 377
    .line 378
    const/16 v18, 0x0

    .line 379
    .line 380
    const-wide/16 v19, 0x0

    .line 381
    .line 382
    const/16 v21, 0x0

    .line 383
    .line 384
    const/16 v22, 0x0

    .line 385
    .line 386
    const/16 v23, 0x0

    .line 387
    .line 388
    const/16 v24, 0x0

    .line 389
    .line 390
    const/16 v28, 0x30

    .line 391
    .line 392
    invoke-static/range {v7 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 393
    .line 394
    .line 395
    move-object/from16 v13, v27

    .line 396
    .line 397
    const/4 v0, 0x1

    .line 398
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 402
    .line 403
    .line 404
    goto :goto_3

    .line 405
    :cond_5
    move-object/from16 v31, v2

    .line 406
    .line 407
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 408
    .line 409
    .line 410
    :goto_3
    return-object v31

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
