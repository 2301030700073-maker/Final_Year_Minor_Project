.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/util/UiState;

.field public final synthetic f$1:Landroidx/compose/animation/core/InfiniteTransition;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lorg/wikipedia/games/GamesHubViewModel;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/util/UiState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/games/GamesHubViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$0:Lorg/wikipedia/util/UiState;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$1:Landroidx/compose/animation/core/InfiniteTransition;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$3:Lorg/wikipedia/games/GamesHubViewModel;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$4:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$5:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$6:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    move-object/from16 v7, p3

    .line 16
    .line 17
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v2, p4

    .line 20
    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    and-int/lit8 v1, v2, 0x30

    .line 31
    .line 32
    const/16 v4, 0x20

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    move v1, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/16 v1, 0x10

    .line 45
    .line 46
    :goto_0
    or-int/2addr v2, v1

    .line 47
    :cond_1
    and-int/lit16 v1, v2, 0x91

    .line 48
    .line 49
    const/16 v5, 0x90

    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    const/4 v12, 0x0

    .line 53
    if-eq v1, v5, :cond_2

    .line 54
    .line 55
    move v1, v11

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v1, v12

    .line 58
    :goto_1
    and-int/lit8 v5, v2, 0x1

    .line 59
    .line 60
    invoke-virtual {v7, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_c

    .line 65
    .line 66
    invoke-static {}, Lorg/wikipedia/games/WikiGames;->getEntries()Lkotlin/enums/EnumEntries;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lkotlin/enums/EnumEntriesList;

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lorg/wikipedia/games/WikiGames;

    .line 77
    .line 78
    sget-object v5, Lorg/wikipedia/games/GamesHubScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    aget v1, v5, v1

    .line 85
    .line 86
    if-ne v1, v11, :cond_b

    .line 87
    .line 88
    const v1, 0x74bf5e19

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$0:Lorg/wikipedia/util/UiState;

    .line 95
    .line 96
    instance-of v5, v1, Lorg/wikipedia/util/UiState$Loading;

    .line 97
    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    const v1, 0x74bf4fee

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x8

    .line 107
    .line 108
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$1:Landroidx/compose/animation/core/InfiniteTransition;

    .line 109
    .line 110
    invoke-static {v0, v7, v1}, Lorg/jsoup/Jsoup;->GamesHubLoadingShimmer(Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_3
    instance-of v5, v1, Lorg/wikipedia/util/UiState$Error;

    .line 119
    .line 120
    iget-object v15, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$3:Lorg/wikipedia/games/GamesHubViewModel;

    .line 121
    .line 122
    iget-object v6, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$5:Landroidx/compose/runtime/MutableState;

    .line 123
    .line 124
    iget-object v8, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$6:Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 127
    .line 128
    if-eqz v5, :cond_7

    .line 129
    .line 130
    const v0, 0x74c2a5a4

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-interface {v6, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 142
    .line 143
    const/high16 v2, 0x41800000    # 16.0f

    .line 144
    .line 145
    invoke-static {v0, v2, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 150
    .line 151
    invoke-static {v2, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-wide v13, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 156
    .line 157
    ushr-long v3, v13, v4

    .line 158
    .line 159
    xor-long/2addr v3, v13

    .line 160
    long-to-int v3, v3

    .line 161
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-static {v7, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 175
    .line 176
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 177
    .line 178
    .line 179
    iget-boolean v10, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 180
    .line 181
    if-eqz v10, :cond_4

    .line 182
    .line 183
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 188
    .line 189
    .line 190
    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 191
    .line 192
    invoke-static {v7, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 193
    .line 194
    .line 195
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 196
    .line 197
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 205
    .line 206
    invoke-static {v7, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 210
    .line 211
    invoke-static {v7, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 212
    .line 213
    .line 214
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 215
    .line 216
    invoke-static {v7, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 217
    .line 218
    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    .line 220
    .line 221
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 222
    .line 223
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v1, Lorg/wikipedia/util/UiState$Error;

    .line 228
    .line 229
    iget-object v5, v1, Lorg/wikipedia/util/UiState$Error;->error:Ljava/lang/Throwable;

    .line 230
    .line 231
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    if-nez v0, :cond_5

    .line 240
    .line 241
    if-ne v1, v9, :cond_6

    .line 242
    .line 243
    :cond_5
    new-instance v1, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda20;

    .line 244
    .line 245
    invoke-direct {v1, v15, v6, v8, v11}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda20;-><init>(Lorg/wikipedia/games/GamesHubViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_6
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 252
    .line 253
    new-instance v6, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 254
    .line 255
    const/4 v0, 0x0

    .line 256
    const/4 v2, 0x7

    .line 257
    invoke-direct {v6, v0, v0, v1, v2}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 258
    .line 259
    .line 260
    const/16 v9, 0x6006

    .line 261
    .line 262
    const/4 v10, 0x4

    .line 263
    move-object v8, v7

    .line 264
    const/4 v7, 0x1

    .line 265
    invoke-static/range {v4 .. v10}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 266
    .line 267
    .line 268
    move-object v7, v8

    .line 269
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_7
    instance-of v4, v1, Lorg/wikipedia/util/UiState$Success;

    .line 277
    .line 278
    if-eqz v4, :cond_a

    .line 279
    .line 280
    const v4, 0x74d6aab1

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 284
    .line 285
    .line 286
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 287
    .line 288
    invoke-interface {v6, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    check-cast v4, Ljava/lang/String;

    .line 296
    .line 297
    check-cast v1, Lorg/wikipedia/util/UiState$Success;

    .line 298
    .line 299
    iget-object v1, v1, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 300
    .line 301
    move-object v5, v1

    .line 302
    check-cast v5, Ljava/util/List;

    .line 303
    .line 304
    iget-object v14, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$2:Lkotlin/jvm/functions/Function0;

    .line 305
    .line 306
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    or-int/2addr v1, v10

    .line 315
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda26;->f$4:Lkotlin/jvm/functions/Function2;

    .line 316
    .line 317
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    or-int/2addr v1, v10

    .line 322
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    if-nez v1, :cond_8

    .line 327
    .line 328
    if-ne v10, v9, :cond_9

    .line 329
    .line 330
    :cond_8
    new-instance v13, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;

    .line 331
    .line 332
    move-object/from16 v16, v0

    .line 333
    .line 334
    move-object/from16 v17, v6

    .line 335
    .line 336
    move-object/from16 v18, v8

    .line 337
    .line 338
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;Lorg/wikipedia/games/GamesHubViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    move-object v10, v13

    .line 345
    :cond_9
    move-object v6, v10

    .line 346
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 347
    .line 348
    shr-int/lit8 v0, v2, 0x3

    .line 349
    .line 350
    and-int/lit8 v8, v0, 0xe

    .line 351
    .line 352
    invoke-static/range {v3 .. v8}, Lorg/jsoup/Jsoup;->OnThisDayGameCards(ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 356
    .line 357
    .line 358
    :goto_3
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_a
    const v0, 0x77610309

    .line 363
    .line 364
    .line 365
    invoke-static {v7, v0, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    throw v0

    .line 370
    :cond_b
    const v0, 0x7760f3ff

    .line 371
    .line 372
    .line 373
    invoke-static {v7, v0, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    throw v0

    .line 378
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 379
    .line 380
    .line 381
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 382
    .line 383
    return-object v0
.end method
