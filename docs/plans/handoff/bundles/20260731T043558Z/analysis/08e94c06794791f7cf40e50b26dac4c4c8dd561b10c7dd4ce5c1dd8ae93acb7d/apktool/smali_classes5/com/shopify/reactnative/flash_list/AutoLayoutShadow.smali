.class public final Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;
.super Ljava/lang/Object;
.source "AutoLayoutShadow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'\u00a2\u0006\u0002\u0010)J\u001e\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bJ\u0010\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020(H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\r\"\u0004\u0008\u0018\u0010\u000fR\u001a\u0010\u0019\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\r\"\u0004\u0008\u001b\u0010\u000fR\u001a\u0010\u001c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\r\"\u0004\u0008\u001e\u0010\u000fR\u001a\u0010\u001f\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\r\"\u0004\u0008!\u0010\u000fR\u000e\u0010\"\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;",
        "",
        "<init>",
        "()V",
        "horizontal",
        "",
        "getHorizontal",
        "()Z",
        "setHorizontal",
        "(Z)V",
        "scrollOffset",
        "",
        "getScrollOffset",
        "()I",
        "setScrollOffset",
        "(I)V",
        "offsetFromStart",
        "getOffsetFromStart",
        "setOffsetFromStart",
        "windowSize",
        "getWindowSize",
        "setWindowSize",
        "renderOffset",
        "getRenderOffset",
        "setRenderOffset",
        "blankOffsetAtStart",
        "getBlankOffsetAtStart",
        "setBlankOffsetAtStart",
        "blankOffsetAtEnd",
        "getBlankOffsetAtEnd",
        "setBlankOffsetAtEnd",
        "lastMaxBoundOverall",
        "getLastMaxBoundOverall",
        "setLastMaxBoundOverall",
        "lastMaxBound",
        "lastMinBound",
        "clearGapsAndOverlaps",
        "",
        "sortedItems",
        "",
        "Lcom/shopify/reactnative/flash_list/CellContainer;",
        "([Lcom/shopify/reactnative/flash_list/CellContainer;)V",
        "computeBlankFromGivenOffset",
        "actualScrollOffset",
        "distanceFromWindowStart",
        "distanceFromWindowEnd",
        "isWithinBounds",
        "cell",
        "shopify_flash-list_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private blankOffsetAtEnd:I

.field private blankOffsetAtStart:I

.field private horizontal:Z

.field private lastMaxBound:I

.field private lastMaxBoundOverall:I

.field private lastMinBound:I

.field private offsetFromStart:I

.field private renderOffset:I

.field private scrollOffset:I

.field private windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isWithinBounds(Lcom/shopify/reactnative/flash_list/CellContainer;)Z
    .locals 5

    .line 96
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->scrollOffset:I

    iget v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->offsetFromStart:I

    sub-int/2addr v0, v1

    .line 97
    iget-boolean v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->horizontal:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 98
    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v1

    iget v4, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->renderOffset:I

    sub-int v4, v0, v4

    if-ge v1, v4, :cond_0

    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v1

    iget v4, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->renderOffset:I

    sub-int v4, v0, v4

    if-lt v1, v4, :cond_4

    .line 99
    :cond_0
    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v1

    iget v4, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->windowSize:I

    add-int/2addr v4, v0

    if-le v1, v4, :cond_3

    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->windowSize:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_4

    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v1

    iget v4, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->renderOffset:I

    sub-int v4, v0, v4

    if-ge v1, v4, :cond_2

    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v1

    iget v4, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->renderOffset:I

    sub-int v4, v0, v4

    if-lt v1, v4, :cond_4

    .line 102
    :cond_2
    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v1

    iget v4, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->windowSize:I

    add-int/2addr v4, v0

    if-le v1, v4, :cond_3

    invoke-interface {p1}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result p1

    iget v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->windowSize:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_4

    :cond_3
    :goto_0
    move v2, v3

    :cond_4
    return v2
.end method


