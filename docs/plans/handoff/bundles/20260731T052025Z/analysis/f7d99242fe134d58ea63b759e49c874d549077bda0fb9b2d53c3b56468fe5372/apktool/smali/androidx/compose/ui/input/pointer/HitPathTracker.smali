.class public final Landroidx/compose/ui/input/pointer/HitPathTracker;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public clearNodeCacheAfterDispatchedEvent:Z

.field public dispatchCancelAfterDispatchedEvent:Z

.field public dispatchingEvent:Z

.field public final hitPointerIdsAndNodesForPruningNonMatches:Landroidx/collection/MutableLongObjectMap;

.field public final nodesToRemove:Landroidx/collection/MutableObjectList;

.field public removeSpecificNodesAfterDispatchedEvent:Z

.field public final root:Landroidx/compose/ui/input/pointer/NodeParent;

.field public final rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 5
    .line 6
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->nodesToRemove:Landroidx/collection/MutableObjectList;

    .line 12
    .line 13
    new-instance p1, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 19
    .line 20
    new-instance p1, Landroidx/collection/MutableLongObjectMap;

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    invoke-direct {p1, v0}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodesForPruningNonMatches:Landroidx/collection/MutableLongObjectMap;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final addHitPath-QJqDSyo(JLjava/util/List;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    move-object v9, v4

    .line 13
    move v8, v5

    .line 14
    const/4 v7, 0x0

    .line 15
    :goto_0
    const/4 v10, 0x2

    .line 16
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodesForPruningNonMatches:Landroidx/collection/MutableLongObjectMap;

    .line 17
    .line 18
    if-ge v7, v3, :cond_9

    .line 19
    .line 20
    move-object/from16 v12, p3

    .line 21
    .line 22
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v13

    .line 26
    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    iget-boolean v14, v13, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 29
    .line 30
    if-eqz v14, :cond_8

    .line 31
    .line 32
    new-instance v14, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 33
    .line 34
    invoke-direct {v14, v10, v0, v13}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v14, v13, Landroidx/compose/ui/Modifier$Node;->detachedListener:Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 38
    .line 39
    if-eqz v8, :cond_5

    .line 40
    .line 41
    iget-object v10, v9, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 42
    .line 43
    iget-object v14, v10, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 44
    .line 45
    iget v10, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    :goto_1
    if-ge v15, v10, :cond_1

    .line 49
    .line 50
    aget-object v16, v14, v15

    .line 51
    .line 52
    move-object/from16 v6, v16

    .line 53
    .line 54
    check-cast v6, Landroidx/compose/ui/input/pointer/Node;

    .line 55
    .line 56
    iget-object v6, v6, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 57
    .line 58
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/16 v16, 0x0

    .line 69
    .line 70
    :goto_2
    move-object/from16 v6, v16

    .line 71
    .line 72
    check-cast v6, Landroidx/compose/ui/input/pointer/Node;

    .line 73
    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    iput-boolean v5, v6, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 77
    .line 78
    iget-object v9, v6, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 79
    .line 80
    invoke-virtual {v9, v1, v2}, Lokio/PriorityQueue;->add(J)V

    .line 81
    .line 82
    .line 83
    if-eqz p4, :cond_3

    .line 84
    .line 85
    invoke-virtual {v11, v1, v2}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    if-nez v9, :cond_2

    .line 90
    .line 91
    new-instance v9, Landroidx/collection/MutableObjectList;

    .line 92
    .line 93
    invoke-direct {v9}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11, v1, v2, v9}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    check-cast v9, Landroidx/collection/MutableObjectList;

    .line 100
    .line 101
    invoke-virtual {v9, v6}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_3
    move-object v9, v6

    .line 105
    goto :goto_4

    .line 106
    :cond_4
    const/4 v8, 0x0

    .line 107
    :cond_5
    new-instance v6, Landroidx/compose/ui/input/pointer/Node;

    .line 108
    .line 109
    invoke-direct {v6, v13}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/Modifier$Node;)V

    .line 110
    .line 111
    .line 112
    iget-object v10, v6, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 113
    .line 114
    invoke-virtual {v10, v1, v2}, Lokio/PriorityQueue;->add(J)V

    .line 115
    .line 116
    .line 117
    if-eqz p4, :cond_7

    .line 118
    .line 119
    invoke-virtual {v11, v1, v2}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    if-nez v10, :cond_6

    .line 124
    .line 125
    new-instance v10, Landroidx/collection/MutableObjectList;

    .line 126
    .line 127
    invoke-direct {v10}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v1, v2, v10}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    check-cast v10, Landroidx/collection/MutableObjectList;

    .line 134
    .line 135
    invoke-virtual {v10, v6}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    iget-object v9, v9, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 139
    .line 140
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_9
    if-eqz p4, :cond_e

    .line 149
    .line 150
    iget-object v0, v11, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 151
    .line 152
    iget-object v1, v11, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v2, v11, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 155
    .line 156
    array-length v3, v2

    .line 157
    sub-int/2addr v3, v10

    .line 158
    if-ltz v3, :cond_e

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    :goto_5
    aget-wide v6, v2, v5

    .line 162
    .line 163
    not-long v8, v6

    .line 164
    const/4 v10, 0x7

    .line 165
    shl-long/2addr v8, v10

    .line 166
    and-long/2addr v8, v6

    .line 167
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    and-long/2addr v8, v12

    .line 173
    cmp-long v8, v8, v12

    .line 174
    .line 175
    if-eqz v8, :cond_d

    .line 176
    .line 177
    sub-int v8, v5, v3

    .line 178
    .line 179
    not-int v8, v8

    .line 180
    ushr-int/lit8 v8, v8, 0x1f

    .line 181
    .line 182
    const/16 v9, 0x8

    .line 183
    .line 184
    rsub-int/lit8 v8, v8, 0x8

    .line 185
    .line 186
    const/4 v10, 0x0

    .line 187
    :goto_6
    if-ge v10, v8, :cond_c

    .line 188
    .line 189
    const-wide/16 v12, 0xff

    .line 190
    .line 191
    and-long/2addr v12, v6

    .line 192
    const-wide/16 v14, 0x80

    .line 193
    .line 194
    cmp-long v12, v12, v14

    .line 195
    .line 196
    if-gez v12, :cond_a

    .line 197
    .line 198
    shl-int/lit8 v12, v5, 0x3

    .line 199
    .line 200
    add-int/2addr v12, v10

    .line 201
    aget-wide v13, v0, v12

    .line 202
    .line 203
    aget-object v12, v1, v12

    .line 204
    .line 205
    check-cast v12, Landroidx/collection/MutableObjectList;

    .line 206
    .line 207
    iget-object v15, v4, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 208
    .line 209
    move/from16 p0, v9

    .line 210
    .line 211
    iget-object v9, v15, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 212
    .line 213
    iget v15, v15, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 214
    .line 215
    move-object/from16 v16, v0

    .line 216
    .line 217
    const/4 v0, 0x0

    .line 218
    :goto_7
    if-ge v0, v15, :cond_b

    .line 219
    .line 220
    aget-object v17, v9, v0

    .line 221
    .line 222
    move/from16 p1, v0

    .line 223
    .line 224
    move-object/from16 v0, v17

    .line 225
    .line 226
    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    .line 227
    .line 228
    invoke-virtual {v0, v13, v14, v12}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    .line 229
    .line 230
    .line 231
    add-int/lit8 v0, p1, 0x1

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_a
    move-object/from16 v16, v0

    .line 235
    .line 236
    move/from16 p0, v9

    .line 237
    .line 238
    :cond_b
    shr-long v6, v6, p0

    .line 239
    .line 240
    add-int/lit8 v10, v10, 0x1

    .line 241
    .line 242
    move/from16 v9, p0

    .line 243
    .line 244
    move-object/from16 v0, v16

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_c
    move-object/from16 v16, v0

    .line 248
    .line 249
    move v0, v9

    .line 250
    if-ne v8, v0, :cond_e

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_d
    move-object/from16 v16, v0

    .line 254
    .line 255
    :goto_8
    if-eq v5, v3, :cond_e

    .line 256
    .line 257
    add-int/lit8 v5, v5, 0x1

    .line 258
    .line 259
    move-object/from16 v0, v16

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_e
    invoke-virtual {v11}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 263
    .line 264
    .line 265
    return-void
