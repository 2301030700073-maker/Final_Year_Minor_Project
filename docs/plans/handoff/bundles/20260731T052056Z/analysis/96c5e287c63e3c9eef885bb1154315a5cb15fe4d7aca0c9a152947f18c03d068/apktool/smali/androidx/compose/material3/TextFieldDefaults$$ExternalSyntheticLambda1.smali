.class public final synthetic Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 18
    iput p2, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p7, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p4, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$1:Z

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 56

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v7, v6

    .line 19
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    move-object v8, v5

    .line 22
    check-cast v8, Ljava/lang/String;

    .line 23
    .line 24
    check-cast v4, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 25
    .line 26
    check-cast v3, Landroid/content/Context;

    .line 27
    .line 28
    move-object/from16 v14, p1

    .line 29
    .line 30
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    move-object/from16 v1, p2

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    and-int/lit8 v5, v1, 0x3

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x1

    .line 45
    if-eq v5, v6, :cond_0

    .line 46
    .line 47
    move v5, v10

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v5, v9

    .line 50
    :goto_0
    and-int/2addr v1, v10

    .line 51
    invoke-virtual {v14, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_9

    .line 56
    .line 57
    iget-boolean v0, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$1:Z

    .line 58
    .line 59
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const v5, 0x167450bf

    .line 64
    .line 65
    .line 66
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-nez v5, :cond_1

    .line 78
    .line 79
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 80
    .line 81
    if-ne v6, v5, :cond_2

    .line 82
    .line 83
    :cond_1
    new-instance v6, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    const/16 v5, 0x12

    .line 86
    .line 87
    invoke-direct {v6, v5, v7}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    const/16 v5, 0xf

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    invoke-static {v5, v1, v11, v6, v9}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const v5, 0x16745548

    .line 107
    .line 108
    .line 109
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 113
    .line 114
    .line 115
    move-object v5, v1

    .line 116
    :goto_1
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 117
    .line 118
    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    iget-wide v12, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 123
    .line 124
    const/16 v33, 0x20

    .line 125
    .line 126
    ushr-long v15, v12, v33

    .line 127
    .line 128
    xor-long/2addr v12, v15

    .line 129
    long-to-int v12, v12

    .line 130
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    invoke-static {v14, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 139
    .line 140
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 144
    .line 145
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 146
    .line 147
    .line 148
    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 149
    .line 150
    if-eqz v10, :cond_4

    .line 151
    .line 152
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 157
    .line 158
    .line 159
    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 160
    .line 161
    invoke-static {v14, v11, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v14, v13, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 174
    .line 175
    invoke-static {v14, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 176
    .line 177
    .line 178
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 179
    .line 180
    invoke-static {v14, v12}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 181
    .line 182
    .line 183
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 184
    .line 185
    invoke-static {v14, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    .line 187
    .line 188
    const/high16 v5, 0x41800000    # 16.0f

    .line 189
    .line 190
    move/from16 p0, v0

    .line 191
    .line 192
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 197
    .line 198
    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 203
    .line 204
    move-object/from16 v34, v2

    .line 205
    .line 206
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 207
    .line 208
    move-object/from16 v35, v7

    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    invoke-static {v5, v2, v14, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    move-object v5, v8

    .line 216
    iget-wide v7, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 217
    .line 218
    ushr-long v18, v7, v33

    .line 219
    .line 220
    xor-long v7, v7, v18

    .line 221
    .line 222
    long-to-int v7, v7

    .line 223
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-static {v14, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 232
    .line 233
    .line 234
    move-object/from16 v21, v5

    .line 235
    .line 236
    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 237
    .line 238
    if-eqz v5, :cond_5

    .line 239
    .line 240
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 245
    .line 246
    .line 247
    :goto_3
    invoke-static {v14, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v14, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v7, v14, v13, v14, v12}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v14, v0, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    const/high16 v0, 0x42300000    # 44.0f

    .line 260
    .line 261
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const v2, 0x7f08015f

    .line 266
    .line 267
    .line 268
    const/4 v7, 0x0

    .line 269
    invoke-static {v2, v7, v14}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 274
    .line 275
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 280
    .line 281
    iget-wide v7, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 282
    .line 283
    move-object/from16 v16, v15

    .line 284
    .line 285
    const/16 v15, 0x1b8

    .line 286
    .line 287
    move-object/from16 v18, v16

    .line 288
    .line 289
    const/16 v16, 0x0

    .line 290
    .line 291
    move-object/from16 v19, v10

    .line 292
    .line 293
    const/4 v10, 0x0

    .line 294
    move-object/from16 p1, v1

    .line 295
    .line 296
    move-object/from16 v36, v3

    .line 297
    .line 298
    move-object/from16 p2, v9

    .line 299
    .line 300
    move-object v1, v12

    .line 301
    const/4 v3, 0x1

    .line 302
    const/16 v37, 0x0

    .line 303
    .line 304
    move-object v9, v2

    .line 305
    move-object/from16 v2, v19

    .line 306
    .line 307
    move-object/from16 v53, v11

    .line 308
    .line 309
    move-object v11, v0

    .line 310
    move-object/from16 v0, v18

    .line 311
    .line 312
    move-wide/from16 v54, v7

    .line 313
    .line 314
    move-object/from16 v7, v53

    .line 315
    .line 316
    move-object v8, v13

    .line 317
    move-wide/from16 v12, v54

    .line 318
    .line 319
    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 320
    .line 321
    .line 322
    const/16 v19, 0x0

    .line 323
    .line 324
    const/16 v20, 0xd

    .line 325
    .line 326
    const/16 v16, 0x0

    .line 327
    .line 328
    const/16 v18, 0x0

    .line 329
    .line 330
    move-object/from16 v15, p1

    .line 331
    .line 332
    const/high16 v17, 0x41800000    # 16.0f

    .line 333
    .line 334
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    move-object/from16 v32, v15

    .line 339
    .line 340
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 345
    .line 346
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 347
    .line 348
    sget-object v12, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 349
    .line 350
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    check-cast v13, Landroidx/compose/material3/Typography;

    .line 355
    .line 356
    iget-object v13, v13, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 357
    .line 358
    sget-object v43, Landroidx/compose/ui/text/font/FontWeight;->SemiBold:Landroidx/compose/ui/text/font/FontWeight;

    .line 359
    .line 360
    const-wide v15, 0x3fc3333333333333L    # 0.15

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    invoke-static/range {v15 .. v16}, Lcoil3/util/ContextsKt;->getSp(D)J

    .line 366
    .line 367
    .line 368
    move-result-wide v45

    .line 369
    const/16 v49, 0x0

    .line 370
    .line 371
    const v50, 0xffff7b

    .line 372
    .line 373
    .line 374
    const-wide/16 v39, 0x0

    .line 375
    .line 376
    const-wide/16 v41, 0x0

    .line 377
    .line 378
    const/16 v44, 0x0

    .line 379
    .line 380
    const-wide/16 v47, 0x0

    .line 381
    .line 382
    move-object/from16 v38, v13

    .line 383
    .line 384
    invoke-static/range {v38 .. v50}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 385
    .line 386
    .line 387
    move-result-object v27

    .line 388
    const/16 v30, 0x0

    .line 389
    .line 390
    const v31, 0x1fff8

    .line 391
    .line 392
    .line 393
    move-object v13, v12

    .line 394
    const/4 v12, 0x0

    .line 395
    move-object v15, v13

    .line 396
    move-object/from16 v29, v14

    .line 397
    .line 398
    const-wide/16 v13, 0x0

    .line 399
    .line 400
    move-object/from16 v16, v15

    .line 401
    .line 402
    const/4 v15, 0x0

    .line 403
    move-object/from16 v17, v16

    .line 404
    .line 405
    const/16 v16, 0x0

    .line 406
    .line 407
    move-object/from16 v19, v17

    .line 408
    .line 409
    const-wide/16 v17, 0x0

    .line 410
    .line 411
    move-object/from16 v20, v19

    .line 412
    .line 413
    const/16 v19, 0x0

    .line 414
    .line 415
    move-object/from16 v22, v8

    .line 416
    .line 417
    move-object/from16 v23, v20

    .line 418
    .line 419
    move-object/from16 v8, v21

    .line 420
    .line 421
    const-wide/16 v20, 0x0

    .line 422
    .line 423
    move-object/from16 v24, v22

    .line 424
    .line 425
    const/16 v22, 0x0

    .line 426
    .line 427
    move-object/from16 v25, v23

    .line 428
    .line 429
    const/16 v23, 0x0

    .line 430
    .line 431
    move-object/from16 v26, v24

    .line 432
    .line 433
    const/16 v24, 0x0

    .line 434
    .line 435
    move-object/from16 v28, v25

    .line 436
    .line 437
    const/16 v25, 0x0

    .line 438
    .line 439
    move-object/from16 v38, v26

    .line 440
    .line 441
    const/16 v26, 0x0

    .line 442
    .line 443
    move-object/from16 v39, v28

    .line 444
    .line 445
    move-object/from16 v28, v29

    .line 446
    .line 447
    const/16 v29, 0x30

    .line 448
    .line 449
    move-object/from16 v51, v38

    .line 450
    .line 451
    move-object/from16 v52, v39

    .line 452
    .line 453
    invoke-static/range {v8 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 454
    .line 455
    .line 456
    move-object/from16 v14, v28

    .line 457
    .line 458
    if-eqz p0, :cond_6

    .line 459
    .line 460
    const v8, 0x3776a612

    .line 461
    .line 462
    .line 463
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 464
    .line 465
    .line 466
    iget v8, v4, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;->currentQuestion:I

    .line 467
    .line 468
    add-int/2addr v8, v3

    .line 469
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    new-array v9, v3, [Ljava/lang/Object;

    .line 474
    .line 475
    aput-object v8, v9, v37

    .line 476
    .line 477
    const v8, 0x7f1204be

    .line 478
    .line 479
    .line 480
    invoke-static {v8, v9, v14}, Lcoil3/util/UtilsKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    move/from16 v9, v37

    .line 485
    .line 486
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 487
    .line 488
    .line 489
    goto :goto_4

    .line 490
    :cond_6
    move/from16 v9, v37

    .line 491
    .line 492
    const v8, 0x3779d318

    .line 493
    .line 494
    .line 495
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 496
    .line 497
    .line 498
    iget v8, v4, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;->currentQuestion:I

    .line 499
    .line 500
    add-int/2addr v8, v3

    .line 501
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    new-array v10, v3, [Ljava/lang/Object;

    .line 506
    .line 507
    aput-object v8, v10, v9

    .line 508
    .line 509
    const v8, 0x7f1204bd

    .line 510
    .line 511
    .line 512
    invoke-static {v8, v10, v14}, Lcoil3/util/UtilsKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v8

    .line 516
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 517
    .line 518
    .line 519
    :goto_4
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 524
    .line 525
    iget-wide v11, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 526
    .line 527
    move-object/from16 v13, v52

    .line 528
    .line 529
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v10

    .line 533
    check-cast v10, Landroidx/compose/material3/Typography;

    .line 534
    .line 535
    iget-object v15, v10, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 536
    .line 537
    const/16 v10, 0x18

    .line 538
    .line 539
    invoke-static {v10}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 540
    .line 541
    .line 542
    move-result-wide v24

    .line 543
    invoke-static {v9}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 544
    .line 545
    .line 546
    move-result-wide v22

    .line 547
    const/16 v26, 0x0

    .line 548
    .line 549
    const v27, 0xfdff7f

    .line 550
    .line 551
    .line 552
    const-wide/16 v16, 0x0

    .line 553
    .line 554
    const-wide/16 v18, 0x0

    .line 555
    .line 556
    const/16 v20, 0x0

    .line 557
    .line 558
    const/16 v21, 0x0

    .line 559
    .line 560
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 561
    .line 562
    .line 563
    move-result-object v28

    .line 564
    const/16 v31, 0x0

    .line 565
    .line 566
    move-object/from16 v15, v32

    .line 567
    .line 568
    const v32, 0x1fff8

    .line 569
    .line 570
    .line 571
    const/4 v13, 0x0

    .line 572
    move-object/from16 v29, v14

    .line 573
    .line 574
    move-object v10, v15

    .line 575
    const-wide/16 v14, 0x0

    .line 576
    .line 577
    const/16 v16, 0x0

    .line 578
    .line 579
    const/16 v17, 0x0

    .line 580
    .line 581
    const-wide/16 v21, 0x0

    .line 582
    .line 583
    const/16 v23, 0x0

    .line 584
    .line 585
    const/16 v24, 0x0

    .line 586
    .line 587
    const/16 v25, 0x0

    .line 588
    .line 589
    const/16 v26, 0x0

    .line 590
    .line 591
    const/16 v27, 0x0

    .line 592
    .line 593
    const/16 v30, 0x30

    .line 594
    .line 595
    move-object v9, v8

    .line 596
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 597
    .line 598
    .line 599
    move-object v15, v10

    .line 600
    move-object/from16 v14, v29

    .line 601
    .line 602
    new-instance v8, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 603
    .line 604
    const/high16 v9, 0x3f800000    # 1.0f

    .line 605
    .line 606
    invoke-direct {v8, v9, v3}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 607
    .line 608
    .line 609
    invoke-static {v14, v8}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 610
    .line 611
    .line 612
    if-nez p0, :cond_8

    .line 613
    .line 614
    const v8, 0x37843919

    .line 615
    .line 616
    .line 617
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 618
    .line 619
    .line 620
    invoke-static {v15, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    const/4 v9, 0x0

    .line 625
    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 626
    .line 627
    .line 628
    move-result-object v6

    .line 629
    iget-wide v9, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 630
    .line 631
    ushr-long v11, v9, v33

    .line 632
    .line 633
    xor-long/2addr v9, v11

    .line 634
    long-to-int v9, v9

    .line 635
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 636
    .line 637
    .line 638
    move-result-object v10

    .line 639
    invoke-static {v14, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 644
    .line 645
    .line 646
    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 647
    .line 648
    if-eqz v11, :cond_7

    .line 649
    .line 650
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 651
    .line 652
    .line 653
    goto :goto_5

    .line 654
    :cond_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 655
    .line 656
    .line 657
    :goto_5
    invoke-static {v14, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 658
    .line 659
    .line 660
    invoke-static {v14, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 661
    .line 662
    .line 663
    move-object/from16 v0, v51

    .line 664
    .line 665
    invoke-static {v9, v14, v0, v14, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 666
    .line 667
    .line 668
    move-object/from16 v0, p2

    .line 669
    .line 670
    invoke-static {v14, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 671
    .line 672
    .line 673
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    .line 674
    .line 675
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 676
    .line 677
    invoke-virtual {v1, v15, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 678
    .line 679
    .line 680
    move-result-object v8

    .line 681
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 682
    .line 683
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 688
    .line 689
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 690
    .line 691
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 696
    .line 697
    iget-wide v5, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 698
    .line 699
    invoke-static {v0, v1, v5, v6, v14}, Landroidx/compose/material3/ButtonDefaults;->filledTonalButtonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ButtonColors;

    .line 700
    .line 701
    .line 702
    move-result-object v11

    .line 703
    new-instance v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 704
    .line 705
    const/16 v1, 0xe

    .line 706
    .line 707
    move-object/from16 v2, v36

    .line 708
    .line 709
    invoke-direct {v0, v1, v2, v4}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    const v1, 0x6b9b3c91

    .line 713
    .line 714
    .line 715
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    const/high16 v16, 0x30000000

    .line 720
    .line 721
    const/16 v17, 0x1ec

    .line 722
    .line 723
    const/4 v9, 0x0

    .line 724
    const/4 v10, 0x0

    .line 725
    const/4 v12, 0x0

    .line 726
    const/4 v13, 0x0

    .line 727
    move-object v15, v14

    .line 728
    move-object/from16 v7, v35

    .line 729
    .line 730
    move-object v14, v0

    .line 731
    invoke-static/range {v7 .. v17}, Landroidx/compose/material3/CardKt;->FilledTonalButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 732
    .line 733
    .line 734
    move-object v14, v15

    .line 735
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 736
    .line 737
    .line 738
    const/4 v7, 0x0

    .line 739
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 740
    .line 741
    .line 742
    goto :goto_6

    .line 743
    :cond_8
    const/4 v7, 0x0

    .line 744
    const v0, 0x379698be

    .line 745
    .line 746
    .line 747
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 751
    .line 752
    .line 753
    :goto_6
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 757
    .line 758
    .line 759
    goto :goto_7

    .line 760
    :cond_9
    move-object/from16 v34, v2

    .line 761
    .line 762
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 763
    .line 764
    .line 765
    :goto_7
    return-object v34

    .line 766
    :pswitch_0
    move-object/from16 v34, v2

    .line 767
    .line 768
    move-object v15, v6

    .line 769
    check-cast v15, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 770
    .line 771
    move-object/from16 v17, v5

    .line 772
    .line 773
    check-cast v17, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 774
    .line 775
    move-object/from16 v18, v4

    .line 776
    .line 777
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 778
    .line 779
    move-object/from16 v19, v3

    .line 780
    .line 781
    check-cast v19, Lkotlin/jvm/functions/Function1;

    .line 782
    .line 783
    move-object/from16 v20, p1

    .line 784
    .line 785
    check-cast v20, Landroidx/compose/runtime/GapComposer;

    .line 786
    .line 787
    move-object/from16 v1, p2

    .line 788
    .line 789
    check-cast v1, Ljava/lang/Integer;

    .line 790
    .line 791
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    const/16 v1, 0x181

    .line 795
    .line 796
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 797
    .line 798
    .line 799
    move-result v21

    .line 800
    iget-boolean v0, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$1:Z

    .line 801
    .line 802
    move/from16 v16, v0

    .line 803
    .line 804
    invoke-static/range {v15 .. v21}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;->HomePreferenceSection(Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;ZLorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 805
    .line 806
    .line 807
    return-object v34

    .line 808
    :pswitch_1
    move-object/from16 v34, v2

    .line 809
    .line 810
    move-object v1, v6

    .line 811
    check-cast v1, Landroidx/compose/material3/TextFieldDefaults;

    .line 812
    .line 813
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 814
    .line 815
    check-cast v4, Landroidx/compose/material3/TextFieldColors;

    .line 816
    .line 817
    check-cast v3, Landroidx/compose/ui/graphics/Shape;

    .line 818
    .line 819
    move-object/from16 v6, p1

    .line 820
    .line 821
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 822
    .line 823
    move-object/from16 v2, p2

    .line 824
    .line 825
    check-cast v2, Ljava/lang/Integer;

    .line 826
    .line 827
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    const v2, 0x6d80c01

    .line 831
    .line 832
    .line 833
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 834
    .line 835
    .line 836
    move-result v7

    .line 837
    iget-boolean v2, v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;->f$1:Z

    .line 838
    .line 839
    move-object/from16 v53, v5

    .line 840
    .line 841
    move-object v5, v3

    .line 842
    move-object/from16 v3, v53

    .line 843
    .line 844
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/material3/TextFieldDefaults;->Container-4EFweAY(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/GapComposer;I)V

    .line 845
    .line 846
    .line 847
    return-object v34

    .line 848
    nop

    .line 849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
