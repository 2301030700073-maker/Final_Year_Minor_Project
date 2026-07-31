.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final disappearingItems:Ljava/util/ArrayList;

.field public displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

.field public firstVisibleIndex:I

.field public keyIndexMap:Lde/cketti/changelog/XmlParser;

.field public final keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

.field public final modifier:Landroidx/compose/ui/Modifier;

.field public final movingAwayKeys:Landroidx/collection/MutableScatterSet;

.field public final movingAwayToEndBound:Ljava/util/ArrayList;

.field public final movingAwayToStartBound:Ljava/util/ArrayList;

.field public final movingInFromEndBound:Ljava/util/ArrayList;

.field public final movingInFromStartBound:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 5
    .line 6
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    sget-object v0, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/ArrayList;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    .line 63
    .line 64
    return-void
.end method

.method public static initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(IIIJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x2

    .line 19
    invoke-static {p1, v0, v3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(IIIJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    :goto_0
    iget-object p1, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 24
    .line 25
    array-length p2, p1

    .line 26
    move v5, v0

    .line 27
    :goto_1
    if-ge v0, p2, :cond_2

    .line 28
    .line 29
    aget-object v6, p1, v0

    .line 30
    .line 31
    add-int/lit8 v7, v5, 0x1

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    invoke-interface {p0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    invoke-static {v8, v9, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    invoke-static {v3, v4, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    iput-wide v8, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    move v5, v7

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    return-void
.end method

.method public static updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 5

    .line 1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getLane()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getSpan()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    aget v3, p0, v0

    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/2addr v4, v3

    .line 20
    aput v4, p0, v0

    .line 21
    .line 22
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v2
.end method


# virtual methods
.method public final getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 12
    .line 13
    aget-object p0, p0, p1

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final getMinSizeToFitDisappearingItems-YbymL2g()J
    .locals 12

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 17
    .line 18
    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    const/16 v6, 0x20

    .line 23
    .line 24
    shr-long v7, v1, v6

    .line 25
    .line 26
    long-to-int v7, v7

    .line 27
    iget-wide v8, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 28
    .line 29
    shr-long/2addr v8, v6

    .line 30
    long-to-int v8, v8

    .line 31
    iget-wide v9, v5, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    .line 32
    .line 33
    shr-long/2addr v9, v6

    .line 34
    long-to-int v9, v9

    .line 35
    add-int/2addr v8, v9

    .line 36
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-wide v8, 0xffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long/2addr v1, v8

    .line 46
    long-to-int v1, v1

    .line 47
    iget-wide v10, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 48
    .line 49
    and-long/2addr v10, v8

    .line 50
    long-to-int v2, v10

    .line 51
    iget-wide v4, v5, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    .line 52
    .line 53
    and-long/2addr v4, v8

    .line 54
    long-to-int v4, v4

    .line 55
    add-int/2addr v2, v4

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    int-to-long v4, v7

    .line 61
    shl-long/2addr v4, v6

    .line 62
    int-to-long v1, v1

    .line 63
    and-long/2addr v1, v8

    .line 64
    or-long/2addr v1, v4

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-wide v1
.end method

.method public final onMeasured(IIILjava/util/ArrayList;Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsqueryresult/DnsQueryResult;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p4

    .line 4
    .line 5
    move-object/from16 v4, p5

    .line 6
    .line 7
    move/from16 v5, p8

    .line 8
    .line 9
    iget-object v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lde/cketti/changelog/XmlParser;

    .line 10
    .line 11
    iput-object v4, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lde/cketti/changelog/XmlParser;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const/4 v9, 0x0

    .line 18
    :goto_0
    iget-object v10, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 19
    .line 20
    if-ge v9, v7, :cond_3

    .line 21
    .line 22
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 27
    .line 28
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    const/4 v13, 0x0

    .line 33
    :goto_1
    if-ge v13, v12, :cond_2

    .line 34
    .line 35
    invoke-interface {v11, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v15

    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    instance-of v14, v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 42
    .line 43
    if-eqz v14, :cond_0

    .line 44
    .line 45
    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    move-object/from16 v15, v16

    .line 49
    .line 50
    :goto_2
    if-eqz v15, :cond_1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/16 v16, 0x0

    .line 60
    .line 61
    invoke-virtual {v10}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    :goto_3
    iget v7, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 72
    .line 73
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 78
    .line 79
    if-eqz v9, :cond_5

    .line 80
    .line 81
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/4 v9, 0x0

    .line 87
    :goto_4
    iput v9, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 88
    .line 89
    move/from16 v9, p1

    .line 90
    .line 91
    int-to-long v11, v9

    .line 92
    const-wide v17, 0xffffffffL

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    and-long v11, v11, v17

    .line 98
    .line 99
    if-nez p7, :cond_7

    .line 100
    .line 101
    if-nez p9, :cond_6

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_6
    const/16 v19, 0x0

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_7
    :goto_5
    const/16 v19, 0x1

    .line 108
    .line 109
    :goto_6
    iget-object v13, v10, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 110
    .line 111
    iget-object v14, v10, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 112
    .line 113
    array-length v15, v14

    .line 114
    const/4 v9, 0x2

    .line 115
    sub-int/2addr v15, v9

    .line 116
    const-wide/16 v20, 0x80

    .line 117
    .line 118
    const-wide/16 v22, 0xff

    .line 119
    .line 120
    const/16 v24, 0x7

    .line 121
    .line 122
    move-object/from16 p9, v14

    .line 123
    .line 124
    iget-object v14, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 125
    .line 126
    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    move-object/from16 v28, v10

    .line 132
    .line 133
    if-ltz v15, :cond_b

    .line 134
    .line 135
    const/4 v8, 0x0

    .line 136
    :goto_7
    const/16 v29, 0x8

    .line 137
    .line 138
    aget-wide v9, p9, v8

    .line 139
    .line 140
    not-long v1, v9

    .line 141
    shl-long v1, v1, v24

    .line 142
    .line 143
    and-long/2addr v1, v9

    .line 144
    and-long v1, v1, v25

    .line 145
    .line 146
    cmp-long v1, v1, v25

    .line 147
    .line 148
    if-eqz v1, :cond_a

    .line 149
    .line 150
    sub-int v1, v8, v15

    .line 151
    .line 152
    not-int v1, v1

    .line 153
    ushr-int/lit8 v1, v1, 0x1f

    .line 154
    .line 155
    rsub-int/lit8 v1, v1, 0x8

    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    :goto_8
    if-ge v2, v1, :cond_9

    .line 159
    .line 160
    and-long v30, v9, v22

    .line 161
    .line 162
    cmp-long v30, v30, v20

    .line 163
    .line 164
    if-gez v30, :cond_8

    .line 165
    .line 166
    shl-int/lit8 v30, v8, 0x3

    .line 167
    .line 168
    add-int v30, v30, v2

    .line 169
    .line 170
    move/from16 v31, v2

    .line 171
    .line 172
    aget-object v2, v13, v30

    .line 173
    .line 174
    invoke-virtual {v14, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_8
    move/from16 v31, v2

    .line 179
    .line 180
    :goto_9
    shr-long v9, v9, v29

    .line 181
    .line 182
    add-int/lit8 v2, v31, 0x1

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_9
    move/from16 v2, v29

    .line 186
    .line 187
    if-ne v1, v2, :cond_b

    .line 188
    .line 189
    :cond_a
    if-eq v8, v15, :cond_b

    .line 190
    .line 191
    add-int/lit8 v8, v8, 0x1

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    const/4 v2, 0x0

    .line 199
    :goto_a
    iget-object v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    .line 200
    .line 201
    iget-object v13, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/ArrayList;

    .line 202
    .line 203
    iget-object v15, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/ArrayList;

    .line 204
    .line 205
    if-ge v2, v1, :cond_1d

    .line 206
    .line 207
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v30

    .line 211
    const/16 p9, 0x20

    .line 212
    .line 213
    move-object/from16 v9, v30

    .line 214
    .line 215
    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 216
    .line 217
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v14, v10}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    move/from16 v37, v1

    .line 229
    .line 230
    const/4 v1, 0x0

    .line 231
    :goto_b
    if-ge v1, v10, :cond_1c

    .line 232
    .line 233
    move/from16 v38, v2

    .line 234
    .line 235
    invoke-interface {v9, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    move/from16 v31, v1

    .line 240
    .line 241
    instance-of v1, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 242
    .line 243
    if-eqz v1, :cond_c

    .line 244
    .line 245
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 246
    .line 247
    goto :goto_c

    .line 248
    :cond_c
    move-object/from16 v2, v16

    .line 249
    .line 250
    :goto_c
    if-eqz v2, :cond_1b

    .line 251
    .line 252
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    move-object/from16 v2, v28

    .line 257
    .line 258
    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    move-object/from16 v31, v1

    .line 263
    .line 264
    check-cast v31, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 265
    .line 266
    if-eqz v6, :cond_d

    .line 267
    .line 268
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v6, v1}, Lde/cketti/changelog/XmlParser;->getIndex(Ljava/lang/Object;)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    :goto_d
    const/4 v10, -0x1

    .line 277
    goto :goto_e

    .line 278
    :cond_d
    const/4 v1, -0x1

    .line 279
    goto :goto_d

    .line 280
    :goto_e
    if-ne v1, v10, :cond_e

    .line 281
    .line 282
    if-eqz v6, :cond_e

    .line 283
    .line 284
    const/4 v10, 0x1

    .line 285
    goto :goto_f

    .line 286
    :cond_e
    const/4 v10, 0x0

    .line 287
    :goto_f
    if-nez v31, :cond_14

    .line 288
    .line 289
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 290
    .line 291
    invoke-direct {v8, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    .line 292
    .line 293
    .line 294
    move/from16 v35, p10

    .line 295
    .line 296
    move/from16 v36, p11

    .line 297
    .line 298
    move-object/from16 v33, p12

    .line 299
    .line 300
    move-object/from16 v34, p13

    .line 301
    .line 302
    move-object/from16 v31, v8

    .line 303
    .line 304
    move-object/from16 v32, v9

    .line 305
    .line 306
    invoke-static/range {v31 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;II)V

    .line 307
    .line 308
    .line 309
    move/from16 v28, v10

    .line 310
    .line 311
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    invoke-virtual {v2, v10, v8}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    if-eq v10, v1, :cond_11

    .line 323
    .line 324
    const/4 v10, -0x1

    .line 325
    if-eq v1, v10, :cond_11

    .line 326
    .line 327
    if-ge v1, v7, :cond_f

    .line 328
    .line 329
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_10

    .line 333
    :cond_f
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    :cond_10
    :goto_10
    move-object/from16 v32, v14

    .line 337
    .line 338
    goto/16 :goto_17

    .line 339
    .line 340
    :cond_11
    const/4 v1, 0x0

    .line 341
    invoke-interface {v9, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 342
    .line 343
    .line 344
    move-result-wide v30

    .line 345
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_12

    .line 350
    .line 351
    and-long v3, v30, v17

    .line 352
    .line 353
    :goto_11
    long-to-int v1, v3

    .line 354
    goto :goto_12

    .line 355
    :cond_12
    shr-long v3, v30, p9

    .line 356
    .line 357
    goto :goto_11

    .line 358
    :goto_12
    invoke-static {v9, v1, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    .line 359
    .line 360
    .line 361
    if-eqz v28, :cond_10

    .line 362
    .line 363
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 364
    .line 365
    array-length v3, v1

    .line 366
    const/4 v4, 0x0

    .line 367
    :goto_13
    if-ge v4, v3, :cond_10

    .line 368
    .line 369
    aget-object v8, v1, v4

    .line 370
    .line 371
    if-eqz v8, :cond_13

    .line 372
    .line 373
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    .line 374
    .line 375
    .line 376
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 377
    .line 378
    goto :goto_13

    .line 379
    :cond_14
    move/from16 v28, v10

    .line 380
    .line 381
    if-eqz v19, :cond_10

    .line 382
    .line 383
    move/from16 v35, p10

    .line 384
    .line 385
    move/from16 v36, p11

    .line 386
    .line 387
    move-object/from16 v33, p12

    .line 388
    .line 389
    move-object/from16 v34, p13

    .line 390
    .line 391
    move-object/from16 v32, v9

    .line 392
    .line 393
    invoke-static/range {v31 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;II)V

    .line 394
    .line 395
    .line 396
    move-object/from16 v1, v31

    .line 397
    .line 398
    iget-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 399
    .line 400
    array-length v4, v3

    .line 401
    const/4 v10, 0x0

    .line 402
    :goto_14
    if-ge v10, v4, :cond_17

    .line 403
    .line 404
    aget-object v13, v3, v10

    .line 405
    .line 406
    if-eqz v13, :cond_15

    .line 407
    .line 408
    move-object v15, v3

    .line 409
    move/from16 v30, v4

    .line 410
    .line 411
    iget-wide v3, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 412
    .line 413
    move-object/from16 v32, v14

    .line 414
    .line 415
    move-object/from16 p9, v15

    .line 416
    .line 417
    const-wide v14, 0x7fffffff7fffffffL

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    invoke-static {v3, v4, v14, v15}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-nez v3, :cond_16

    .line 427
    .line 428
    iget-wide v3, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 429
    .line 430
    invoke-static {v3, v4, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 431
    .line 432
    .line 433
    move-result-wide v3

    .line 434
    iput-wide v3, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 435
    .line 436
    goto :goto_15

    .line 437
    :cond_15
    move-object/from16 p9, v3

    .line 438
    .line 439
    move/from16 v30, v4

    .line 440
    .line 441
    move-object/from16 v32, v14

    .line 442
    .line 443
    :cond_16
    :goto_15
    add-int/lit8 v10, v10, 0x1

    .line 444
    .line 445
    move-object/from16 v3, p9

    .line 446
    .line 447
    move/from16 v4, v30

    .line 448
    .line 449
    move-object/from16 v14, v32

    .line 450
    .line 451
    goto :goto_14

    .line 452
    :cond_17
    move-object/from16 v32, v14

    .line 453
    .line 454
    if-eqz v28, :cond_1a

    .line 455
    .line 456
    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 457
    .line 458
    array-length v3, v1

    .line 459
    const/4 v4, 0x0

    .line 460
    :goto_16
    if-ge v4, v3, :cond_1a

    .line 461
    .line 462
    aget-object v10, v1, v4

    .line 463
    .line 464
    if-eqz v10, :cond_19

    .line 465
    .line 466
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 467
    .line 468
    .line 469
    move-result v13

    .line 470
    if-eqz v13, :cond_18

    .line 471
    .line 472
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    iget-object v13, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 476
    .line 477
    if-eqz v13, :cond_18

    .line 478
    .line 479
    invoke-static {v13}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 480
    .line 481
    .line 482
    :cond_18
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    .line 483
    .line 484
    .line 485
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 486
    .line 487
    goto :goto_16

    .line 488
    :cond_1a
    const/4 v1, 0x0

    .line 489
    invoke-virtual {v0, v9, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 490
    .line 491
    .line 492
    goto :goto_17

    .line 493
    :cond_1b
    move-object/from16 v32, v14

    .line 494
    .line 495
    move-object/from16 v2, v28

    .line 496
    .line 497
    add-int/lit8 v1, v31, 0x1

    .line 498
    .line 499
    move-object/from16 v3, p4

    .line 500
    .line 501
    move-object/from16 v4, p5

    .line 502
    .line 503
    move/from16 v2, v38

    .line 504
    .line 505
    goto/16 :goto_b

    .line 506
    .line 507
    :cond_1c
    move/from16 v38, v2

    .line 508
    .line 509
    move-object/from16 v32, v14

    .line 510
    .line 511
    move-object/from16 v2, v28

    .line 512
    .line 513
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :goto_17
    add-int/lit8 v1, v38, 0x1

    .line 521
    .line 522
    move-object/from16 v3, p4

    .line 523
    .line 524
    move-object/from16 v4, p5

    .line 525
    .line 526
    move-object/from16 v28, v2

    .line 527
    .line 528
    move-object/from16 v14, v32

    .line 529
    .line 530
    move v2, v1

    .line 531
    move/from16 v1, v37

    .line 532
    .line 533
    goto/16 :goto_a

    .line 534
    .line 535
    :cond_1d
    move-object/from16 v32, v14

    .line 536
    .line 537
    move-object/from16 v2, v28

    .line 538
    .line 539
    const/16 p9, 0x20

    .line 540
    .line 541
    new-array v1, v5, [I

    .line 542
    .line 543
    if-eqz v19, :cond_23

    .line 544
    .line 545
    if-eqz v6, :cond_23

    .line 546
    .line 547
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-nez v3, :cond_20

    .line 552
    .line 553
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    const/4 v4, 0x1

    .line 558
    if-le v3, v4, :cond_1e

    .line 559
    .line 560
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 561
    .line 562
    const/4 v4, 0x2

    .line 563
    invoke-direct {v3, v6, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lde/cketti/changelog/XmlParser;I)V

    .line 564
    .line 565
    .line 566
    invoke-static {v15, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 567
    .line 568
    .line 569
    :cond_1e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    const/4 v4, 0x0

    .line 574
    :goto_18
    if-ge v4, v3, :cond_1f

    .line 575
    .line 576
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 581
    .line 582
    invoke-static {v1, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 583
    .line 584
    .line 585
    move-result v9

    .line 586
    sub-int v9, p10, v9

    .line 587
    .line 588
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v10

    .line 592
    invoke-virtual {v2, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v10

    .line 596
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 600
    .line 601
    invoke-static {v7, v9, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    .line 602
    .line 603
    .line 604
    const/4 v9, 0x0

    .line 605
    invoke-virtual {v0, v7, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 606
    .line 607
    .line 608
    add-int/lit8 v4, v4, 0x1

    .line 609
    .line 610
    goto :goto_18

    .line 611
    :cond_1f
    const/4 v9, 0x0

    .line 612
    invoke-static {v1, v9, v5, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 613
    .line 614
    .line 615
    goto :goto_19

    .line 616
    :cond_20
    const/4 v9, 0x0

    .line 617
    :goto_19
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-nez v3, :cond_23

    .line 622
    .line 623
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    const/4 v4, 0x1

    .line 628
    if-le v3, v4, :cond_21

    .line 629
    .line 630
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 631
    .line 632
    invoke-direct {v3, v6, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lde/cketti/changelog/XmlParser;I)V

    .line 633
    .line 634
    .line 635
    invoke-static {v13, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 636
    .line 637
    .line 638
    :cond_21
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    const/4 v4, 0x0

    .line 643
    :goto_1a
    if-ge v4, v3, :cond_22

    .line 644
    .line 645
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v7

    .line 649
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 650
    .line 651
    invoke-static {v1, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 652
    .line 653
    .line 654
    move-result v9

    .line 655
    add-int v9, v9, p11

    .line 656
    .line 657
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    .line 658
    .line 659
    .line 660
    move-result v10

    .line 661
    sub-int/2addr v9, v10

    .line 662
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v10

    .line 666
    invoke-virtual {v2, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v10

    .line 670
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    .line 672
    .line 673
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 674
    .line 675
    invoke-static {v7, v9, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    .line 676
    .line 677
    .line 678
    const/4 v9, 0x0

    .line 679
    invoke-virtual {v0, v7, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 680
    .line 681
    .line 682
    add-int/lit8 v4, v4, 0x1

    .line 683
    .line 684
    goto :goto_1a

    .line 685
    :cond_22
    const/4 v9, 0x0

    .line 686
    invoke-static {v1, v9, v5, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 687
    .line 688
    .line 689
    :cond_23
    move-object/from16 v3, v32

    .line 690
    .line 691
    iget-object v4, v3, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 692
    .line 693
    iget-object v7, v3, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 694
    .line 695
    array-length v9, v7

    .line 696
    const/16 v27, 0x2

    .line 697
    .line 698
    add-int/lit8 v9, v9, -0x2

    .line 699
    .line 700
    iget-object v11, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/ArrayList;

    .line 701
    .line 702
    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/ArrayList;

    .line 703
    .line 704
    if-ltz v9, :cond_38

    .line 705
    .line 706
    move-object/from16 v28, v11

    .line 707
    .line 708
    const/4 v14, 0x0

    .line 709
    :goto_1b
    aget-wide v10, v7, v14

    .line 710
    .line 711
    move-object/from16 v32, v3

    .line 712
    .line 713
    move-object/from16 v31, v4

    .line 714
    .line 715
    not-long v3, v10

    .line 716
    shl-long v3, v3, v24

    .line 717
    .line 718
    and-long/2addr v3, v10

    .line 719
    and-long v3, v3, v25

    .line 720
    .line 721
    cmp-long v3, v3, v25

    .line 722
    .line 723
    if-eqz v3, :cond_37

    .line 724
    .line 725
    sub-int v3, v14, v9

    .line 726
    .line 727
    not-int v3, v3

    .line 728
    ushr-int/lit8 v3, v3, 0x1f

    .line 729
    .line 730
    const/16 v29, 0x8

    .line 731
    .line 732
    rsub-int/lit8 v3, v3, 0x8

    .line 733
    .line 734
    move-wide/from16 v33, v10

    .line 735
    .line 736
    const/4 v4, 0x0

    .line 737
    :goto_1c
    if-ge v4, v3, :cond_36

    .line 738
    .line 739
    and-long v10, v33, v22

    .line 740
    .line 741
    cmp-long v10, v10, v20

    .line 742
    .line 743
    if-gez v10, :cond_35

    .line 744
    .line 745
    shl-int/lit8 v10, v14, 0x3

    .line 746
    .line 747
    add-int/2addr v10, v4

    .line 748
    aget-object v10, v31, v10

    .line 749
    .line 750
    invoke-virtual {v2, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v11

    .line 754
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 755
    .line 756
    if-nez v11, :cond_24

    .line 757
    .line 758
    goto/16 :goto_26

    .line 759
    .line 760
    :cond_24
    move-object/from16 v36, v2

    .line 761
    .line 762
    move/from16 v35, v14

    .line 763
    .line 764
    move-object/from16 v14, p5

    .line 765
    .line 766
    invoke-virtual {v14, v10}, Lde/cketti/changelog/XmlParser;->getIndex(Ljava/lang/Object;)I

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    move/from16 v46, v4

    .line 771
    .line 772
    iget v4, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    .line 773
    .line 774
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 775
    .line 776
    .line 777
    move-result v4

    .line 778
    iput v4, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    .line 779
    .line 780
    sub-int v4, v5, v4

    .line 781
    .line 782
    move-object/from16 v47, v7

    .line 783
    .line 784
    iget v7, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    .line 785
    .line 786
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    iput v4, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    .line 791
    .line 792
    const/4 v4, -0x1

    .line 793
    if-ne v2, v4, :cond_30

    .line 794
    .line 795
    iget-object v2, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 796
    .line 797
    array-length v7, v2

    .line 798
    const/4 v4, 0x0

    .line 799
    const/16 v30, 0x0

    .line 800
    .line 801
    const/16 v38, 0x0

    .line 802
    .line 803
    :goto_1d
    if-ge v4, v7, :cond_2e

    .line 804
    .line 805
    move-object/from16 v39, v2

    .line 806
    .line 807
    aget-object v2, v39, v4

    .line 808
    .line 809
    add-int/lit8 v40, v38, 0x1

    .line 810
    .line 811
    if-eqz v2, :cond_2d

    .line 812
    .line 813
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 814
    .line 815
    .line 816
    move-result v41

    .line 817
    if-eqz v41, :cond_25

    .line 818
    .line 819
    move-object/from16 v49, v1

    .line 820
    .line 821
    move/from16 v41, v4

    .line 822
    .line 823
    move/from16 v50, v9

    .line 824
    .line 825
    move-object v2, v10

    .line 826
    move-object v9, v12

    .line 827
    move-object/from16 v48, v15

    .line 828
    .line 829
    move-object/from16 v14, v16

    .line 830
    .line 831
    move-object/from16 v1, v28

    .line 832
    .line 833
    move-object/from16 v51, v36

    .line 834
    .line 835
    const/4 v5, 0x3

    .line 836
    const/16 v27, -0x1

    .line 837
    .line 838
    const/16 v30, 0x1

    .line 839
    .line 840
    goto/16 :goto_21

    .line 841
    .line 842
    :cond_25
    move/from16 v41, v4

    .line 843
    .line 844
    iget-object v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 845
    .line 846
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    check-cast v4, Ljava/lang/Boolean;

    .line 851
    .line 852
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    if-eqz v4, :cond_27

    .line 857
    .line 858
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 859
    .line 860
    .line 861
    iget-object v4, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 862
    .line 863
    aput-object v16, v4, v38

    .line 864
    .line 865
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 869
    .line 870
    if-eqz v2, :cond_26

    .line 871
    .line 872
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 873
    .line 874
    .line 875
    :cond_26
    move-object/from16 v49, v1

    .line 876
    .line 877
    goto/16 :goto_20

    .line 878
    .line 879
    :cond_27
    move-object v4, v13

    .line 880
    iget-object v13, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 881
    .line 882
    if-eqz v13, :cond_2a

    .line 883
    .line 884
    move-object/from16 v42, v12

    .line 885
    .line 886
    iget-object v12, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->fadeOutSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 887
    .line 888
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 889
    .line 890
    .line 891
    move-result v43

    .line 892
    if-nez v43, :cond_28

    .line 893
    .line 894
    if-nez v12, :cond_29

    .line 895
    .line 896
    :cond_28
    move-object/from16 v49, v1

    .line 897
    .line 898
    move/from16 v50, v9

    .line 899
    .line 900
    move-object/from16 v48, v15

    .line 901
    .line 902
    move-object/from16 v14, v16

    .line 903
    .line 904
    move-object/from16 v1, v28

    .line 905
    .line 906
    move-object/from16 v51, v36

    .line 907
    .line 908
    move-object/from16 v9, v42

    .line 909
    .line 910
    goto :goto_1e

    .line 911
    :cond_29
    move-object/from16 v43, v4

    .line 912
    .line 913
    const/4 v4, 0x1

    .line 914
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setDisappearanceAnimationInProgress(Z)V

    .line 915
    .line 916
    .line 917
    iget-object v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 918
    .line 919
    move-object/from16 v44, v10

    .line 920
    .line 921
    new-instance v10, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 922
    .line 923
    move-object/from16 v45, v15

    .line 924
    .line 925
    const/16 v15, 0x14

    .line 926
    .line 927
    move-object/from16 v49, v1

    .line 928
    .line 929
    move/from16 v50, v9

    .line 930
    .line 931
    move-object/from16 v14, v16

    .line 932
    .line 933
    move-object/from16 v1, v28

    .line 934
    .line 935
    move-object/from16 v51, v36

    .line 936
    .line 937
    move-object/from16 v9, v42

    .line 938
    .line 939
    move-object/from16 v28, v43

    .line 940
    .line 941
    move-object/from16 v48, v45

    .line 942
    .line 943
    const/4 v5, 0x3

    .line 944
    const/16 v27, -0x1

    .line 945
    .line 946
    move/from16 v16, v7

    .line 947
    .line 948
    move-object v7, v11

    .line 949
    move-object v11, v2

    .line 950
    move-object/from16 v2, v44

    .line 951
    .line 952
    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 953
    .line 954
    .line 955
    invoke-static {v4, v14, v14, v10, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 956
    .line 957
    .line 958
    goto :goto_1f

    .line 959
    :cond_2a
    move-object/from16 v49, v1

    .line 960
    .line 961
    move/from16 v50, v9

    .line 962
    .line 963
    move-object v9, v12

    .line 964
    move-object/from16 v48, v15

    .line 965
    .line 966
    move-object/from16 v14, v16

    .line 967
    .line 968
    move-object/from16 v1, v28

    .line 969
    .line 970
    move-object/from16 v51, v36

    .line 971
    .line 972
    :goto_1e
    const/4 v5, 0x3

    .line 973
    const/16 v27, -0x1

    .line 974
    .line 975
    move-object/from16 v28, v4

    .line 976
    .line 977
    move/from16 v16, v7

    .line 978
    .line 979
    move-object v7, v11

    .line 980
    move-object v11, v2

    .line 981
    move-object v2, v10

    .line 982
    :goto_1f
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 983
    .line 984
    .line 985
    move-result v4

    .line 986
    if-eqz v4, :cond_2c

    .line 987
    .line 988
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    .line 990
    .line 991
    iget-object v4, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 992
    .line 993
    if-eqz v4, :cond_2b

    .line 994
    .line 995
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 996
    .line 997
    .line 998
    :cond_2b
    const/16 v30, 0x1

    .line 999
    .line 1000
    goto :goto_22

    .line 1001
    :cond_2c
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 1002
    .line 1003
    .line 1004
    iget-object v4, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 1005
    .line 1006
    aput-object v14, v4, v38

    .line 1007
    .line 1008
    goto :goto_22

    .line 1009
    :cond_2d
    move-object/from16 v49, v1

    .line 1010
    .line 1011
    move/from16 v41, v4

    .line 1012
    .line 1013
    :goto_20
    move/from16 v50, v9

    .line 1014
    .line 1015
    move-object v2, v10

    .line 1016
    move-object v9, v12

    .line 1017
    move-object/from16 v48, v15

    .line 1018
    .line 1019
    move-object/from16 v14, v16

    .line 1020
    .line 1021
    move-object/from16 v1, v28

    .line 1022
    .line 1023
    move-object/from16 v51, v36

    .line 1024
    .line 1025
    const/4 v5, 0x3

    .line 1026
    const/16 v27, -0x1

    .line 1027
    .line 1028
    :goto_21
    move/from16 v16, v7

    .line 1029
    .line 1030
    move-object v7, v11

    .line 1031
    move-object/from16 v28, v13

    .line 1032
    .line 1033
    :goto_22
    add-int/lit8 v4, v41, 0x1

    .line 1034
    .line 1035
    move/from16 v5, p8

    .line 1036
    .line 1037
    move-object v10, v2

    .line 1038
    move-object v11, v7

    .line 1039
    move-object v12, v9

    .line 1040
    move/from16 v7, v16

    .line 1041
    .line 1042
    move-object/from16 v13, v28

    .line 1043
    .line 1044
    move-object/from16 v2, v39

    .line 1045
    .line 1046
    move/from16 v38, v40

    .line 1047
    .line 1048
    move-object/from16 v15, v48

    .line 1049
    .line 1050
    move/from16 v9, v50

    .line 1051
    .line 1052
    move-object/from16 v36, v51

    .line 1053
    .line 1054
    move-object/from16 v28, v1

    .line 1055
    .line 1056
    move-object/from16 v16, v14

    .line 1057
    .line 1058
    move-object/from16 v1, v49

    .line 1059
    .line 1060
    move-object/from16 v14, p5

    .line 1061
    .line 1062
    goto/16 :goto_1d

    .line 1063
    .line 1064
    :cond_2e
    move-object/from16 v49, v1

    .line 1065
    .line 1066
    move/from16 v50, v9

    .line 1067
    .line 1068
    move-object v2, v10

    .line 1069
    move-object v9, v12

    .line 1070
    move-object/from16 v48, v15

    .line 1071
    .line 1072
    move-object/from16 v14, v16

    .line 1073
    .line 1074
    move-object/from16 v1, v28

    .line 1075
    .line 1076
    move-object/from16 v51, v36

    .line 1077
    .line 1078
    const/4 v5, 0x3

    .line 1079
    const/16 v27, -0x1

    .line 1080
    .line 1081
    move-object/from16 v28, v13

    .line 1082
    .line 1083
    if-nez v30, :cond_2f

    .line 1084
    .line 1085
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    .line 1086
    .line 1087
    .line 1088
    :cond_2f
    move-object/from16 v4, p5

    .line 1089
    .line 1090
    move/from16 v10, v35

    .line 1091
    .line 1092
    goto/16 :goto_25

    .line 1093
    .line 1094
    :cond_30
    move-object/from16 v49, v1

    .line 1095
    .line 1096
    move/from16 v27, v4

    .line 1097
    .line 1098
    move/from16 v50, v9

    .line 1099
    .line 1100
    move-object v7, v11

    .line 1101
    move-object v9, v12

    .line 1102
    move-object v4, v14

    .line 1103
    move-object/from16 v48, v15

    .line 1104
    .line 1105
    move-object/from16 v14, v16

    .line 1106
    .line 1107
    move-object/from16 v1, v28

    .line 1108
    .line 1109
    move-object/from16 v51, v36

    .line 1110
    .line 1111
    const/4 v5, 0x3

    .line 1112
    move-object v11, v10

    .line 1113
    move-object/from16 v28, v13

    .line 1114
    .line 1115
    move/from16 v10, v35

    .line 1116
    .line 1117
    iget-object v12, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->constraints:Landroidx/compose/ui/unit/Constraints;

    .line 1118
    .line 1119
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    iget-wide v12, v12, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1123
    .line 1124
    iget v15, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    .line 1125
    .line 1126
    iget v14, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    .line 1127
    .line 1128
    move-object/from16 v36, p6

    .line 1129
    .line 1130
    move/from16 v37, v2

    .line 1131
    .line 1132
    move-wide/from16 v40, v12

    .line 1133
    .line 1134
    move/from16 v39, v14

    .line 1135
    .line 1136
    move/from16 v38, v15

    .line 1137
    .line 1138
    invoke-virtual/range {v36 .. v41}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v40

    .line 1142
    invoke-interface/range {v40 .. v40}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem()V

    .line 1143
    .line 1144
    .line 1145
    iget-object v12, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 1146
    .line 1147
    array-length v13, v12

    .line 1148
    const/4 v14, 0x0

    .line 1149
    :goto_23
    if-ge v14, v13, :cond_32

    .line 1150
    .line 1151
    aget-object v15, v12, v14

    .line 1152
    .line 1153
    if-eqz v15, :cond_31

    .line 1154
    .line 1155
    iget-object v15, v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1156
    .line 1157
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v15

    .line 1161
    check-cast v15, Ljava/lang/Boolean;

    .line 1162
    .line 1163
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v15

    .line 1167
    const/4 v5, 0x1

    .line 1168
    if-ne v15, v5, :cond_31

    .line 1169
    .line 1170
    goto :goto_24

    .line 1171
    :cond_31
    add-int/lit8 v14, v14, 0x1

    .line 1172
    .line 1173
    const/4 v5, 0x3

    .line 1174
    goto :goto_23

    .line 1175
    :cond_32
    if-eqz v6, :cond_33

    .line 1176
    .line 1177
    invoke-virtual {v6, v11}, Lde/cketti/changelog/XmlParser;->getIndex(Ljava/lang/Object;)I

    .line 1178
    .line 1179
    .line 1180
    move-result v5

    .line 1181
    if-ne v2, v5, :cond_33

    .line 1182
    .line 1183
    invoke-virtual {v0, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_25

    .line 1187
    :cond_33
    :goto_24
    iget v5, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    .line 1188
    .line 1189
    move/from16 v43, p10

    .line 1190
    .line 1191
    move/from16 v44, p11

    .line 1192
    .line 1193
    move-object/from16 v41, p12

    .line 1194
    .line 1195
    move-object/from16 v42, p13

    .line 1196
    .line 1197
    move/from16 v45, v5

    .line 1198
    .line 1199
    move-object/from16 v39, v7

    .line 1200
    .line 1201
    invoke-virtual/range {v39 .. v45}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;III)V

    .line 1202
    .line 1203
    .line 1204
    move-object/from16 v5, v40

    .line 1205
    .line 1206
    iget v7, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 1207
    .line 1208
    if-ge v2, v7, :cond_34

    .line 1209
    .line 1210
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    .line 1212
    .line 1213
    goto :goto_25

    .line 1214
    :cond_34
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    :goto_25
    const/16 v2, 0x8

    .line 1218
    .line 1219
    goto :goto_27

    .line 1220
    :cond_35
    :goto_26
    move-object/from16 v49, v1

    .line 1221
    .line 1222
    move-object/from16 v51, v2

    .line 1223
    .line 1224
    move/from16 v46, v4

    .line 1225
    .line 1226
    move-object/from16 v47, v7

    .line 1227
    .line 1228
    move/from16 v50, v9

    .line 1229
    .line 1230
    move-object v9, v12

    .line 1231
    move v10, v14

    .line 1232
    move-object/from16 v48, v15

    .line 1233
    .line 1234
    move-object/from16 v1, v28

    .line 1235
    .line 1236
    const/16 v27, -0x1

    .line 1237
    .line 1238
    move-object/from16 v4, p5

    .line 1239
    .line 1240
    move-object/from16 v28, v13

    .line 1241
    .line 1242
    goto :goto_25

    .line 1243
    :goto_27
    shr-long v33, v33, v2

    .line 1244
    .line 1245
    add-int/lit8 v5, v46, 0x1

    .line 1246
    .line 1247
    move v4, v5

    .line 1248
    move-object v12, v9

    .line 1249
    move v14, v10

    .line 1250
    move-object/from16 v13, v28

    .line 1251
    .line 1252
    move-object/from16 v7, v47

    .line 1253
    .line 1254
    move-object/from16 v15, v48

    .line 1255
    .line 1256
    move/from16 v9, v50

    .line 1257
    .line 1258
    move-object/from16 v2, v51

    .line 1259
    .line 1260
    const/16 v16, 0x0

    .line 1261
    .line 1262
    move/from16 v5, p8

    .line 1263
    .line 1264
    move-object/from16 v28, v1

    .line 1265
    .line 1266
    move-object/from16 v1, v49

    .line 1267
    .line 1268
    goto/16 :goto_1c

    .line 1269
    .line 1270
    :cond_36
    move-object/from16 v4, p5

    .line 1271
    .line 1272
    move-object/from16 v49, v1

    .line 1273
    .line 1274
    move-object/from16 v51, v2

    .line 1275
    .line 1276
    move-object/from16 v47, v7

    .line 1277
    .line 1278
    move/from16 v50, v9

    .line 1279
    .line 1280
    move-object v9, v12

    .line 1281
    move v10, v14

    .line 1282
    move-object/from16 v48, v15

    .line 1283
    .line 1284
    move-object/from16 v1, v28

    .line 1285
    .line 1286
    const/16 v2, 0x8

    .line 1287
    .line 1288
    const/16 v27, -0x1

    .line 1289
    .line 1290
    move-object/from16 v28, v13

    .line 1291
    .line 1292
    if-ne v3, v2, :cond_39

    .line 1293
    .line 1294
    :goto_28
    move/from16 v3, v50

    .line 1295
    .line 1296
    goto :goto_29

    .line 1297
    :cond_37
    move-object/from16 v4, p5

    .line 1298
    .line 1299
    move-object/from16 v49, v1

    .line 1300
    .line 1301
    move-object/from16 v51, v2

    .line 1302
    .line 1303
    move-object/from16 v47, v7

    .line 1304
    .line 1305
    move/from16 v50, v9

    .line 1306
    .line 1307
    move-object v9, v12

    .line 1308
    move v10, v14

    .line 1309
    move-object/from16 v48, v15

    .line 1310
    .line 1311
    move-object/from16 v1, v28

    .line 1312
    .line 1313
    const/16 v2, 0x8

    .line 1314
    .line 1315
    const/16 v27, -0x1

    .line 1316
    .line 1317
    move-object/from16 v28, v13

    .line 1318
    .line 1319
    goto :goto_28

    .line 1320
    :goto_29
    if-eq v10, v3, :cond_39

    .line 1321
    .line 1322
    add-int/lit8 v14, v10, 0x1

    .line 1323
    .line 1324
    move/from16 v5, p8

    .line 1325
    .line 1326
    move-object v12, v9

    .line 1327
    move-object/from16 v13, v28

    .line 1328
    .line 1329
    move-object/from16 v4, v31

    .line 1330
    .line 1331
    move-object/from16 v7, v47

    .line 1332
    .line 1333
    move-object/from16 v15, v48

    .line 1334
    .line 1335
    move-object/from16 v2, v51

    .line 1336
    .line 1337
    const/16 v16, 0x0

    .line 1338
    .line 1339
    move-object/from16 v28, v1

    .line 1340
    .line 1341
    move v9, v3

    .line 1342
    move-object/from16 v3, v32

    .line 1343
    .line 1344
    move-object/from16 v1, v49

    .line 1345
    .line 1346
    goto/16 :goto_1b

    .line 1347
    .line 1348
    :cond_38
    move-object/from16 v4, p5

    .line 1349
    .line 1350
    move-object/from16 v49, v1

    .line 1351
    .line 1352
    move-object/from16 v51, v2

    .line 1353
    .line 1354
    move-object/from16 v32, v3

    .line 1355
    .line 1356
    move-object v1, v11

    .line 1357
    move-object v9, v12

    .line 1358
    move-object/from16 v28, v13

    .line 1359
    .line 1360
    move-object/from16 v48, v15

    .line 1361
    .line 1362
    :cond_39
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1363
    .line 1364
    .line 1365
    move-result v2

    .line 1366
    if-nez v2, :cond_3f

    .line 1367
    .line 1368
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1369
    .line 1370
    .line 1371
    move-result v2

    .line 1372
    const/4 v5, 0x1

    .line 1373
    if-le v2, v5, :cond_3a

    .line 1374
    .line 1375
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 1376
    .line 1377
    const/4 v5, 0x3

    .line 1378
    invoke-direct {v2, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lde/cketti/changelog/XmlParser;I)V

    .line 1379
    .line 1380
    .line 1381
    invoke-static {v9, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1382
    .line 1383
    .line 1384
    :cond_3a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1385
    .line 1386
    .line 1387
    move-result v2

    .line 1388
    const/4 v3, 0x0

    .line 1389
    :goto_2a
    if-ge v3, v2, :cond_3e

    .line 1390
    .line 1391
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v5

    .line 1395
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1396
    .line 1397
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v6

    .line 1401
    move-object/from16 v7, v51

    .line 1402
    .line 1403
    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v6

    .line 1407
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1408
    .line 1409
    .line 1410
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 1411
    .line 1412
    move-object/from16 v8, v49

    .line 1413
    .line 1414
    invoke-static {v8, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 1415
    .line 1416
    .line 1417
    move-result v10

    .line 1418
    if-eqz p7, :cond_3c

    .line 1419
    .line 1420
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v11

    .line 1424
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1425
    .line 1426
    const/4 v12, 0x0

    .line 1427
    invoke-interface {v11, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 1428
    .line 1429
    .line 1430
    move-result-wide v13

    .line 1431
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v11

    .line 1435
    if-eqz v11, :cond_3b

    .line 1436
    .line 1437
    and-long v11, v13, v17

    .line 1438
    .line 1439
    :goto_2b
    long-to-int v11, v11

    .line 1440
    goto :goto_2c

    .line 1441
    :cond_3b
    shr-long v11, v13, p9

    .line 1442
    .line 1443
    goto :goto_2b

    .line 1444
    :cond_3c
    iget v11, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMinOffset:I

    .line 1445
    .line 1446
    :goto_2c
    sub-int/2addr v11, v10

    .line 1447
    iget v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    .line 1448
    .line 1449
    move/from16 v10, p2

    .line 1450
    .line 1451
    move/from16 v12, p3

    .line 1452
    .line 1453
    invoke-interface {v5, v11, v6, v10, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 1454
    .line 1455
    .line 1456
    if-eqz v19, :cond_3d

    .line 1457
    .line 1458
    const/4 v6, 0x1

    .line 1459
    invoke-virtual {v0, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 1460
    .line 1461
    .line 1462
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    .line 1463
    .line 1464
    move-object/from16 v51, v7

    .line 1465
    .line 1466
    move-object/from16 v49, v8

    .line 1467
    .line 1468
    goto :goto_2a

    .line 1469
    :cond_3e
    move/from16 v10, p2

    .line 1470
    .line 1471
    move/from16 v12, p3

    .line 1472
    .line 1473
    move/from16 v5, p8

    .line 1474
    .line 1475
    move-object/from16 v8, v49

    .line 1476
    .line 1477
    move-object/from16 v7, v51

    .line 1478
    .line 1479
    const/4 v3, 0x0

    .line 1480
    invoke-static {v8, v3, v5, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 1481
    .line 1482
    .line 1483
    goto :goto_2d

    .line 1484
    :cond_3f
    move/from16 v10, p2

    .line 1485
    .line 1486
    move/from16 v12, p3

    .line 1487
    .line 1488
    move-object/from16 v8, v49

    .line 1489
    .line 1490
    move-object/from16 v7, v51

    .line 1491
    .line 1492
    :goto_2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1493
    .line 1494
    .line 1495
    move-result v2

    .line 1496
    if-nez v2, :cond_42

    .line 1497
    .line 1498
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1499
    .line 1500
    .line 1501
    move-result v2

    .line 1502
    const/4 v5, 0x1

    .line 1503
    if-le v2, v5, :cond_40

    .line 1504
    .line 1505
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 1506
    .line 1507
    invoke-direct {v2, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lde/cketti/changelog/XmlParser;I)V

    .line 1508
    .line 1509
    .line 1510
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1511
    .line 1512
    .line 1513
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1514
    .line 1515
    .line 1516
    move-result v2

    .line 1517
    const/4 v3, 0x0

    .line 1518
    :goto_2e
    if-ge v3, v2, :cond_42

    .line 1519
    .line 1520
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v4

    .line 1524
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1525
    .line 1526
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v5

    .line 1530
    invoke-virtual {v7, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v5

    .line 1534
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1535
    .line 1536
    .line 1537
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 1538
    .line 1539
    invoke-static {v8, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 1540
    .line 1541
    .line 1542
    move-result v6

    .line 1543
    iget v11, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMaxOffset:I

    .line 1544
    .line 1545
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    .line 1546
    .line 1547
    .line 1548
    move-result v13

    .line 1549
    sub-int/2addr v11, v13

    .line 1550
    add-int/2addr v11, v6

    .line 1551
    iget v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    .line 1552
    .line 1553
    invoke-interface {v4, v11, v5, v10, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 1554
    .line 1555
    .line 1556
    const/4 v5, 0x1

    .line 1557
    if-eqz v19, :cond_41

    .line 1558
    .line 1559
    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 1560
    .line 1561
    .line 1562
    :cond_41
    add-int/lit8 v3, v3, 0x1

    .line 1563
    .line 1564
    goto :goto_2e

    .line 1565
    :cond_42
    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1566
    .line 1567
    .line 1568
    move-object/from16 v3, p4

    .line 1569
    .line 1570
    const/4 v12, 0x0

    .line 1571
    invoke-virtual {v3, v12, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->clear()V

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 1581
    .line 1582
    .line 1583
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual/range {v32 .. v32}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 1590
    .line 1591
    .line 1592
    return-void
.end method

.method public final releaseAnimations()V
    .locals 14

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->isNotEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    add-int/lit8 v2, v2, -0x2

    .line 15
    .line 16
    if-ltz v2, :cond_4

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    aget-wide v5, v1, v4

    .line 21
    .line 22
    not-long v7, v5

    .line 23
    const/4 v9, 0x7

    .line 24
    shl-long/2addr v7, v9

    .line 25
    and-long/2addr v7, v5

    .line 26
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v7, v9

    .line 32
    cmp-long v7, v7, v9

    .line 33
    .line 34
    if-eqz v7, :cond_3

    .line 35
    .line 36
    sub-int v7, v4, v2

    .line 37
    .line 38
    not-int v7, v7

    .line 39
    ushr-int/lit8 v7, v7, 0x1f

    .line 40
    .line 41
    const/16 v8, 0x8

    .line 42
    .line 43
    rsub-int/lit8 v7, v7, 0x8

    .line 44
    .line 45
    move v9, v3

    .line 46
    :goto_1
    if-ge v9, v7, :cond_2

    .line 47
    .line 48
    const-wide/16 v10, 0xff

    .line 49
    .line 50
    and-long/2addr v10, v5

    .line 51
    const-wide/16 v12, 0x80

    .line 52
    .line 53
    cmp-long v10, v10, v12

    .line 54
    .line 55
    if-gez v10, :cond_1

    .line 56
    .line 57
    shl-int/lit8 v10, v4, 0x3

    .line 58
    .line 59
    add-int/2addr v10, v9

    .line 60
    aget-object v10, v0, v10

    .line 61
    .line 62
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 63
    .line 64
    iget-object v10, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 65
    .line 66
    array-length v11, v10

    .line 67
    move v12, v3

    .line 68
    :goto_2
    if-ge v12, v11, :cond_1

    .line 69
    .line 70
    aget-object v13, v10, v12

    .line 71
    .line 72
    if-eqz v13, :cond_0

    .line 73
    .line 74
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 75
    .line 76
    .line 77
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    shr-long/2addr v5, v8

    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-ne v7, v8, :cond_4

    .line 85
    .line 86
    :cond_3
    if-eq v4, v2, :cond_4

    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public final removeInfoForKey(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 12
    .line 13
    array-length p1, p0

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p1, :cond_1

    .line 16
    .line 17
    aget-object v1, p0, v0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public final startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V
    .locals 12

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 17
    .line 18
    array-length v0, p0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v1, v0, :cond_3

    .line 22
    .line 23
    aget-object v4, p0, v1

    .line 24
    .line 25
    add-int/lit8 v9, v2, 0x1

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v10

    .line 33
    iget-wide v2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 34
    .line 35
    const-wide v5, 0x7fffffff7fffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-static {v2, v3, v10, v11}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    invoke-static {v10, v11, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 57
    .line 58
    if-nez v5, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iget-object v6, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 62
    .line 63
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Landroidx/compose/ui/unit/IntOffset;

    .line 68
    .line 69
    iget-wide v6, v6, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 70
    .line 71
    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    invoke-virtual {v4, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementDelta--gyyYBs(J)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {v4, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementAnimationInProgress(Z)V

    .line 80
    .line 81
    .line 82
    iput-boolean p2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isRunningMovingAwayAnimation:Z

    .line 83
    .line 84
    iget-object v2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 85
    .line 86
    new-instance v3, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;JLkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x3

    .line 93
    const/4 v6, 0x0

    .line 94
    invoke-static {v2, v6, v6, v3, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_1
    iput-wide v10, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 98
    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    move v2, v9

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    return-void
.end method