# virtual methods
.method public final clearGapsAndOverlaps([Lcom/shopify/reactnative/flash_list/CellContainer;)V
    .locals 12

    const-string v0, "sortedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBoundOverall:I

    .line 25
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const v3, 0x7fffffff

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_d

    .line 26
    aget-object v7, p1, v4

    add-int/lit8 v4, v4, 0x1

    .line 27
    aget-object v8, p1, v4

    .line 29
    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getIndex()I

    move-result v9

    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getIndex()I

    move-result v10

    add-int/2addr v10, v2

    if-ne v9, v10, :cond_0

    move v9, v2

    goto :goto_1

    :cond_0
    move v9, v0

    .line 30
    :goto_1
    invoke-direct {p0, v7}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->isWithinBounds(Lcom/shopify/reactnative/flash_list/CellContainer;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0, v8}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->isWithinBounds(Lcom/shopify/reactnative/flash_list/CellContainer;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 31
    :cond_1
    iget-boolean v5, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->horizontal:Z

    if-nez v5, :cond_5

    .line 32
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 33
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz v9, :cond_4

    .line 36
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 37
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v9

    if-eq v6, v9, :cond_2

    .line 38
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setRight(I)V

    .line 39
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v6

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setLeft(I)V

    .line 41
    :cond_2
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v9

    if-eq v6, v9, :cond_4

    .line 42
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getHeight()I

    move-result v9

    add-int/2addr v6, v9

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setBottom(I)V

    .line 43
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v6

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setTop(I)V

    goto :goto_2

    .line 46
    :cond_3
    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setBottom(I)V

    .line 47
    invoke-interface {v8, v5}, Lcom/shopify/reactnative/flash_list/CellContainer;->setTop(I)V

    .line 50
    :cond_4
    :goto_2
    invoke-direct {p0, v8}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->isWithinBounds(Lcom/shopify/reactnative/flash_list/CellContainer;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 51
    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4

    .line 54
    :cond_5
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 55
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz v9, :cond_8

    .line 58
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 59
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getTop()I

    move-result v9

    if-eq v6, v9, :cond_6

    .line 60
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getHeight()I

    move-result v9

    add-int/2addr v6, v9

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setBottom(I)V

    .line 61
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v6

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setTop(I)V

    .line 63
    :cond_6
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v9

    if-eq v6, v9, :cond_8

    .line 64
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v6

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setRight(I)V

    .line 65
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getLeft()I

    move-result v6

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setLeft(I)V

    goto :goto_3

    .line 68
    :cond_7
    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-interface {v8, v6}, Lcom/shopify/reactnative/flash_list/CellContainer;->setRight(I)V

    .line 69
    invoke-interface {v8, v5}, Lcom/shopify/reactnative/flash_list/CellContainer;->setLeft(I)V

    .line 72
    :cond_8
    :goto_3
    invoke-direct {p0, v8}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->isWithinBounds(Lcom/shopify/reactnative/flash_list/CellContainer;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 73
    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_4
    move v11, v6

    move v6, v5

    move v5, v11

    goto :goto_5

    :cond_9
    move v6, v5

    .line 77
    :cond_a
    :goto_5
    iget v9, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBoundOverall:I

    iget-boolean v10, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->horizontal:Z

    if-eqz v10, :cond_b

    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v7

    goto :goto_6

    :cond_b
    invoke-interface {v7}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v7

    :goto_6
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBoundOverall:I

    .line 78
    iget-boolean v9, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->horizontal:Z

    if-eqz v9, :cond_c

    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getRight()I

    move-result v8

    goto :goto_7

    :cond_c
    invoke-interface {v8}, Lcom/shopify/reactnative/flash_list/CellContainer;->getBottom()I

    move-result v8

    :goto_7
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBoundOverall:I

    goto/16 :goto_0

    .line 80
    :cond_d
    iput v5, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBound:I

    .line 81
    iput v3, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMinBound:I

    return-void
.end method

.method public final computeBlankFromGivenOffset(III)I
    .locals 1

    .line 87
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->offsetFromStart:I

    sub-int/2addr p1, v0

    .line 88
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMinBound:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->blankOffsetAtStart:I

    .line 89
    iget p2, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->windowSize:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->renderOffset:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBound:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->blankOffsetAtEnd:I

    .line 90
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final getBlankOffsetAtEnd()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->blankOffsetAtEnd:I

    return v0
.end method

.method public final getBlankOffsetAtStart()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->blankOffsetAtStart:I

    return v0
.end method

.method public final getHorizontal()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->horizontal:Z

    return v0
.end method

.method public final getLastMaxBoundOverall()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBoundOverall:I

    return v0
.end method

.method public final getOffsetFromStart()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->offsetFromStart:I

    return v0
.end method

.method public final getRenderOffset()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->renderOffset:I

    return v0
.end method

.method public final getScrollOffset()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->scrollOffset:I

    return v0
.end method

.method public final getWindowSize()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->windowSize:I

    return v0
.end method

.method public final setBlankOffsetAtEnd(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->blankOffsetAtEnd:I

    return-void
.end method

.method public final setBlankOffsetAtStart(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->blankOffsetAtStart:I

    return-void
.end method

.method public final setHorizontal(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->horizontal:Z

    return-void
.end method

.method public final setLastMaxBoundOverall(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->lastMaxBoundOverall:I

    return-void
.end method

.method public final setOffsetFromStart(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->offsetFromStart:I

    return-void
.end method

.method public final setRenderOffset(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->renderOffset:I

    return-void
.end method

.method public final setScrollOffset(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->scrollOffset:I

    return-void
.end method

.method public final setWindowSize(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->windowSize:I

    return-void
.end method
