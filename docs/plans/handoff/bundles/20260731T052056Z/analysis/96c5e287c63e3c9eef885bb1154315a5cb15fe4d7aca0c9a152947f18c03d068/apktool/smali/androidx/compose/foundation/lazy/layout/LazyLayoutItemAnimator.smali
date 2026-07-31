.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final disappearingItems:Ljava/util/ArrayList;

.field public displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

.field public firstVisibleIndex:I

.field public keyIndexMap:Lokhttp3/internal/http/StatusLine;

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

.method public final onMeasured(IIILjava/util/ArrayList;Lokhttp3/internal/http/StatusLine;Lorg/wikipedia/settings/BasePreferenceLoader;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    iget-object v7, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lokhttp3/internal/http/StatusLine;

    .line 10
    .line 11
    iput-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lokhttp3/internal/http/StatusLine;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    const/4 v10, 0x0

    .line 18
    :goto_0
    iget-object v11, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 19
    .line 20
    if-ge v10, v8, :cond_3

    .line 21
    .line 22
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 27
    .line 28
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    .line 29
    .line 30
    .line 31
    move-result v13

    .line 32
    const/4 v14, 0x0

    .line 33
    :goto_1
    if-ge v14, v13, :cond_2

    .line 34
    .line 35
    const/16 v16, 0x0

    .line 36
    .line 37
    invoke-interface {v12, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    instance-of v9, v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 42
    .line 43
    if-eqz v9, :cond_0

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
    add-int/lit8 v14, v14, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/16 v16, 0x0

    .line 60
    .line 61
    invoke-virtual {v11}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_4

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
    iget v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 72
    .line 73
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

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
    const/16 v9, 0x20

    .line 90
    .line 91
    const-wide v17, 0xffffffffL

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    if-eqz p7, :cond_6

    .line 97
    .line 98
    int-to-long v12, v1

    .line 99
    and-long v12, v12, v17

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    int-to-long v12, v1

    .line 103
    shl-long/2addr v12, v9

    .line 104
    :goto_5
    if-nez p8, :cond_8

    .line 105
    .line 106
    if-nez p10, :cond_7

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_7
    const/4 v10, 0x0

    .line 110
    goto :goto_7

    .line 111
    :cond_8
    :goto_6
    const/4 v10, 0x1

    .line 112
    :goto_7
    iget-object v14, v11, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v15, v11, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 115
    .line 116
    move/from16 v19, v9

    .line 117
    .line 118
    array-length v9, v15

    .line 119
    const/4 v1, 0x2

    .line 120
    sub-int/2addr v9, v1

    .line 121
    const-wide/16 v20, 0x80

    .line 122
    .line 123
    const-wide/16 v22, 0xff

    .line 124
    .line 125
    const/16 v24, 0x7

    .line 126
    .line 127
    move-object/from16 p7, v15

    .line 128
    .line 129
    iget-object v15, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 130
    .line 131
    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    if-ltz v9, :cond_c

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    :goto_8
    const/16 v27, 0x8

    .line 140
    .line 141
    aget-wide v2, p7, v1

    .line 142
    .line 143
    not-long v5, v2

    .line 144
    shl-long v5, v5, v24

    .line 145
    .line 146
    and-long/2addr v5, v2

    .line 147
    and-long v5, v5, v25

    .line 148
    .line 149
    cmp-long v5, v5, v25

    .line 150
    .line 151
    if-eqz v5, :cond_b

    .line 152
    .line 153
    sub-int v5, v1, v9

    .line 154
    .line 155
    not-int v5, v5

    .line 156
    ushr-int/lit8 v5, v5, 0x1f

    .line 157
    .line 158
    rsub-int/lit8 v5, v5, 0x8

    .line 159
    .line 160
    const/4 v6, 0x0

    .line 161
    :goto_9
    if-ge v6, v5, :cond_a

    .line 162
    .line 163
    and-long v28, v2, v22

    .line 164
    .line 165
    cmp-long v28, v28, v20

    .line 166
    .line 167
    if-gez v28, :cond_9

    .line 168
    .line 169
    shl-int/lit8 v28, v1, 0x3

    .line 170
    .line 171
    add-int v28, v28, v6

    .line 172
    .line 173
    move-wide/from16 v29, v2

    .line 174
    .line 175
    aget-object v2, v14, v28

    .line 176
    .line 177
    invoke-virtual {v15, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_9
    move-wide/from16 v29, v2

    .line 182
    .line 183
    :goto_a
    shr-long v2, v29, v27

    .line 184
    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_a
    move/from16 v2, v27

    .line 189
    .line 190
    if-ne v5, v2, :cond_c

    .line 191
    .line 192
    :cond_b
    if-eq v1, v9, :cond_c

    .line 193
    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 195
    .line 196
    move-object/from16 v5, p5

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    const/4 v2, 0x0

    .line 204
    :goto_b
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    .line 205
    .line 206
    iget-object v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/ArrayList;

    .line 207
    .line 208
    iget-object v9, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/ArrayList;

    .line 209
    .line 210
    if-ge v2, v1, :cond_1e

    .line 211
    .line 212
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 217
    .line 218
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v15, v5}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    move/from16 v34, v1

    .line 230
    .line 231
    const/4 v1, 0x0

    .line 232
    :goto_c
    if-ge v1, v5, :cond_1d

    .line 233
    .line 234
    move/from16 v35, v2

    .line 235
    .line 236
    invoke-interface {v14, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    move/from16 v28, v1

    .line 241
    .line 242
    instance-of v1, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 243
    .line 244
    if-eqz v1, :cond_d

    .line 245
    .line 246
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 247
    .line 248
    goto :goto_d

    .line 249
    :cond_d
    move-object/from16 v2, v16

    .line 250
    .line 251
    :goto_d
    if-eqz v2, :cond_1c

    .line 252
    .line 253
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    move-object/from16 v28, v1

    .line 262
    .line 263
    check-cast v28, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 264
    .line 265
    if-eqz v7, :cond_e

    .line 266
    .line 267
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v7, v1}, Lokhttp3/internal/http/StatusLine;->getIndex(Ljava/lang/Object;)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    :goto_e
    const/4 v2, -0x1

    .line 276
    goto :goto_f

    .line 277
    :cond_e
    const/4 v1, -0x1

    .line 278
    goto :goto_e

    .line 279
    :goto_f
    if-ne v1, v2, :cond_f

    .line 280
    .line 281
    if-eqz v7, :cond_f

    .line 282
    .line 283
    const/4 v2, 0x1

    .line 284
    goto :goto_10

    .line 285
    :cond_f
    const/4 v2, 0x0

    .line 286
    :goto_10
    if-nez v28, :cond_15

    .line 287
    .line 288
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 289
    .line 290
    invoke-direct {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    .line 291
    .line 292
    .line 293
    move/from16 v32, p11

    .line 294
    .line 295
    move/from16 v33, p12

    .line 296
    .line 297
    move-object/from16 v30, p13

    .line 298
    .line 299
    move-object/from16 v31, p14

    .line 300
    .line 301
    move-object/from16 v28, v3

    .line 302
    .line 303
    move-object/from16 v29, v14

    .line 304
    .line 305
    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;II)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v11, v5, v3}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-eq v5, v1, :cond_12

    .line 320
    .line 321
    const/4 v5, -0x1

    .line 322
    if-eq v1, v5, :cond_12

    .line 323
    .line 324
    if-ge v1, v8, :cond_10

    .line 325
    .line 326
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_11

    .line 330
    :cond_10
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    :cond_11
    :goto_11
    move/from16 v30, v8

    .line 334
    .line 335
    goto/16 :goto_18

    .line 336
    .line 337
    :cond_12
    const/4 v1, 0x0

    .line 338
    invoke-interface {v14, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v5

    .line 342
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_13

    .line 347
    .line 348
    and-long v5, v5, v17

    .line 349
    .line 350
    :goto_12
    long-to-int v1, v5

    .line 351
    goto :goto_13

    .line 352
    :cond_13
    shr-long v5, v5, v19

    .line 353
    .line 354
    goto :goto_12

    .line 355
    :goto_13
    invoke-static {v14, v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    .line 356
    .line 357
    .line 358
    if-eqz v2, :cond_11

    .line 359
    .line 360
    iget-object v1, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 361
    .line 362
    array-length v2, v1

    .line 363
    const/4 v3, 0x0

    .line 364
    :goto_14
    if-ge v3, v2, :cond_11

    .line 365
    .line 366
    aget-object v5, v1, v3

    .line 367
    .line 368
    if-eqz v5, :cond_14

    .line 369
    .line 370
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    .line 371
    .line 372
    .line 373
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 374
    .line 375
    goto :goto_14

    .line 376
    :cond_15
    if-eqz v10, :cond_11

    .line 377
    .line 378
    move/from16 v32, p11

    .line 379
    .line 380
    move/from16 v33, p12

    .line 381
    .line 382
    move-object/from16 v30, p13

    .line 383
    .line 384
    move-object/from16 v31, p14

    .line 385
    .line 386
    move-object/from16 v29, v14

    .line 387
    .line 388
    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;II)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v1, v28

    .line 392
    .line 393
    iget-object v5, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 394
    .line 395
    array-length v6, v5

    .line 396
    const/4 v9, 0x0

    .line 397
    :goto_15
    if-ge v9, v6, :cond_18

    .line 398
    .line 399
    move/from16 p7, v2

    .line 400
    .line 401
    aget-object v2, v5, v9

    .line 402
    .line 403
    move-object/from16 v28, v5

    .line 404
    .line 405
    move/from16 v29, v6

    .line 406
    .line 407
    if-eqz v2, :cond_16

    .line 408
    .line 409
    iget-wide v5, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 410
    .line 411
    move/from16 v30, v8

    .line 412
    .line 413
    move/from16 v31, v9

    .line 414
    .line 415
    const-wide v8, 0x7fffffff7fffffffL

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-nez v5, :cond_17

    .line 425
    .line 426
    iget-wide v5, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 427
    .line 428
    invoke-static {v5, v6, v12, v13}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 429
    .line 430
    .line 431
    move-result-wide v5

    .line 432
    iput-wide v5, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 433
    .line 434
    goto :goto_16

    .line 435
    :cond_16
    move/from16 v30, v8

    .line 436
    .line 437
    move/from16 v31, v9

    .line 438
    .line 439
    :cond_17
    :goto_16
    add-int/lit8 v9, v31, 0x1

    .line 440
    .line 441
    move/from16 v2, p7

    .line 442
    .line 443
    move-object/from16 v5, v28

    .line 444
    .line 445
    move/from16 v6, v29

    .line 446
    .line 447
    move/from16 v8, v30

    .line 448
    .line 449
    goto :goto_15

    .line 450
    :cond_18
    move/from16 p7, v2

    .line 451
    .line 452
    move/from16 v30, v8

    .line 453
    .line 454
    if-eqz p7, :cond_1b

    .line 455
    .line 456
    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 457
    .line 458
    array-length v2, v1

    .line 459
    const/4 v5, 0x0

    .line 460
    :goto_17
    if-ge v5, v2, :cond_1b

    .line 461
    .line 462
    aget-object v6, v1, v5

    .line 463
    .line 464
    if-eqz v6, :cond_1a

    .line 465
    .line 466
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    if-eqz v8, :cond_19

    .line 471
    .line 472
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    iget-object v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 476
    .line 477
    if-eqz v8, :cond_19

    .line 478
    .line 479
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 480
    .line 481
    .line 482
    :cond_19
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    .line 483
    .line 484
    .line 485
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    .line 486
    .line 487
    goto :goto_17

    .line 488
    :cond_1b
    const/4 v1, 0x0

    .line 489
    invoke-virtual {v0, v14, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 490
    .line 491
    .line 492
    goto :goto_18

    .line 493
    :cond_1c
    move/from16 v30, v8

    .line 494
    .line 495
    add-int/lit8 v1, v28, 0x1

    .line 496
    .line 497
    move/from16 v2, v35

    .line 498
    .line 499
    goto/16 :goto_c

    .line 500
    .line 501
    :cond_1d
    move/from16 v35, v2

    .line 502
    .line 503
    move/from16 v30, v8

    .line 504
    .line 505
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    :goto_18
    add-int/lit8 v2, v35, 0x1

    .line 513
    .line 514
    move/from16 v8, v30

    .line 515
    .line 516
    move/from16 v1, v34

    .line 517
    .line 518
    goto/16 :goto_b

    .line 519
    .line 520
    :cond_1e
    move/from16 v1, p9

    .line 521
    .line 522
    new-array v2, v1, [I

    .line 523
    .line 524
    if-eqz v10, :cond_24

    .line 525
    .line 526
    if-eqz v7, :cond_24

    .line 527
    .line 528
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v8

    .line 532
    if-nez v8, :cond_21

    .line 533
    .line 534
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 535
    .line 536
    .line 537
    move-result v8

    .line 538
    const/4 v12, 0x1

    .line 539
    if-le v8, v12, :cond_1f

    .line 540
    .line 541
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 542
    .line 543
    const/4 v12, 0x2

    .line 544
    invoke-direct {v8, v7, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lokhttp3/internal/http/StatusLine;I)V

    .line 545
    .line 546
    .line 547
    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 548
    .line 549
    .line 550
    :cond_1f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    const/4 v12, 0x0

    .line 555
    :goto_19
    if-ge v12, v8, :cond_20

    .line 556
    .line 557
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v13

    .line 561
    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 562
    .line 563
    invoke-static {v2, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 564
    .line 565
    .line 566
    move-result v14

    .line 567
    sub-int v14, p11, v14

    .line 568
    .line 569
    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    invoke-virtual {v11, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 581
    .line 582
    invoke-static {v13, v14, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    .line 583
    .line 584
    .line 585
    const/4 v5, 0x0

    .line 586
    invoke-virtual {v0, v13, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 587
    .line 588
    .line 589
    add-int/lit8 v12, v12, 0x1

    .line 590
    .line 591
    goto :goto_19

    .line 592
    :cond_20
    const/4 v5, 0x0

    .line 593
    const/4 v12, 0x6

    .line 594
    invoke-static {v2, v5, v5, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([IIII)V

    .line 595
    .line 596
    .line 597
    goto :goto_1a

    .line 598
    :cond_21
    const/4 v5, 0x0

    .line 599
    :goto_1a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    if-nez v8, :cond_24

    .line 604
    .line 605
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 606
    .line 607
    .line 608
    move-result v8

    .line 609
    const/4 v12, 0x1

    .line 610
    if-le v8, v12, :cond_22

    .line 611
    .line 612
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 613
    .line 614
    invoke-direct {v8, v7, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lokhttp3/internal/http/StatusLine;I)V

    .line 615
    .line 616
    .line 617
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 618
    .line 619
    .line 620
    :cond_22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 621
    .line 622
    .line 623
    move-result v5

    .line 624
    const/4 v8, 0x0

    .line 625
    :goto_1b
    if-ge v8, v5, :cond_23

    .line 626
    .line 627
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v12

    .line 631
    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 632
    .line 633
    invoke-static {v2, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 634
    .line 635
    .line 636
    move-result v13

    .line 637
    add-int v13, v13, p12

    .line 638
    .line 639
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    .line 640
    .line 641
    .line 642
    move-result v14

    .line 643
    sub-int/2addr v13, v14

    .line 644
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v14

    .line 648
    invoke-virtual {v11, v14}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v14

    .line 652
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 653
    .line 654
    .line 655
    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 656
    .line 657
    invoke-static {v12, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    .line 658
    .line 659
    .line 660
    const/4 v13, 0x0

    .line 661
    invoke-virtual {v0, v12, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 662
    .line 663
    .line 664
    add-int/lit8 v8, v8, 0x1

    .line 665
    .line 666
    goto :goto_1b

    .line 667
    :cond_23
    const/4 v12, 0x6

    .line 668
    const/4 v13, 0x0

    .line 669
    invoke-static {v2, v13, v13, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([IIII)V

    .line 670
    .line 671
    .line 672
    :cond_24
    iget-object v5, v15, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 673
    .line 674
    iget-object v8, v15, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 675
    .line 676
    array-length v12, v8

    .line 677
    const/4 v13, 0x2

    .line 678
    sub-int/2addr v12, v13

    .line 679
    iget-object v14, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/ArrayList;

    .line 680
    .line 681
    move-object/from16 v29, v15

    .line 682
    .line 683
    iget-object v15, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/ArrayList;

    .line 684
    .line 685
    if-ltz v12, :cond_3a

    .line 686
    .line 687
    move-object/from16 v31, v14

    .line 688
    .line 689
    move-object/from16 v30, v15

    .line 690
    .line 691
    const/4 v15, 0x0

    .line 692
    :goto_1c
    aget-wide v13, v8, v15

    .line 693
    .line 694
    move-object/from16 v33, v5

    .line 695
    .line 696
    move-object/from16 v32, v6

    .line 697
    .line 698
    not-long v5, v13

    .line 699
    shl-long v5, v5, v24

    .line 700
    .line 701
    and-long/2addr v5, v13

    .line 702
    and-long v5, v5, v25

    .line 703
    .line 704
    cmp-long v5, v5, v25

    .line 705
    .line 706
    if-eqz v5, :cond_39

    .line 707
    .line 708
    sub-int v5, v15, v12

    .line 709
    .line 710
    not-int v5, v5

    .line 711
    ushr-int/lit8 v5, v5, 0x1f

    .line 712
    .line 713
    const/16 v27, 0x8

    .line 714
    .line 715
    rsub-int/lit8 v5, v5, 0x8

    .line 716
    .line 717
    move-wide/from16 v34, v13

    .line 718
    .line 719
    const/4 v6, 0x0

    .line 720
    :goto_1d
    if-ge v6, v5, :cond_38

    .line 721
    .line 722
    and-long v13, v34, v22

    .line 723
    .line 724
    cmp-long v13, v13, v20

    .line 725
    .line 726
    if-gez v13, :cond_37

    .line 727
    .line 728
    shl-int/lit8 v13, v15, 0x3

    .line 729
    .line 730
    add-int/2addr v13, v6

    .line 731
    aget-object v13, v33, v13

    .line 732
    .line 733
    invoke-virtual {v11, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v14

    .line 737
    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 738
    .line 739
    if-nez v14, :cond_25

    .line 740
    .line 741
    goto/16 :goto_28

    .line 742
    .line 743
    :cond_25
    move/from16 v43, v6

    .line 744
    .line 745
    move/from16 v36, v15

    .line 746
    .line 747
    move-object/from16 v15, p5

    .line 748
    .line 749
    invoke-virtual {v15, v13}, Lokhttp3/internal/http/StatusLine;->getIndex(Ljava/lang/Object;)I

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    move-object/from16 v44, v8

    .line 754
    .line 755
    iget v8, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    .line 756
    .line 757
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 758
    .line 759
    .line 760
    move-result v8

    .line 761
    iput v8, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    .line 762
    .line 763
    sub-int v8, v1, v8

    .line 764
    .line 765
    iget v1, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    .line 766
    .line 767
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    iput v1, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    .line 772
    .line 773
    const/4 v1, -0x1

    .line 774
    if-ne v6, v1, :cond_31

    .line 775
    .line 776
    iget-object v6, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 777
    .line 778
    array-length v8, v6

    .line 779
    const/4 v1, 0x0

    .line 780
    const/16 v37, 0x0

    .line 781
    .line 782
    const/16 v38, 0x0

    .line 783
    .line 784
    :goto_1e
    if-ge v1, v8, :cond_2f

    .line 785
    .line 786
    move/from16 v39, v12

    .line 787
    .line 788
    aget-object v12, v6, v1

    .line 789
    .line 790
    add-int/lit8 v40, v38, 0x1

    .line 791
    .line 792
    if-eqz v12, :cond_2d

    .line 793
    .line 794
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 795
    .line 796
    .line 797
    move-result v41

    .line 798
    if-eqz v41, :cond_26

    .line 799
    .line 800
    move/from16 v41, v1

    .line 801
    .line 802
    move-object/from16 v45, v2

    .line 803
    .line 804
    move-object/from16 v46, v6

    .line 805
    .line 806
    move/from16 p10, v10

    .line 807
    .line 808
    move-object v2, v11

    .line 809
    move-object v6, v13

    .line 810
    move-object/from16 v15, v16

    .line 811
    .line 812
    move-object/from16 v4, v30

    .line 813
    .line 814
    move-object/from16 v10, v31

    .line 815
    .line 816
    const/16 v37, 0x1

    .line 817
    .line 818
    goto/16 :goto_22

    .line 819
    .line 820
    :cond_26
    move/from16 v41, v1

    .line 821
    .line 822
    iget-object v1, v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 823
    .line 824
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    check-cast v1, Ljava/lang/Boolean;

    .line 829
    .line 830
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    if-eqz v1, :cond_27

    .line 835
    .line 836
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 837
    .line 838
    .line 839
    iget-object v1, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 840
    .line 841
    aput-object v16, v1, v38

    .line 842
    .line 843
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 847
    .line 848
    if-eqz v1, :cond_2e

    .line 849
    .line 850
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_21

    .line 854
    .line 855
    :cond_27
    move-object v1, v14

    .line 856
    iget-object v14, v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 857
    .line 858
    if-eqz v14, :cond_2a

    .line 859
    .line 860
    move-object/from16 v42, v13

    .line 861
    .line 862
    iget-object v13, v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->fadeOutSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 863
    .line 864
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 865
    .line 866
    .line 867
    move-result v45

    .line 868
    if-nez v45, :cond_28

    .line 869
    .line 870
    if-nez v13, :cond_29

    .line 871
    .line 872
    :cond_28
    move-object/from16 v45, v2

    .line 873
    .line 874
    move-object/from16 v46, v6

    .line 875
    .line 876
    move/from16 p10, v10

    .line 877
    .line 878
    move-object v2, v11

    .line 879
    move-object/from16 v15, v16

    .line 880
    .line 881
    move-object/from16 v4, v30

    .line 882
    .line 883
    move-object/from16 v10, v31

    .line 884
    .line 885
    move-object/from16 v6, v42

    .line 886
    .line 887
    goto :goto_1f

    .line 888
    :cond_29
    move-object/from16 v45, v1

    .line 889
    .line 890
    iget-object v1, v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 891
    .line 892
    move-object/from16 v46, v6

    .line 893
    .line 894
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 895
    .line 896
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    iget-object v1, v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 900
    .line 901
    move-object v6, v11

    .line 902
    new-instance v11, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 903
    .line 904
    move-object/from16 v15, v16

    .line 905
    .line 906
    const/16 v16, 0xb

    .line 907
    .line 908
    move/from16 p10, v10

    .line 909
    .line 910
    move-object/from16 v4, v30

    .line 911
    .line 912
    move-object/from16 v10, v31

    .line 913
    .line 914
    move-object/from16 v30, v9

    .line 915
    .line 916
    move-object/from16 v31, v29

    .line 917
    .line 918
    const/4 v9, 0x3

    .line 919
    move/from16 v29, v8

    .line 920
    .line 921
    move-object/from16 v8, v45

    .line 922
    .line 923
    move-object/from16 v45, v2

    .line 924
    .line 925
    move-object v2, v6

    .line 926
    move-object/from16 v6, v42

    .line 927
    .line 928
    invoke-direct/range {v11 .. v16}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 929
    .line 930
    .line 931
    invoke-static {v1, v15, v15, v11, v9}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 932
    .line 933
    .line 934
    goto :goto_20

    .line 935
    :cond_2a
    move-object/from16 v45, v2

    .line 936
    .line 937
    move-object/from16 v46, v6

    .line 938
    .line 939
    move/from16 p10, v10

    .line 940
    .line 941
    move-object v2, v11

    .line 942
    move-object v6, v13

    .line 943
    move-object/from16 v15, v16

    .line 944
    .line 945
    move-object/from16 v4, v30

    .line 946
    .line 947
    move-object/from16 v10, v31

    .line 948
    .line 949
    :goto_1f
    move-object/from16 v30, v9

    .line 950
    .line 951
    move-object/from16 v31, v29

    .line 952
    .line 953
    const/4 v9, 0x3

    .line 954
    move/from16 v29, v8

    .line 955
    .line 956
    move-object v8, v1

    .line 957
    :goto_20
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-eqz v1, :cond_2c

    .line 962
    .line 963
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 967
    .line 968
    if-eqz v1, :cond_2b

    .line 969
    .line 970
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 971
    .line 972
    .line 973
    :cond_2b
    const/16 v37, 0x1

    .line 974
    .line 975
    goto :goto_23

    .line 976
    :cond_2c
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    .line 977
    .line 978
    .line 979
    iget-object v1, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 980
    .line 981
    aput-object v15, v1, v38

    .line 982
    .line 983
    goto :goto_23

    .line 984
    :cond_2d
    move/from16 v41, v1

    .line 985
    .line 986
    :cond_2e
    :goto_21
    move-object/from16 v45, v2

    .line 987
    .line 988
    move-object/from16 v46, v6

    .line 989
    .line 990
    move/from16 p10, v10

    .line 991
    .line 992
    move-object v2, v11

    .line 993
    move-object v6, v13

    .line 994
    move-object/from16 v15, v16

    .line 995
    .line 996
    move-object/from16 v4, v30

    .line 997
    .line 998
    move-object/from16 v10, v31

    .line 999
    .line 1000
    :goto_22
    move-object/from16 v30, v9

    .line 1001
    .line 1002
    move-object/from16 v31, v29

    .line 1003
    .line 1004
    const/4 v9, 0x3

    .line 1005
    move/from16 v29, v8

    .line 1006
    .line 1007
    move-object v8, v14

    .line 1008
    :goto_23
    add-int/lit8 v1, v41, 0x1

    .line 1009
    .line 1010
    move-object v11, v2

    .line 1011
    move-object v13, v6

    .line 1012
    move-object v14, v8

    .line 1013
    move-object/from16 v16, v15

    .line 1014
    .line 1015
    move/from16 v8, v29

    .line 1016
    .line 1017
    move-object/from16 v9, v30

    .line 1018
    .line 1019
    move-object/from16 v29, v31

    .line 1020
    .line 1021
    move/from16 v12, v39

    .line 1022
    .line 1023
    move/from16 v38, v40

    .line 1024
    .line 1025
    move-object/from16 v2, v45

    .line 1026
    .line 1027
    move-object/from16 v6, v46

    .line 1028
    .line 1029
    move-object/from16 v15, p5

    .line 1030
    .line 1031
    move-object/from16 v30, v4

    .line 1032
    .line 1033
    move-object/from16 v31, v10

    .line 1034
    .line 1035
    move-object/from16 v4, p4

    .line 1036
    .line 1037
    move/from16 v10, p10

    .line 1038
    .line 1039
    goto/16 :goto_1e

    .line 1040
    .line 1041
    :cond_2f
    move-object/from16 v45, v2

    .line 1042
    .line 1043
    move/from16 p10, v10

    .line 1044
    .line 1045
    move-object v2, v11

    .line 1046
    move/from16 v39, v12

    .line 1047
    .line 1048
    move-object v6, v13

    .line 1049
    move-object/from16 v15, v16

    .line 1050
    .line 1051
    move-object/from16 v4, v30

    .line 1052
    .line 1053
    move-object/from16 v10, v31

    .line 1054
    .line 1055
    move-object/from16 v30, v9

    .line 1056
    .line 1057
    move-object/from16 v31, v29

    .line 1058
    .line 1059
    const/4 v9, 0x3

    .line 1060
    if-nez v37, :cond_30

    .line 1061
    .line 1062
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    .line 1063
    .line 1064
    .line 1065
    :cond_30
    move-object/from16 v1, p5

    .line 1066
    .line 1067
    move-object/from16 v47, v3

    .line 1068
    .line 1069
    move/from16 v11, v36

    .line 1070
    .line 1071
    move/from16 v12, v39

    .line 1072
    .line 1073
    goto/16 :goto_27

    .line 1074
    .line 1075
    :cond_31
    move-object/from16 v45, v2

    .line 1076
    .line 1077
    move/from16 p10, v10

    .line 1078
    .line 1079
    move-object v2, v11

    .line 1080
    move-object v8, v14

    .line 1081
    move-object v1, v15

    .line 1082
    move-object/from16 v15, v16

    .line 1083
    .line 1084
    move-object/from16 v4, v30

    .line 1085
    .line 1086
    move-object/from16 v10, v31

    .line 1087
    .line 1088
    move/from16 v11, v36

    .line 1089
    .line 1090
    move-object/from16 v30, v9

    .line 1091
    .line 1092
    move-object/from16 v31, v29

    .line 1093
    .line 1094
    const/4 v9, 0x3

    .line 1095
    iget-object v14, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->constraints:Landroidx/compose/ui/unit/Constraints;

    .line 1096
    .line 1097
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    .line 1099
    .line 1100
    move-object/from16 v29, v10

    .line 1101
    .line 1102
    iget-wide v9, v14, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1103
    .line 1104
    iget v14, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    .line 1105
    .line 1106
    iget v15, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    .line 1107
    .line 1108
    move-object/from16 v37, p6

    .line 1109
    .line 1110
    move/from16 v38, v6

    .line 1111
    .line 1112
    move-wide/from16 v41, v9

    .line 1113
    .line 1114
    move/from16 v39, v14

    .line 1115
    .line 1116
    move/from16 v40, v15

    .line 1117
    .line 1118
    invoke-virtual/range {v37 .. v42}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v6

    .line 1122
    move/from16 v9, v38

    .line 1123
    .line 1124
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem()V

    .line 1125
    .line 1126
    .line 1127
    iget-object v10, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 1128
    .line 1129
    array-length v14, v10

    .line 1130
    const/4 v15, 0x0

    .line 1131
    :goto_24
    if-ge v15, v14, :cond_34

    .line 1132
    .line 1133
    move-object/from16 v47, v3

    .line 1134
    .line 1135
    aget-object v3, v10, v15

    .line 1136
    .line 1137
    if-eqz v3, :cond_32

    .line 1138
    .line 1139
    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1140
    .line 1141
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v3

    .line 1145
    check-cast v3, Ljava/lang/Boolean;

    .line 1146
    .line 1147
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    move-object/from16 v37, v6

    .line 1152
    .line 1153
    const/4 v6, 0x1

    .line 1154
    if-ne v3, v6, :cond_33

    .line 1155
    .line 1156
    goto :goto_25

    .line 1157
    :cond_32
    move-object/from16 v37, v6

    .line 1158
    .line 1159
    :cond_33
    add-int/lit8 v15, v15, 0x1

    .line 1160
    .line 1161
    move-object/from16 v6, v37

    .line 1162
    .line 1163
    move-object/from16 v3, v47

    .line 1164
    .line 1165
    goto :goto_24

    .line 1166
    :cond_34
    move-object/from16 v47, v3

    .line 1167
    .line 1168
    move-object/from16 v37, v6

    .line 1169
    .line 1170
    if-eqz v7, :cond_35

    .line 1171
    .line 1172
    invoke-virtual {v7, v13}, Lokhttp3/internal/http/StatusLine;->getIndex(Ljava/lang/Object;)I

    .line 1173
    .line 1174
    .line 1175
    move-result v3

    .line 1176
    if-ne v9, v3, :cond_35

    .line 1177
    .line 1178
    invoke-virtual {v0, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    .line 1179
    .line 1180
    .line 1181
    goto :goto_26

    .line 1182
    :cond_35
    :goto_25
    iget v3, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    .line 1183
    .line 1184
    move/from16 v40, p11

    .line 1185
    .line 1186
    move/from16 v41, p12

    .line 1187
    .line 1188
    move-object/from16 v38, p13

    .line 1189
    .line 1190
    move-object/from16 v39, p14

    .line 1191
    .line 1192
    move/from16 v42, v3

    .line 1193
    .line 1194
    move-object/from16 v36, v8

    .line 1195
    .line 1196
    invoke-virtual/range {v36 .. v42}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;III)V

    .line 1197
    .line 1198
    .line 1199
    move-object/from16 v3, v37

    .line 1200
    .line 1201
    iget v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 1202
    .line 1203
    if-ge v9, v6, :cond_36

    .line 1204
    .line 1205
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    :goto_26
    move-object/from16 v10, v29

    .line 1209
    .line 1210
    goto :goto_27

    .line 1211
    :cond_36
    move-object/from16 v10, v29

    .line 1212
    .line 1213
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    :goto_27
    const/16 v3, 0x8

    .line 1217
    .line 1218
    goto :goto_29

    .line 1219
    :cond_37
    :goto_28
    move-object/from16 v1, p5

    .line 1220
    .line 1221
    move-object/from16 v45, v2

    .line 1222
    .line 1223
    move-object/from16 v47, v3

    .line 1224
    .line 1225
    move/from16 v43, v6

    .line 1226
    .line 1227
    move-object/from16 v44, v8

    .line 1228
    .line 1229
    move/from16 p10, v10

    .line 1230
    .line 1231
    move-object v2, v11

    .line 1232
    move v11, v15

    .line 1233
    move-object/from16 v4, v30

    .line 1234
    .line 1235
    move-object/from16 v10, v31

    .line 1236
    .line 1237
    move-object/from16 v30, v9

    .line 1238
    .line 1239
    move-object/from16 v31, v29

    .line 1240
    .line 1241
    goto :goto_27

    .line 1242
    :goto_29
    shr-long v34, v34, v3

    .line 1243
    .line 1244
    add-int/lit8 v6, v43, 0x1

    .line 1245
    .line 1246
    move/from16 v1, p9

    .line 1247
    .line 1248
    move v15, v11

    .line 1249
    move-object/from16 v9, v30

    .line 1250
    .line 1251
    move-object/from16 v29, v31

    .line 1252
    .line 1253
    move-object/from16 v8, v44

    .line 1254
    .line 1255
    move-object/from16 v3, v47

    .line 1256
    .line 1257
    const/16 v16, 0x0

    .line 1258
    .line 1259
    move-object v11, v2

    .line 1260
    move-object/from16 v30, v4

    .line 1261
    .line 1262
    move-object/from16 v31, v10

    .line 1263
    .line 1264
    move-object/from16 v2, v45

    .line 1265
    .line 1266
    move-object/from16 v4, p4

    .line 1267
    .line 1268
    move/from16 v10, p10

    .line 1269
    .line 1270
    goto/16 :goto_1d

    .line 1271
    .line 1272
    :cond_38
    move-object/from16 v1, p5

    .line 1273
    .line 1274
    move-object/from16 v45, v2

    .line 1275
    .line 1276
    move-object/from16 v47, v3

    .line 1277
    .line 1278
    move-object/from16 v44, v8

    .line 1279
    .line 1280
    move/from16 p10, v10

    .line 1281
    .line 1282
    move-object v2, v11

    .line 1283
    move v11, v15

    .line 1284
    move-object/from16 v4, v30

    .line 1285
    .line 1286
    move-object/from16 v10, v31

    .line 1287
    .line 1288
    const/16 v3, 0x8

    .line 1289
    .line 1290
    move-object/from16 v30, v9

    .line 1291
    .line 1292
    move-object/from16 v31, v29

    .line 1293
    .line 1294
    if-ne v5, v3, :cond_3b

    .line 1295
    .line 1296
    goto :goto_2a

    .line 1297
    :cond_39
    move-object/from16 v1, p5

    .line 1298
    .line 1299
    move-object/from16 v45, v2

    .line 1300
    .line 1301
    move-object/from16 v47, v3

    .line 1302
    .line 1303
    move-object/from16 v44, v8

    .line 1304
    .line 1305
    move/from16 p10, v10

    .line 1306
    .line 1307
    move-object v2, v11

    .line 1308
    move v11, v15

    .line 1309
    move-object/from16 v4, v30

    .line 1310
    .line 1311
    move-object/from16 v10, v31

    .line 1312
    .line 1313
    const/16 v3, 0x8

    .line 1314
    .line 1315
    move-object/from16 v30, v9

    .line 1316
    .line 1317
    move-object/from16 v31, v29

    .line 1318
    .line 1319
    :goto_2a
    if-eq v11, v12, :cond_3b

    .line 1320
    .line 1321
    add-int/lit8 v15, v11, 0x1

    .line 1322
    .line 1323
    move/from16 v1, p9

    .line 1324
    .line 1325
    move-object v11, v2

    .line 1326
    move-object/from16 v9, v30

    .line 1327
    .line 1328
    move-object/from16 v29, v31

    .line 1329
    .line 1330
    move-object/from16 v6, v32

    .line 1331
    .line 1332
    move-object/from16 v5, v33

    .line 1333
    .line 1334
    move-object/from16 v8, v44

    .line 1335
    .line 1336
    move-object/from16 v2, v45

    .line 1337
    .line 1338
    move-object/from16 v3, v47

    .line 1339
    .line 1340
    const/16 v16, 0x0

    .line 1341
    .line 1342
    move-object/from16 v30, v4

    .line 1343
    .line 1344
    move-object/from16 v31, v10

    .line 1345
    .line 1346
    move-object/from16 v4, p4

    .line 1347
    .line 1348
    move/from16 v10, p10

    .line 1349
    .line 1350
    goto/16 :goto_1c

    .line 1351
    .line 1352
    :cond_3a
    move-object/from16 v1, p5

    .line 1353
    .line 1354
    move-object/from16 v45, v2

    .line 1355
    .line 1356
    move-object/from16 v32, v6

    .line 1357
    .line 1358
    move-object/from16 v30, v9

    .line 1359
    .line 1360
    move/from16 p10, v10

    .line 1361
    .line 1362
    move-object v2, v11

    .line 1363
    move-object v10, v14

    .line 1364
    move-object v4, v15

    .line 1365
    move-object/from16 v31, v29

    .line 1366
    .line 1367
    :cond_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1368
    .line 1369
    .line 1370
    move-result v3

    .line 1371
    if-nez v3, :cond_41

    .line 1372
    .line 1373
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1374
    .line 1375
    .line 1376
    move-result v3

    .line 1377
    const/4 v12, 0x1

    .line 1378
    if-le v3, v12, :cond_3c

    .line 1379
    .line 1380
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 1381
    .line 1382
    const/4 v9, 0x3

    .line 1383
    invoke-direct {v3, v1, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lokhttp3/internal/http/StatusLine;I)V

    .line 1384
    .line 1385
    .line 1386
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1387
    .line 1388
    .line 1389
    :cond_3c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1390
    .line 1391
    .line 1392
    move-result v3

    .line 1393
    const/4 v5, 0x0

    .line 1394
    :goto_2b
    if-ge v5, v3, :cond_40

    .line 1395
    .line 1396
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v6

    .line 1400
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1401
    .line 1402
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v7

    .line 1406
    invoke-virtual {v2, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v7

    .line 1410
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1411
    .line 1412
    .line 1413
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 1414
    .line 1415
    move-object/from16 v8, v45

    .line 1416
    .line 1417
    invoke-static {v8, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 1418
    .line 1419
    .line 1420
    move-result v9

    .line 1421
    if-eqz p8, :cond_3e

    .line 1422
    .line 1423
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v11

    .line 1427
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1428
    .line 1429
    const/4 v13, 0x0

    .line 1430
    invoke-interface {v11, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 1431
    .line 1432
    .line 1433
    move-result-wide v14

    .line 1434
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    .line 1435
    .line 1436
    .line 1437
    move-result v11

    .line 1438
    if-eqz v11, :cond_3d

    .line 1439
    .line 1440
    and-long v11, v14, v17

    .line 1441
    .line 1442
    :goto_2c
    long-to-int v11, v11

    .line 1443
    goto :goto_2d

    .line 1444
    :cond_3d
    shr-long v11, v14, v19

    .line 1445
    .line 1446
    goto :goto_2c

    .line 1447
    :cond_3e
    iget v11, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMinOffset:I

    .line 1448
    .line 1449
    :goto_2d
    sub-int/2addr v11, v9

    .line 1450
    iget v7, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    .line 1451
    .line 1452
    move/from16 v9, p2

    .line 1453
    .line 1454
    move/from16 v12, p3

    .line 1455
    .line 1456
    invoke-interface {v6, v11, v7, v9, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 1457
    .line 1458
    .line 1459
    if-eqz p10, :cond_3f

    .line 1460
    .line 1461
    const/4 v7, 0x1

    .line 1462
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 1463
    .line 1464
    .line 1465
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    .line 1466
    .line 1467
    move-object/from16 v45, v8

    .line 1468
    .line 1469
    goto :goto_2b

    .line 1470
    :cond_40
    move/from16 v9, p2

    .line 1471
    .line 1472
    move/from16 v12, p3

    .line 1473
    .line 1474
    move-object/from16 v8, v45

    .line 1475
    .line 1476
    const/4 v5, 0x6

    .line 1477
    const/4 v13, 0x0

    .line 1478
    invoke-static {v8, v13, v13, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([IIII)V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_2e

    .line 1482
    :cond_41
    move/from16 v9, p2

    .line 1483
    .line 1484
    move/from16 v12, p3

    .line 1485
    .line 1486
    move-object/from16 v8, v45

    .line 1487
    .line 1488
    :goto_2e
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1489
    .line 1490
    .line 1491
    move-result v3

    .line 1492
    if-nez v3, :cond_44

    .line 1493
    .line 1494
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1495
    .line 1496
    .line 1497
    move-result v3

    .line 1498
    const/4 v6, 0x1

    .line 1499
    if-le v3, v6, :cond_42

    .line 1500
    .line 1501
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 1502
    .line 1503
    invoke-direct {v3, v1, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lokhttp3/internal/http/StatusLine;I)V

    .line 1504
    .line 1505
    .line 1506
    invoke-static {v10, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1507
    .line 1508
    .line 1509
    :cond_42
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1510
    .line 1511
    .line 1512
    move-result v1

    .line 1513
    const/4 v3, 0x0

    .line 1514
    :goto_2f
    if-ge v3, v1, :cond_44

    .line 1515
    .line 1516
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v5

    .line 1520
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 1521
    .line 1522
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v6

    .line 1526
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v6

    .line 1530
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1531
    .line 1532
    .line 1533
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 1534
    .line 1535
    invoke-static {v8, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    .line 1536
    .line 1537
    .line 1538
    move-result v7

    .line 1539
    iget v11, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMaxOffset:I

    .line 1540
    .line 1541
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    .line 1542
    .line 1543
    .line 1544
    move-result v13

    .line 1545
    sub-int/2addr v11, v13

    .line 1546
    add-int/2addr v11, v7

    .line 1547
    iget v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    .line 1548
    .line 1549
    invoke-interface {v5, v11, v6, v9, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 1550
    .line 1551
    .line 1552
    const/4 v6, 0x1

    .line 1553
    if-eqz p10, :cond_43

    .line 1554
    .line 1555
    invoke-virtual {v0, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    .line 1556
    .line 1557
    .line 1558
    :cond_43
    add-int/lit8 v3, v3, 0x1

    .line 1559
    .line 1560
    goto :goto_2f

    .line 1561
    :cond_44
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1562
    .line 1563
    .line 1564
    move-object/from16 v0, p4

    .line 1565
    .line 1566
    const/4 v13, 0x0

    .line 1567
    invoke-virtual {v0, v13, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1571
    .line 1572
    .line 1573
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual/range {v31 .. v31}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 1586
    .line 1587
    .line 1588
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
    .locals 13

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
    add-int/lit8 v10, v2, 0x1

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v11

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
    invoke-static {v2, v3, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    invoke-static {v11, v12, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

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
    iget-object v2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 79
    .line 80
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput-boolean p2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isRunningMovingAwayAnimation:Z

    .line 86
    .line 87
    iget-object v2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 88
    .line 89
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    const/4 v9, 0x3

    .line 93
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 94
    .line 95
    .line 96
    const/4 v5, 0x3

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-static {v2, v6, v6, v3, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_1
    iput-wide v11, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    .line 102
    .line 103
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    move v2, v10

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    return-void
.end method
