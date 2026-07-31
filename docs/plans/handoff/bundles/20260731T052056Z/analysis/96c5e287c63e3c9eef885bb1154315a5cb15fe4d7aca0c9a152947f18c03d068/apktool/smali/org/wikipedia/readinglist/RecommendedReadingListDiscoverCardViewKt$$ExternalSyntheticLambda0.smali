.class public final synthetic Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Z

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    iput-boolean p5, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$4:Z

    .line 16
    .line 17
    iput-object p6, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/util/Resource;ZLorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 20
    const/4 p7, 0x1

    iput p7, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$4:Z

    iput-object p3, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p6, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object v9, v8

    .line 22
    check-cast v9, Lorg/wikipedia/util/Resource;

    .line 23
    .line 24
    move-object v11, v7

    .line 25
    check-cast v11, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 26
    .line 27
    move-object v12, v6

    .line 28
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    move-object v13, v5

    .line 31
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    move-object v14, v4

    .line 34
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    move-object/from16 v15, p1

    .line 37
    .line 38
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    move-object/from16 v1, p2

    .line 41
    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 48
    .line 49
    .line 50
    move-result v16

    .line 51
    iget-boolean v10, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$4:Z

    .line 52
    .line 53
    invoke-static/range {v9 .. v16}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SourceSelectionScreen(Lorg/wikipedia/util/Resource;ZLorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :pswitch_0
    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 58
    .line 59
    check-cast v7, Ljava/util/List;

    .line 60
    .line 61
    move-object v9, v6

    .line 62
    check-cast v9, Ljava/lang/String;

    .line 63
    .line 64
    move-object v10, v5

    .line 65
    check-cast v10, Ljava/lang/String;

    .line 66
    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    .line 71
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 72
    .line 73
    move-object/from16 v5, p2

    .line 74
    .line 75
    check-cast v5, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    and-int/lit8 v6, v5, 0x3

    .line 82
    .line 83
    const/4 v11, 0x2

    .line 84
    if-eq v6, v11, :cond_0

    .line 85
    .line 86
    move v6, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 v6, 0x0

    .line 89
    :goto_0
    and-int/2addr v5, v3

    .line 90
    invoke-virtual {v1, v5, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_9

    .line 95
    .line 96
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 97
    .line 98
    new-instance v6, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/16 v11, 0xa

    .line 101
    .line 102
    invoke-direct {v6, v11}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    const/high16 v13, 0x41800000    # 16.0f

    .line 106
    .line 107
    invoke-direct {v5, v13, v3, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 108
    .line 109
    .line 110
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 111
    .line 112
    const/4 v13, 0x6

    .line 113
    invoke-static {v5, v6, v1, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-wide v14, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 118
    .line 119
    const/16 v34, 0x20

    .line 120
    .line 121
    ushr-long v16, v14, v34

    .line 122
    .line 123
    xor-long v14, v14, v16

    .line 124
    .line 125
    long-to-int v14, v14

    .line 126
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    invoke-static {v1, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 135
    .line 136
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move/from16 v16, v14

    .line 140
    .line 141
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 144
    .line 145
    .line 146
    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 147
    .line 148
    if-eqz v12, :cond_1

    .line 149
    .line 150
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 155
    .line 156
    .line 157
    :goto_1
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 158
    .line 159
    invoke-static {v1, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 163
    .line 164
    invoke-static {v1, v15, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 172
    .line 173
    invoke-static {v1, v15, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 177
    .line 178
    invoke-static {v1, v15}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 182
    .line 183
    invoke-static {v1, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    const v8, 0x3f8ccccd    # 1.1f

    .line 187
    .line 188
    .line 189
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 190
    .line 191
    invoke-static {v11, v8}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    move-object/from16 v35, v2

    .line 196
    .line 197
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 198
    .line 199
    move-object/from16 v36, v4

    .line 200
    .line 201
    new-instance v4, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    move-object/from16 v37, v9

    .line 204
    .line 205
    const/16 v9, 0xa

    .line 206
    .line 207
    invoke-direct {v4, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 208
    .line 209
    .line 210
    const/high16 v9, 0x41000000    # 8.0f

    .line 211
    .line 212
    move-object/from16 v17, v10

    .line 213
    .line 214
    const/4 v10, 0x1

    .line 215
    invoke-direct {v2, v9, v10, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 216
    .line 217
    .line 218
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 219
    .line 220
    const/4 v10, 0x6

    .line 221
    invoke-static {v2, v4, v1, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iget-wide v9, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 226
    .line 227
    ushr-long v18, v9, v34

    .line 228
    .line 229
    xor-long v9, v9, v18

    .line 230
    .line 231
    long-to-int v4, v9

    .line 232
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-static {v1, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 241
    .line 242
    .line 243
    iget-boolean v10, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 244
    .line 245
    if-eqz v10, :cond_2

    .line 246
    .line 247
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 252
    .line 253
    .line 254
    :goto_2
    invoke-static {v1, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v1, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v4, v1, v13, v1, v15}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v1, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    .line 265
    .line 266
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 267
    .line 268
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 269
    .line 270
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 271
    .line 272
    const/16 v9, 0xa

    .line 273
    .line 274
    invoke-direct {v8, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 275
    .line 276
    .line 277
    const/high16 v9, 0x41000000    # 8.0f

    .line 278
    .line 279
    const/4 v10, 0x1

    .line 280
    invoke-direct {v4, v9, v10, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 281
    .line 282
    .line 283
    const/16 v8, 0x36

    .line 284
    .line 285
    invoke-static {v4, v2, v1, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iget-wide v9, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 290
    .line 291
    ushr-long v18, v9, v34

    .line 292
    .line 293
    xor-long v9, v9, v18

    .line 294
    .line 295
    long-to-int v4, v9

    .line 296
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-static {v1, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 305
    .line 306
    .line 307
    iget-boolean v8, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 308
    .line 309
    if-eqz v8, :cond_3

    .line 310
    .line 311
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 316
    .line 317
    .line 318
    :goto_3
    invoke-static {v1, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v1, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v4, v1, v13, v1, v15}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    .line 329
    .line 330
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 337
    .line 338
    iget-object v4, v4, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 339
    .line 340
    sget-object v8, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 341
    .line 342
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    check-cast v9, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 347
    .line 348
    iget-wide v9, v9, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 349
    .line 350
    const/16 v32, 0x0

    .line 351
    .line 352
    const v33, 0x1fffa

    .line 353
    .line 354
    .line 355
    move-object/from16 v18, v11

    .line 356
    .line 357
    const/4 v11, 0x0

    .line 358
    move-object/from16 v19, v14

    .line 359
    .line 360
    const/4 v14, 0x0

    .line 361
    move-object/from16 v20, v15

    .line 362
    .line 363
    const/16 v21, 0xa

    .line 364
    .line 365
    const-wide/16 v15, 0x0

    .line 366
    .line 367
    move-object/from16 v22, v13

    .line 368
    .line 369
    move-wide/from16 v41, v9

    .line 370
    .line 371
    move-object v9, v12

    .line 372
    move-wide/from16 v12, v41

    .line 373
    .line 374
    move-object/from16 v10, v17

    .line 375
    .line 376
    const/16 v17, 0x0

    .line 377
    .line 378
    move-object/from16 v23, v18

    .line 379
    .line 380
    const/16 v18, 0x0

    .line 381
    .line 382
    move-object/from16 v24, v19

    .line 383
    .line 384
    move-object/from16 v25, v20

    .line 385
    .line 386
    const-wide/16 v19, 0x0

    .line 387
    .line 388
    move/from16 v26, v21

    .line 389
    .line 390
    const/16 v21, 0x0

    .line 391
    .line 392
    move-object/from16 v27, v22

    .line 393
    .line 394
    move-object/from16 v28, v23

    .line 395
    .line 396
    const-wide/16 v22, 0x0

    .line 397
    .line 398
    move-object/from16 v29, v24

    .line 399
    .line 400
    const/16 v24, 0x0

    .line 401
    .line 402
    move-object/from16 v30, v25

    .line 403
    .line 404
    const/16 v25, 0x0

    .line 405
    .line 406
    move/from16 v31, v26

    .line 407
    .line 408
    const/16 v26, 0x0

    .line 409
    .line 410
    move-object/from16 v38, v27

    .line 411
    .line 412
    const/16 v27, 0x0

    .line 413
    .line 414
    move-object/from16 v39, v28

    .line 415
    .line 416
    const/16 v28, 0x0

    .line 417
    .line 418
    move/from16 v40, v31

    .line 419
    .line 420
    const/16 v31, 0x0

    .line 421
    .line 422
    move-object/from16 p1, v30

    .line 423
    .line 424
    move-object/from16 v30, v1

    .line 425
    .line 426
    move-object/from16 v1, v29

    .line 427
    .line 428
    move-object/from16 v29, v4

    .line 429
    .line 430
    move-object/from16 v4, v38

    .line 431
    .line 432
    move-object/from16 v38, v7

    .line 433
    .line 434
    move-object/from16 v7, p1

    .line 435
    .line 436
    move-object/from16 p1, v2

    .line 437
    .line 438
    move-object/from16 v2, v39

    .line 439
    .line 440
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 441
    .line 442
    .line 443
    move-object/from16 v10, v30

    .line 444
    .line 445
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;->f$4:Z

    .line 446
    .line 447
    if-eqz v0, :cond_4

    .line 448
    .line 449
    const v0, 0x41120c38

    .line 450
    .line 451
    .line 452
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 453
    .line 454
    .line 455
    const/high16 v0, 0x40c00000    # 6.0f

    .line 456
    .line 457
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    sget-object v11, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 462
    .line 463
    invoke-static {v0, v11}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v11

    .line 471
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 472
    .line 473
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 474
    .line 475
    sget-object v13, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 476
    .line 477
    invoke-static {v0, v11, v12, v13}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const/4 v11, 0x0

    .line 482
    invoke-static {v0, v10, v11}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 486
    .line 487
    .line 488
    :goto_4
    const/4 v0, 0x1

    .line 489
    goto :goto_5

    .line 490
    :cond_4
    const/4 v11, 0x0

    .line 491
    const v0, 0x41168529

    .line 492
    .line 493
    .line 494
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 498
    .line 499
    .line 500
    goto :goto_4

    .line 501
    :goto_5
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 502
    .line 503
    .line 504
    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 505
    .line 506
    new-instance v12, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 507
    .line 508
    const/16 v13, 0xa

    .line 509
    .line 510
    invoke-direct {v12, v13}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 511
    .line 512
    .line 513
    const/high16 v13, 0x41000000    # 8.0f

    .line 514
    .line 515
    invoke-direct {v11, v13, v0, v12}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 516
    .line 517
    .line 518
    const/16 v0, 0x36

    .line 519
    .line 520
    invoke-static {v11, v6, v10, v0}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    iget-wide v11, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 525
    .line 526
    ushr-long v13, v11, v34

    .line 527
    .line 528
    xor-long/2addr v11, v13

    .line 529
    long-to-int v6, v11

    .line 530
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    invoke-static {v10, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 535
    .line 536
    .line 537
    move-result-object v12

    .line 538
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 539
    .line 540
    .line 541
    iget-boolean v13, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 542
    .line 543
    if-eqz v13, :cond_5

    .line 544
    .line 545
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 546
    .line 547
    .line 548
    goto :goto_6

    .line 549
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 550
    .line 551
    .line 552
    :goto_6
    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v10, v11, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v6, v10, v4, v10, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 559
    .line 560
    .line 561
    invoke-static {v10, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 562
    .line 563
    .line 564
    const/high16 v0, 0x41a00000    # 20.0f

    .line 565
    .line 566
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 567
    .line 568
    .line 569
    move-result-object v13

    .line 570
    const v0, 0x7f080216

    .line 571
    .line 572
    .line 573
    const/4 v11, 0x0

    .line 574
    invoke-static {v0, v11, v10}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 583
    .line 584
    iget-wide v14, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 585
    .line 586
    const/16 v17, 0x1b8

    .line 587
    .line 588
    const/16 v18, 0x0

    .line 589
    .line 590
    const/4 v12, 0x0

    .line 591
    move-object v11, v0

    .line 592
    move-object/from16 v16, v10

    .line 593
    .line 594
    invoke-static/range {v11 .. v18}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 595
    .line 596
    .line 597
    const/16 v20, 0x0

    .line 598
    .line 599
    const/16 v21, 0xd

    .line 600
    .line 601
    const/16 v17, 0x0

    .line 602
    .line 603
    const/high16 v18, 0x40000000    # 2.0f

    .line 604
    .line 605
    const/16 v19, 0x0

    .line 606
    .line 607
    move-object/from16 v16, v2

    .line 608
    .line 609
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 610
    .line 611
    .line 612
    move-result-object v12

    .line 613
    new-instance v13, Landroidx/compose/ui/text/TextStyle;

    .line 614
    .line 615
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 620
    .line 621
    iget-wide v14, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 622
    .line 623
    const/16 v0, 0xe

    .line 624
    .line 625
    invoke-static {v0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 626
    .line 627
    .line 628
    move-result-wide v16

    .line 629
    sget-object v18, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 630
    .line 631
    const-wide/16 v23, 0x0

    .line 632
    .line 633
    const v25, 0xfffff8

    .line 634
    .line 635
    .line 636
    const/16 v19, 0x0

    .line 637
    .line 638
    const-wide/16 v20, 0x0

    .line 639
    .line 640
    const/16 v22, 0x0

    .line 641
    .line 642
    invoke-direct/range {v13 .. v25}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;JIJI)V

    .line 643
    .line 644
    .line 645
    const/16 v25, 0x30

    .line 646
    .line 647
    const/16 v26, 0xff4

    .line 648
    .line 649
    move-object v14, v13

    .line 650
    const/4 v13, 0x0

    .line 651
    const-wide/16 v15, 0x0

    .line 652
    .line 653
    const/16 v17, 0x0

    .line 654
    .line 655
    const/16 v18, 0x0

    .line 656
    .line 657
    const-wide/16 v19, 0x0

    .line 658
    .line 659
    const/16 v21, 0x0

    .line 660
    .line 661
    const/16 v22, 0x0

    .line 662
    .line 663
    const/16 v23, 0x0

    .line 664
    .line 665
    move-object/from16 v24, v10

    .line 666
    .line 667
    move-object/from16 v11, v36

    .line 668
    .line 669
    invoke-static/range {v11 .. v26}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 670
    .line 671
    .line 672
    const/4 v0, 0x1

    .line 673
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 681
    .line 682
    iget-wide v11, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 683
    .line 684
    move-object/from16 v0, p1

    .line 685
    .line 686
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 691
    .line 692
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 693
    .line 694
    const/16 v31, 0x0

    .line 695
    .line 696
    const v32, 0x1fffa

    .line 697
    .line 698
    .line 699
    move-object/from16 v29, v10

    .line 700
    .line 701
    const/4 v10, 0x0

    .line 702
    const-wide/16 v14, 0x0

    .line 703
    .line 704
    const/16 v16, 0x0

    .line 705
    .line 706
    const/16 v17, 0x0

    .line 707
    .line 708
    const-wide/16 v18, 0x0

    .line 709
    .line 710
    const/16 v20, 0x0

    .line 711
    .line 712
    const-wide/16 v21, 0x0

    .line 713
    .line 714
    const/16 v24, 0x0

    .line 715
    .line 716
    const/16 v25, 0x0

    .line 717
    .line 718
    const/16 v26, 0x0

    .line 719
    .line 720
    const/16 v27, 0x0

    .line 721
    .line 722
    const/16 v30, 0x0

    .line 723
    .line 724
    move-object/from16 v28, v0

    .line 725
    .line 726
    move-object/from16 v9, v37

    .line 727
    .line 728
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 729
    .line 730
    .line 731
    move-object/from16 v10, v29

    .line 732
    .line 733
    const/4 v0, 0x1

    .line 734
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 735
    .line 736
    .line 737
    invoke-interface/range {v38 .. v38}, Ljava/util/Collection;->isEmpty()Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-nez v0, :cond_8

    .line 742
    .line 743
    const v0, 0xef04468

    .line 744
    .line 745
    .line 746
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 747
    .line 748
    .line 749
    const/high16 v0, 0x41400000    # 12.0f

    .line 750
    .line 751
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-static {v2, v0}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    const v1, 0x3f666666    # 0.9f

    .line 760
    .line 761
    .line 762
    invoke-static {v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    const/high16 v1, 0x430c0000    # 140.0f

    .line 767
    .line 768
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 769
    .line 770
    .line 771
    move-result-object v12

    .line 772
    new-instance v11, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    .line 773
    .line 774
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 775
    .line 776
    .line 777
    move-object/from16 v7, v38

    .line 778
    .line 779
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    if-nez v0, :cond_6

    .line 788
    .line 789
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 790
    .line 791
    if-ne v1, v0, :cond_7

    .line 792
    .line 793
    :cond_6
    new-instance v1, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;

    .line 794
    .line 795
    const/4 v0, 0x0

    .line 796
    invoke-direct {v1, v7, v0}, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;I)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    :cond_7
    move-object/from16 v20, v1

    .line 803
    .line 804
    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 805
    .line 806
    const/16 v22, 0x0

    .line 807
    .line 808
    const/4 v13, 0x0

    .line 809
    const/4 v14, 0x0

    .line 810
    const/4 v15, 0x0

    .line 811
    const/16 v16, 0x0

    .line 812
    .line 813
    const/16 v17, 0x0

    .line 814
    .line 815
    const/16 v18, 0x0

    .line 816
    .line 817
    const/16 v19, 0x0

    .line 818
    .line 819
    move-object/from16 v21, v10

    .line 820
    .line 821
    invoke-static/range {v11 .. v22}, Lkotlin/TuplesKt;->LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 822
    .line 823
    .line 824
    const/4 v11, 0x0

    .line 825
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 826
    .line 827
    .line 828
    :goto_7
    const/4 v0, 0x1

    .line 829
    goto :goto_8

    .line 830
    :cond_8
    const/4 v11, 0x0

    .line 831
    const v0, 0xf05fda3

    .line 832
    .line 833
    .line 834
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 838
    .line 839
    .line 840
    goto :goto_7

    .line 841
    :goto_8
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 842
    .line 843
    .line 844
    goto :goto_9

    .line 845
    :cond_9
    move-object v10, v1

    .line 846
    move-object/from16 v35, v2

    .line 847
    .line 848
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 849
    .line 850
    .line 851
    :goto_9
    return-object v35

    .line 852
    nop

    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
