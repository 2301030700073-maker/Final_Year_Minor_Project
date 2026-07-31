.class public final Lorg/wikipedia/page/PageViewModel;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public curEntry:Ljava/lang/Object;

.field public forceNetwork:Z

.field public hasWatchlistExpiry:Z

.field public isReadMoreLoaded:Z

.field public isWatched:Z

.field public page:Ljava/lang/Object;

.field public readingListPage:Ljava/lang/Object;

.field public title:Ljava/lang/Object;


# virtual methods
.method public addHitPath-QJqDSyo(JLjava/util/List;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, Landroidx/collection/MutableLongObjectMap;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 12
    .line 13
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    move-object v10, v4

    .line 19
    move v9, v6

    .line 20
    const/4 v8, 0x0

    .line 21
    :goto_0
    if-ge v8, v5, :cond_9

    .line 22
    .line 23
    move-object/from16 v11, p3

    .line 24
    .line 25
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .line 30
    .line 31
    iget-boolean v13, v12, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 32
    .line 33
    if-eqz v13, :cond_8

    .line 34
    .line 35
    new-instance v13, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 36
    .line 37
    const/4 v14, 0x3

    .line 38
    invoke-direct {v13, v14, v0, v12}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v13, v12, Landroidx/compose/ui/Modifier$Node;->detachedListener:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 42
    .line 43
    if-eqz v9, :cond_5

    .line 44
    .line 45
    iget-object v13, v10, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 46
    .line 47
    iget-object v14, v13, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 48
    .line 49
    iget v13, v13, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 50
    .line 51
    const/4 v15, 0x0

    .line 52
    :goto_1
    if-ge v15, v13, :cond_1

    .line 53
    .line 54
    aget-object v16, v14, v15

    .line 55
    .line 56
    move-object/from16 v7, v16

    .line 57
    .line 58
    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    .line 59
    .line 60
    iget-object v7, v7, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 61
    .line 62
    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_0

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/16 v16, 0x0

    .line 73
    .line 74
    :goto_2
    move-object/from16 v7, v16

    .line 75
    .line 76
    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    .line 77
    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    iput-boolean v6, v7, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 81
    .line 82
    iget-object v10, v7, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 83
    .line 84
    invoke-virtual {v10, v1, v2}, Lokio/PriorityQueue;->add(J)V

    .line 85
    .line 86
    .line 87
    if-eqz p4, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3, v1, v2}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    if-nez v10, :cond_2

    .line 94
    .line 95
    new-instance v10, Landroidx/collection/MutableObjectList;

    .line 96
    .line 97
    invoke-direct {v10}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1, v2, v10}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    check-cast v10, Landroidx/collection/MutableObjectList;

    .line 104
    .line 105
    invoke-virtual {v10, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_3
    move-object v10, v7

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    const/4 v9, 0x0

    .line 111
    :cond_5
    new-instance v7, Landroidx/compose/ui/input/pointer/Node;

    .line 112
    .line 113
    invoke-direct {v7, v12}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/Modifier$Node;)V

    .line 114
    .line 115
    .line 116
    iget-object v12, v7, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 117
    .line 118
    invoke-virtual {v12, v1, v2}, Lokio/PriorityQueue;->add(J)V

    .line 119
    .line 120
    .line 121
    if-eqz p4, :cond_7

    .line 122
    .line 123
    invoke-virtual {v3, v1, v2}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    if-nez v12, :cond_6

    .line 128
    .line 129
    new-instance v12, Landroidx/collection/MutableObjectList;

    .line 130
    .line 131
    invoke-direct {v12}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v1, v2, v12}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    check-cast v12, Landroidx/collection/MutableObjectList;

    .line 138
    .line 139
    invoke-virtual {v12, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    iget-object v10, v10, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 143
    .line 144
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_9
    if-eqz p4, :cond_e

    .line 153
    .line 154
    iget-object v0, v3, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 155
    .line 156
    iget-object v1, v3, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 157
    .line 158
    iget-object v2, v3, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 159
    .line 160
    array-length v5, v2

    .line 161
    add-int/lit8 v5, v5, -0x2

    .line 162
    .line 163
    if-ltz v5, :cond_e

    .line 164
    .line 165
    const/4 v6, 0x0

    .line 166
    :goto_5
    aget-wide v7, v2, v6

    .line 167
    .line 168
    not-long v9, v7

    .line 169
    const/4 v11, 0x7

    .line 170
    shl-long/2addr v9, v11

    .line 171
    and-long/2addr v9, v7

    .line 172
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    and-long/2addr v9, v11

    .line 178
    cmp-long v9, v9, v11

    .line 179
    .line 180
    if-eqz v9, :cond_d

    .line 181
    .line 182
    sub-int v9, v6, v5

    .line 183
    .line 184
    not-int v9, v9

    .line 185
    ushr-int/lit8 v9, v9, 0x1f

    .line 186
    .line 187
    const/16 v10, 0x8

    .line 188
    .line 189
    rsub-int/lit8 v9, v9, 0x8

    .line 190
    .line 191
    const/4 v11, 0x0

    .line 192
    :goto_6
    if-ge v11, v9, :cond_c

    .line 193
    .line 194
    const-wide/16 v12, 0xff

    .line 195
    .line 196
    and-long/2addr v12, v7

    .line 197
    const-wide/16 v14, 0x80

    .line 198
    .line 199
    cmp-long v12, v12, v14

    .line 200
    .line 201
    if-gez v12, :cond_a

    .line 202
    .line 203
    shl-int/lit8 v12, v6, 0x3

    .line 204
    .line 205
    add-int/2addr v12, v11

    .line 206
    aget-wide v13, v0, v12

    .line 207
    .line 208
    aget-object v12, v1, v12

    .line 209
    .line 210
    check-cast v12, Landroidx/collection/MutableObjectList;

    .line 211
    .line 212
    iget-object v15, v4, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 213
    .line 214
    move/from16 p0, v10

    .line 215
    .line 216
    iget-object v10, v15, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 217
    .line 218
    iget v15, v15, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 219
    .line 220
    move-object/from16 v16, v0

    .line 221
    .line 222
    const/4 v0, 0x0

    .line 223
    :goto_7
    if-ge v0, v15, :cond_b

    .line 224
    .line 225
    aget-object v17, v10, v0

    .line 226
    .line 227
    move/from16 p1, v0

    .line 228
    .line 229
    move-object/from16 v0, v17

    .line 230
    .line 231
    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    .line 232
    .line 233
    invoke-virtual {v0, v13, v14, v12}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    .line 234
    .line 235
    .line 236
    add-int/lit8 v0, p1, 0x1

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_a
    move-object/from16 v16, v0

    .line 240
    .line 241
    move/from16 p0, v10

    .line 242
    .line 243
    :cond_b
    shr-long v7, v7, p0

    .line 244
    .line 245
    add-int/lit8 v11, v11, 0x1

    .line 246
    .line 247
    move/from16 v10, p0

    .line 248
    .line 249
    move-object/from16 v0, v16

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_c
    move-object/from16 v16, v0

    .line 253
    .line 254
    move v0, v10

    .line 255
    if-ne v9, v0, :cond_e

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_d
    move-object/from16 v16, v0

    .line 259
    .line 260
    :goto_8
    if-eq v6, v5, :cond_e

    .line 261
    .line 262
    add-int/lit8 v6, v6, 0x1

    .line 263
    .line 264
    move-object/from16 v0, v16

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_e
    invoke-virtual {v3}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method public dispatchChanges(Lcom/caverock/androidsvg/CSSParser;Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/collection/MutableObjectList;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    iget-object v3, p1, Lcom/caverock/androidsvg/CSSParser;->deviceMediaType:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Landroidx/collection/LongSparseArray;

    .line 14
    .line 15
    iget-object v4, p0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 18
    .line 19
    invoke-virtual {v1, v3, v4, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/caverock/androidsvg/CSSParser;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return v4

    .line 27
    :cond_0
    const/4 v3, 0x1

    .line 28
    iput-boolean v3, p0, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 29
    .line 30
    iget-object v5, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 31
    .line 32
    iget v6, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 33
    .line 34
    move v7, v4

    .line 35
    move v8, v7

    .line 36
    :goto_0
    if-ge v7, v6, :cond_3

    .line 37
    .line 38
    aget-object v9, v5, v7

    .line 39
    .line 40
    check-cast v9, Landroidx/compose/ui/input/pointer/Node;

    .line 41
    .line 42
    invoke-virtual {v9, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Lcom/caverock/androidsvg/CSSParser;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-nez v9, :cond_2

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v8, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    move v8, v3

    .line 54
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object p2, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 58
    .line 59
    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 60
    .line 61
    move v5, v4

    .line 62
    move v6, v5

    .line 63
    :goto_3
    if-ge v5, v2, :cond_6

    .line 64
    .line 65
    aget-object v7, p2, v5

    .line 66
    .line 67
    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    .line 68
    .line 69
    invoke-virtual {v7, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Lcom/caverock/androidsvg/CSSParser;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_5

    .line 74
    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move v6, v4

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    :goto_4
    move v6, v3

    .line 81
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    invoke-virtual {v1, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Lcom/caverock/androidsvg/CSSParser;)V

    .line 85
    .line 86
    .line 87
    if-nez v6, :cond_8

    .line 88
    .line 89
    if-eqz v8, :cond_7

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_7
    move v3, v4

    .line 93
    :cond_8
    :goto_6
    iput-boolean v4, p0, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 94
    .line 95
    iget-boolean p1, p0, Lorg/wikipedia/page/PageViewModel;->isReadMoreLoaded:Z

    .line 96
    .line 97
    if-eqz p1, :cond_a

    .line 98
    .line 99
    iput-boolean v4, p0, Lorg/wikipedia/page/PageViewModel;->isReadMoreLoaded:Z

    .line 100
    .line 101
    iget p1, v0, Landroidx/collection/MutableObjectList;->_size:I

    .line 102
    .line 103
    move p2, v4

    .line 104
    :goto_7
    if-ge p2, p1, :cond_9

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Lorg/wikipedia/page/PageViewModel;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 p2, p2, 0x1

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_9
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->clear()V

    .line 119
    .line 120
    .line 121
    :cond_a
    iget-boolean p1, p0, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 122
    .line 123
    if-eqz p1, :cond_b

    .line 124
    .line 125
    iput-boolean v4, p0, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/wikipedia/page/PageViewModel;->processCancel()V

    .line 128
    .line 129
    .line 130
    :cond_b
    iget-boolean p1, p0, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    .line 131
    .line 132
    if-eqz p1, :cond_c

    .line 133
    .line 134
    iput-boolean v4, p0, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    .line 135
    .line 136
    iget-object p0, v1, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 139
    .line 140
    .line 141
    :cond_c
    return v3
.end method

.method public getShouldLoadAsMobileWeb()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lorg/wikipedia/page/Namespace;->SPECIAL:Lorg/wikipedia/page/Namespace;

    .line 12
    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lorg/wikipedia/page/Page;

    .line 25
    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 29
    .line 30
    iget-object v0, v0, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 31
    .line 32
    sget-object v1, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    sget-object v1, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    sget-object v1, Lorg/wikipedia/page/Namespace;->PROJECT:Lorg/wikipedia/page/Namespace;

    .line 41
    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    sget-object v1, Lorg/wikipedia/page/Namespace;->DRAFT:Lorg/wikipedia/page/Namespace;

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    :cond_1
    iget-boolean p0, p0, Lorg/wikipedia/page/Page;->isMainPage:Z

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :cond_3
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public processCancel()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean v2, p0, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 16
    .line 17
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v1, :cond_1

    .line 21
    .line 22
    aget-object v5, v3, v4

    .line 23
    .line 24
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean v1, p0, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iput-boolean v2, p0, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object p0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lorg/wikipedia/page/PageViewModel;->isReadMoreLoaded:Z

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->removeMatchingPointerInputModifierNodeList:Landroidx/collection/MutableObjectList;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->clear()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    iget p0, v0, Landroidx/collection/MutableObjectList;->_size:I

    .line 35
    .line 36
    sub-int/2addr p0, v1

    .line 37
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 45
    .line 46
    iget v4, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 47
    .line 48
    if-ge v2, v4, :cond_1

    .line 49
    .line 50
    iget-object v3, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v3, v3, v2

    .line 53
    .line 54
    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    .line 55
    .line 56
    iget-object v4, v3, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method
