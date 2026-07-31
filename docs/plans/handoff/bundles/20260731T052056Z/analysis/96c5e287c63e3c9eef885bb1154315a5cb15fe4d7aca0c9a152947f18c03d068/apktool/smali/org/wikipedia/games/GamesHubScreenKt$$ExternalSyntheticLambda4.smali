.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-wide p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$1:J

    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    const/4 p4, 0x2

    .line 2
    iput p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$1:J

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/internal/FloatProducer;JI)V
    .locals 0

    .line 13
    const/4 p4, 0x3

    iput p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-wide v4, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$1:J

    .line 8
    .line 9
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    iget-object v8, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    move-object/from16 v13, p1

    .line 20
    .line 21
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    move-object/from16 v0, p2

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit8 v1, v0, 0x3

    .line 32
    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    move v1, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v1, v3

    .line 38
    :goto_0
    and-int/2addr v0, v7

    .line 39
    invoke-virtual {v13, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v9, Landroidx/glance/AndroidResourceImageProvider;

    .line 46
    .line 47
    const v0, 0x7f080316

    .line 48
    .line 49
    .line 50
    invoke-direct {v9, v0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 54
    .line 55
    invoke-static {v0}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    new-instance v0, Landroidx/glance/color/DayNightColorProvider;

    .line 60
    .line 61
    invoke-direct {v0, v4, v5, v4, v5}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 62
    .line 63
    .line 64
    new-instance v12, Landroidx/glance/ColorFilter;

    .line 65
    .line 66
    new-instance v1, Landroidx/glance/TintColorFilterParams;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v12, v1}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 72
    .line 73
    .line 74
    const v14, 0x8030

    .line 75
    .line 76
    .line 77
    const/16 v15, 0x8

    .line 78
    .line 79
    const/4 v11, 0x0

    .line 80
    invoke-static/range {v9 .. v15}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v8, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-object v6

    .line 95
    :pswitch_0
    check-cast v8, Landroidx/compose/material3/internal/FloatProducer;

    .line 96
    .line 97
    move-object/from16 v0, p1

    .line 98
    .line 99
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 100
    .line 101
    move-object/from16 v1, p2

    .line 102
    .line 103
    check-cast v1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-static {v8, v4, v5, v0, v1}, Lkotlin/text/RegexKt;->CircularArrowProgressIndicator-RPmYEkk(Landroidx/compose/material3/internal/FloatProducer;JLandroidx/compose/runtime/GapComposer;I)V

    .line 113
    .line 114
    .line 115
    return-object v6

    .line 116
    :pswitch_1
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 117
    .line 118
    move-object/from16 v0, p1

    .line 119
    .line 120
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 121
    .line 122
    move-object/from16 v1, p2

    .line 123
    .line 124
    check-cast v1, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-static {v4, v5, v8, v0, v1}, Landroidx/compose/material3/internal/LayoutUtilKt;->Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 134
    .line 135
    .line 136
    return-object v6

    .line 137
    :pswitch_2
    move-object v9, v8

    .line 138
    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    move-object/from16 v0, p1

    .line 141
    .line 142
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 143
    .line 144
    move-object/from16 v1, p2

    .line 145
    .line 146
    check-cast v1, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    and-int/lit8 v8, v1, 0x3

    .line 153
    .line 154
    if-eq v8, v2, :cond_2

    .line 155
    .line 156
    move v2, v7

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    move v2, v3

    .line 159
    :goto_2
    and-int/2addr v1, v7

    .line 160
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    cmp-long v1, v4, v1

    .line 172
    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    const v1, -0x4a262578

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    const/4 v13, 0x0

    .line 190
    const/16 v14, 0xc

    .line 191
    .line 192
    const/4 v12, 0x0

    .line 193
    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 198
    .line 199
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 204
    .line 205
    const/16 v8, 0x20

    .line 206
    .line 207
    ushr-long v8, v4, v8

    .line 208
    .line 209
    xor-long/2addr v4, v8

    .line 210
    long-to-int v4, v4

    .line 211
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 220
    .line 221
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 227
    .line 228
    .line 229
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 230
    .line 231
    if-eqz v9, :cond_3

    .line 232
    .line 233
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 238
    .line 239
    .line 240
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 241
    .line 242
    invoke-static {v0, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 243
    .line 244
    .line 245
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 246
    .line 247
    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 255
    .line 256
    invoke-static {v0, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 260
    .line 261
    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 262
    .line 263
    .line 264
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 265
    .line 266
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 267
    .line 268
    .line 269
    const/4 v1, 0x0

    .line 270
    invoke-static {v1, v0, v3, v7}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->DefaultCursorHandle(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_4
    const v1, -0x4a2083ba

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 284
    .line 285
    .line 286
    invoke-static {v9, v0, v3, v3}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->DefaultCursorHandle(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 294
    .line 295
    .line 296
    :goto_4
    return-object v6

    .line 297
    :pswitch_3
    move-object v10, v8

    .line 298
    check-cast v10, Ljava/lang/String;

    .line 299
    .line 300
    move-object/from16 v1, p1

    .line 301
    .line 302
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 303
    .line 304
    move-object/from16 v4, p2

    .line 305
    .line 306
    check-cast v4, Ljava/lang/Integer;

    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    and-int/lit8 v5, v4, 0x3

    .line 313
    .line 314
    if-eq v5, v2, :cond_6

    .line 315
    .line 316
    move v3, v7

    .line 317
    :cond_6
    and-int/lit8 v2, v4, 0x1

    .line 318
    .line 319
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_7

    .line 324
    .line 325
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 332
    .line 333
    iget-object v2, v2, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 334
    .line 335
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 336
    .line 337
    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    .line 338
    .line 339
    const/4 v4, 0x3

    .line 340
    invoke-direct {v3, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 341
    .line 342
    .line 343
    const/16 v32, 0x0

    .line 344
    .line 345
    const v33, 0x1fbba

    .line 346
    .line 347
    .line 348
    const/4 v11, 0x0

    .line 349
    iget-wide v12, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;->f$1:J

    .line 350
    .line 351
    const/4 v14, 0x0

    .line 352
    const-wide/16 v15, 0x0

    .line 353
    .line 354
    const/16 v18, 0x0

    .line 355
    .line 356
    const-wide/16 v19, 0x0

    .line 357
    .line 358
    const-wide/16 v22, 0x0

    .line 359
    .line 360
    const/16 v24, 0x0

    .line 361
    .line 362
    const/16 v25, 0x0

    .line 363
    .line 364
    const/16 v26, 0x0

    .line 365
    .line 366
    const/16 v27, 0x0

    .line 367
    .line 368
    const/16 v28, 0x0

    .line 369
    .line 370
    const/high16 v31, 0x180000

    .line 371
    .line 372
    move-object/from16 v30, v1

    .line 373
    .line 374
    move-object/from16 v29, v2

    .line 375
    .line 376
    move-object/from16 v21, v3

    .line 377
    .line 378
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 379
    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_7
    move-object/from16 v30, v1

    .line 383
    .line 384
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 385
    .line 386
    .line 387
    :goto_5
    return-object v6

    .line 388
    nop

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
