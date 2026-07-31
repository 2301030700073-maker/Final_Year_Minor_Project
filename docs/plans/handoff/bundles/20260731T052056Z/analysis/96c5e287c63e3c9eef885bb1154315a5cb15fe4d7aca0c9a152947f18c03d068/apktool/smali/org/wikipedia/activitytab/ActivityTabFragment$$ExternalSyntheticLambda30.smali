.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/activitytab/ActivityTabModules;

.field public final synthetic f$1:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Lorg/wikipedia/util/UiState;

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$13:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final synthetic f$14:Landroidx/compose/foundation/layout/BoxScope;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lorg/wikipedia/util/UiState;

.field public final synthetic f$6:Lorg/wikipedia/activitytab/ActivityTabFragment;

.field public final synthetic f$7:Lorg/wikipedia/util/UiState;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lorg/wikipedia/util/UiState;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabModules;Landroidx/paging/compose/LazyPagingItems;ZLandroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Lorg/wikipedia/util/UiState;Lorg/wikipedia/activitytab/ActivityTabFragment;Lorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;Ljava/lang/String;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Landroidx/compose/foundation/layout/BoxScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$0:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$1:Landroidx/paging/compose/LazyPagingItems;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$3:Landroidx/compose/foundation/layout/PaddingValues;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$5:Lorg/wikipedia/util/UiState;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$6:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$7:Lorg/wikipedia/util/UiState;

    .line 19
    .line 20
    iput-boolean p9, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$8:Z

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$9:Lorg/wikipedia/util/UiState;

    .line 23
    .line 24
    iput-boolean p11, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$10:Z

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$11:Lorg/wikipedia/util/UiState;

    .line 27
    .line 28
    iput-object p13, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$12:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p14, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$13:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 31
    .line 32
    iput-object p15, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$14:Landroidx/compose/foundation/layout/BoxScope;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v2, Lorg/wikipedia/activitytab/ModuleType;->TIME_SPENT:Lorg/wikipedia/activitytab/ModuleType;

    .line 11
    .line 12
    iget-object v5, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$0:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 13
    .line 14
    const/4 v15, 0x0

    .line 15
    const/4 v9, 0x6

    .line 16
    invoke-static {v5, v2, v15, v15, v9}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible$default(Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/activitytab/ModuleType;ZZI)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v10, 0x3

    .line 21
    const/4 v11, 0x0

    .line 22
    iget-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$3:Landroidx/compose/foundation/layout/PaddingValues;

    .line 23
    .line 24
    iget-object v8, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$4:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v7, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$6:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 27
    .line 28
    const/4 v12, 0x1

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    sget-object v2, Lorg/wikipedia/activitytab/ModuleType;->READING_INSIGHTS:Lorg/wikipedia/activitytab/ModuleType;

    .line 32
    .line 33
    invoke-static {v5, v2, v15, v15, v9}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible$default(Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/activitytab/ModuleType;ZZI)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v6, v5

    .line 41
    move-object v5, v8

    .line 42
    move-object v8, v7

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;

    .line 45
    .line 46
    move-object v6, v5

    .line 47
    move-object v5, v8

    .line 48
    move-object v8, v7

    .line 49
    iget-object v7, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$5:Lorg/wikipedia/util/UiState;

    .line 50
    .line 51
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/util/UiState;Lorg/wikipedia/activitytab/ActivityTabFragment;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 55
    .line 56
    const v7, 0x5b209f29

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3, v12, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v11, v2, v10}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    new-instance v3, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda32;

    .line 66
    .line 67
    move-object v7, v8

    .line 68
    move-object v8, v5

    .line 69
    move-object v5, v6

    .line 70
    iget-object v6, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$7:Lorg/wikipedia/util/UiState;

    .line 71
    .line 72
    move v2, v9

    .line 73
    iget-boolean v9, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$8:Z

    .line 74
    .line 75
    move v13, v10

    .line 76
    iget-object v10, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$9:Lorg/wikipedia/util/UiState;

    .line 77
    .line 78
    move-object v14, v11

    .line 79
    iget-boolean v11, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$10:Z

    .line 80
    .line 81
    move/from16 v16, v12

    .line 82
    .line 83
    iget-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$11:Lorg/wikipedia/util/UiState;

    .line 84
    .line 85
    move/from16 v17, v13

    .line 86
    .line 87
    iget-object v13, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$12:Ljava/lang/String;

    .line 88
    .line 89
    move-object/from16 v18, v14

    .line 90
    .line 91
    iget-object v14, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$13:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 92
    .line 93
    move/from16 v2, v16

    .line 94
    .line 95
    move/from16 v15, v17

    .line 96
    .line 97
    invoke-direct/range {v3 .. v14}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/util/UiState;Lorg/wikipedia/activitytab/ActivityTabFragment;Ljava/lang/String;ZLorg/wikipedia/util/UiState;ZLorg/wikipedia/util/UiState;Ljava/lang/String;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V

    .line 98
    .line 99
    .line 100
    move-object v6, v5

    .line 101
    move-object v8, v7

    .line 102
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 103
    .line 104
    const v5, 0x32ef4064

    .line 105
    .line 106
    .line 107
    invoke-direct {v4, v3, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 108
    .line 109
    .line 110
    const/4 v14, 0x0

    .line 111
    invoke-static {v1, v14, v4, v15}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 112
    .line 113
    .line 114
    sget-object v3, Lorg/wikipedia/activitytab/ModuleType;->TIMELINE:Lorg/wikipedia/activitytab/ModuleType;

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x6

    .line 118
    invoke-static {v6, v3, v4, v4, v5}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible$default(Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/activitytab/ModuleType;ZZI)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    iget-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$1:Landroidx/paging/compose/LazyPagingItems;

    .line 127
    .line 128
    iget-object v5, v3, Landroidx/paging/compose/LazyPagingItems;->loadState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 129
    .line 130
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Landroidx/paging/CombinedLoadStates;

    .line 135
    .line 136
    iget-object v5, v5, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 137
    .line 138
    instance-of v5, v5, Landroidx/paging/LoadState$Loading;

    .line 139
    .line 140
    invoke-virtual {v3}, Landroidx/paging/compose/LazyPagingItems;->getItemCount()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-nez v6, :cond_2

    .line 145
    .line 146
    move v12, v2

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    const/4 v12, 0x0

    .line 149
    :goto_2
    iget-boolean v6, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$2:Z

    .line 150
    .line 151
    if-eqz v5, :cond_3

    .line 152
    .line 153
    if-nez v6, :cond_3

    .line 154
    .line 155
    sget-object v0, Lorg/wikipedia/activitytab/ImpactModuleKt;->lambda$-1207335334:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 156
    .line 157
    invoke-static {v1, v14, v0, v15}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 158
    .line 159
    .line 160
    return-object v4

    .line 161
    :cond_3
    if-eqz v12, :cond_4

    .line 162
    .line 163
    if-eqz v6, :cond_4

    .line 164
    .line 165
    sget-object v0, Lorg/wikipedia/activitytab/ImpactModuleKt;->lambda$-600581679:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 166
    .line 167
    invoke-static {v1, v14, v0, v15}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 168
    .line 169
    .line 170
    return-object v4

    .line 171
    :cond_4
    if-eqz v12, :cond_5

    .line 172
    .line 173
    new-instance v3, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;

    .line 174
    .line 175
    const/16 v5, 0x9

    .line 176
    .line 177
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda30;->f$14:Landroidx/compose/foundation/layout/BoxScope;

    .line 178
    .line 179
    invoke-direct {v3, v5, v0}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;-><init>(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 183
    .line 184
    const v5, -0x140f82ae

    .line 185
    .line 186
    .line 187
    invoke-direct {v0, v3, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v14, v0, v15}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 191
    .line 192
    .line 193
    return-object v4

    .line 194
    :cond_5
    invoke-virtual {v3}, Landroidx/paging/compose/LazyPagingItems;->getItemCount()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    new-instance v5, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;

    .line 199
    .line 200
    const/4 v6, 0x0

    .line 201
    invoke-direct {v5, v6, v3, v8}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 205
    .line 206
    const v7, -0x4d397817

    .line 207
    .line 208
    .line 209
    invoke-direct {v6, v5, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 210
    .line 211
    .line 212
    invoke-static {v1, v0, v6}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, v3, Landroidx/paging/compose/LazyPagingItems;->loadState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroidx/paging/CombinedLoadStates;

    .line 222
    .line 223
    iget-object v0, v0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 224
    .line 225
    instance-of v0, v0, Landroidx/paging/LoadState$Loading;

    .line 226
    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    sget-object v0, Lorg/wikipedia/activitytab/ImpactModuleKt;->lambda$-461486953:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 230
    .line 231
    invoke-static {v1, v14, v0, v15}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 232
    .line 233
    .line 234
    :cond_6
    return-object v4
.end method
