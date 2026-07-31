.class public final synthetic Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 17
    .line 18
    move-object/from16 v6, p2

    .line 19
    .line 20
    check-cast v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 21
    .line 22
    move-object/from16 v7, p3

    .line 23
    .line 24
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    move-object/from16 v8, p4

    .line 27
    .line 28
    check-cast v8, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    and-int/lit8 v1, v8, 0x30

    .line 41
    .line 42
    const/16 v9, 0x20

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    and-int/lit8 v1, v8, 0x40

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    move-object v1, v7

    .line 51
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v1, v7

    .line 59
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 60
    .line 61
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :goto_0
    if-eqz v1, :cond_1

    .line 66
    .line 67
    move v1, v9

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/16 v1, 0x10

    .line 70
    .line 71
    :goto_1
    or-int/2addr v8, v1

    .line 72
    :cond_2
    and-int/lit16 v1, v8, 0x91

    .line 73
    .line 74
    const/16 v10, 0x90

    .line 75
    .line 76
    if-eq v1, v10, :cond_3

    .line 77
    .line 78
    move v1, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const/4 v1, 0x0

    .line 81
    :goto_2
    and-int/lit8 v10, v8, 0x1

    .line 82
    .line 83
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    invoke-virtual {v7, v10, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 92
    .line 93
    sget-object v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 94
    .line 95
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    check-cast v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 100
    .line 101
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v12, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 105
    .line 106
    new-instance v13, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/4 v14, 0x7

    .line 109
    invoke-direct {v13, v14}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 110
    .line 111
    .line 112
    const/high16 v15, 0x41800000    # 16.0f

    .line 113
    .line 114
    invoke-direct {v12, v15, v4, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 115
    .line 116
    .line 117
    const/16 v13, 0x30

    .line 118
    .line 119
    invoke-static {v12, v1, v7, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-wide v11, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 124
    .line 125
    ushr-long v15, v11, v9

    .line 126
    .line 127
    xor-long/2addr v11, v15

    .line 128
    long-to-int v11, v11

    .line 129
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 134
    .line 135
    invoke-static {v7, v15}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 140
    .line 141
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move/from16 p2, v9

    .line 145
    .line 146
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 147
    .line 148
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 149
    .line 150
    .line 151
    move/from16 p3, v13

    .line 152
    .line 153
    iget-boolean v13, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 154
    .line 155
    if-eqz v13, :cond_4

    .line 156
    .line 157
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 162
    .line 163
    .line 164
    :goto_3
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v7, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 170
    .line 171
    invoke-static {v7, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 179
    .line 180
    invoke-static {v7, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 184
    .line 185
    invoke-static {v7, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 186
    .line 187
    .line 188
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 189
    .line 190
    invoke-static {v7, v15, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 194
    .line 195
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    if-nez v15, :cond_5

    .line 204
    .line 205
    if-ne v14, v2, :cond_6

    .line 206
    .line 207
    :cond_5
    new-instance v14, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    const/16 v2, 0xa

    .line 210
    .line 211
    invoke-direct {v14, v2, v0}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    shr-int/lit8 v0, v8, 0x3

    .line 220
    .line 221
    and-int/lit8 v0, v0, 0xe

    .line 222
    .line 223
    or-int/lit8 v0, v0, 0x30

    .line 224
    .line 225
    invoke-static {v6, v3, v14, v7, v0}, Lorg/minidns/util/Base64;->AccountAvatar(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 238
    .line 239
    new-instance v2, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    const/4 v3, 0x7

    .line 242
    invoke-direct {v2, v3}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 243
    .line 244
    .line 245
    const/high16 v3, 0x40800000    # 4.0f

    .line 246
    .line 247
    const/4 v8, 0x1

    .line 248
    invoke-direct {v0, v3, v8, v2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 249
    .line 250
    .line 251
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 252
    .line 253
    new-instance v3, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 254
    .line 255
    const/high16 v10, 0x3f800000    # 1.0f

    .line 256
    .line 257
    invoke-direct {v3, v10, v8}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 265
    .line 266
    const/4 v8, 0x0

    .line 267
    invoke-static {v0, v3, v7, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-wide v14, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 272
    .line 273
    ushr-long v16, v14, p2

    .line 274
    .line 275
    xor-long v14, v14, v16

    .line 276
    .line 277
    long-to-int v3, v14

    .line 278
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-static {v7, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 287
    .line 288
    .line 289
    iget-boolean v10, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 290
    .line 291
    if-eqz v10, :cond_7

    .line 292
    .line 293
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_7
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 298
    .line 299
    .line 300
    :goto_4
    invoke-static {v7, v0, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v7, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v3, v7, v12, v7, v11}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v7, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v6, v7}, Lkotlin/uuid/UuidKt;->getDisplayAccountName(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 317
    .line 318
    invoke-direct {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 319
    .line 320
    .line 321
    new-instance v22, Landroidx/compose/ui/text/SpanStyle;

    .line 322
    .line 323
    sget-object v27, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 324
    .line 325
    const/16 v40, 0x0

    .line 326
    .line 327
    const v41, 0xfffb

    .line 328
    .line 329
    .line 330
    const-wide/16 v23, 0x0

    .line 331
    .line 332
    const-wide/16 v25, 0x0

    .line 333
    .line 334
    const/16 v28, 0x0

    .line 335
    .line 336
    const/16 v29, 0x0

    .line 337
    .line 338
    const/16 v30, 0x0

    .line 339
    .line 340
    const/16 v31, 0x0

    .line 341
    .line 342
    const-wide/16 v32, 0x0

    .line 343
    .line 344
    const/16 v34, 0x0

    .line 345
    .line 346
    const/16 v35, 0x0

    .line 347
    .line 348
    const/16 v36, 0x0

    .line 349
    .line 350
    const-wide/16 v37, 0x0

    .line 351
    .line 352
    const/16 v39, 0x0

    .line 353
    .line 354
    invoke-direct/range {v22 .. v41}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 355
    .line 356
    .line 357
    move-object/from16 v2, v22

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    const/16 v19, 0x0

    .line 374
    .line 375
    const/16 v20, 0x3e

    .line 376
    .line 377
    const/4 v13, 0x0

    .line 378
    const-wide/16 v14, 0x0

    .line 379
    .line 380
    const/16 v16, 0x0

    .line 381
    .line 382
    const/16 v17, 0x0

    .line 383
    .line 384
    move-object/from16 v18, v7

    .line 385
    .line 386
    invoke-static/range {v12 .. v20}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 387
    .line 388
    .line 389
    instance-of v0, v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 390
    .line 391
    if-eqz v0, :cond_8

    .line 392
    .line 393
    check-cast v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 394
    .line 395
    iget-object v12, v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->email:Ljava/lang/String;

    .line 396
    .line 397
    iget-object v0, v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-nez v0, :cond_8

    .line 404
    .line 405
    const v0, -0x79d665c4

    .line 406
    .line 407
    .line 408
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 409
    .line 410
    .line 411
    const/16 v20, 0x0

    .line 412
    .line 413
    const/16 v21, 0x7e

    .line 414
    .line 415
    const/4 v13, 0x0

    .line 416
    const-wide/16 v14, 0x0

    .line 417
    .line 418
    const/16 v16, 0x0

    .line 419
    .line 420
    const/16 v17, 0x0

    .line 421
    .line 422
    const/16 v18, 0x0

    .line 423
    .line 424
    move-object/from16 v19, v7

    .line 425
    .line 426
    invoke-static/range {v12 .. v21}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 427
    .line 428
    .line 429
    const/4 v8, 0x0

    .line 430
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 431
    .line 432
    .line 433
    :goto_5
    const/4 v8, 0x1

    .line 434
    goto :goto_6

    .line 435
    :cond_8
    const/4 v8, 0x0

    .line 436
    const v0, -0x79d48183

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :goto_6
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 450
    .line 451
    .line 452
    goto :goto_7

    .line 453
    :catchall_0
    move-exception v0

    .line 454
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    :cond_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 459
    .line 460
    .line 461
    :goto_7
    return-object v5

    .line 462
    :pswitch_0
    move-object/from16 v1, p1

    .line 463
    .line 464
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 465
    .line 466
    move-object/from16 v2, p2

    .line 467
    .line 468
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 469
    .line 470
    move-object/from16 v12, p3

    .line 471
    .line 472
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 473
    .line 474
    move-object/from16 v3, p4

    .line 475
    .line 476
    check-cast v3, Ljava/lang/Integer;

    .line 477
    .line 478
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    const-class v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$SearchSettings;

    .line 488
    .line 489
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-static {v2, v1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$SearchSettings;

    .line 498
    .line 499
    sget-object v2, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 500
    .line 501
    iget-object v1, v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$SearchSettings;->accountId:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v2, v1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    const/4 v11, 0x0

    .line 508
    const/4 v13, 0x0

    .line 509
    iget-object v7, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 510
    .line 511
    const/4 v8, 0x0

    .line 512
    const/4 v9, 0x0

    .line 513
    const/4 v10, 0x0

    .line 514
    invoke-static/range {v6 .. v13}, Lkotlin/text/StringsKt__IndentKt;->SearchSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/runtime/Composer;I)V

    .line 515
    .line 516
    .line 517
    return-object v5

    .line 518
    :pswitch_1
    move-object/from16 v1, p1

    .line 519
    .line 520
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 521
    .line 522
    move-object/from16 v2, p2

    .line 523
    .line 524
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 525
    .line 526
    move-object/from16 v11, p3

    .line 527
    .line 528
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 529
    .line 530
    move-object/from16 v3, p4

    .line 531
    .line 532
    check-cast v3, Ljava/lang/Integer;

    .line 533
    .line 534
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    const-class v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;

    .line 544
    .line 545
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-static {v2, v1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    check-cast v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;

    .line 554
    .line 555
    sget-object v2, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 556
    .line 557
    iget-object v1, v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;->accountId:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v2, v1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    const/4 v10, 0x0

    .line 564
    const/4 v12, 0x0

    .line 565
    iget-object v7, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 566
    .line 567
    const/4 v8, 0x0

    .line 568
    const/4 v9, 0x0

    .line 569
    invoke-static/range {v6 .. v12}, Lkotlin/io/CloseableKt;->AdvancedFetchingMailSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Landroidx/compose/runtime/Composer;I)V

    .line 570
    .line 571
    .line 572
    return-object v5

    .line 573
    :pswitch_2
    move-object/from16 v1, p1

    .line 574
    .line 575
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 576
    .line 577
    move-object/from16 v2, p2

    .line 578
    .line 579
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 580
    .line 581
    move-object/from16 v12, p3

    .line 582
    .line 583
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 584
    .line 585
    move-object/from16 v3, p4

    .line 586
    .line 587
    check-cast v3, Ljava/lang/Integer;

    .line 588
    .line 589
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    const-class v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$FetchingMailSettings;

    .line 599
    .line 600
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-static {v2, v1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    check-cast v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$FetchingMailSettings;

    .line 609
    .line 610
    sget-object v2, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 611
    .line 612
    iget-object v1, v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$FetchingMailSettings;->accountId:Ljava/lang/String;

    .line 613
    .line 614
    invoke-virtual {v2, v1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    const/4 v11, 0x0

    .line 619
    const/4 v13, 0x0

    .line 620
    iget-object v7, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 621
    .line 622
    const/4 v8, 0x0

    .line 623
    const/4 v9, 0x0

    .line 624
    const/4 v10, 0x0

    .line 625
    invoke-static/range {v6 .. v13}, Lokio/Options$Companion;->FetchingMailSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/runtime/Composer;I)V

    .line 626
    .line 627
    .line 628
    return-object v5

    .line 629
    :pswitch_3
    move-object/from16 v1, p1

    .line 630
    .line 631
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 632
    .line 633
    move-object/from16 v2, p2

    .line 634
    .line 635
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 636
    .line 637
    move-object/from16 v12, p3

    .line 638
    .line 639
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 640
    .line 641
    move-object/from16 v3, p4

    .line 642
    .line 643
    check-cast v3, Ljava/lang/Integer;

    .line 644
    .line 645
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    const-class v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$ReadingMailSettings;

    .line 655
    .line 656
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-static {v2, v1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    check-cast v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$ReadingMailSettings;

    .line 665
    .line 666
    sget-object v2, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 667
    .line 668
    iget-object v1, v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$ReadingMailSettings;->accountId:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v2, v1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    const/4 v11, 0x0

    .line 675
    const/4 v13, 0x0

    .line 676
    iget-object v7, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 677
    .line 678
    const/4 v8, 0x0

    .line 679
    const/4 v9, 0x0

    .line 680
    const/4 v10, 0x0

    .line 681
    invoke-static/range {v6 .. v13}, Lkotlin/text/CharsKt__CharKt;->ReadingMailSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/runtime/Composer;I)V

    .line 682
    .line 683
    .line 684
    return-object v5

    .line 685
    :pswitch_4
    move-object/from16 v1, p1

    .line 686
    .line 687
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 688
    .line 689
    move-object/from16 v2, p2

    .line 690
    .line 691
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 692
    .line 693
    move-object/from16 v11, p3

    .line 694
    .line 695
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 696
    .line 697
    move-object/from16 v3, p4

    .line 698
    .line 699
    check-cast v3, Ljava/lang/Integer;

    .line 700
    .line 701
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 708
    .line 709
    .line 710
    const-class v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$GeneralSettings;

    .line 711
    .line 712
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-static {v2, v1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    check-cast v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$GeneralSettings;

    .line 721
    .line 722
    sget-object v2, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 723
    .line 724
    iget-object v1, v1, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$GeneralSettings;->accountId:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v2, v1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    const/4 v10, 0x0

    .line 731
    const/4 v12, 0x0

    .line 732
    iget-object v7, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 733
    .line 734
    const/4 v8, 0x0

    .line 735
    const/4 v9, 0x0

    .line 736
    invoke-static/range {v6 .. v12}, Lokhttp3/Cookie$Companion;->GeneralSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;Landroidx/compose/runtime/Composer;I)V

    .line 737
    .line 738
    .line 739
    return-object v5

    .line 740
    :pswitch_5
    move-object/from16 v1, p1

    .line 741
    .line 742
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 743
    .line 744
    move-object/from16 v4, p2

    .line 745
    .line 746
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 747
    .line 748
    move-object/from16 v6, p3

    .line 749
    .line 750
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 751
    .line 752
    move-object/from16 v7, p4

    .line 753
    .line 754
    check-cast v7, Ljava/lang/Integer;

    .line 755
    .line 756
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    const-class v1, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;

    .line 766
    .line 767
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    invoke-static {v4, v1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    check-cast v1, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;

    .line 776
    .line 777
    move-object v12, v6

    .line 778
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 779
    .line 780
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v4

    .line 784
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v6

    .line 788
    if-nez v4, :cond_a

    .line 789
    .line 790
    if-ne v6, v2, :cond_b

    .line 791
    .line 792
    :cond_a
    new-instance v6, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 793
    .line 794
    const/16 v4, 0x8

    .line 795
    .line 796
    invoke-direct {v6, v4, v1}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    :cond_b
    move-object/from16 v18, v6

    .line 803
    .line 804
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 805
    .line 806
    invoke-static {v12}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    if-eqz v1, :cond_10

    .line 811
    .line 812
    invoke-static {v1}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 813
    .line 814
    .line 815
    move-result-object v15

    .line 816
    invoke-static {v12}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 817
    .line 818
    .line 819
    move-result-object v17

    .line 820
    const-class v4, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 821
    .line 822
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 823
    .line 824
    .line 825
    move-result-object v13

    .line 826
    invoke-interface {v1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 827
    .line 828
    .line 829
    move-result-object v14

    .line 830
    const/16 v16, 0x0

    .line 831
    .line 832
    invoke-static/range {v13 .. v18}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    check-cast v1, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 837
    .line 838
    iget-object v4, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 839
    .line 840
    invoke-static {v4, v12}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v6

    .line 848
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v7

    .line 852
    if-nez v6, :cond_c

    .line 853
    .line 854
    if-ne v7, v2, :cond_d

    .line 855
    .line 856
    :cond_c
    new-instance v7, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 857
    .line 858
    const/16 v6, 0xd

    .line 859
    .line 860
    invoke-direct {v7, v6, v1}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 864
    .line 865
    .line 866
    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 867
    .line 868
    iget-object v6, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 869
    .line 870
    new-instance v8, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;

    .line 871
    .line 872
    const/4 v9, 0x1

    .line 873
    invoke-direct {v8, v1, v3, v9}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 874
    .line 875
    .line 876
    invoke-static {v12, v6, v8}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 883
    .line 884
    .line 885
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    check-cast v1, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;

    .line 890
    .line 891
    iget-object v1, v1, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;->releaseItems:Lkotlinx/collections/immutable/ImmutableList;

    .line 892
    .line 893
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v3

    .line 897
    check-cast v3, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;

    .line 898
    .line 899
    iget-boolean v8, v3, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;->showRecentChanges:Z

    .line 900
    .line 901
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v6

    .line 909
    or-int/2addr v3, v6

    .line 910
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v6

    .line 914
    if-nez v3, :cond_e

    .line 915
    .line 916
    if-ne v6, v2, :cond_f

    .line 917
    .line 918
    :cond_e
    new-instance v6, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda4;

    .line 919
    .line 920
    const/4 v9, 0x1

    .line 921
    invoke-direct {v6, v9, v4, v7}, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda4;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    :cond_f
    move-object v9, v6

    .line 928
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 929
    .line 930
    const/4 v11, 0x0

    .line 931
    const/16 v13, 0x8

    .line 932
    .line 933
    iget-object v10, v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 934
    .line 935
    move-object v7, v1

    .line 936
    invoke-static/range {v7 .. v13}, Lorg/jsoup/Jsoup;->ChangelogScreen(Lkotlinx/collections/immutable/ImmutableList;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 937
    .line 938
    .line 939
    move-object v3, v5

    .line 940
    goto :goto_8

    .line 941
    :cond_10
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 942
    .line 943
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    :goto_8
    return-object v3

    .line 947
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
