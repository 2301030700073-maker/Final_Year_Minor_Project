.class public final synthetic Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    const/16 v8, 0x12

    .line 8
    .line 9
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 10
    .line 11
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    iget-object v13, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v14, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v15, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 18
    .line 19
    const/16 v16, 0x20

    .line 20
    .line 21
    iget-object v7, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v11, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v0, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v12, 0x1

    .line 29
    const/4 v3, 0x2

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    .line 35
    check-cast v11, Landroid/content/Context;

    .line 36
    .line 37
    move-object/from16 v19, v7

    .line 38
    .line 39
    check-cast v19, Lorg/wikipedia/language/AppLanguageState;

    .line 40
    .line 41
    move-object/from16 v20, v15

    .line 42
    .line 43
    check-cast v20, Ljava/util/List;

    .line 44
    .line 45
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    move-object/from16 v25, v13

    .line 48
    .line 49
    check-cast v25, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 50
    .line 51
    move-object/from16 v1, p1

    .line 52
    .line 53
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 54
    .line 55
    move-object/from16 v6, p2

    .line 56
    .line 57
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 58
    .line 59
    move-object/from16 v7, p3

    .line 60
    .line 61
    check-cast v7, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    and-int/lit8 v13, v7, 0x6

    .line 71
    .line 72
    if-nez v13, :cond_1

    .line 73
    .line 74
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    if-eqz v13, :cond_0

    .line 79
    .line 80
    const/16 v17, 0x4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move/from16 v17, v3

    .line 84
    .line 85
    :goto_0
    or-int v7, v7, v17

    .line 86
    .line 87
    :cond_1
    and-int/lit8 v13, v7, 0x13

    .line 88
    .line 89
    if-eq v13, v8, :cond_2

    .line 90
    .line 91
    move v8, v12

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move v8, v2

    .line 94
    :goto_1
    and-int/2addr v7, v12

    .line 95
    invoke-virtual {v6, v7, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_f

    .line 100
    .line 101
    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 102
    .line 103
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 108
    .line 109
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 110
    .line 111
    invoke-static {v7, v8, v6, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    iget-wide v4, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 116
    .line 117
    ushr-long v15, v4, v16

    .line 118
    .line 119
    xor-long/2addr v4, v15

    .line 120
    long-to-int v4, v4

    .line 121
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v6, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 135
    .line 136
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 137
    .line 138
    .line 139
    iget-boolean v13, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 140
    .line 141
    if-eqz v13, :cond_3

    .line 142
    .line 143
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 148
    .line 149
    .line 150
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 156
    .line 157
    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 170
    .line 171
    invoke-static {v6, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 172
    .line 173
    .line 174
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v6, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Lorg/wikipedia/onboarding/OnboardingScreen;

    .line 188
    .line 189
    sget-object v4, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    aget v1, v4, v1

    .line 196
    .line 197
    if-eq v1, v12, :cond_c

    .line 198
    .line 199
    if-eq v1, v3, :cond_7

    .line 200
    .line 201
    const/4 v4, 0x3

    .line 202
    if-ne v1, v4, :cond_6

    .line 203
    .line 204
    const v1, 0x9b7137a

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    or-int/2addr v1, v3

    .line 219
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    or-int/2addr v1, v3

    .line 224
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    if-nez v1, :cond_4

    .line 229
    .line 230
    if-ne v3, v9, :cond_5

    .line 231
    .line 232
    :cond_4
    new-instance v21, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;

    .line 233
    .line 234
    const/16 v26, 0x3

    .line 235
    .line 236
    move-object/from16 v23, v0

    .line 237
    .line 238
    move-object/from16 v22, v11

    .line 239
    .line 240
    move-object/from16 v24, v14

    .line 241
    .line 242
    invoke-direct/range {v21 .. v26}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v3, v21

    .line 246
    .line 247
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    move-object/from16 v21, v3

    .line 251
    .line 252
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 253
    .line 254
    const/16 v23, 0x0

    .line 255
    .line 256
    const/16 v18, 0x0

    .line 257
    .line 258
    move-object/from16 v22, v6

    .line 259
    .line 260
    invoke-static/range {v18 .. v23}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt;->InitialOnboardingLanguagesScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/language/AppLanguageState;Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v0, v22

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :cond_6
    move-object v0, v6

    .line 271
    const v1, 0x31dc03ad

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    throw v0

    .line 279
    :cond_7
    move-object v1, v0

    .line 280
    move-object v0, v6

    .line 281
    move-object/from16 v13, v25

    .line 282
    .line 283
    const v4, 0x9abfb96

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    or-int/2addr v4, v5

    .line 298
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    if-nez v4, :cond_8

    .line 303
    .line 304
    if-ne v5, v9, :cond_9

    .line 305
    .line 306
    :cond_8
    new-instance v5, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda4;

    .line 307
    .line 308
    invoke-direct {v5, v11, v1, v13, v12}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 315
    .line 316
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    or-int/2addr v4, v6

    .line 325
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    if-nez v4, :cond_a

    .line 330
    .line 331
    if-ne v6, v9, :cond_b

    .line 332
    .line 333
    :cond_a
    new-instance v6, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda4;

    .line 334
    .line 335
    invoke-direct {v6, v11, v1, v13, v3}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 342
    .line 343
    const/4 v1, 0x0

    .line 344
    invoke-static {v1, v5, v6, v0, v2}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt;->InitialOnboardingDataPrivacyContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_c
    move-object v1, v0

    .line 352
    move-object v0, v6

    .line 353
    move-object/from16 v13, v25

    .line 354
    .line 355
    const v3, 0x9a522c1

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    or-int/2addr v3, v4

    .line 370
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    if-nez v3, :cond_d

    .line 375
    .line 376
    if-ne v4, v9, :cond_e

    .line 377
    .line 378
    :cond_d
    new-instance v4, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda4;

    .line 379
    .line 380
    invoke-direct {v4, v11, v1, v13, v2}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 387
    .line 388
    const/4 v1, 0x0

    .line 389
    invoke-static {v1, v4, v0, v2}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt;->InitialOnboardingIntroContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 393
    .line 394
    .line 395
    :goto_3
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_f
    move-object v0, v6

    .line 400
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 401
    .line 402
    .line 403
    :goto_4
    return-object v10

    .line 404
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 405
    .line 406
    check-cast v11, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 407
    .line 408
    move-object/from16 v23, v7

    .line 409
    .line 410
    check-cast v23, Landroid/content/Context;

    .line 411
    .line 412
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 413
    .line 414
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 415
    .line 416
    check-cast v13, Lorg/wikipedia/dataclient/WikiSite;

    .line 417
    .line 418
    move-object/from16 v1, p1

    .line 419
    .line 420
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 421
    .line 422
    move-object/from16 v4, p2

    .line 423
    .line 424
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 425
    .line 426
    move-object/from16 v5, p3

    .line 427
    .line 428
    check-cast v5, Ljava/lang/Integer;

    .line 429
    .line 430
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    and-int/lit8 v1, v5, 0x11

    .line 438
    .line 439
    const/16 v7, 0x10

    .line 440
    .line 441
    if-eq v1, v7, :cond_10

    .line 442
    .line 443
    move v1, v12

    .line 444
    goto :goto_5

    .line 445
    :cond_10
    move v1, v2

    .line 446
    :goto_5
    and-int/2addr v5, v12

    .line 447
    invoke-virtual {v4, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-eqz v1, :cond_2c

    .line 452
    .line 453
    const/high16 v1, 0x3f800000    # 1.0f

    .line 454
    .line 455
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 456
    .line 457
    .line 458
    move-result-object v24

    .line 459
    const/high16 v28, 0x41c00000    # 24.0f

    .line 460
    .line 461
    const/16 v29, 0x2

    .line 462
    .line 463
    const/high16 v25, 0x41800000    # 16.0f

    .line 464
    .line 465
    const/16 v26, 0x0

    .line 466
    .line 467
    move/from16 v27, v25

    .line 468
    .line 469
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    move/from16 v5, v25

    .line 474
    .line 475
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    invoke-static {v1, v7}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v8

    .line 491
    or-int/2addr v7, v8

    .line 492
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    if-nez v7, :cond_11

    .line 497
    .line 498
    if-ne v8, v9, :cond_12

    .line 499
    .line 500
    :cond_11
    new-instance v8, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;

    .line 501
    .line 502
    invoke-direct {v8, v0, v11, v12}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/page/PageSummary;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    :cond_12
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 509
    .line 510
    const/16 v0, 0xf

    .line 511
    .line 512
    const/4 v7, 0x0

    .line 513
    invoke-static {v0, v1, v7, v8, v2}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 518
    .line 519
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    iget-wide v7, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 524
    .line 525
    ushr-long v24, v7, v16

    .line 526
    .line 527
    xor-long v7, v7, v24

    .line 528
    .line 529
    long-to-int v7, v7

    .line 530
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    invoke-static {v4, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 539
    .line 540
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 544
    .line 545
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 546
    .line 547
    .line 548
    iget-boolean v3, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 549
    .line 550
    if-eqz v3, :cond_13

    .line 551
    .line 552
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 553
    .line 554
    .line 555
    goto :goto_6

    .line 556
    :cond_13
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 557
    .line 558
    .line 559
    :goto_6
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 560
    .line 561
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 562
    .line 563
    .line 564
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 565
    .line 566
    invoke-static {v4, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 574
    .line 575
    invoke-static {v4, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 576
    .line 577
    .line 578
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 579
    .line 580
    invoke-static {v4, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 581
    .line 582
    .line 583
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 584
    .line 585
    invoke-static {v4, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v11}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    sget-object v2, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 593
    .line 594
    move-object/from16 p1, v0

    .line 595
    .line 596
    if-eqz p1, :cond_14

    .line 597
    .line 598
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 599
    .line 600
    .line 601
    move-result v24

    .line 602
    if-nez v24, :cond_15

    .line 603
    .line 604
    :cond_14
    move-object v0, v4

    .line 605
    move-object/from16 v22, v10

    .line 606
    .line 607
    move-object/from16 v50, v11

    .line 608
    .line 609
    move-object/from16 p2, v12

    .line 610
    .line 611
    move-object/from16 v35, v23

    .line 612
    .line 613
    move-object/from16 v23, v14

    .line 614
    .line 615
    move-object v14, v13

    .line 616
    goto/16 :goto_a

    .line 617
    .line 618
    :cond_15
    const v0, 0x38d9deaf

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v11}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v24

    .line 628
    if-eqz v24, :cond_17

    .line 629
    .line 630
    sget-object v25, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 631
    .line 632
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    sget-object v0, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 636
    .line 637
    const/16 v27, 0x0

    .line 638
    .line 639
    if-eqz v0, :cond_16

    .line 640
    .line 641
    move-object/from16 v26, v25

    .line 642
    .line 643
    move-object/from16 v28, v27

    .line 644
    .line 645
    invoke-static/range {v23 .. v28}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    move-object/from16 p2, v0

    .line 650
    .line 651
    move-object/from16 v0, v23

    .line 652
    .line 653
    invoke-virtual/range {p2 .. p2}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 654
    .line 655
    .line 656
    move-result-object v22

    .line 657
    goto :goto_7

    .line 658
    :cond_16
    move-object/from16 v0, v23

    .line 659
    .line 660
    move-object/from16 v22, v27

    .line 661
    .line 662
    :goto_7
    move-object/from16 v24, v22

    .line 663
    .line 664
    :goto_8
    move-object/from16 v22, v10

    .line 665
    .line 666
    goto :goto_9

    .line 667
    :cond_17
    move-object/from16 v0, v23

    .line 668
    .line 669
    const/16 v24, 0x0

    .line 670
    .line 671
    goto :goto_8

    .line 672
    :goto_9
    new-instance v10, Landroidx/compose/ui/graphics/painter/ColorPainter;

    .line 673
    .line 674
    move-object/from16 v23, v14

    .line 675
    .line 676
    sget-object v14, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 677
    .line 678
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v25

    .line 682
    move-object/from16 v35, v0

    .line 683
    .line 684
    move-object/from16 v0, v25

    .line 685
    .line 686
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 687
    .line 688
    move-object/from16 v50, v11

    .line 689
    .line 690
    move-object/from16 p2, v12

    .line 691
    .line 692
    iget-wide v11, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 693
    .line 694
    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(J)V

    .line 695
    .line 696
    .line 697
    new-instance v0, Landroidx/compose/ui/graphics/painter/ColorPainter;

    .line 698
    .line 699
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v11

    .line 703
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 704
    .line 705
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 706
    .line 707
    invoke-direct {v0, v11, v12}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(J)V

    .line 708
    .line 709
    .line 710
    invoke-virtual/range {v50 .. v50}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v25

    .line 714
    const/high16 v11, 0x3f800000    # 1.0f

    .line 715
    .line 716
    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 717
    .line 718
    .line 719
    move-result-object v12

    .line 720
    const v14, 0x43cf8000    # 415.0f

    .line 721
    .line 722
    .line 723
    invoke-static {v12, v14}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 724
    .line 725
    .line 726
    move-result-object v26

    .line 727
    const/16 v31, 0x0

    .line 728
    .line 729
    const v33, 0x48d80

    .line 730
    .line 731
    .line 732
    sget-object v27, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 733
    .line 734
    const/16 v30, 0x0

    .line 735
    .line 736
    move-object/from16 v29, v0

    .line 737
    .line 738
    move-object/from16 v32, v4

    .line 739
    .line 740
    move-object/from16 v28, v10

    .line 741
    .line 742
    invoke-static/range {v24 .. v33}, Lorg/wikipedia/compose/components/TabsBoxKt;->FadeInAsyncImage(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;IILandroidx/compose/runtime/GapComposer;I)V

    .line 743
    .line 744
    .line 745
    move-object/from16 v0, v32

    .line 746
    .line 747
    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    const/16 v10, 0x64

    .line 756
    .line 757
    move-object v14, v13

    .line 758
    const/4 v11, 0x0

    .line 759
    invoke-static {v11, v11, v11, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(IIII)J

    .line 760
    .line 761
    .line 762
    move-result-wide v12

    .line 763
    invoke-static {v4, v12, v13, v2}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    const/4 v10, 0x6

    .line 768
    invoke-static {v4, v0, v10}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 772
    .line 773
    .line 774
    goto :goto_b

    .line 775
    :goto_a
    const v4, 0x38d5ac19

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 779
    .line 780
    .line 781
    sget-object v4, Lorg/wikipedia/feed/HomeViewModelKt;->noImageCardBackgroundColors:Ljava/util/List;

    .line 782
    .line 783
    invoke-virtual/range {v50 .. v50}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v10

    .line 787
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 788
    .line 789
    .line 790
    move-result v10

    .line 791
    new-instance v11, Lkotlin/random/XorWowRandom;

    .line 792
    .line 793
    shr-int/lit8 v12, v10, 0x1f

    .line 794
    .line 795
    invoke-direct {v11, v10, v12}, Lkotlin/random/XorWowRandom;-><init>(II)V

    .line 796
    .line 797
    .line 798
    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/XorWowRandom;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    check-cast v4, Ljava/lang/Number;

    .line 803
    .line 804
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 805
    .line 806
    .line 807
    move-result v4

    .line 808
    invoke-static {v4, v0}, Lkotlin/TuplesKt;->colorResource(ILandroidx/compose/runtime/GapComposer;)J

    .line 809
    .line 810
    .line 811
    move-result-wide v10

    .line 812
    const/high16 v4, 0x3f800000    # 1.0f

    .line 813
    .line 814
    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 815
    .line 816
    .line 817
    move-result-object v12

    .line 818
    const v4, 0x43cf8000    # 415.0f

    .line 819
    .line 820
    .line 821
    invoke-static {v12, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 822
    .line 823
    .line 824
    move-result-object v4

    .line 825
    invoke-static {v4, v10, v11, v2}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    const/4 v11, 0x0

    .line 830
    invoke-static {v4, v0, v11}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 834
    .line 835
    .line 836
    :goto_b
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    .line 837
    .line 838
    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 839
    .line 840
    invoke-virtual {v10, v6, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    const/high16 v11, 0x41400000    # 12.0f

    .line 845
    .line 846
    invoke-static {v4, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    new-instance v12, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 851
    .line 852
    new-instance v13, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 853
    .line 854
    const/16 v11, 0xa

    .line 855
    .line 856
    invoke-direct {v13, v11}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 857
    .line 858
    .line 859
    const/high16 v11, 0x40800000    # 4.0f

    .line 860
    .line 861
    move-object/from16 p3, v14

    .line 862
    .line 863
    const/4 v14, 0x1

    .line 864
    invoke-direct {v12, v11, v14, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 865
    .line 866
    .line 867
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 868
    .line 869
    const/4 v13, 0x6

    .line 870
    invoke-static {v12, v11, v0, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 871
    .line 872
    .line 873
    move-result-object v11

    .line 874
    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 875
    .line 876
    ushr-long v24, v12, v16

    .line 877
    .line 878
    xor-long v12, v12, v24

    .line 879
    .line 880
    long-to-int v12, v12

    .line 881
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 882
    .line 883
    .line 884
    move-result-object v13

    .line 885
    invoke-static {v0, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 886
    .line 887
    .line 888
    move-result-object v4

    .line 889
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 890
    .line 891
    .line 892
    iget-boolean v14, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 893
    .line 894
    if-eqz v14, :cond_18

    .line 895
    .line 896
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 897
    .line 898
    .line 899
    goto :goto_c

    .line 900
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 901
    .line 902
    .line 903
    :goto_c
    invoke-static {v0, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 904
    .line 905
    .line 906
    invoke-static {v0, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 907
    .line 908
    .line 909
    invoke-static {v12, v0, v8, v0, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 910
    .line 911
    .line 912
    move-object/from16 v11, p2

    .line 913
    .line 914
    invoke-static {v0, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 915
    .line 916
    .line 917
    const/high16 v4, 0x42400000    # 48.0f

    .line 918
    .line 919
    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 920
    .line 921
    .line 922
    move-result-object v25

    .line 923
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    move-result v12

    .line 927
    move-object/from16 v13, v50

    .line 928
    .line 929
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    move-result v14

    .line 933
    or-int/2addr v12, v14

    .line 934
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v14

    .line 938
    if-nez v12, :cond_19

    .line 939
    .line 940
    if-ne v14, v9, :cond_1a

    .line 941
    .line 942
    :cond_19
    new-instance v14, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;

    .line 943
    .line 944
    const/4 v12, 0x2

    .line 945
    invoke-direct {v14, v15, v13, v12}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/page/PageSummary;I)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 949
    .line 950
    .line 951
    :cond_1a
    move-object/from16 v24, v14

    .line 952
    .line 953
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 954
    .line 955
    new-instance v12, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 956
    .line 957
    const/4 v14, 0x7

    .line 958
    move-object/from16 v4, p3

    .line 959
    .line 960
    move-object/from16 v15, v35

    .line 961
    .line 962
    invoke-direct {v12, v15, v4, v14}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 963
    .line 964
    .line 965
    const v14, 0x1bc9710a

    .line 966
    .line 967
    .line 968
    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 969
    .line 970
    .line 971
    move-result-object v29

    .line 972
    const v31, 0x180030

    .line 973
    .line 974
    .line 975
    const/16 v32, 0x3c

    .line 976
    .line 977
    const/16 v26, 0x0

    .line 978
    .line 979
    const/16 v27, 0x0

    .line 980
    .line 981
    const/16 v28, 0x0

    .line 982
    .line 983
    move-object/from16 v30, v0

    .line 984
    .line 985
    invoke-static/range {v24 .. v32}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 986
    .line 987
    .line 988
    const/high16 v12, 0x42400000    # 48.0f

    .line 989
    .line 990
    invoke-static {v6, v12}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 991
    .line 992
    .line 993
    move-result-object v25

    .line 994
    move-object/from16 v14, v23

    .line 995
    .line 996
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v12

    .line 1000
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v23

    .line 1004
    or-int v12, v12, v23

    .line 1005
    .line 1006
    move/from16 p3, v12

    .line 1007
    .line 1008
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v12

    .line 1012
    if-nez p3, :cond_1b

    .line 1013
    .line 1014
    if-ne v12, v9, :cond_1c

    .line 1015
    .line 1016
    :cond_1b
    new-instance v12, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;

    .line 1017
    .line 1018
    const/4 v9, 0x3

    .line 1019
    invoke-direct {v12, v14, v13, v9}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/page/PageSummary;I)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    :cond_1c
    move-object/from16 v24, v12

    .line 1026
    .line 1027
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 1028
    .line 1029
    new-instance v9, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 1030
    .line 1031
    const/16 v12, 0x8

    .line 1032
    .line 1033
    invoke-direct {v9, v15, v4, v12}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 1034
    .line 1035
    .line 1036
    const v4, -0x798ba4ff

    .line 1037
    .line 1038
    .line 1039
    invoke-static {v4, v9, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v29

    .line 1043
    const v31, 0x180030

    .line 1044
    .line 1045
    .line 1046
    const/16 v32, 0x3c

    .line 1047
    .line 1048
    const/16 v26, 0x0

    .line 1049
    .line 1050
    const/16 v27, 0x0

    .line 1051
    .line 1052
    const/16 v28, 0x0

    .line 1053
    .line 1054
    move-object/from16 v30, v0

    .line 1055
    .line 1056
    invoke-static/range {v24 .. v32}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 1057
    .line 1058
    .line 1059
    const/4 v14, 0x1

    .line 1060
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1061
    .line 1062
    .line 1063
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    .line 1064
    .line 1065
    invoke-virtual {v10, v6, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v4

    .line 1069
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1070
    .line 1071
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    const/high16 v9, 0x41800000    # 16.0f

    .line 1076
    .line 1077
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    const/high16 v9, 0x41000000    # 8.0f

    .line 1082
    .line 1083
    invoke-static {v9}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v9

    .line 1087
    invoke-static {v4, v9}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v4

    .line 1091
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v9

    .line 1095
    if-eqz v9, :cond_1d

    .line 1096
    .line 1097
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1098
    .line 1099
    .line 1100
    move-result v9

    .line 1101
    if-nez v9, :cond_1e

    .line 1102
    .line 1103
    :cond_1d
    const/4 v12, 0x0

    .line 1104
    goto :goto_d

    .line 1105
    :cond_1e
    const v9, -0x2fb54d05

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1109
    .line 1110
    .line 1111
    sget-object v9, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1112
    .line 1113
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v9

    .line 1117
    check-cast v9, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1118
    .line 1119
    iget-wide v9, v9, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 1120
    .line 1121
    const v12, 0x3f6b851f    # 0.92f

    .line 1122
    .line 1123
    .line 1124
    invoke-static {v12, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 1125
    .line 1126
    .line 1127
    move-result-wide v9

    .line 1128
    const/4 v12, 0x0

    .line 1129
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1130
    .line 1131
    .line 1132
    goto :goto_e

    .line 1133
    :goto_d
    const v9, -0x2fb5534d

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1140
    .line 1141
    .line 1142
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 1143
    .line 1144
    :goto_e
    invoke-static {v4, v9, v10, v2}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v2

    .line 1148
    const/high16 v9, 0x41800000    # 16.0f

    .line 1149
    .line 1150
    invoke-static {v2, v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 1155
    .line 1156
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 1157
    .line 1158
    invoke-static {v4, v9, v0, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v4

    .line 1162
    iget-wide v9, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1163
    .line 1164
    ushr-long v14, v9, v16

    .line 1165
    .line 1166
    xor-long/2addr v9, v14

    .line 1167
    long-to-int v9, v9

    .line 1168
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v10

    .line 1172
    invoke-static {v0, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1177
    .line 1178
    .line 1179
    iget-boolean v12, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1180
    .line 1181
    if-eqz v12, :cond_1f

    .line 1182
    .line 1183
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_f

    .line 1187
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1188
    .line 1189
    .line 1190
    :goto_f
    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-static {v0, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v9, v0, v8, v0, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v24

    .line 1206
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v1

    .line 1210
    if-eqz v1, :cond_20

    .line 1211
    .line 1212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1213
    .line 1214
    .line 1215
    move-result v1

    .line 1216
    if-nez v1, :cond_21

    .line 1217
    .line 1218
    :cond_20
    const/4 v11, 0x0

    .line 1219
    goto :goto_11

    .line 1220
    :cond_21
    const v1, 0x6ec9a24a

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1224
    .line 1225
    .line 1226
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1227
    .line 1228
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v1

    .line 1232
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1233
    .line 1234
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1235
    .line 1236
    const/4 v11, 0x0

    .line 1237
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1238
    .line 1239
    .line 1240
    :goto_10
    move-wide/from16 v28, v1

    .line 1241
    .line 1242
    goto :goto_12

    .line 1243
    :goto_11
    const v1, 0x6ec99e23

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1250
    .line 1251
    .line 1252
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1253
    .line 1254
    goto :goto_10

    .line 1255
    :goto_12
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1256
    .line 1257
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 1262
    .line 1263
    iget-object v2, v2, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1264
    .line 1265
    const/16 v41, 0x0

    .line 1266
    .line 1267
    const v42, 0xffffdf

    .line 1268
    .line 1269
    .line 1270
    const-wide/16 v31, 0x0

    .line 1271
    .line 1272
    const-wide/16 v33, 0x0

    .line 1273
    .line 1274
    const/16 v35, 0x0

    .line 1275
    .line 1276
    sget-object v36, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 1277
    .line 1278
    const-wide/16 v37, 0x0

    .line 1279
    .line 1280
    const-wide/16 v39, 0x0

    .line 1281
    .line 1282
    move-object/from16 v30, v2

    .line 1283
    .line 1284
    invoke-static/range {v30 .. v42}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v27

    .line 1288
    const/high16 v38, 0x30000

    .line 1289
    .line 1290
    const/16 v39, 0xfc6

    .line 1291
    .line 1292
    const/16 v25, 0x0

    .line 1293
    .line 1294
    const/16 v26, 0x0

    .line 1295
    .line 1296
    const/16 v30, 0x3

    .line 1297
    .line 1298
    const/16 v31, 0x0

    .line 1299
    .line 1300
    const-wide/16 v32, 0x0

    .line 1301
    .line 1302
    const/16 v34, 0x0

    .line 1303
    .line 1304
    const/16 v36, 0x0

    .line 1305
    .line 1306
    move-object/from16 v37, v0

    .line 1307
    .line 1308
    invoke-static/range {v24 .. v39}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 1312
    .line 1313
    const v3, 0x3f4ccccd    # 0.8f

    .line 1314
    .line 1315
    .line 1316
    if-nez v2, :cond_22

    .line 1317
    .line 1318
    const v2, 0x6a6ea74c

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1322
    .line 1323
    .line 1324
    const/4 v11, 0x0

    .line 1325
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1326
    .line 1327
    .line 1328
    goto/16 :goto_16

    .line 1329
    .line 1330
    :cond_22
    const v4, 0x6a6ea74d

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1334
    .line 1335
    .line 1336
    const/high16 v4, 0x40000000    # 2.0f

    .line 1337
    .line 1338
    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v4

    .line 1342
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v4

    .line 1349
    if-eqz v4, :cond_23

    .line 1350
    .line 1351
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1352
    .line 1353
    .line 1354
    move-result v4

    .line 1355
    if-nez v4, :cond_24

    .line 1356
    .line 1357
    :cond_23
    const/4 v11, 0x0

    .line 1358
    goto :goto_14

    .line 1359
    :cond_24
    const v4, -0x314f1a72

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1363
    .line 1364
    .line 1365
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1366
    .line 1367
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v4

    .line 1371
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1372
    .line 1373
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1374
    .line 1375
    const/4 v11, 0x0

    .line 1376
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1377
    .line 1378
    .line 1379
    :goto_13
    move-wide/from16 v26, v4

    .line 1380
    .line 1381
    goto :goto_15

    .line 1382
    :goto_14
    const v4, -0x314f202e

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1389
    .line 1390
    .line 1391
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1392
    .line 1393
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 1394
    .line 1395
    .line 1396
    move-result-wide v4

    .line 1397
    goto :goto_13

    .line 1398
    :goto_15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v4

    .line 1402
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 1403
    .line 1404
    iget-object v4, v4, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 1405
    .line 1406
    const/16 v46, 0x6180

    .line 1407
    .line 1408
    const v47, 0x1affa

    .line 1409
    .line 1410
    .line 1411
    const/16 v25, 0x0

    .line 1412
    .line 1413
    const/16 v28, 0x0

    .line 1414
    .line 1415
    const-wide/16 v29, 0x0

    .line 1416
    .line 1417
    const/16 v31, 0x0

    .line 1418
    .line 1419
    const/16 v32, 0x0

    .line 1420
    .line 1421
    const-wide/16 v33, 0x0

    .line 1422
    .line 1423
    const/16 v35, 0x0

    .line 1424
    .line 1425
    const-wide/16 v36, 0x0

    .line 1426
    .line 1427
    const/16 v38, 0x2

    .line 1428
    .line 1429
    const/16 v39, 0x0

    .line 1430
    .line 1431
    const/16 v40, 0x1

    .line 1432
    .line 1433
    const/16 v41, 0x0

    .line 1434
    .line 1435
    const/16 v42, 0x0

    .line 1436
    .line 1437
    const/16 v45, 0x0

    .line 1438
    .line 1439
    move-object/from16 v44, v0

    .line 1440
    .line 1441
    move-object/from16 v24, v2

    .line 1442
    .line 1443
    move-object/from16 v43, v4

    .line 1444
    .line 1445
    invoke-static/range {v24 .. v47}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1446
    .line 1447
    .line 1448
    const/4 v11, 0x0

    .line 1449
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1450
    .line 1451
    .line 1452
    :goto_16
    iget-object v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 1453
    .line 1454
    if-nez v2, :cond_25

    .line 1455
    .line 1456
    const v1, 0x6a76edf4

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1463
    .line 1464
    .line 1465
    :goto_17
    const/4 v14, 0x1

    .line 1466
    goto/16 :goto_20

    .line 1467
    .line 1468
    :cond_25
    const v4, 0x6a76edf5

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1472
    .line 1473
    .line 1474
    const/4 v4, 0x0

    .line 1475
    const/high16 v5, 0x41400000    # 12.0f

    .line 1476
    .line 1477
    const/4 v14, 0x1

    .line 1478
    invoke-static {v6, v4, v5, v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v4

    .line 1482
    const/high16 v12, 0x42400000    # 48.0f

    .line 1483
    .line 1484
    invoke-static {v4, v12}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v24

    .line 1488
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v4

    .line 1492
    if-eqz v4, :cond_26

    .line 1493
    .line 1494
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1495
    .line 1496
    .line 1497
    move-result v4

    .line 1498
    if-nez v4, :cond_27

    .line 1499
    .line 1500
    :cond_26
    const/4 v11, 0x0

    .line 1501
    goto :goto_19

    .line 1502
    :cond_27
    const v3, 0x6938529

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1506
    .line 1507
    .line 1508
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1509
    .line 1510
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v3

    .line 1514
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1515
    .line 1516
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1517
    .line 1518
    const v5, 0x3e4ccccd    # 0.2f

    .line 1519
    .line 1520
    .line 1521
    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 1522
    .line 1523
    .line 1524
    move-result-wide v3

    .line 1525
    const/4 v11, 0x0

    .line 1526
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1527
    .line 1528
    .line 1529
    :goto_18
    move-wide/from16 v26, v3

    .line 1530
    .line 1531
    goto :goto_1a

    .line 1532
    :goto_19
    const v4, 0x6937d89

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1539
    .line 1540
    .line 1541
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1542
    .line 1543
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 1544
    .line 1545
    .line 1546
    move-result-wide v3

    .line 1547
    goto :goto_18

    .line 1548
    :goto_1a
    const/16 v29, 0x36

    .line 1549
    .line 1550
    const/16 v30, 0x0

    .line 1551
    .line 1552
    const/high16 v25, 0x3f800000    # 1.0f

    .line 1553
    .line 1554
    move-object/from16 v28, v0

    .line 1555
    .line 1556
    invoke-static/range {v24 .. v30}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v3

    .line 1563
    if-eqz v3, :cond_28

    .line 1564
    .line 1565
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1566
    .line 1567
    .line 1568
    move-result v3

    .line 1569
    if-nez v3, :cond_29

    .line 1570
    .line 1571
    :cond_28
    const/4 v11, 0x0

    .line 1572
    goto :goto_1c

    .line 1573
    :cond_29
    const v3, 0x693a0a3

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1577
    .line 1578
    .line 1579
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1580
    .line 1581
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v3

    .line 1585
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1586
    .line 1587
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1588
    .line 1589
    const/4 v11, 0x0

    .line 1590
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1591
    .line 1592
    .line 1593
    :goto_1b
    move-wide/from16 v26, v3

    .line 1594
    .line 1595
    goto :goto_1d

    .line 1596
    :goto_1c
    const v3, 0x6939c7c

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1603
    .line 1604
    .line 1605
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1606
    .line 1607
    goto :goto_1b

    .line 1608
    :goto_1d
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 1613
    .line 1614
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 1615
    .line 1616
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v3

    .line 1620
    if-eqz v3, :cond_2b

    .line 1621
    .line 1622
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1623
    .line 1624
    .line 1625
    move-result v3

    .line 1626
    if-nez v3, :cond_2a

    .line 1627
    .line 1628
    goto :goto_1e

    .line 1629
    :cond_2a
    const/16 v40, 0x4

    .line 1630
    .line 1631
    goto :goto_1f

    .line 1632
    :cond_2b
    :goto_1e
    const/16 v40, 0x6

    .line 1633
    .line 1634
    :goto_1f
    const/16 v46, 0x180

    .line 1635
    .line 1636
    const v47, 0x1affa

    .line 1637
    .line 1638
    .line 1639
    const/16 v25, 0x0

    .line 1640
    .line 1641
    const/16 v28, 0x0

    .line 1642
    .line 1643
    const-wide/16 v29, 0x0

    .line 1644
    .line 1645
    const/16 v31, 0x0

    .line 1646
    .line 1647
    const/16 v32, 0x0

    .line 1648
    .line 1649
    const-wide/16 v33, 0x0

    .line 1650
    .line 1651
    const/16 v35, 0x0

    .line 1652
    .line 1653
    const-wide/16 v36, 0x0

    .line 1654
    .line 1655
    const/16 v38, 0x2

    .line 1656
    .line 1657
    const/16 v39, 0x0

    .line 1658
    .line 1659
    const/16 v41, 0x0

    .line 1660
    .line 1661
    const/16 v42, 0x0

    .line 1662
    .line 1663
    const/16 v45, 0x0

    .line 1664
    .line 1665
    move-object/from16 v44, v0

    .line 1666
    .line 1667
    move-object/from16 v43, v1

    .line 1668
    .line 1669
    move-object/from16 v24, v2

    .line 1670
    .line 1671
    invoke-static/range {v24 .. v47}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1672
    .line 1673
    .line 1674
    const/4 v11, 0x0

    .line 1675
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1676
    .line 1677
    .line 1678
    goto/16 :goto_17

    .line 1679
    .line 1680
    :goto_20
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1684
    .line 1685
    .line 1686
    goto :goto_21

    .line 1687
    :cond_2c
    move-object v0, v4

    .line 1688
    move-object/from16 v22, v10

    .line 1689
    .line 1690
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1691
    .line 1692
    .line 1693
    :goto_21
    return-object v22

    .line 1694
    :pswitch_1
    move-object/from16 v22, v10

    .line 1695
    .line 1696
    move-object v2, v0

    .line 1697
    check-cast v2, Ljava/util/List;

    .line 1698
    .line 1699
    move-object v3, v11

    .line 1700
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 1701
    .line 1702
    move-object v4, v7

    .line 1703
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1704
    .line 1705
    check-cast v15, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 1706
    .line 1707
    move-object v7, v14

    .line 1708
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1709
    .line 1710
    move-object v5, v13

    .line 1711
    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 1712
    .line 1713
    move-object/from16 v0, p1

    .line 1714
    .line 1715
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1716
    .line 1717
    move-object/from16 v10, p2

    .line 1718
    .line 1719
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 1720
    .line 1721
    move-object/from16 v1, p3

    .line 1722
    .line 1723
    check-cast v1, Ljava/lang/Integer;

    .line 1724
    .line 1725
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1726
    .line 1727
    .line 1728
    move-result v1

    .line 1729
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    .line 1731
    .line 1732
    and-int/lit8 v11, v1, 0x6

    .line 1733
    .line 1734
    if-nez v11, :cond_2e

    .line 1735
    .line 1736
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1737
    .line 1738
    .line 1739
    move-result v11

    .line 1740
    if-eqz v11, :cond_2d

    .line 1741
    .line 1742
    const/4 v11, 0x4

    .line 1743
    goto :goto_22

    .line 1744
    :cond_2d
    const/4 v11, 0x2

    .line 1745
    :goto_22
    or-int/2addr v1, v11

    .line 1746
    :cond_2e
    move v11, v1

    .line 1747
    and-int/lit8 v1, v11, 0x13

    .line 1748
    .line 1749
    if-eq v1, v8, :cond_2f

    .line 1750
    .line 1751
    const/4 v1, 0x1

    .line 1752
    goto :goto_23

    .line 1753
    :cond_2f
    const/4 v1, 0x0

    .line 1754
    :goto_23
    and-int/lit8 v8, v11, 0x1

    .line 1755
    .line 1756
    invoke-virtual {v10, v8, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1757
    .line 1758
    .line 1759
    move-result v1

    .line 1760
    if-eqz v1, :cond_32

    .line 1761
    .line 1762
    const/high16 v1, 0x41800000    # 16.0f

    .line 1763
    .line 1764
    const/4 v8, 0x0

    .line 1765
    const/4 v12, 0x2

    .line 1766
    invoke-static {v6, v1, v8, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v35

    .line 1770
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1771
    .line 1772
    .line 1773
    move-result v1

    .line 1774
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1775
    .line 1776
    .line 1777
    move-result v6

    .line 1778
    or-int/2addr v1, v6

    .line 1779
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1780
    .line 1781
    .line 1782
    move-result v6

    .line 1783
    or-int/2addr v1, v6

    .line 1784
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result v6

    .line 1788
    or-int/2addr v1, v6

    .line 1789
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v6

    .line 1793
    or-int/2addr v1, v6

    .line 1794
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1795
    .line 1796
    .line 1797
    move-result v6

    .line 1798
    or-int/2addr v1, v6

    .line 1799
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v6

    .line 1803
    if-nez v1, :cond_30

    .line 1804
    .line 1805
    if-ne v6, v9, :cond_31

    .line 1806
    .line 1807
    :cond_30
    new-instance v1, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda3;

    .line 1808
    .line 1809
    move-object v6, v15

    .line 1810
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;)V

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1814
    .line 1815
    .line 1816
    move-object v6, v1

    .line 1817
    :cond_31
    move-object/from16 v43, v6

    .line 1818
    .line 1819
    check-cast v43, Lkotlin/jvm/functions/Function1;

    .line 1820
    .line 1821
    const/16 v19, 0x6

    .line 1822
    .line 1823
    shl-int/lit8 v1, v11, 0x6

    .line 1824
    .line 1825
    and-int/lit16 v1, v1, 0x380

    .line 1826
    .line 1827
    or-int/lit8 v45, v1, 0x6

    .line 1828
    .line 1829
    const/16 v46, 0x1fa

    .line 1830
    .line 1831
    const/16 v36, 0x0

    .line 1832
    .line 1833
    const/16 v38, 0x0

    .line 1834
    .line 1835
    const/16 v39, 0x0

    .line 1836
    .line 1837
    const/16 v40, 0x0

    .line 1838
    .line 1839
    const/16 v41, 0x0

    .line 1840
    .line 1841
    const/16 v42, 0x0

    .line 1842
    .line 1843
    move-object/from16 v37, v0

    .line 1844
    .line 1845
    move-object/from16 v44, v10

    .line 1846
    .line 1847
    invoke-static/range {v35 .. v46}, Lkotlin/ExceptionsKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 1848
    .line 1849
    .line 1850
    goto :goto_24

    .line 1851
    :cond_32
    move-object/from16 v44, v10

    .line 1852
    .line 1853
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1854
    .line 1855
    .line 1856
    :goto_24
    return-object v22

    .line 1857
    :pswitch_2
    move-object/from16 v22, v10

    .line 1858
    .line 1859
    move-object v2, v0

    .line 1860
    check-cast v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 1861
    .line 1862
    move-object v1, v11

    .line 1863
    check-cast v1, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 1864
    .line 1865
    move-object v3, v7

    .line 1866
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1867
    .line 1868
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 1869
    .line 1870
    move-object/from16 v25, v14

    .line 1871
    .line 1872
    check-cast v25, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 1873
    .line 1874
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 1875
    .line 1876
    move-object/from16 v0, p1

    .line 1877
    .line 1878
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1879
    .line 1880
    move-object/from16 v5, p2

    .line 1881
    .line 1882
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1883
    .line 1884
    move-object/from16 v4, p3

    .line 1885
    .line 1886
    check-cast v4, Ljava/lang/Integer;

    .line 1887
    .line 1888
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1889
    .line 1890
    .line 1891
    move-result v4

    .line 1892
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1893
    .line 1894
    .line 1895
    and-int/lit8 v7, v4, 0x6

    .line 1896
    .line 1897
    if-nez v7, :cond_34

    .line 1898
    .line 1899
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1900
    .line 1901
    .line 1902
    move-result v7

    .line 1903
    if-eqz v7, :cond_33

    .line 1904
    .line 1905
    const/4 v11, 0x4

    .line 1906
    goto :goto_25

    .line 1907
    :cond_33
    const/4 v11, 0x2

    .line 1908
    :goto_25
    or-int/2addr v4, v11

    .line 1909
    :cond_34
    and-int/lit8 v7, v4, 0x13

    .line 1910
    .line 1911
    if-eq v7, v8, :cond_35

    .line 1912
    .line 1913
    const/4 v7, 0x1

    .line 1914
    :goto_26
    const/16 v48, 0x1

    .line 1915
    .line 1916
    goto :goto_27

    .line 1917
    :cond_35
    const/4 v7, 0x0

    .line 1918
    goto :goto_26

    .line 1919
    :goto_27
    and-int/lit8 v4, v4, 0x1

    .line 1920
    .line 1921
    invoke-virtual {v5, v4, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1922
    .line 1923
    .line 1924
    move-result v4

    .line 1925
    if-eqz v4, :cond_3c

    .line 1926
    .line 1927
    iget-boolean v4, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isLoading:Z

    .line 1928
    .line 1929
    if-eqz v4, :cond_37

    .line 1930
    .line 1931
    const v1, 0x7713a54b

    .line 1932
    .line 1933
    .line 1934
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1935
    .line 1936
    .line 1937
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 1938
    .line 1939
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v0

    .line 1943
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1944
    .line 1945
    const/4 v11, 0x0

    .line 1946
    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v1

    .line 1950
    iget-wide v2, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1951
    .line 1952
    ushr-long v7, v2, v16

    .line 1953
    .line 1954
    xor-long/2addr v2, v7

    .line 1955
    long-to-int v2, v2

    .line 1956
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v3

    .line 1960
    invoke-static {v5, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v0

    .line 1964
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1965
    .line 1966
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1967
    .line 1968
    .line 1969
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1970
    .line 1971
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1972
    .line 1973
    .line 1974
    iget-boolean v7, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1975
    .line 1976
    if-eqz v7, :cond_36

    .line 1977
    .line 1978
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1979
    .line 1980
    .line 1981
    goto :goto_28

    .line 1982
    :cond_36
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1983
    .line 1984
    .line 1985
    :goto_28
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1986
    .line 1987
    invoke-static {v5, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1988
    .line 1989
    .line 1990
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1991
    .line 1992
    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1993
    .line 1994
    .line 1995
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v1

    .line 1999
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2000
    .line 2001
    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2002
    .line 2003
    .line 2004
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 2005
    .line 2006
    invoke-static {v5, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 2007
    .line 2008
    .line 2009
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2010
    .line 2011
    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2012
    .line 2013
    .line 2014
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2015
    .line 2016
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v35

    .line 2020
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2021
    .line 2022
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v1

    .line 2026
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2027
    .line 2028
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 2029
    .line 2030
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v0

    .line 2034
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2035
    .line 2036
    iget-wide v3, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 2037
    .line 2038
    const/16 v41, 0x0

    .line 2039
    .line 2040
    const/16 v43, 0x6

    .line 2041
    .line 2042
    const/16 v40, 0x0

    .line 2043
    .line 2044
    move-wide/from16 v36, v1

    .line 2045
    .line 2046
    move-wide/from16 v38, v3

    .line 2047
    .line 2048
    move-object/from16 v42, v5

    .line 2049
    .line 2050
    invoke-static/range {v35 .. v43}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-rIrjwxo(Landroidx/compose/ui/Modifier;JJIFLandroidx/compose/runtime/GapComposer;I)V

    .line 2051
    .line 2052
    .line 2053
    const/4 v14, 0x1

    .line 2054
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2055
    .line 2056
    .line 2057
    const/4 v11, 0x0

    .line 2058
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2059
    .line 2060
    .line 2061
    goto/16 :goto_2a

    .line 2062
    .line 2063
    :cond_37
    const/4 v11, 0x0

    .line 2064
    const v4, 0x771a424e

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2071
    .line 2072
    .line 2073
    iget-object v4, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 2074
    .line 2075
    if-eqz v4, :cond_39

    .line 2076
    .line 2077
    const v1, 0x771b0cc6

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2081
    .line 2082
    .line 2083
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 2084
    .line 2085
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v0

    .line 2089
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 2090
    .line 2091
    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v1

    .line 2095
    iget-wide v3, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 2096
    .line 2097
    ushr-long v7, v3, v16

    .line 2098
    .line 2099
    xor-long/2addr v3, v7

    .line 2100
    long-to-int v3, v3

    .line 2101
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v4

    .line 2105
    invoke-static {v5, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v0

    .line 2109
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 2110
    .line 2111
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2112
    .line 2113
    .line 2114
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 2115
    .line 2116
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 2117
    .line 2118
    .line 2119
    iget-boolean v8, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2120
    .line 2121
    if-eqz v8, :cond_38

    .line 2122
    .line 2123
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 2124
    .line 2125
    .line 2126
    goto :goto_29

    .line 2127
    :cond_38
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 2128
    .line 2129
    .line 2130
    :goto_29
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2131
    .line 2132
    invoke-static {v5, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2133
    .line 2134
    .line 2135
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2136
    .line 2137
    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2138
    .line 2139
    .line 2140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v1

    .line 2144
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2145
    .line 2146
    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2147
    .line 2148
    .line 2149
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 2150
    .line 2151
    invoke-static {v5, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 2152
    .line 2153
    .line 2154
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2155
    .line 2156
    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2157
    .line 2158
    .line 2159
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2160
    .line 2161
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v23

    .line 2165
    iget-object v0, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 2166
    .line 2167
    const/16 v28, 0x6

    .line 2168
    .line 2169
    const/16 v29, 0x14

    .line 2170
    .line 2171
    const/16 v26, 0x0

    .line 2172
    .line 2173
    move-object/from16 v24, v0

    .line 2174
    .line 2175
    move-object/from16 v27, v5

    .line 2176
    .line 2177
    invoke-static/range {v23 .. v29}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 2178
    .line 2179
    .line 2180
    const/4 v14, 0x1

    .line 2181
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2182
    .line 2183
    .line 2184
    const/4 v11, 0x0

    .line 2185
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2186
    .line 2187
    .line 2188
    goto :goto_2a

    .line 2189
    :cond_39
    const v4, 0x772234ae

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2196
    .line 2197
    .line 2198
    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v0

    .line 2202
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 2203
    .line 2204
    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v0

    .line 2208
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2209
    .line 2210
    .line 2211
    move-result v4

    .line 2212
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v6

    .line 2216
    if-nez v4, :cond_3a

    .line 2217
    .line 2218
    if-ne v6, v9, :cond_3b

    .line 2219
    .line 2220
    :cond_3a
    new-instance v6, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 2221
    .line 2222
    const/4 v12, 0x2

    .line 2223
    invoke-direct {v6, v15, v13, v12}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 2224
    .line 2225
    .line 2226
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2227
    .line 2228
    .line 2229
    :cond_3b
    move-object v4, v6

    .line 2230
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 2231
    .line 2232
    const/4 v6, 0x0

    .line 2233
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->DonationReminderContent(Landroidx/compose/ui/Modifier;Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 2234
    .line 2235
    .line 2236
    goto :goto_2a

    .line 2237
    :cond_3c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2238
    .line 2239
    .line 2240
    :goto_2a
    return-object v22

    .line 2241
    :pswitch_3
    move v12, v3

    .line 2242
    move-object/from16 v22, v10

    .line 2243
    .line 2244
    check-cast v0, Lcoil3/size/SizeResolver;

    .line 2245
    .line 2246
    check-cast v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2247
    .line 2248
    move-object v3, v7

    .line 2249
    check-cast v3, Lcoil3/compose/AsyncImagePainter;

    .line 2250
    .line 2251
    move-object v4, v15

    .line 2252
    check-cast v4, Ljava/lang/String;

    .line 2253
    .line 2254
    move-object v5, v14

    .line 2255
    check-cast v5, Landroidx/compose/ui/Alignment;

    .line 2256
    .line 2257
    move-object v6, v13

    .line 2258
    check-cast v6, Landroidx/compose/ui/layout/ContentScale;

    .line 2259
    .line 2260
    move-object/from16 v2, p1

    .line 2261
    .line 2262
    check-cast v2, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 2263
    .line 2264
    move-object/from16 v7, p2

    .line 2265
    .line 2266
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 2267
    .line 2268
    move-object/from16 v1, p3

    .line 2269
    .line 2270
    check-cast v1, Ljava/lang/Integer;

    .line 2271
    .line 2272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2273
    .line 2274
    .line 2275
    move-result v1

    .line 2276
    and-int/lit8 v9, v1, 0x6

    .line 2277
    .line 2278
    if-nez v9, :cond_3e

    .line 2279
    .line 2280
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2281
    .line 2282
    .line 2283
    move-result v9

    .line 2284
    if-eqz v9, :cond_3d

    .line 2285
    .line 2286
    const/4 v12, 0x4

    .line 2287
    :cond_3d
    or-int/2addr v1, v12

    .line 2288
    :cond_3e
    and-int/lit8 v9, v1, 0x13

    .line 2289
    .line 2290
    if-eq v9, v8, :cond_3f

    .line 2291
    .line 2292
    const/4 v8, 0x1

    .line 2293
    :goto_2b
    const/16 v48, 0x1

    .line 2294
    .line 2295
    goto :goto_2c

    .line 2296
    :cond_3f
    const/4 v8, 0x0

    .line 2297
    goto :goto_2b

    .line 2298
    :goto_2c
    and-int/lit8 v1, v1, 0x1

    .line 2299
    .line 2300
    invoke-virtual {v7, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2301
    .line 2302
    .line 2303
    move-result v1

    .line 2304
    if-eqz v1, :cond_40

    .line 2305
    .line 2306
    check-cast v0, Lcoil3/compose/ConstraintsSizeResolver;

    .line 2307
    .line 2308
    iget-wide v8, v2, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    .line 2309
    .line 2310
    invoke-virtual {v0, v8, v9}, Lcoil3/compose/ConstraintsSizeResolver;->setConstraints-BRTryo0(J)V

    .line 2311
    .line 2312
    .line 2313
    new-instance v1, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 2314
    .line 2315
    invoke-direct/range {v1 .. v6}, Lcoil3/compose/RealSubcomposeAsyncImageScope;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;)V

    .line 2316
    .line 2317
    .line 2318
    const/16 v49, 0x0

    .line 2319
    .line 2320
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v0

    .line 2324
    invoke-virtual {v11, v1, v7, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    .line 2326
    .line 2327
    goto :goto_2d

    .line 2328
    :cond_40
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2329
    .line 2330
    .line 2331
    :goto_2d
    return-object v22

    .line 2332
    nop

    .line 2333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
