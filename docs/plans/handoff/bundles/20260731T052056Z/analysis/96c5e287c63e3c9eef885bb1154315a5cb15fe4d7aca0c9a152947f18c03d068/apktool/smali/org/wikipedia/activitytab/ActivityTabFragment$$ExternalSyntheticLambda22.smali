.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/util/UiState;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Lorg/wikipedia/util/UiState;

.field public final synthetic f$11:Lorg/wikipedia/util/UiState;

.field public final synthetic f$12:Lorg/wikipedia/util/UiState;

.field public final synthetic f$13:Z

.field public final synthetic f$14:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final synthetic f$2:Lorg/wikipedia/activitytab/ActivityTabModules;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lorg/wikipedia/activitytab/ActivityTabFragment;

.field public final synthetic f$6:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic f$7:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/util/UiState;ZLorg/wikipedia/activitytab/ActivityTabModules;ZZLorg/wikipedia/activitytab/ActivityTabFragment;Landroidx/paging/compose/LazyPagingItems;Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;ZLandroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$0:Lorg/wikipedia/util/UiState;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$2:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$4:Z

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$5:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$6:Landroidx/paging/compose/LazyPagingItems;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$7:Landroidx/compose/foundation/lazy/LazyListState;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$8:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$9:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$10:Lorg/wikipedia/util/UiState;

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$11:Lorg/wikipedia/util/UiState;

    .line 27
    .line 28
    iput-object p13, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$12:Lorg/wikipedia/util/UiState;

    .line 29
    .line 30
    iput-boolean p14, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$13:Z

    .line 31
    .line 32
    iput-object p15, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$14:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    check-cast v3, Landroidx/compose/foundation/layout/PaddingValues;

    .line 6
    .line 7
    move-object/from16 v11, p2

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v1, p3

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 20
    .line 21
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 22
    .line 23
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 24
    .line 25
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 31
    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    iget-object v7, v11, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 35
    .line 36
    iget v7, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 37
    .line 38
    neg-int v7, v7

    .line 39
    :goto_0
    move v14, v7

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v7, v11, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 42
    .line 43
    iget v7, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    and-int/lit8 v7, v1, 0x6

    .line 47
    .line 48
    const/4 v15, 0x2

    .line 49
    if-nez v7, :cond_2

    .line 50
    .line 51
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    const/4 v7, 0x4

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    move v7, v15

    .line 60
    :goto_2
    or-int/2addr v1, v7

    .line 61
    :cond_2
    and-int/lit8 v7, v1, 0x13

    .line 62
    .line 63
    const/16 v8, 0x12

    .line 64
    .line 65
    const/4 v9, 0x1

    .line 66
    const/4 v10, 0x0

    .line 67
    if-eq v7, v8, :cond_3

    .line 68
    .line 69
    move v7, v9

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move v7, v10

    .line 72
    :goto_3
    and-int/2addr v1, v9

    .line 73
    invoke-virtual {v11, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sget-object v28, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    .line 79
    if-eqz v1, :cond_17

    .line 80
    .line 81
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 86
    .line 87
    if-ne v1, v7, :cond_4

    .line 88
    .line 89
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 99
    .line 100
    invoke-static {v11}, Lkotlin/text/RegexKt;->rememberPullToRefreshState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$0:Lorg/wikipedia/util/UiState;

    .line 105
    .line 106
    instance-of v13, v12, Lorg/wikipedia/util/UiState$Success;

    .line 107
    .line 108
    if-eqz v13, :cond_5

    .line 109
    .line 110
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-interface {v1, v13}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget-boolean v13, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$1:Z

    .line 116
    .line 117
    move/from16 p1, v14

    .line 118
    .line 119
    iget-object v14, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$5:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 120
    .line 121
    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 122
    .line 123
    move-object/from16 v17, v7

    .line 124
    .line 125
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 126
    .line 127
    const/16 v18, 0x20

    .line 128
    .line 129
    move-object/from16 v19, v8

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    if-nez v13, :cond_c

    .line 133
    .line 134
    const v0, 0x7e02831c

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 141
    .line 142
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v6, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 151
    .line 152
    ushr-long v19, v12, v18

    .line 153
    .line 154
    xor-long v12, v12, v19

    .line 155
    .line 156
    long-to-int v3, v12

    .line 157
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 166
    .line 167
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 171
    .line 172
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 173
    .line 174
    .line 175
    iget-boolean v13, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 176
    .line 177
    if-eqz v13, :cond_6

    .line 178
    .line 179
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 184
    .line 185
    .line 186
    :goto_4
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 187
    .line 188
    invoke-static {v11, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 192
    .line 193
    invoke-static {v11, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 201
    .line 202
    invoke-static {v11, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 203
    .line 204
    .line 205
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 206
    .line 207
    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 208
    .line 209
    .line 210
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 211
    .line 212
    invoke-static {v11, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v11}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v9, v7, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const/high16 v9, 0x41800000    # 16.0f

    .line 224
    .line 225
    invoke-static {v5, v9, v8, v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const/4 v8, 0x1

    .line 230
    invoke-static {v5, v0, v8}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/16 v5, 0x30

    .line 235
    .line 236
    invoke-static {v2, v4, v11, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    iget-wide v4, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 241
    .line 242
    ushr-long v18, v4, v18

    .line 243
    .line 244
    xor-long v4, v4, v18

    .line 245
    .line 246
    long-to-int v4, v4

    .line 247
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 256
    .line 257
    .line 258
    iget-boolean v8, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 259
    .line 260
    if-eqz v8, :cond_7

    .line 261
    .line 262
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 267
    .line 268
    .line 269
    :goto_5
    invoke-static {v11, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v11, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v11, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v11, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 286
    .line 287
    .line 288
    const/high16 v0, 0x43240000    # 164.0f

    .line 289
    .line 290
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    const v0, 0x7f08021c

    .line 295
    .line 296
    .line 297
    const/4 v1, 0x0

    .line 298
    invoke-static {v0, v1, v11}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    const/16 v12, 0x1b8

    .line 303
    .line 304
    const/16 v13, 0x78

    .line 305
    .line 306
    const/4 v5, 0x0

    .line 307
    move-object v0, v7

    .line 308
    const/4 v7, 0x0

    .line 309
    const/4 v8, 0x0

    .line 310
    move/from16 v19, v9

    .line 311
    .line 312
    const/4 v9, 0x0

    .line 313
    const/4 v10, 0x0

    .line 314
    move-object/from16 v2, v17

    .line 315
    .line 316
    move-object/from16 v17, v0

    .line 317
    .line 318
    const/4 v0, 0x1

    .line 319
    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 320
    .line 321
    .line 322
    const/16 v21, 0x0

    .line 323
    .line 324
    const/16 v22, 0xd

    .line 325
    .line 326
    const/16 v18, 0x0

    .line 327
    .line 328
    const/16 v20, 0x0

    .line 329
    .line 330
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    move-object/from16 v3, v17

    .line 335
    .line 336
    move/from16 v29, v19

    .line 337
    .line 338
    const v4, 0x7f120059

    .line 339
    .line 340
    .line 341
    invoke-static {v4, v11}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    sget-object v6, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 346
    .line 347
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    check-cast v6, Landroidx/compose/material3/Typography;

    .line 352
    .line 353
    iget-object v6, v6, Landroidx/compose/material3/Typography;->titleSmall:Landroidx/compose/ui/text/TextStyle;

    .line 354
    .line 355
    sget-object v7, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 356
    .line 357
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 362
    .line 363
    iget-wide v8, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 364
    .line 365
    move v10, v15

    .line 366
    new-instance v15, Landroidx/compose/ui/text/style/TextAlign;

    .line 367
    .line 368
    const/4 v12, 0x3

    .line 369
    invoke-direct {v15, v12}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 370
    .line 371
    .line 372
    const/16 v26, 0x0

    .line 373
    .line 374
    const v27, 0x1fbf8

    .line 375
    .line 376
    .line 377
    move-object/from16 v23, v6

    .line 378
    .line 379
    move-wide/from16 v35, v8

    .line 380
    .line 381
    move-object v9, v7

    .line 382
    move-wide/from16 v6, v35

    .line 383
    .line 384
    const/4 v8, 0x0

    .line 385
    move-object v12, v9

    .line 386
    move v13, v10

    .line 387
    const-wide/16 v9, 0x0

    .line 388
    .line 389
    move-object/from16 v17, v11

    .line 390
    .line 391
    const/4 v11, 0x0

    .line 392
    move-object/from16 v16, v12

    .line 393
    .line 394
    const/4 v12, 0x0

    .line 395
    move/from16 v19, v13

    .line 396
    .line 397
    move-object/from16 v18, v14

    .line 398
    .line 399
    const-wide/16 v13, 0x0

    .line 400
    .line 401
    move-object/from16 v20, v16

    .line 402
    .line 403
    move-object/from16 v24, v17

    .line 404
    .line 405
    const-wide/16 v16, 0x0

    .line 406
    .line 407
    move-object/from16 v21, v18

    .line 408
    .line 409
    const/16 v18, 0x0

    .line 410
    .line 411
    move/from16 v22, v19

    .line 412
    .line 413
    const/16 v19, 0x0

    .line 414
    .line 415
    move-object/from16 v25, v20

    .line 416
    .line 417
    const/16 v20, 0x0

    .line 418
    .line 419
    move-object/from16 v30, v21

    .line 420
    .line 421
    const/16 v21, 0x0

    .line 422
    .line 423
    move/from16 v31, v22

    .line 424
    .line 425
    const/16 v22, 0x0

    .line 426
    .line 427
    move-object/from16 v32, v25

    .line 428
    .line 429
    const/16 v25, 0x30

    .line 430
    .line 431
    move-object/from16 p0, v3

    .line 432
    .line 433
    move-object/from16 v1, v30

    .line 434
    .line 435
    move/from16 v3, v31

    .line 436
    .line 437
    move-object/from16 v0, v32

    .line 438
    .line 439
    invoke-static/range {v4 .. v27}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v11, v24

    .line 443
    .line 444
    const/16 v21, 0x0

    .line 445
    .line 446
    const/16 v22, 0xd

    .line 447
    .line 448
    const/16 v18, 0x0

    .line 449
    .line 450
    const/16 v20, 0x0

    .line 451
    .line 452
    move-object/from16 v17, p0

    .line 453
    .line 454
    move/from16 v19, v29

    .line 455
    .line 456
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    const/high16 v12, 0x41900000    # 18.0f

    .line 461
    .line 462
    invoke-static {v3, v12}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 463
    .line 464
    .line 465
    move-result-object v13

    .line 466
    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 467
    .line 468
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 473
    .line 474
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 475
    .line 476
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->White:J

    .line 477
    .line 478
    const/16 v9, 0xc

    .line 479
    .line 480
    move-object v8, v11

    .line 481
    invoke-static/range {v4 .. v9}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    if-nez v5, :cond_8

    .line 494
    .line 495
    if-ne v6, v2, :cond_9

    .line 496
    .line 497
    :cond_8
    new-instance v6, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;

    .line 498
    .line 499
    const/16 v5, 0x8

    .line 500
    .line 501
    invoke-direct {v6, v1, v5}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    :cond_9
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 508
    .line 509
    move v5, v12

    .line 510
    sget-object v12, Lorg/wikipedia/activitytab/ImpactModuleKt;->lambda$-1882619459:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 511
    .line 512
    const v14, 0x30c00030

    .line 513
    .line 514
    .line 515
    const/16 v15, 0x16c

    .line 516
    .line 517
    move-object v8, v4

    .line 518
    move-object v4, v6

    .line 519
    const/4 v6, 0x0

    .line 520
    const/4 v7, 0x0

    .line 521
    const/4 v9, 0x0

    .line 522
    move/from16 v16, v5

    .line 523
    .line 524
    move-object v5, v10

    .line 525
    const/4 v10, 0x0

    .line 526
    move-object/from16 v17, v13

    .line 527
    .line 528
    move-object v13, v11

    .line 529
    move-object/from16 v11, v17

    .line 530
    .line 531
    move-object/from16 v17, v2

    .line 532
    .line 533
    move/from16 v2, v16

    .line 534
    .line 535
    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 536
    .line 537
    .line 538
    move-object v11, v13

    .line 539
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 548
    .line 549
    iget-wide v4, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 550
    .line 551
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 556
    .line 557
    iget-wide v6, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 558
    .line 559
    const/16 v9, 0xc

    .line 560
    .line 561
    move-object v8, v11

    .line 562
    invoke-static/range {v4 .. v9}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    if-nez v3, :cond_a

    .line 575
    .line 576
    move-object/from16 v3, v17

    .line 577
    .line 578
    if-ne v4, v3, :cond_b

    .line 579
    .line 580
    :cond_a
    new-instance v4, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;

    .line 581
    .line 582
    const/16 v3, 0x9

    .line 583
    .line 584
    invoke-direct {v4, v1, v3}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 591
    .line 592
    sget-object v12, Lorg/wikipedia/activitytab/ImpactModuleKt;->lambda$-1326171468:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 593
    .line 594
    const/high16 v14, 0x30c00000

    .line 595
    .line 596
    const/16 v15, 0x16e

    .line 597
    .line 598
    const/4 v5, 0x0

    .line 599
    const/4 v6, 0x0

    .line 600
    const/4 v7, 0x0

    .line 601
    const/4 v9, 0x0

    .line 602
    const/4 v10, 0x0

    .line 603
    move-object v8, v0

    .line 604
    move-object v13, v11

    .line 605
    move-object v11, v2

    .line 606
    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 607
    .line 608
    .line 609
    move-object v11, v13

    .line 610
    const/4 v0, 0x1

    .line 611
    const/4 v1, 0x0

    .line 612
    invoke-static {v11, v0, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 613
    .line 614
    .line 615
    return-object v28

    .line 616
    :cond_c
    move v13, v10

    .line 617
    move-object/from16 v33, v17

    .line 618
    .line 619
    move-object v10, v1

    .line 620
    move-object v1, v14

    .line 621
    move-object v14, v7

    .line 622
    move-object v7, v3

    .line 623
    move v3, v15

    .line 624
    const v15, 0x7e410603

    .line 625
    .line 626
    .line 627
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 631
    .line 632
    .line 633
    iget-object v15, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$2:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 634
    .line 635
    iget-boolean v3, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$3:Z

    .line 636
    .line 637
    iget-boolean v8, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$4:Z

    .line 638
    .line 639
    invoke-virtual {v15, v3, v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->noModulesVisible(ZZ)Z

    .line 640
    .line 641
    .line 642
    move-result v20

    .line 643
    if-eqz v20, :cond_14

    .line 644
    .line 645
    const v0, 0x7e43c3df

    .line 646
    .line 647
    .line 648
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 649
    .line 650
    .line 651
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 652
    .line 653
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-static {v6, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 662
    .line 663
    ushr-long v19, v6, v18

    .line 664
    .line 665
    xor-long v6, v6, v19

    .line 666
    .line 667
    long-to-int v6, v6

    .line 668
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 677
    .line 678
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 682
    .line 683
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 684
    .line 685
    .line 686
    iget-boolean v10, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 687
    .line 688
    if-eqz v10, :cond_d

    .line 689
    .line 690
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 691
    .line 692
    .line 693
    goto :goto_6

    .line 694
    :cond_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 695
    .line 696
    .line 697
    :goto_6
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 698
    .line 699
    invoke-static {v11, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 700
    .line 701
    .line 702
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 703
    .line 704
    invoke-static {v11, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 705
    .line 706
    .line 707
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 708
    .line 709
    .line 710
    move-result-object v6

    .line 711
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 712
    .line 713
    invoke-static {v11, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 714
    .line 715
    .line 716
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 717
    .line 718
    invoke-static {v11, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 719
    .line 720
    .line 721
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 722
    .line 723
    invoke-static {v11, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 724
    .line 725
    .line 726
    const v0, -0x77f54d5b

    .line 727
    .line 728
    .line 729
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 730
    .line 731
    .line 732
    invoke-static {v11}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {v9, v14, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    const/high16 v15, 0x41800000    # 16.0f

    .line 741
    .line 742
    const/4 v9, 0x2

    .line 743
    const/4 v13, 0x0

    .line 744
    invoke-static {v5, v15, v13, v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 745
    .line 746
    .line 747
    move-result-object v5

    .line 748
    const/4 v9, 0x1

    .line 749
    invoke-static {v5, v0, v9}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    const/16 v5, 0x30

    .line 754
    .line 755
    invoke-static {v2, v4, v11, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    iget-wide v4, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 760
    .line 761
    ushr-long v16, v4, v18

    .line 762
    .line 763
    xor-long v4, v4, v16

    .line 764
    .line 765
    long-to-int v4, v4

    .line 766
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 775
    .line 776
    .line 777
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 778
    .line 779
    if-eqz v9, :cond_e

    .line 780
    .line 781
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 782
    .line 783
    .line 784
    goto :goto_7

    .line 785
    :cond_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 786
    .line 787
    .line 788
    :goto_7
    invoke-static {v11, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 789
    .line 790
    .line 791
    invoke-static {v11, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 792
    .line 793
    .line 794
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-static {v11, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 799
    .line 800
    .line 801
    invoke-static {v11, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 802
    .line 803
    .line 804
    invoke-static {v11, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 805
    .line 806
    .line 807
    const/high16 v0, 0x43240000    # 164.0f

    .line 808
    .line 809
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 810
    .line 811
    .line 812
    move-result-object v6

    .line 813
    const v0, 0x7f08021b

    .line 814
    .line 815
    .line 816
    const/4 v2, 0x0

    .line 817
    invoke-static {v0, v2, v11}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    const/16 v12, 0x1b8

    .line 822
    .line 823
    move/from16 v17, v13

    .line 824
    .line 825
    const/16 v13, 0x78

    .line 826
    .line 827
    const/4 v5, 0x0

    .line 828
    const/4 v7, 0x0

    .line 829
    const/4 v8, 0x0

    .line 830
    const/4 v9, 0x0

    .line 831
    const/4 v10, 0x0

    .line 832
    move/from16 v0, v17

    .line 833
    .line 834
    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 835
    .line 836
    .line 837
    const/4 v8, 0x1

    .line 838
    invoke-static {v14, v0, v15, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    const v0, 0x7f12003c

    .line 843
    .line 844
    .line 845
    invoke-static {v0, v11}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v4

    .line 849
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 850
    .line 851
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 856
    .line 857
    iget-object v7, v0, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 858
    .line 859
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 860
    .line 861
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 866
    .line 867
    iget-wide v8, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 868
    .line 869
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    if-nez v0, :cond_10

    .line 878
    .line 879
    move-object/from16 v6, v33

    .line 880
    .line 881
    if-ne v2, v6, :cond_f

    .line 882
    .line 883
    goto :goto_8

    .line 884
    :cond_f
    const/4 v0, 0x1

    .line 885
    goto :goto_9

    .line 886
    :cond_10
    :goto_8
    new-instance v2, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda75;

    .line 887
    .line 888
    const/4 v0, 0x1

    .line 889
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda75;-><init>(ILjava/lang/Object;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    :goto_9
    move-object v14, v2

    .line 896
    check-cast v14, Landroidx/compose/ui/text/LinkInteractionListener;

    .line 897
    .line 898
    const/16 v18, 0x30

    .line 899
    .line 900
    const/16 v19, 0xae4

    .line 901
    .line 902
    const/4 v6, 0x0

    .line 903
    const/4 v10, 0x0

    .line 904
    move-object v13, v11

    .line 905
    const/4 v11, 0x0

    .line 906
    move-object/from16 v17, v13

    .line 907
    .line 908
    const-wide/16 v12, 0x0

    .line 909
    .line 910
    const/4 v15, 0x0

    .line 911
    const/16 v16, 0x3

    .line 912
    .line 913
    move v2, v0

    .line 914
    move/from16 v0, p1

    .line 915
    .line 916
    invoke-static/range {v4 .. v19}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 917
    .line 918
    .line 919
    move-object/from16 v4, v17

    .line 920
    .line 921
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 922
    .line 923
    .line 924
    if-gez v0, :cond_11

    .line 925
    .line 926
    neg-int v0, v0

    .line 927
    iget-object v1, v4, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 928
    .line 929
    :goto_a
    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 930
    .line 931
    if-le v2, v0, :cond_13

    .line 932
    .line 933
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 938
    .line 939
    .line 940
    goto :goto_a

    .line 941
    :cond_11
    iget-boolean v1, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 942
    .line 943
    if-eqz v1, :cond_12

    .line 944
    .line 945
    iget-object v1, v4, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 946
    .line 947
    :goto_b
    iget-boolean v2, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 948
    .line 949
    if-eqz v2, :cond_12

    .line 950
    .line 951
    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 952
    .line 953
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    .line 954
    .line 955
    .line 956
    move-result v2

    .line 957
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 958
    .line 959
    .line 960
    goto :goto_b

    .line 961
    :cond_12
    iget-object v1, v4, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 962
    .line 963
    :goto_c
    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 964
    .line 965
    if-le v2, v0, :cond_13

    .line 966
    .line 967
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 968
    .line 969
    .line 970
    move-result v2

    .line 971
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 972
    .line 973
    .line 974
    goto :goto_c

    .line 975
    :cond_13
    return-object v28

    .line 976
    :cond_14
    move-object v4, v11

    .line 977
    move-object/from16 v6, v33

    .line 978
    .line 979
    const/4 v2, 0x1

    .line 980
    const v5, 0x7e5ad103

    .line 981
    .line 982
    .line 983
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 984
    .line 985
    .line 986
    const/4 v13, 0x0

    .line 987
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 988
    .line 989
    .line 990
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    check-cast v5, Ljava/lang/Boolean;

    .line 995
    .line 996
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 997
    .line 998
    .line 999
    move-result v16

    .line 1000
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v5

    .line 1004
    iget-object v13, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$6:Landroidx/paging/compose/LazyPagingItems;

    .line 1005
    .line 1006
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v9

    .line 1010
    or-int/2addr v5, v9

    .line 1011
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v9

    .line 1015
    if-nez v5, :cond_15

    .line 1016
    .line 1017
    if-ne v9, v6, :cond_16

    .line 1018
    .line 1019
    :cond_15
    new-instance v9, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 1020
    .line 1021
    const/16 v5, 0xb

    .line 1022
    .line 1023
    invoke-direct {v9, v1, v13, v10, v5}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1027
    .line 1028
    .line 1029
    :cond_16
    move-object/from16 v17, v9

    .line 1030
    .line 1031
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 1032
    .line 1033
    new-instance v5, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;

    .line 1034
    .line 1035
    move-object/from16 v6, v19

    .line 1036
    .line 1037
    invoke-direct {v5, v6, v10, v2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;Landroidx/compose/runtime/MutableState;I)V

    .line 1038
    .line 1039
    .line 1040
    const v2, 0x77903cd8

    .line 1041
    .line 1042
    .line 1043
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v18

    .line 1047
    new-instance v2, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;

    .line 1048
    .line 1049
    move-object/from16 v30, v1

    .line 1050
    .line 1051
    iget-object v1, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$7:Landroidx/compose/foundation/lazy/LazyListState;

    .line 1052
    .line 1053
    move-object v11, v4

    .line 1054
    iget-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$8:Ljava/lang/String;

    .line 1055
    .line 1056
    move-object/from16 v24, v11

    .line 1057
    .line 1058
    move v11, v3

    .line 1059
    move-object v3, v7

    .line 1060
    iget-object v7, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$9:Ljava/lang/String;

    .line 1061
    .line 1062
    move v9, v8

    .line 1063
    iget-object v8, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$10:Lorg/wikipedia/util/UiState;

    .line 1064
    .line 1065
    iget-object v10, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$11:Lorg/wikipedia/util/UiState;

    .line 1066
    .line 1067
    move-object v5, v12

    .line 1068
    iget-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$12:Lorg/wikipedia/util/UiState;

    .line 1069
    .line 1070
    iget-boolean v14, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$13:Z

    .line 1071
    .line 1072
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;->f$14:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1073
    .line 1074
    move-object/from16 v19, v15

    .line 1075
    .line 1076
    move-object v15, v0

    .line 1077
    move-object v0, v2

    .line 1078
    move-object/from16 v2, v19

    .line 1079
    .line 1080
    move-object/from16 v19, v6

    .line 1081
    .line 1082
    move-object/from16 v34, v24

    .line 1083
    .line 1084
    move-object/from16 v6, v30

    .line 1085
    .line 1086
    invoke-direct/range {v0 .. v15}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lorg/wikipedia/activitytab/ActivityTabModules;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Lorg/wikipedia/util/UiState;Lorg/wikipedia/activitytab/ActivityTabFragment;Ljava/lang/String;Lorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;Landroidx/paging/compose/LazyPagingItems;ZLandroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V

    .line 1087
    .line 1088
    .line 1089
    const v1, -0xbe731a7

    .line 1090
    .line 1091
    .line 1092
    move-object/from16 v11, v34

    .line 1093
    .line 1094
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v10

    .line 1098
    const/high16 v12, 0x1b0000

    .line 1099
    .line 1100
    const/16 v13, 0x14

    .line 1101
    .line 1102
    const/4 v6, 0x0

    .line 1103
    const/4 v8, 0x0

    .line 1104
    move/from16 v4, v16

    .line 1105
    .line 1106
    move-object/from16 v5, v17

    .line 1107
    .line 1108
    move-object/from16 v9, v18

    .line 1109
    .line 1110
    move-object/from16 v7, v19

    .line 1111
    .line 1112
    invoke-static/range {v4 .. v13}, Lkotlin/text/RegexKt;->PullToRefreshBox(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 1113
    .line 1114
    .line 1115
    return-object v28

    .line 1116
    :cond_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1117
    .line 1118
    .line 1119
    return-object v28
.end method
