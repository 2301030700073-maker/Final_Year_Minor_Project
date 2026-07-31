.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f$1:Lorg/wikipedia/activitytab/ActivityTabModules;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Lorg/wikipedia/util/UiState;

.field public final synthetic f$12:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic f$13:Z

.field public final synthetic f$14:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final synthetic f$2:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/wikipedia/util/UiState;

.field public final synthetic f$5:Lorg/wikipedia/activitytab/ActivityTabFragment;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lorg/wikipedia/util/UiState;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lorg/wikipedia/util/UiState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Lorg/wikipedia/activitytab/ActivityTabModules;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Lorg/wikipedia/util/UiState;Lorg/wikipedia/activitytab/ActivityTabFragment;Ljava/lang/String;Lorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;Landroidx/paging/compose/LazyPagingItems;ZLandroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$0:Landroidx/compose/foundation/lazy/LazyListState;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$1:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$4:Lorg/wikipedia/util/UiState;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$5:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$7:Lorg/wikipedia/util/UiState;

    .line 19
    .line 20
    iput-boolean p9, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$8:Z

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$9:Lorg/wikipedia/util/UiState;

    .line 23
    .line 24
    iput-boolean p11, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$10:Z

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$11:Lorg/wikipedia/util/UiState;

    .line 27
    .line 28
    iput-object p13, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$12:Landroidx/paging/compose/LazyPagingItems;

    .line 29
    .line 30
    iput-boolean p14, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$13:Z

    .line 31
    .line 32
    iput-object p15, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$14:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x6

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    move v4, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v4, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v4

    .line 37
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 38
    .line 39
    const/16 v6, 0x12

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x1

    .line 43
    if-eq v4, v6, :cond_2

    .line 44
    .line 45
    move v4, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v4, v7

    .line 48
    :goto_1
    and-int/lit8 v6, v3, 0x1

    .line 49
    .line 50
    invoke-virtual {v2, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_6

    .line 55
    .line 56
    iget-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$1:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v9, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    .line 63
    .line 64
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    or-int/2addr v6, v10

    .line 69
    move v10, v6

    .line 70
    iget-object v6, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$3:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    or-int/2addr v10, v11

    .line 77
    move v11, v7

    .line 78
    iget-object v7, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$4:Lorg/wikipedia/util/UiState;

    .line 79
    .line 80
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    or-int/2addr v10, v12

    .line 85
    move v12, v8

    .line 86
    iget-object v8, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$5:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 87
    .line 88
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    or-int/2addr v10, v13

    .line 93
    iget-object v14, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$6:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    or-int/2addr v10, v13

    .line 100
    move-object v13, v9

    .line 101
    iget-object v9, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$7:Lorg/wikipedia/util/UiState;

    .line 102
    .line 103
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    or-int/2addr v10, v15

    .line 108
    move v15, v10

    .line 109
    iget-boolean v10, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$8:Z

    .line 110
    .line 111
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    or-int v15, v15, v16

    .line 116
    .line 117
    move/from16 v16, v11

    .line 118
    .line 119
    iget-object v11, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$9:Lorg/wikipedia/util/UiState;

    .line 120
    .line 121
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v17

    .line 125
    or-int v15, v15, v17

    .line 126
    .line 127
    move/from16 v17, v12

    .line 128
    .line 129
    iget-boolean v12, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$10:Z

    .line 130
    .line 131
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 132
    .line 133
    .line 134
    move-result v18

    .line 135
    or-int v15, v15, v18

    .line 136
    .line 137
    move-object/from16 v18, v13

    .line 138
    .line 139
    iget-object v13, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$11:Lorg/wikipedia/util/UiState;

    .line 140
    .line 141
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v19

    .line 145
    or-int v15, v15, v19

    .line 146
    .line 147
    move/from16 v19, v3

    .line 148
    .line 149
    iget-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$12:Landroidx/paging/compose/LazyPagingItems;

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v20

    .line 155
    or-int v15, v15, v20

    .line 156
    .line 157
    move-object/from16 v20, v4

    .line 158
    .line 159
    iget-boolean v4, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$13:Z

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 162
    .line 163
    .line 164
    move-result v21

    .line 165
    or-int v15, v15, v21

    .line 166
    .line 167
    move-object/from16 p1, v1

    .line 168
    .line 169
    and-int/lit8 v1, v19, 0xe

    .line 170
    .line 171
    if-ne v1, v5, :cond_3

    .line 172
    .line 173
    move/from16 v16, v17

    .line 174
    .line 175
    :cond_3
    or-int v1, v15, v16

    .line 176
    .line 177
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    if-nez v1, :cond_5

    .line 182
    .line 183
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 184
    .line 185
    if-ne v5, v1, :cond_4

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    move-object v0, v2

    .line 189
    goto :goto_3

    .line 190
    :cond_5
    :goto_2
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;

    .line 191
    .line 192
    iget-object v15, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$14:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 193
    .line 194
    move-object/from16 v16, p1

    .line 195
    .line 196
    move-object v0, v2

    .line 197
    move-object/from16 v5, v18

    .line 198
    .line 199
    move-object/from16 v2, v20

    .line 200
    .line 201
    invoke-direct/range {v1 .. v16}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;-><init>(Lorg/wikipedia/activitytab/ActivityTabModules;Landroidx/paging/compose/LazyPagingItems;ZLandroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Lorg/wikipedia/util/UiState;Lorg/wikipedia/activitytab/ActivityTabFragment;Lorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;Ljava/lang/String;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Landroidx/compose/foundation/layout/BoxScope;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    move-object v5, v1

    .line 208
    :goto_3
    move-object v10, v5

    .line 209
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 210
    .line 211
    const/4 v12, 0x0

    .line 212
    const/16 v13, 0x1fd

    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    move-object/from16 v1, p0

    .line 216
    .line 217
    iget-object v3, v1, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda29;->f$0:Landroidx/compose/foundation/lazy/LazyListState;

    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    const/4 v5, 0x0

    .line 221
    const/4 v6, 0x0

    .line 222
    const/4 v7, 0x0

    .line 223
    const/4 v8, 0x0

    .line 224
    const/4 v9, 0x0

    .line 225
    move-object v11, v0

    .line 226
    invoke-static/range {v2 .. v13}, Lkotlin/ExceptionsKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    move-object v0, v2

    .line 231
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 232
    .line 233
    .line 234
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 235
    .line 236
    return-object v0
.end method