.end method

.method public final dispatchChanges(Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, v2, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchingEvent:Z

    .line 21
    .line 22
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v5, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 25
    .line 26
    move v6, v3

    .line 27
    move v7, v6

    .line 28
    :goto_0
    if-ge v6, v5, :cond_3

    .line 29
    .line 30
    aget-object v8, v4, v6

    .line 31
    .line 32
    check-cast v8, Landroidx/compose/ui/input/pointer/Node;

    .line 33
    .line 34
    invoke-virtual {v8, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-nez v8, :cond_2

    .line 39
    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v7, v3

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    move v7, v0

    .line 46
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p2, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 50
    .line 51
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 52
    .line 53
    move v4, v3

    .line 54
    move v5, v4

    .line 55
    :goto_3
    if-ge v4, v1, :cond_6

    .line 56
    .line 57
    aget-object v6, p2, v4

    .line 58
    .line 59
    check-cast v6, Landroidx/compose/ui/input/pointer/Node;

    .line 60
    .line 61
    invoke-virtual {v6, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Lcom/fsck/k9/mailstore/LocalFolder$12;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_5

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move v5, v3

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    :goto_4
    move v5, v0

    .line 73
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    invoke-virtual {v2, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 77
    .line 78
    .line 79
    if-nez v5, :cond_8

    .line 80
    .line 81
    if-eqz v7, :cond_7

    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_7
    move v0, v3

    .line 85
    :cond_8
    :goto_6
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchingEvent:Z

    .line 86
    .line 87
    iget-boolean p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->removeSpecificNodesAfterDispatchedEvent:Z

    .line 88
    .line 89
    if-eqz p1, :cond_a

    .line 90
    .line 91
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->removeSpecificNodesAfterDispatchedEvent:Z

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->nodesToRemove:Landroidx/collection/MutableObjectList;

    .line 94
    .line 95
    iget p2, p1, Landroidx/collection/MutableObjectList;->_size:I

    .line 96
    .line 97
    move v1, v3

    .line 98
    :goto_7
    if-ge v1, p2, :cond_9

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 105
    .line 106
    invoke-virtual {p0, v4}, Landroidx/compose/ui/input/pointer/HitPathTracker;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_9
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->clear()V

    .line 113
    .line 114
    .line 115
    :cond_a
    iget-boolean p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchCancelAfterDispatchedEvent:Z

    .line 116
    .line 117
    if-eqz p1, :cond_b

    .line 118
    .line 119
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchCancelAfterDispatchedEvent:Z

    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->processCancel()V

    .line 122
    .line 123
    .line 124
    :cond_b
    iget-boolean p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->clearNodeCacheAfterDispatchedEvent:Z

    .line 125
    .line 126
    if-eqz p1, :cond_c

    .line 127
    .line 128
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->clearNodeCacheAfterDispatchedEvent:Z

    .line 129
    .line 130
    iget-object p0, v2, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 133
    .line 134
    .line 135
    :cond_c
    return v0
.end method

.method public final processCancel()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchingEvent:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchCancelAfterDispatchedEvent:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 14
    .line 15
    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    aget-object v5, v3, v4

    .line 21
    .line 22
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 23
    .line 24
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->clearNodeCacheAfterDispatchedEvent:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->clearNodeCacheAfterDispatchedEvent:Z

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object p0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchingEvent:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->removeSpecificNodesAfterDispatchedEvent:Z

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->nodesToRemove:Landroidx/collection/MutableObjectList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->removeMatchingPointerInputModifierNodeList:Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    iget p0, v0, Landroidx/collection/MutableObjectList;->_size:I

    .line 31
    .line 32
    sub-int/2addr p0, v1

    .line 33
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 41
    .line 42
    iget v4, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 43
    .line 44
    if-ge v2, v4, :cond_1

    .line 45
    .line 46
    iget-object v3, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 47
    .line 48
    aget-object v3, v3, v2

    .line 49
    .line 50
    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    .line 51
    .line 52
    iget-object v4, v3, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 53
    .line 54
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-void
.end method
