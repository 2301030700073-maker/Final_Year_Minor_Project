.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$0:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$3:Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$2:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iput p5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$4:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$0:I

    iput-object p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$3:Landroidx/compose/ui/Modifier;

    iput p5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v10, p1

    .line 12
    .line 13
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    move-object/from16 v1, p2

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    and-int/lit8 v4, v1, 0x3

    .line 24
    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x2

    .line 27
    if-eq v4, v14, :cond_0

    .line 28
    .line 29
    move v4, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v13

    .line 32
    :goto_0
    and-int/2addr v1, v3

    .line 33
    invoke-virtual {v10, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_7

    .line 38
    .line 39
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 40
    .line 41
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 42
    .line 43
    invoke-static {v1, v15, v10, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-wide v5, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 48
    .line 49
    const/16 v16, 0x20

    .line 50
    .line 51
    ushr-long v7, v5, v16

    .line 52
    .line 53
    xor-long/2addr v5, v7

    .line 54
    long-to-int v5, v5

    .line 55
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    .line 61
    invoke-static {v10, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 71
    .line 72
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 73
    .line 74
    .line 75
    iget-boolean v11, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 76
    .line 77
    if-eqz v11, :cond_1

    .line 78
    .line 79
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 84
    .line 85
    .line 86
    :goto_1
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 87
    .line 88
    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    .line 90
    .line 91
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 92
    .line 93
    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 101
    .line 102
    invoke-static {v10, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 106
    .line 107
    invoke-static {v10, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 111
    .line 112
    invoke-static {v10, v8, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 113
    .line 114
    .line 115
    const/16 v21, 0x0

    .line 116
    .line 117
    const/16 v22, 0x8

    .line 118
    .line 119
    const/high16 v18, 0x41800000    # 16.0f

    .line 120
    .line 121
    move/from16 v19, v18

    .line 122
    .line 123
    move/from16 v20, v18

    .line 124
    .line 125
    move-object/from16 v17, v7

    .line 126
    .line 127
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const v8, 0x7f080183

    .line 132
    .line 133
    .line 134
    invoke-static {v8, v13, v10}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    const v14, 0x7f12004c

    .line 139
    .line 140
    .line 141
    invoke-static {v14, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    iget v13, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$0:I

    .line 146
    .line 147
    if-lez v13, :cond_2

    .line 148
    .line 149
    iget-object v3, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$1:Ljava/lang/String;

    .line 150
    .line 151
    :goto_2
    move-object/from16 v20, v11

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_2
    const/4 v3, 0x0

    .line 155
    goto :goto_2

    .line 156
    :goto_3
    const v11, 0x30040

    .line 157
    .line 158
    .line 159
    move-object/from16 v21, v12

    .line 160
    .line 161
    const/16 v12, 0x10

    .line 162
    .line 163
    move-object/from16 v22, v5

    .line 164
    .line 165
    move-object v5, v8

    .line 166
    const/4 v8, 0x0

    .line 167
    move-object/from16 v23, v9

    .line 168
    .line 169
    const/4 v9, 0x1

    .line 170
    move-object/from16 v0, v20

    .line 171
    .line 172
    move-object/from16 v20, v6

    .line 173
    .line 174
    move-object v6, v14

    .line 175
    move-object v14, v0

    .line 176
    move/from16 v0, v18

    .line 177
    .line 178
    move/from16 v18, v13

    .line 179
    .line 180
    move v13, v0

    .line 181
    move-object/from16 v0, v17

    .line 182
    .line 183
    move-object/from16 v24, v21

    .line 184
    .line 185
    move-object/from16 v17, v2

    .line 186
    .line 187
    move-object v2, v4

    .line 188
    move-object v4, v7

    .line 189
    move-object v7, v3

    .line 190
    move-object/from16 v3, v23

    .line 191
    .line 192
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CommonCardHeader(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 193
    .line 194
    .line 195
    const/high16 v12, 0x3f800000    # 1.0f

    .line 196
    .line 197
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v6, 0x1

    .line 203
    invoke-static {v4, v5, v13, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const/4 v6, 0x0

    .line 208
    invoke-static {v1, v15, v10, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-wide v6, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 213
    .line 214
    ushr-long v8, v6, v16

    .line 215
    .line 216
    xor-long/2addr v6, v8

    .line 217
    long-to-int v6, v6

    .line 218
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-static {v10, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 227
    .line 228
    .line 229
    iget-boolean v8, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 230
    .line 231
    if-eqz v8, :cond_3

    .line 232
    .line 233
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-static {v10, v1, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v10, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v1, v20

    .line 247
    .line 248
    move-object/from16 v2, v22

    .line 249
    .line 250
    invoke-static {v6, v10, v1, v10, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 251
    .line 252
    .line 253
    move-object/from16 v1, v24

    .line 254
    .line 255
    invoke-static {v10, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 256
    .line 257
    .line 258
    move-object/from16 v1, p0

    .line 259
    .line 260
    iget v2, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$4:I

    .line 261
    .line 262
    move/from16 v6, v18

    .line 263
    .line 264
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    int-to-float v7, v3

    .line 269
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object v20

    .line 273
    const/16 v24, 0x0

    .line 274
    .line 275
    const/16 v25, 0xd

    .line 276
    .line 277
    const/16 v21, 0x0

    .line 278
    .line 279
    const/high16 v22, 0x41000000    # 8.0f

    .line 280
    .line 281
    const/16 v23, 0x0

    .line 282
    .line 283
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    const v3, 0x7f100002

    .line 288
    .line 289
    .line 290
    invoke-static {v3, v6, v10}, Lcoil3/util/UtilsKt;->pluralStringResource(IILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 295
    .line 296
    invoke-virtual {v3, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    sget-object v15, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 304
    .line 305
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 310
    .line 311
    iget-wide v8, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 312
    .line 313
    const/4 v11, 0x6

    .line 314
    move/from16 v32, v5

    .line 315
    .line 316
    move-object v5, v3

    .line 317
    move/from16 v3, v32

    .line 318
    .line 319
    invoke-static/range {v4 .. v11}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ContributionEditsView-qFjXxE8(Landroidx/compose/ui/Modifier;Ljava/lang/String;IFJLandroidx/compose/runtime/GapComposer;I)V

    .line 320
    .line 321
    .line 322
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 323
    .line 324
    .line 325
    move-result-object v26

    .line 326
    const/16 v30, 0x0

    .line 327
    .line 328
    const/16 v31, 0xd

    .line 329
    .line 330
    const/16 v27, 0x0

    .line 331
    .line 332
    const/16 v29, 0x0

    .line 333
    .line 334
    move/from16 v28, v22

    .line 335
    .line 336
    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    const v5, 0x7f100001

    .line 341
    .line 342
    .line 343
    invoke-static {v5, v2, v10}, Lcoil3/util/UtilsKt;->pluralStringResource(IILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v5, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 359
    .line 360
    iget-wide v8, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 361
    .line 362
    move v6, v2

    .line 363
    invoke-static/range {v4 .. v11}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ContributionEditsView-qFjXxE8(Landroidx/compose/ui/Modifier;Ljava/lang/String;IFJLandroidx/compose/runtime/GapComposer;I)V

    .line 364
    .line 365
    .line 366
    const/4 v6, 0x1

    .line 367
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 368
    .line 369
    .line 370
    if-nez v18, :cond_6

    .line 371
    .line 372
    const v2, -0x103cdaf3

    .line 373
    .line 374
    .line 375
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 376
    .line 377
    .line 378
    const/4 v2, 0x2

    .line 379
    invoke-static {v0, v13, v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 388
    .line 389
    iget-wide v6, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 390
    .line 391
    const/4 v9, 0x6

    .line 392
    move-object v8, v10

    .line 393
    const/4 v10, 0x2

    .line 394
    const/4 v5, 0x0

    .line 395
    invoke-static/range {v4 .. v10}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 396
    .line 397
    .line 398
    move-object v10, v8

    .line 399
    iget-object v0, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$3:Landroidx/compose/ui/Modifier;

    .line 400
    .line 401
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iget-object v1, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$2:Lkotlin/jvm/functions/Function0;

    .line 406
    .line 407
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    if-nez v2, :cond_4

    .line 416
    .line 417
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 418
    .line 419
    if-ne v3, v2, :cond_5

    .line 420
    .line 421
    :cond_4
    new-instance v3, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 422
    .line 423
    const/4 v2, 0x5

    .line 424
    invoke-direct {v3, v2, v1}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    :cond_5
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 431
    .line 432
    const/4 v6, 0x0

    .line 433
    invoke-static {v0, v3, v10, v6}, Lorg/wikipedia/activitytab/ImpactModuleKt;->SuggestedEditsView(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 437
    .line 438
    .line 439
    :goto_5
    const/4 v6, 0x1

    .line 440
    goto :goto_6

    .line 441
    :cond_6
    const/4 v6, 0x0

    .line 442
    const v0, -0x1036d7d9

    .line 443
    .line 444
    .line 445
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 449
    .line 450
    .line 451
    goto :goto_5

    .line 452
    :goto_6
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 453
    .line 454
    .line 455
    goto :goto_7

    .line 456
    :cond_7
    move-object/from16 v17, v2

    .line 457
    .line 458
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 459
    .line 460
    .line 461
    :goto_7
    return-object v17

    .line 462
    :pswitch_0
    move-object v1, v0

    .line 463
    move-object/from16 v17, v2

    .line 464
    .line 465
    move v6, v3

    .line 466
    move-object/from16 v4, p1

    .line 467
    .line 468
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 469
    .line 470
    move-object/from16 v0, p2

    .line 471
    .line 472
    check-cast v0, Ljava/lang/Integer;

    .line 473
    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    iget v0, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$4:I

    .line 478
    .line 479
    or-int/2addr v0, v6

    .line 480
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    iget v0, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$0:I

    .line 485
    .line 486
    iget-object v2, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$1:Ljava/lang/String;

    .line 487
    .line 488
    move-object v3, v2

    .line 489
    iget-object v2, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$2:Lkotlin/jvm/functions/Function0;

    .line 490
    .line 491
    iget-object v1, v1, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda76;->f$3:Landroidx/compose/ui/Modifier;

    .line 492
    .line 493
    move-object/from16 v32, v3

    .line 494
    .line 495
    move-object v3, v1

    .line 496
    move-object/from16 v1, v32

    .line 497
    .line 498
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/feed/ForYouCardKt;->EmptyStateActionRow(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 499
    .line 500
    .line 501
    return-object v17

    .line 502
    nop

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
