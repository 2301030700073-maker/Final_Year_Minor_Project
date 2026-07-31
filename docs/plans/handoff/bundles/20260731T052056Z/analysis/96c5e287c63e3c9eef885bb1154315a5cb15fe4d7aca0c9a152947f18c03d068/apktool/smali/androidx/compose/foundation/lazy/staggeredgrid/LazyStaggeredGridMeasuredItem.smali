.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;


# instance fields
.field public final afterContentPadding:I

.field public final animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final beforeContentPadding:I

.field public final constraints:J

.field public final contentType:Ljava/lang/Object;

.field public final index:I

.field public final isVertical:Z

.field public isVisible:Z

.field public final key:Ljava/lang/Object;

.field public final lane:I

.field public mainAxisLayoutSize:I

.field public final mainAxisSize:I

.field public final mainAxisSizeWithSpacings:I

.field public maxMainAxisOffset:I

.field public minMainAxisOffset:I

.field public nonScrollableItem:Z

.field public offset:J

.field public final placeables:Ljava/util/List;

.field public final size:J

.field public final span:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->key:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    .line 13
    .line 14
    iput p7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    .line 15
    .line 16
    iput p8, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->beforeContentPadding:I

    .line 17
    .line 18
    iput p9, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->afterContentPadding:I

    .line 19
    .line 20
    iput-object p10, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->contentType:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p11, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 23
    .line 24
    iput-wide p12, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->constraints:J

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 p6, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    move p2, p6

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroidx/compose/ui/layout/Placeable;

    .line 43
    .line 44
    if-eqz p4, :cond_1

    .line 45
    .line 46
    iget p2, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget p2, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 50
    .line 51
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    sub-int/2addr p4, p1

    .line 56
    if-gt p1, p4, :cond_4

    .line 57
    .line 58
    move p7, p1

    .line 59
    :goto_1
    invoke-interface {p3, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p8

    .line 63
    check-cast p8, Landroidx/compose/ui/layout/Placeable;

    .line 64
    .line 65
    iget-boolean p9, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 66
    .line 67
    if-eqz p9, :cond_2

    .line 68
    .line 69
    iget p8, p8, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget p8, p8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 73
    .line 74
    :goto_2
    if-le p8, p2, :cond_3

    .line 75
    .line 76
    move p2, p8

    .line 77
    :cond_3
    if-eq p7, p4, :cond_4

    .line 78
    .line 79
    add-int/lit8 p7, p7, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    :goto_3
    iput p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    .line 83
    .line 84
    add-int/2addr p2, p5

    .line 85
    if-gez p2, :cond_5

    .line 86
    .line 87
    move p2, p6

    .line 88
    :cond_5
    iput p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 89
    .line 90
    iget-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_6

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_6
    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    check-cast p3, Landroidx/compose/ui/layout/Placeable;

    .line 104
    .line 105
    iget-boolean p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 106
    .line 107
    if-eqz p4, :cond_7

    .line 108
    .line 109
    iget p3, p3, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_7
    iget p3, p3, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 113
    .line 114
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    sub-int/2addr p4, p1

    .line 119
    if-gt p1, p4, :cond_a

    .line 120
    .line 121
    :goto_5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p5

    .line 125
    check-cast p5, Landroidx/compose/ui/layout/Placeable;

    .line 126
    .line 127
    iget-boolean p6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 128
    .line 129
    if-eqz p6, :cond_8

    .line 130
    .line 131
    iget p5, p5, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    iget p5, p5, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 135
    .line 136
    :goto_6
    if-le p5, p3, :cond_9

    .line 137
    .line 138
    move p3, p5

    .line 139
    :cond_9
    if-eq p1, p4, :cond_a

    .line 140
    .line 141
    add-int/lit8 p1, p1, 0x1

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_a
    move p6, p3

    .line 145
    :goto_7
    const/high16 p1, -0x80000000

    .line 146
    .line 147
    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    .line 148
    .line 149
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 150
    .line 151
    iget p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    .line 152
    .line 153
    const-wide p3, 0xffffffffL

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    const/16 p5, 0x20

    .line 159
    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    int-to-long p6, p6

    .line 163
    shl-long p5, p6, p5

    .line 164
    .line 165
    int-to-long p1, p2

    .line 166
    and-long/2addr p1, p3

    .line 167
    or-long/2addr p1, p5

    .line 168
    goto :goto_8

    .line 169
    :cond_b
    int-to-long p1, p2

    .line 170
    shl-long/2addr p1, p5

    .line 171
    int-to-long p5, p6

    .line 172
    and-long/2addr p3, p5

    .line 173
    or-long/2addr p1, p3

    .line 174
    :goto_8
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->size:J

    .line 175
    .line 176
    const-wide/16 p1, 0x0

    .line 177
    .line 178
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 179
    .line 180
    return-void
.end method


# virtual methods
.method public final getConstraints-msEJaDk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->constraints:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLane()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMainAxis--gyyYBs(J)I
    .locals 2

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr p1, v0

    .line 11
    long-to-int p0, p1

    .line 12
    return p0

    .line 13
    :cond_0
    const/16 p0, 0x20

    .line 14
    .line 15
    shr-long p0, p1, p0

    .line 16
    .line 17
    long-to-int p0, p0

    .line 18
    return p0
.end method

.method public final getMainAxisOffset()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 2
    .line 3
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x20

    .line 8
    .line 9
    shr-long/2addr v0, p0

    .line 10
    :goto_0
    long-to-int p0, v0

    .line 11
    return p0

    .line 12
    :cond_0
    const-wide v2, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr v0, v2

    .line 18
    goto :goto_0
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOffset-Bjo55l4(I)J
    .locals 0

    .line 1
    iget-wide p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 2
    .line 3
    return-wide p0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getPlaceablesCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getSpan()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    .line 2
    .line 3
    return p0
.end method

.method public final isVertical()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 2
    .line 3
    return p0
.end method

.method public final position(III)V
    .locals 5

    .line 1
    iput p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->beforeContentPadding:I

    .line 4
    .line 5
    neg-int v0, v0

    .line 6
    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->minMainAxisOffset:I

    .line 7
    .line 8
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->afterContentPadding:I

    .line 9
    .line 10
    add-int/2addr p3, v0

    .line 11
    iput p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->maxMainAxisOffset:I

    .line 12
    .line 13
    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 14
    .line 15
    const-wide v0, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/16 v2, 0x20

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    int-to-long p2, p2

    .line 25
    shl-long/2addr p2, v2

    .line 26
    int-to-long v2, p1

    .line 27
    and-long/2addr v0, v2

    .line 28
    or-long/2addr p2, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    int-to-long v3, p1

    .line 31
    shl-long v2, v3, v2

    .line 32
    .line 33
    int-to-long p1, p2

    .line 34
    and-long/2addr p1, v0

    .line 35
    or-long/2addr p1, v2

    .line 36
    move-wide p2, p1

    .line 37
    :goto_0
    iput-wide p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 38
    .line 39
    return-void
.end method

.method public final position(IIII)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    move p3, p4

    .line 41
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    return-void
.end method

.method public final setNonScrollableItem()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->nonScrollableItem:Z

    .line 3
    .line 4
    return-void
.end method
