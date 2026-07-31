.class public abstract Landroidx/compose/ui/semantics/SemanticsSortKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final UnmergedConfigComparator:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

.field public static final semanticComparators:[Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/util/Comparator;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    sget-object v3, Landroidx/compose/ui/semantics/LtrBoundsComparator;->INSTANCE$1:Landroidx/compose/ui/semantics/LtrBoundsComparator;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v3, Landroidx/compose/ui/semantics/LtrBoundsComparator;->INSTANCE:Landroidx/compose/ui/semantics/LtrBoundsComparator;

    .line 13
    .line 14
    :goto_1
    new-instance v4, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 15
    .line 16
    invoke-direct {v4, v3}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    invoke-direct {v3, v5, v4}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    aput-object v3, v1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput-object v1, Landroidx/compose/ui/semantics/SemanticsSortKt;->semanticComparators:[Ljava/util/Comparator;

    .line 31
    .line 32
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$20:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 33
    .line 34
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsSortKt;->UnmergedConfigComparator:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 35
    .line 36
    return-void
.end method

.method public static final geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/collection/MutableIntObjectMap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3, p0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p2, p0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    const/4 v1, 0x7

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget p1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p0, p2, p3, v0}, Landroidx/compose/ui/semantics/SemanticsSortKt;->subtreeSortedByGeometryGrouping(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Ljava/util/List;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p4, p1, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-static {v1, p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_0
    if-ge v1, v0, :cond_4

    .line 77
    .line 78
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 83
    .line 84
    invoke-static {v2, p1, p2, p3, p4}, Landroidx/compose/ui/semantics/SemanticsSortKt;->geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/collection/MutableIntObjectMap;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    return-void
.end method

.method public static final subtreeSortedByGeometryGrouping(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    sget-object v1, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    .line 4
    .line 5
    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    .line 6
    .line 7
    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    if-ge v5, v3, :cond_0

    .line 21
    .line 22
    move-object/from16 v6, p3

    .line 23
    .line 24
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 29
    .line 30
    move-object/from16 v8, p1

    .line 31
    .line 32
    invoke-static {v7, v2, v8, v0, v1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;Landroidx/collection/MutableIntObjectMap;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object/from16 v5, p0

    .line 39
    .line 40
    iget-object v3, v5, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    .line 44
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    if-ne v3, v5, :cond_1

    .line 48
    .line 49
    move v3, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v3, 0x0

    .line 52
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x2

    .line 59
    div-int/2addr v7, v8

    .line 60
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    sub-int/2addr v7, v6

    .line 68
    if-ltz v7, :cond_7

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    :goto_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 76
    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    iget v11, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 84
    .line 85
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    iget v12, v12, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 90
    .line 91
    cmpl-float v13, v11, v12

    .line 92
    .line 93
    if-ltz v13, :cond_2

    .line 94
    .line 95
    move v13, v6

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    const/4 v13, 0x0

    .line 98
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    sub-int/2addr v14, v6

    .line 103
    if-ltz v14, :cond_5

    .line 104
    .line 105
    const/4 v15, 0x0

    .line 106
    :goto_4
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    const/16 v17, 0x0

    .line 111
    .line 112
    move-object/from16 v4, v16

    .line 113
    .line 114
    check-cast v4, Lkotlin/Pair;

    .line 115
    .line 116
    iget-object v4, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    .line 119
    .line 120
    iget v8, v4, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 121
    .line 122
    iget v6, v4, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 123
    .line 124
    cmpl-float v16, v8, v6

    .line 125
    .line 126
    if-ltz v16, :cond_3

    .line 127
    .line 128
    const/16 v16, 0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_3
    move/from16 v16, v17

    .line 132
    .line 133
    :goto_5
    if-nez v13, :cond_4

    .line 134
    .line 135
    if-nez v16, :cond_4

    .line 136
    .line 137
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    .line 142
    .line 143
    .line 144
    move-result v16

    .line 145
    cmpg-float v8, v8, v16

    .line 146
    .line 147
    if-gez v8, :cond_4

    .line 148
    .line 149
    new-instance v8, Landroidx/compose/ui/geometry/Rect;

    .line 150
    .line 151
    iget v13, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 152
    .line 153
    const/4 v14, 0x0

    .line 154
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    iget v14, v4, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 159
    .line 160
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 165
    .line 166
    const/high16 v14, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 167
    .line 168
    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-direct {v8, v13, v11, v4, v6}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 177
    .line 178
    .line 179
    new-instance v4, Lkotlin/Pair;

    .line 180
    .line 181
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    check-cast v6, Lkotlin/Pair;

    .line 186
    .line 187
    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 188
    .line 189
    invoke-direct {v4, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v15, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Lkotlin/Pair;

    .line 200
    .line 201
    iget-object v4, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v4, Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_4
    if-eq v15, v14, :cond_6

    .line 210
    .line 211
    add-int/lit8 v15, v15, 0x1

    .line 212
    .line 213
    const/4 v6, 0x1

    .line 214
    const/4 v8, 0x2

    .line 215
    goto :goto_4

    .line 216
    :cond_5
    const/16 v17, 0x0

    .line 217
    .line 218
    :cond_6
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    new-instance v6, Lkotlin/Pair;

    .line 223
    .line 224
    const/4 v8, 0x1

    .line 225
    new-array v11, v8, [Landroidx/compose/ui/semantics/SemanticsNode;

    .line 226
    .line 227
    aput-object v10, v11, v17

    .line 228
    .line 229
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-direct {v6, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    :goto_6
    if-eq v9, v7, :cond_8

    .line 240
    .line 241
    add-int/lit8 v9, v9, 0x1

    .line 242
    .line 243
    const/4 v6, 0x1

    .line 244
    const/4 v8, 0x2

    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :cond_7
    const/16 v17, 0x0

    .line 248
    .line 249
    :cond_8
    sget-object v2, Landroidx/compose/ui/semantics/LtrBoundsComparator;->INSTANCE$2:Landroidx/compose/ui/semantics/LtrBoundsComparator;

    .line 250
    .line 251
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    .line 253
    .line 254
    new-instance v2, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsSortKt;->semanticComparators:[Ljava/util/Comparator;

    .line 260
    .line 261
    const/4 v8, 0x1

    .line 262
    xor-int/2addr v3, v8

    .line 263
    aget-object v3, v4, v3

    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    move/from16 v6, v17

    .line 270
    .line 271
    :goto_7
    if-ge v6, v4, :cond_9

    .line 272
    .line 273
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    check-cast v7, Lkotlin/Pair;

    .line 278
    .line 279
    iget-object v8, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v8, Ljava/util/List;

    .line 282
    .line 283
    invoke-static {v8, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    .line 285
    .line 286
    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v7, Ljava/util/Collection;

    .line 289
    .line 290
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    .line 292
    .line 293
    add-int/lit8 v6, v6, 0x1

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_9
    new-instance v3, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsSortKt;->UnmergedConfigComparator:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 299
    .line 300
    const/4 v5, 0x2

    .line 301
    invoke-direct {v3, v5, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    .line 306
    .line 307
    move/from16 v4, v17

    .line 308
    .line 309
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    const/4 v8, 0x1

    .line 314
    sub-int/2addr v3, v8

    .line 315
    if-gt v4, v3, :cond_c

    .line 316
    .line 317
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 322
    .line 323
    iget v3, v3, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 324
    .line 325
    invoke-virtual {v1, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Ljava/util/List;

    .line 330
    .line 331
    if-eqz v3, :cond_b

    .line 332
    .line 333
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    check-cast v5, Ljava/lang/Boolean;

    .line 342
    .line 343
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-nez v5, :cond_a

    .line 348
    .line 349
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    goto :goto_9

    .line 353
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 354
    .line 355
    :goto_9
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 356
    .line 357
    .line 358
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    add-int/2addr v4, v3

    .line 363
    goto :goto_8

    .line 364
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_c
    return-object v2
.end method
