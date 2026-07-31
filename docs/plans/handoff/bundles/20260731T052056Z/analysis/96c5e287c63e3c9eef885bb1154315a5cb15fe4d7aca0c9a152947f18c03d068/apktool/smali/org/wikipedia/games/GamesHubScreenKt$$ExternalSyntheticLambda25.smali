.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/games/GamesHubViewModel;Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$1:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$4:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/snapshots/SnapshotStateMap;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouModule;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/16 v4, 0x20

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$2:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v9, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object v11, v9

    .line 23
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 24
    .line 25
    move-object v12, v8

    .line 26
    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 27
    .line 28
    move-object v15, v7

    .line 29
    check-cast v15, Lorg/wikipedia/feed/ForYouModule;

    .line 30
    .line 31
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/foundation/pager/PagerScopeImpl;

    .line 36
    .line 37
    move-object/from16 v7, p2

    .line 38
    .line 39
    check-cast v7, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    move-object/from16 v8, p3

    .line 46
    .line 47
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    move-object/from16 v9, p4

    .line 50
    .line 51
    check-cast v9, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v10, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;

    .line 61
    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    iget-object v14, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$1:Lkotlin/jvm/functions/Function1;

    .line 65
    .line 66
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;-><init>(Ljava/io/Serializable;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 70
    .line 71
    invoke-static {v0, v10}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 76
    .line 77
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-wide v10, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 82
    .line 83
    ushr-long v4, v10, v4

    .line 84
    .line 85
    xor-long/2addr v4, v10

    .line 86
    long-to-int v4, v4

    .line 87
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v8, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 101
    .line 102
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 103
    .line 104
    .line 105
    iget-boolean v11, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 106
    .line 107
    if-eqz v11, :cond_0

    .line 108
    .line 109
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 114
    .line 115
    .line 116
    :goto_0
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 117
    .line 118
    invoke-static {v8, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 122
    .line 123
    invoke-static {v8, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 131
    .line 132
    invoke-static {v8, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 136
    .line 137
    invoke-static {v8, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 138
    .line 139
    .line 140
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 141
    .line 142
    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    shr-int/lit8 v0, v9, 0x3

    .line 146
    .line 147
    and-int/lit8 v0, v0, 0xe

    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v6, v7, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 157
    .line 158
    .line 159
    return-object v2

    .line 160
    :pswitch_0
    check-cast v9, Ljava/util/List;

    .line 161
    .line 162
    move-object v12, v8

    .line 163
    check-cast v12, Lorg/wikipedia/games/GamesHubViewModel;

    .line 164
    .line 165
    move-object v13, v7

    .line 166
    check-cast v13, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 167
    .line 168
    move-object v14, v6

    .line 169
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 170
    .line 171
    move-object/from16 v1, p1

    .line 172
    .line 173
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 174
    .line 175
    move-object/from16 v6, p2

    .line 176
    .line 177
    check-cast v6, Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    move-object/from16 v7, p3

    .line 184
    .line 185
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 186
    .line 187
    move-object/from16 v8, p4

    .line 188
    .line 189
    check-cast v8, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    and-int/lit8 v1, v8, 0x30

    .line 199
    .line 200
    if-nez v1, :cond_2

    .line 201
    .line 202
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_1

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_1
    const/16 v4, 0x10

    .line 210
    .line 211
    :goto_1
    or-int/2addr v8, v4

    .line 212
    :cond_2
    and-int/lit16 v1, v8, 0x91

    .line 213
    .line 214
    const/16 v4, 0x90

    .line 215
    .line 216
    if-eq v1, v4, :cond_3

    .line 217
    .line 218
    move v5, v3

    .line 219
    :cond_3
    and-int/lit8 v1, v8, 0x1

    .line 220
    .line 221
    invoke-virtual {v7, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_8

    .line 226
    .line 227
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    move-object v11, v1

    .line 232
    check-cast v11, Ljava/lang/String;

    .line 233
    .line 234
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda25;->f$1:Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    or-int/2addr v3, v4

    .line 255
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 260
    .line 261
    if-nez v3, :cond_4

    .line 262
    .line 263
    if-ne v4, v5, :cond_5

    .line 264
    .line 265
    :cond_4
    new-instance v4, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 266
    .line 267
    const/16 v3, 0x12

    .line 268
    .line 269
    invoke-direct {v4, v3, v11, v0}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_5
    move-object/from16 v17, v4

    .line 276
    .line 277
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 278
    .line 279
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    or-int/2addr v0, v3

    .line 288
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    or-int/2addr v0, v3

    .line 293
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    if-nez v0, :cond_6

    .line 298
    .line 299
    if-ne v3, v5, :cond_7

    .line 300
    .line 301
    :cond_6
    new-instance v10, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;

    .line 302
    .line 303
    const/4 v15, 0x0

    .line 304
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    move-object v3, v10

    .line 311
    :cond_7
    move-object/from16 v18, v3

    .line 312
    .line 313
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 314
    .line 315
    const/16 v20, 0x0

    .line 316
    .line 317
    move v15, v1

    .line 318
    move-object/from16 v19, v7

    .line 319
    .line 320
    move-object/from16 v16, v11

    .line 321
    .line 322
    invoke-static/range {v15 .. v20}, Lorg/jsoup/Jsoup;->GamesHubLanguageChip(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_8
    move-object/from16 v19, v7

    .line 327
    .line 328
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 329
    .line 330
    .line 331
    :goto_2
    return-object v2

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
