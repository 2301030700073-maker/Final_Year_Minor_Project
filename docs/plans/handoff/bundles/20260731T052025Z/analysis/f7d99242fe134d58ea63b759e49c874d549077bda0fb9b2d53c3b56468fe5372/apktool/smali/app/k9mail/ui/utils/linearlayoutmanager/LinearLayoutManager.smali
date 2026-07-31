.class public Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;
.super Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# instance fields
.field public final mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

.field public final mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

.field public mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

.field public final mOrientation:I

.field public final mOrientationHelper:Landroidx/room/RoomOpenDelegate;

.field public mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field public final mReusableIntPair:[I

.field public mScrolledToTop:Z

.field public mShouldReverseLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    iput v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 19
    .line 20
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 29
    .line 30
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v4, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    new-array v4, v4, [I

    .line 39
    .line 40
    iput-object v4, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mReusableIntPair:[I

    .line 41
    .line 42
    iput-boolean v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mScrolledToTop:Z

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 48
    .line 49
    if-ne v0, v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    :cond_0
    invoke-static {p0, v0}, Landroidx/room/RoomOpenDelegate;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/room/RoomOpenDelegate;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 60
    .line 61
    iput-object v1, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 62
    .line 63
    iput v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 2

    .line 1
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 16
    .line 17
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 18
    .line 19
    if-ne p0, v1, :cond_1

    .line 20
    .line 21
    move p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move p0, p1

    .line 24
    move p1, v0

    .line 25
    :goto_1
    aput p1, p2, v0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    aput p0, p2, p1

    .line 29
    .line 30
    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 0

    .line 1
    iget p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final canScrollVertically()Z
    .locals 1

    .line 1
    iget p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/collection/CircularArray;)V
    .locals 1

    .line 1
    iget v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-lez p1, :cond_2

    .line 21
    .line 22
    move v0, p2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 v0, -0x1

    .line 25
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, v0, p1, p2, p3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutState$1(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 33
    .line 34
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 35
    .line 36
    if-ltz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-ge p1, p2, :cond_3

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 46
    .line 47
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-virtual {p4, p1, p0}, Landroidx/collection/CircularArray;->addPosition(II)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_2
    return-void
.end method

.method public final collectInitialPrefetchPositions(ILandroidx/collection/CircularArray;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    iget-boolean p0, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->resolveShouldLayoutReverse$2()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 18
    .line 19
    iget v3, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 20
    .line 21
    if-ne v3, v1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    add-int/lit8 p0, p1, -0x1

    .line 26
    .line 27
    move v3, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v3, v2

    .line 30
    :cond_2
    :goto_0
    move p0, v0

    .line 31
    :goto_1
    if-eqz p0, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    const/4 v1, 0x1

    .line 35
    :goto_2
    move p0, v2

    .line 36
    :goto_3
    const/4 v0, 0x2

    .line 37
    if-ge p0, v0, :cond_4

    .line 38
    .line 39
    if-ltz v3, :cond_4

    .line 40
    .line 41
    if-ge v3, p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p2, v3, v2}, Landroidx/collection/CircularArray;->addPosition(II)V

    .line 44
    .line 45
    .line 46
    add-int/2addr v3, v1

    .line 47
    add-int/lit8 p0, p0, 0x1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->computeScrollExtent$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->computeScrollOffset$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->computeScrollRange$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final computeScrollExtent$2(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findFirstVisibleChildClosestToStart()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findFirstVisibleChildClosestToEnd()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr p1, v0

    .line 47
    invoke-virtual {p0}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public final computeScrollOffset$2(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findFirstVisibleChildClosestToStart()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findFirstVisibleChildClosestToEnd()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-boolean v3, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    sub-int/2addr p1, v5

    .line 71
    add-int/lit8 p1, p1, -0x1

    .line 72
    .line 73
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    :goto_0
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {p0, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    sub-int/2addr v1, v3

    .line 93
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    sub-int/2addr v3, v2

    .line 106
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    int-to-float v1, v1

    .line 113
    int-to-float v2, v2

    .line 114
    div-float/2addr v1, v2

    .line 115
    int-to-float p1, p1

    .line 116
    mul-float/2addr p1, v1

    .line 117
    invoke-virtual {p0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {p0, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    sub-int/2addr v1, p0

    .line 126
    int-to-float p0, v1

    .line 127
    add-float/2addr p1, p0

    .line 128
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    return p0

    .line 133
    :cond_3
    :goto_1
    return v1
.end method

.method public final computeScrollRange$2(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findFirstVisibleChildClosestToStart()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findFirstVisibleChildClosestToEnd()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    sub-int/2addr v2, p0

    .line 47
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sub-int/2addr p0, v0

    .line 56
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    add-int/lit8 p0, p0, 0x1

    .line 61
    .line 62
    int-to-float v0, v2

    .line 63
    int-to-float p0, p0

    .line 64
    div-float/2addr v0, p0

    .line 65
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    int-to-float p0, p0

    .line 70
    mul-float/2addr v0, p0

    .line 71
    float-to-int p0, v0

    .line 72
    return p0

    .line 73
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 74
    return p0
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_0
    const/4 v2, 0x1

    .line 23
    if-ge p1, v1, :cond_2

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_2
    iget-boolean p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 27
    .line 28
    if-eq v0, p1, :cond_3

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    :cond_3
    iget p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    if-nez p0, :cond_4

    .line 35
    .line 36
    new-instance p0, Landroid/graphics/PointF;

    .line 37
    .line 38
    int-to-float v0, v2

    .line 39
    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_4
    new-instance p0, Landroid/graphics/PointF;

    .line 44
    .line 45
    int-to-float v0, v2

    .line 46
    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->computeScrollExtent$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->computeScrollOffset$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->computeScrollRange$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final ensureLayoutState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 15
    .line 16
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 20
    .line 21
    iput-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 6
    .line 7
    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 8
    .line 9
    const/high16 v4, -0x80000000

    .line 10
    .line 11
    if-eq v3, v4, :cond_1

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    add-int/2addr v3, v2

    .line 16
    iput v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->recycleByLayoutState(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 22
    .line 23
    iget v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 24
    .line 25
    add-int/2addr v3, v5

    .line 26
    :cond_2
    iget-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 27
    .line 28
    if-nez v5, :cond_3

    .line 29
    .line 30
    if-lez v3, :cond_19

    .line 31
    .line 32
    :cond_3
    iget v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 33
    .line 34
    if-ltz v5, :cond_19

    .line 35
    .line 36
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v5, v6, :cond_19

    .line 41
    .line 42
    iget-object v5, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    iput v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 46
    .line 47
    iput-boolean v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 48
    .line 49
    iput-boolean v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 50
    .line 51
    iput-boolean v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 52
    .line 53
    iget-object v7, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 54
    .line 55
    if-eqz v7, :cond_7

    .line 56
    .line 57
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_6

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 72
    .line 73
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 80
    .line 81
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 82
    .line 83
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-eqz v10, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget v10, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 91
    .line 92
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 93
    .line 94
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-ne v10, v9, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    move-object v7, v8

    .line 104
    move-object/from16 v8, p1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/4 v8, 0x0

    .line 108
    goto :goto_1

    .line 109
    :cond_7
    iget v7, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 110
    .line 111
    move-object/from16 v8, p1

    .line 112
    .line 113
    invoke-virtual {v8, v7}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->getViewForPosition(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 118
    .line 119
    iget v10, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 120
    .line 121
    add-int/2addr v9, v10

    .line 122
    iput v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 123
    .line 124
    :goto_2
    const/4 v9, 0x1

    .line 125
    if-nez v7, :cond_8

    .line 126
    .line 127
    iput-boolean v9, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 128
    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 136
    .line 137
    iget-object v11, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 138
    .line 139
    iget-boolean v12, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 140
    .line 141
    iget v13, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 142
    .line 143
    const/4 v14, -0x1

    .line 144
    if-nez v11, :cond_b

    .line 145
    .line 146
    if-ne v13, v14, :cond_9

    .line 147
    .line 148
    move v11, v9

    .line 149
    goto :goto_3

    .line 150
    :cond_9
    move v11, v6

    .line 151
    :goto_3
    if-ne v12, v11, :cond_a

    .line 152
    .line 153
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_a
    invoke-virtual {v0, v7, v6, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_b
    if-ne v13, v14, :cond_c

    .line 162
    .line 163
    move v11, v9

    .line 164
    goto :goto_4

    .line 165
    :cond_c
    move v11, v6

    .line 166
    :goto_4
    if-ne v12, v11, :cond_d

    .line 167
    .line 168
    invoke-virtual {v0, v7, v14, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_d
    invoke-virtual {v0, v7, v6, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 173
    .line 174
    .line 175
    :goto_5
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    iget-object v6, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    iput v11, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 185
    .line 186
    iget v11, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 187
    .line 188
    if-ne v11, v9, :cond_10

    .line 189
    .line 190
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    .line 192
    invoke-virtual {v11}, Landroid/view/View;->getLayoutDirection()I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-ne v11, v9, :cond_e

    .line 197
    .line 198
    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    sub-int/2addr v11, v12

    .line 205
    invoke-virtual {v6, v7}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    sub-int v6, v11, v6

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    invoke-virtual {v6, v7}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    add-int/2addr v6, v11

    .line 221
    move/from16 v16, v11

    .line 222
    .line 223
    move v11, v6

    .line 224
    move/from16 v6, v16

    .line 225
    .line 226
    :goto_6
    iget v12, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 227
    .line 228
    iget v13, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 229
    .line 230
    iget v15, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 231
    .line 232
    if-ne v12, v14, :cond_f

    .line 233
    .line 234
    sub-int v12, v13, v15

    .line 235
    .line 236
    move v15, v13

    .line 237
    move v13, v12

    .line 238
    goto :goto_7

    .line 239
    :cond_f
    add-int/2addr v15, v13

    .line 240
    goto :goto_7

    .line 241
    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    invoke-virtual {v6, v7}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    add-int/2addr v6, v13

    .line 250
    iget v11, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 251
    .line 252
    iget v12, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 253
    .line 254
    iget v15, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 255
    .line 256
    if-ne v11, v14, :cond_11

    .line 257
    .line 258
    sub-int v11, v12, v15

    .line 259
    .line 260
    move v15, v6

    .line 261
    move v6, v11

    .line 262
    move v11, v12

    .line 263
    goto :goto_7

    .line 264
    :cond_11
    add-int v11, v12, v15

    .line 265
    .line 266
    move v15, v6

    .line 267
    move v6, v12

    .line 268
    :goto_7
    invoke-static {v7, v6, v13, v11, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 269
    .line 270
    .line 271
    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 272
    .line 273
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-nez v6, :cond_12

    .line 278
    .line 279
    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 280
    .line 281
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-eqz v6, :cond_13

    .line 286
    .line 287
    :cond_12
    iput-boolean v9, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 288
    .line 289
    :cond_13
    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    iput-boolean v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 294
    .line 295
    :goto_8
    iget-boolean v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 296
    .line 297
    if-eqz v6, :cond_14

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_14
    iget v6, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 301
    .line 302
    iget v7, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 303
    .line 304
    iget v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 305
    .line 306
    mul-int/2addr v9, v7

    .line 307
    add-int/2addr v9, v6

    .line 308
    iput v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 309
    .line 310
    iget-boolean v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 311
    .line 312
    if-eqz v6, :cond_15

    .line 313
    .line 314
    iget-object v6, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 315
    .line 316
    if-nez v6, :cond_15

    .line 317
    .line 318
    move-object/from16 v6, p3

    .line 319
    .line 320
    iget-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 321
    .line 322
    if-nez v9, :cond_16

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_15
    move-object/from16 v6, p3

    .line 326
    .line 327
    :goto_9
    iget v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 328
    .line 329
    sub-int/2addr v9, v7

    .line 330
    iput v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 331
    .line 332
    sub-int/2addr v3, v7

    .line 333
    :cond_16
    iget v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 334
    .line 335
    if-eq v9, v4, :cond_18

    .line 336
    .line 337
    add-int/2addr v9, v7

    .line 338
    iput v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 339
    .line 340
    iget v7, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 341
    .line 342
    if-gez v7, :cond_17

    .line 343
    .line 344
    add-int/2addr v9, v7

    .line 345
    iput v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 346
    .line 347
    :cond_17
    invoke-virtual/range {p0 .. p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->recycleByLayoutState(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 348
    .line 349
    .line 350
    :cond_18
    if-eqz p4, :cond_2

    .line 351
    .line 352
    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 353
    .line 354
    if-eqz v5, :cond_2

    .line 355
    .line 356
    :cond_19
    :goto_a
    iget v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 357
    .line 358
    sub-int/2addr v2, v0

    .line 359
    return v2
.end method

.method public final findFirstVisibleChildClosestToEnd()Landroid/view/View;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v2, v0, v2, v1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr v0, v1

    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-virtual {p0, v0, v3, v2, v1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final findFirstVisibleChildClosestToStart()Landroid/view/View;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr v0, v2

    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-virtual {p0, v0, v3, v1, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, v1, v0, v1, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x4104

    .line 34
    .line 35
    const/16 v1, 0x4004

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 v0, 0x1041

    .line 39
    .line 40
    const/16 v1, 0x1001

    .line 41
    .line 42
    :goto_0
    iget v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;->mHorizontalBoundCheck:Lcom/beetstra/jutf7/Base64Util;

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/Base64Util;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_2
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;->mVerticalBoundCheck:Lcom/beetstra/jutf7/Base64Util;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/Base64Util;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x140

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/16 p3, 0x6003

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p3, v0

    .line 12
    :goto_0
    if-eqz p4, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_1
    iget p4, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 17
    .line 18
    if-nez p4, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;->mHorizontalBoundCheck:Lcom/beetstra/jutf7/Base64Util;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/beetstra/jutf7/Base64Util;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_2
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;->mVerticalBoundCheck:Lcom/beetstra/jutf7/Base64Util;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/beetstra/jutf7/Base64Util;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final findViewByPosition(I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_1
    sub-int v1, p1, v1

    .line 21
    .line 22
    if-ltz v1, :cond_2

    .line 23
    .line 24
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ne v1, p1, :cond_2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final fixLayoutEndGap$1(ILorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int/2addr v0, p1

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    invoke-virtual {p0, v0, p3, p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollBy$1(ILandroidx/recyclerview/widget/RecyclerView$State;Lorg/apache/james/mime4j/stream/MimeTokenStream;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p3, p1

    .line 26
    if-lez p3, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    .line 31
    .line 32
    .line 33
    add-int/2addr p3, p2

    .line 34
    return p3

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final fixLayoutStartGap$1(ILorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0, p3, p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollBy$1(ILandroidx/recyclerview/widget/RecyclerView$State;Lorg/apache/james/mime4j/stream/MimeTokenStream;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p1, p3

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 29
    .line 30
    neg-int p3, p1

    .line 31
    invoke-virtual {p0, p3}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    .line 32
    .line 33
    .line 34
    sub-int/2addr p2, p1

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final getChildClosestToEnd$2()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getChildClosestToStart$2()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->resolveShouldLayoutReverse$2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/high16 v1, -0x80000000

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq p2, v0, :cond_a

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq p2, v3, :cond_8

    .line 22
    .line 23
    const/16 v3, 0x11

    .line 24
    .line 25
    if-eq p2, v3, :cond_7

    .line 26
    .line 27
    const/16 v3, 0x21

    .line 28
    .line 29
    if-eq p2, v3, :cond_5

    .line 30
    .line 31
    const/16 v3, 0x42

    .line 32
    .line 33
    if-eq p2, v3, :cond_4

    .line 34
    .line 35
    const/16 v3, 0x82

    .line 36
    .line 37
    if-eq p2, v3, :cond_2

    .line 38
    .line 39
    :cond_1
    move p1, v1

    .line 40
    goto :goto_3

    .line 41
    :cond_2
    if-ne p1, v0, :cond_1

    .line 42
    .line 43
    :cond_3
    :goto_0
    move p1, v0

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    :cond_6
    :goto_1
    move p1, v2

    .line 51
    goto :goto_3

    .line 52
    :cond_7
    if-nez p1, :cond_1

    .line 53
    .line 54
    :goto_2
    goto :goto_1

    .line 55
    :cond_8
    if-ne p1, v0, :cond_9

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-ne p1, v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_a
    if-ne p1, v0, :cond_b

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ne p1, v0, :cond_6

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_3
    if-ne p1, v1, :cond_c

    .line 80
    .line 81
    goto :goto_6

    .line 82
    :cond_c
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 86
    .line 87
    invoke-virtual {p2}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    int-to-float p2, p2

    .line 92
    const v3, 0x3eaaaaab

    .line 93
    .line 94
    .line 95
    mul-float/2addr p2, v3

    .line 96
    float-to-int p2, p2

    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0, p1, p2, v3, p4}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutState$1(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 102
    .line 103
    iput v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 104
    .line 105
    iput-boolean v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 106
    .line 107
    invoke-virtual {p0, p3, p2, p4, v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 108
    .line 109
    .line 110
    iget-boolean p2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 111
    .line 112
    if-ne p1, v2, :cond_e

    .line 113
    .line 114
    if-eqz p2, :cond_d

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    sub-int/2addr p2, v0

    .line 121
    invoke-virtual {p0, p2, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    goto :goto_4

    .line 126
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p0, v3, p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    goto :goto_4

    .line 135
    :cond_e
    if-eqz p2, :cond_f

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-virtual {p0, v3, p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    goto :goto_4

    .line 146
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    sub-int/2addr p2, v0

    .line 151
    invoke-virtual {p0, p2, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    :goto_4
    if-ne p1, v2, :cond_10

    .line 156
    .line 157
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToStart$2()Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    goto :goto_5

    .line 162
    :cond_10
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToEnd$2()Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_12

    .line 171
    .line 172
    if-nez p2, :cond_11

    .line 173
    .line 174
    :goto_6
    const/4 p0, 0x0

    .line 175
    :cond_11
    return-object p0

    .line 176
    :cond_12
    return-object p2
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0, v1, v0, v1, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v3, -0x1

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    move v0, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v0, v2

    .line 37
    invoke-virtual {p0, v0, v3, v1, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final onLayoutChildren(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 13
    .line 14
    if-eq v3, v4, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lorg/apache/james/mime4j/stream/MimeTokenStream;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget v3, v3, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 31
    .line 32
    if-ltz v3, :cond_2

    .line 33
    .line 34
    iput v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 35
    .line 36
    :cond_2
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    iput-boolean v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 43
    .line 44
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->resolveShouldLayoutReverse$2()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v6, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 52
    .line 53
    iget-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 54
    .line 55
    iget-object v8, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 56
    .line 57
    const/high16 v10, -0x80000000

    .line 58
    .line 59
    const/4 v11, 0x1

    .line 60
    if-eqz v7, :cond_6

    .line 61
    .line 62
    iget v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 63
    .line 64
    if-ne v7, v4, :cond_6

    .line 65
    .line 66
    iget-object v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 67
    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-eqz v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-ge v7, v12, :cond_5

    .line 82
    .line 83
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-gt v7, v12, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    :goto_0
    move v3, v11

    .line 95
    goto/16 :goto_17

    .line 96
    .line 97
    :cond_5
    :goto_1
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v6, v3, v7}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 106
    .line 107
    .line 108
    iget-boolean v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    .line 110
    iput-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 111
    .line 112
    iget-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 113
    .line 114
    if-nez v3, :cond_16

    .line 115
    .line 116
    iget v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 117
    .line 118
    if-ne v3, v4, :cond_7

    .line 119
    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :cond_7
    if-ltz v3, :cond_15

    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-lt v3, v7, :cond_8

    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :cond_8
    iget v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 133
    .line 134
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 135
    .line 136
    iget-object v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 137
    .line 138
    if-eqz v7, :cond_a

    .line 139
    .line 140
    iget v12, v7, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 141
    .line 142
    if-ltz v12, :cond_a

    .line 143
    .line 144
    iget-boolean v3, v7, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 145
    .line 146
    iput-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 147
    .line 148
    if-eqz v3, :cond_9

    .line 149
    .line 150
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    iget-object v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 155
    .line 156
    iget v7, v7, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 157
    .line 158
    sub-int/2addr v3, v7

    .line 159
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 160
    .line 161
    :goto_3
    move v3, v11

    .line 162
    goto/16 :goto_16

    .line 163
    .line 164
    :cond_9
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    iget-object v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 169
    .line 170
    iget v7, v7, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 171
    .line 172
    add-int/2addr v3, v7

    .line 173
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_a
    iget v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 177
    .line 178
    if-ne v7, v10, :cond_13

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v3, :cond_f

    .line 185
    .line 186
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    if-le v7, v12, :cond_b

    .line 195
    .line 196
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_b
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    sub-int/2addr v7, v12

    .line 209
    if-gez v7, :cond_c

    .line 210
    .line 211
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 216
    .line 217
    iput-boolean v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_c
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    sub-int/2addr v7, v12

    .line 229
    if-gez v7, :cond_d

    .line 230
    .line 231
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 236
    .line 237
    iput-boolean v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_d
    iget-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 241
    .line 242
    if-eqz v7, :cond_e

    .line 243
    .line 244
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getTotalSpaceChange()I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    add-int/2addr v7, v3

    .line 253
    goto :goto_4

    .line 254
    :cond_e
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    :goto_4
    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-lez v3, :cond_12

    .line 266
    .line 267
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-eqz v3, :cond_12

    .line 272
    .line 273
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    iget v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 278
    .line 279
    if-ge v7, v3, :cond_10

    .line 280
    .line 281
    move v3, v11

    .line 282
    goto :goto_5

    .line 283
    :cond_10
    move v3, v5

    .line 284
    :goto_5
    iget-boolean v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 285
    .line 286
    if-ne v3, v7, :cond_11

    .line 287
    .line 288
    move v3, v11

    .line 289
    goto :goto_6

    .line 290
    :cond_11
    move v3, v5

    .line 291
    :goto_6
    iput-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 292
    .line 293
    :cond_12
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_13
    iget-boolean v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 299
    .line 300
    iput-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 301
    .line 302
    if-eqz v3, :cond_14

    .line 303
    .line 304
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    iget v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 309
    .line 310
    sub-int/2addr v3, v7

    .line 311
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 312
    .line 313
    goto/16 :goto_3

    .line 314
    .line 315
    :cond_14
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    iget v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 320
    .line 321
    add-int/2addr v3, v7

    .line 322
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 323
    .line 324
    goto/16 :goto_3

    .line 325
    .line 326
    :cond_15
    :goto_7
    iput v4, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 327
    .line 328
    iput v10, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 329
    .line 330
    :cond_16
    :goto_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-nez v3, :cond_17

    .line 335
    .line 336
    goto/16 :goto_15

    .line 337
    .line 338
    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    if-eqz v3, :cond_18

    .line 343
    .line 344
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 349
    .line 350
    iget-object v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 351
    .line 352
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 353
    .line 354
    .line 355
    move-result v12

    .line 356
    if-nez v12, :cond_18

    .line 357
    .line 358
    iget-object v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 359
    .line 360
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    if-ltz v12, :cond_18

    .line 365
    .line 366
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 367
    .line 368
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 373
    .line 374
    .line 375
    move-result v12

    .line 376
    if-ge v7, v12, :cond_18

    .line 377
    .line 378
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    invoke-virtual {v6, v3, v7}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_3

    .line 386
    .line 387
    :cond_18
    iget-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 388
    .line 389
    if-nez v3, :cond_1a

    .line 390
    .line 391
    iget-boolean v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mScrolledToTop:Z

    .line 392
    .line 393
    if-nez v3, :cond_19

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_19
    iput-boolean v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 397
    .line 398
    iput v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 399
    .line 400
    iput-boolean v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 401
    .line 402
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_3

    .line 406
    .line 407
    :cond_1a
    :goto_9
    iget-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 408
    .line 409
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 425
    .line 426
    .line 427
    move-result v14

    .line 428
    move v15, v5

    .line 429
    const/16 v16, 0x0

    .line 430
    .line 431
    const/16 v17, 0x0

    .line 432
    .line 433
    const/16 v18, 0x0

    .line 434
    .line 435
    :goto_a
    if-eq v15, v7, :cond_24

    .line 436
    .line 437
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    if-nez v9, :cond_1b

    .line 442
    .line 443
    goto :goto_f

    .line 444
    :cond_1b
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    invoke-virtual {v8, v9}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    invoke-virtual {v8, v9}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    if-ltz v10, :cond_23

    .line 457
    .line 458
    if-ge v10, v12, :cond_23

    .line 459
    .line 460
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 465
    .line 466
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 467
    .line 468
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 469
    .line 470
    .line 471
    move-result v10

    .line 472
    if-eqz v10, :cond_1c

    .line 473
    .line 474
    if-nez v18, :cond_23

    .line 475
    .line 476
    move-object/from16 v18, v9

    .line 477
    .line 478
    goto :goto_f

    .line 479
    :cond_1c
    if-gt v11, v13, :cond_1d

    .line 480
    .line 481
    if-ge v4, v13, :cond_1d

    .line 482
    .line 483
    const/4 v10, 0x1

    .line 484
    goto :goto_b

    .line 485
    :cond_1d
    move v10, v5

    .line 486
    :goto_b
    if-lt v4, v14, :cond_1e

    .line 487
    .line 488
    if-le v11, v14, :cond_1e

    .line 489
    .line 490
    const/4 v4, 0x1

    .line 491
    goto :goto_c

    .line 492
    :cond_1e
    move v4, v5

    .line 493
    :goto_c
    if-nez v10, :cond_1f

    .line 494
    .line 495
    if-eqz v4, :cond_27

    .line 496
    .line 497
    :cond_1f
    if-eqz v3, :cond_21

    .line 498
    .line 499
    if-eqz v4, :cond_20

    .line 500
    .line 501
    goto :goto_d

    .line 502
    :cond_20
    if-nez v16, :cond_23

    .line 503
    .line 504
    goto :goto_e

    .line 505
    :cond_21
    if-eqz v10, :cond_22

    .line 506
    .line 507
    :goto_d
    move-object/from16 v17, v9

    .line 508
    .line 509
    goto :goto_f

    .line 510
    :cond_22
    if-nez v16, :cond_23

    .line 511
    .line 512
    :goto_e
    move-object/from16 v16, v9

    .line 513
    .line 514
    :cond_23
    :goto_f
    add-int/lit8 v15, v15, 0x1

    .line 515
    .line 516
    const/4 v4, -0x1

    .line 517
    const/high16 v10, -0x80000000

    .line 518
    .line 519
    const/4 v11, 0x1

    .line 520
    goto :goto_a

    .line 521
    :cond_24
    if-eqz v16, :cond_25

    .line 522
    .line 523
    move-object/from16 v9, v16

    .line 524
    .line 525
    goto :goto_10

    .line 526
    :cond_25
    if-eqz v17, :cond_26

    .line 527
    .line 528
    move-object/from16 v9, v17

    .line 529
    .line 530
    goto :goto_10

    .line 531
    :cond_26
    move-object/from16 v9, v18

    .line 532
    .line 533
    :cond_27
    :goto_10
    if-eqz v9, :cond_2e

    .line 534
    .line 535
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    iget-boolean v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 540
    .line 541
    iget-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 542
    .line 543
    if-eqz v4, :cond_28

    .line 544
    .line 545
    invoke-virtual {v7, v9}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    iget-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 550
    .line 551
    invoke-virtual {v7}, Landroidx/room/RoomOpenDelegate;->getTotalSpaceChange()I

    .line 552
    .line 553
    .line 554
    move-result v7

    .line 555
    add-int/2addr v7, v4

    .line 556
    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 557
    .line 558
    goto :goto_11

    .line 559
    :cond_28
    invoke-virtual {v7, v9}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    iput v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 564
    .line 565
    :goto_11
    iput v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 566
    .line 567
    iget-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 568
    .line 569
    if-nez v3, :cond_2d

    .line 570
    .line 571
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_2d

    .line 576
    .line 577
    invoke-virtual {v8, v9}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    invoke-virtual {v8, v9}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 590
    .line 591
    .line 592
    move-result v9

    .line 593
    if-gt v4, v7, :cond_29

    .line 594
    .line 595
    if-ge v3, v7, :cond_29

    .line 596
    .line 597
    const/4 v10, 0x1

    .line 598
    goto :goto_12

    .line 599
    :cond_29
    move v10, v5

    .line 600
    :goto_12
    if-lt v3, v9, :cond_2a

    .line 601
    .line 602
    if-le v4, v9, :cond_2a

    .line 603
    .line 604
    const/4 v3, 0x1

    .line 605
    goto :goto_13

    .line 606
    :cond_2a
    move v3, v5

    .line 607
    :goto_13
    if-nez v10, :cond_2b

    .line 608
    .line 609
    if-eqz v3, :cond_2d

    .line 610
    .line 611
    :cond_2b
    iget-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 612
    .line 613
    if-eqz v3, :cond_2c

    .line 614
    .line 615
    move v7, v9

    .line 616
    :cond_2c
    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 617
    .line 618
    :cond_2d
    :goto_14
    const/4 v3, 0x1

    .line 619
    goto :goto_16

    .line 620
    :cond_2e
    :goto_15
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 621
    .line 622
    .line 623
    iput v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 624
    .line 625
    goto :goto_14

    .line 626
    :goto_16
    iput-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 627
    .line 628
    :goto_17
    iget-object v4, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 629
    .line 630
    iget v7, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 631
    .line 632
    if-ltz v7, :cond_2f

    .line 633
    .line 634
    move v7, v3

    .line 635
    goto :goto_18

    .line 636
    :cond_2f
    const/4 v7, -0x1

    .line 637
    :goto_18
    iput v7, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 638
    .line 639
    iget-object v4, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mReusableIntPair:[I

    .line 640
    .line 641
    aput v5, v4, v5

    .line 642
    .line 643
    aput v5, v4, v3

    .line 644
    .line 645
    invoke-virtual {v0, v2, v4}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 646
    .line 647
    .line 648
    aget v7, v4, v5

    .line 649
    .line 650
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 651
    .line 652
    .line 653
    move-result v7

    .line 654
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    add-int/2addr v9, v7

    .line 659
    aget v4, v4, v3

    .line 660
    .line 661
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndPadding()I

    .line 666
    .line 667
    .line 668
    move-result v4

    .line 669
    add-int/2addr v4, v3

    .line 670
    iget-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 671
    .line 672
    if-eqz v3, :cond_32

    .line 673
    .line 674
    iget v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 675
    .line 676
    const/4 v7, -0x1

    .line 677
    if-eq v3, v7, :cond_32

    .line 678
    .line 679
    iget v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 680
    .line 681
    const/high16 v10, -0x80000000

    .line 682
    .line 683
    if-eq v7, v10, :cond_32

    .line 684
    .line 685
    invoke-virtual {v0, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    if-eqz v3, :cond_32

    .line 690
    .line 691
    iget-boolean v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 692
    .line 693
    if-eqz v7, :cond_30

    .line 694
    .line 695
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 696
    .line 697
    .line 698
    move-result v7

    .line 699
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 700
    .line 701
    .line 702
    move-result v3

    .line 703
    sub-int/2addr v7, v3

    .line 704
    iget v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 705
    .line 706
    :goto_19
    sub-int/2addr v7, v3

    .line 707
    goto :goto_1a

    .line 708
    :cond_30
    invoke-virtual {v8, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 713
    .line 714
    .line 715
    move-result v7

    .line 716
    sub-int/2addr v3, v7

    .line 717
    iget v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 718
    .line 719
    goto :goto_19

    .line 720
    :goto_1a
    if-lez v7, :cond_31

    .line 721
    .line 722
    add-int/2addr v9, v7

    .line 723
    goto :goto_1b

    .line 724
    :cond_31
    sub-int/2addr v4, v7

    .line 725
    :cond_32
    :goto_1b
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lorg/apache/james/mime4j/stream/MimeTokenStream;)V

    .line 726
    .line 727
    .line 728
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 729
    .line 730
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getMode()I

    .line 731
    .line 732
    .line 733
    move-result v7

    .line 734
    if-nez v7, :cond_33

    .line 735
    .line 736
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEnd()I

    .line 737
    .line 738
    .line 739
    move-result v7

    .line 740
    if-nez v7, :cond_33

    .line 741
    .line 742
    const/4 v7, 0x1

    .line 743
    goto :goto_1c

    .line 744
    :cond_33
    move v7, v5

    .line 745
    :goto_1c
    iput-boolean v7, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 746
    .line 747
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 748
    .line 749
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 753
    .line 754
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 755
    .line 756
    iget-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 757
    .line 758
    iget v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 759
    .line 760
    if-eqz v3, :cond_35

    .line 761
    .line 762
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 763
    .line 764
    invoke-virtual {v0, v7, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillStart$1(II)V

    .line 765
    .line 766
    .line 767
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 768
    .line 769
    iput v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 770
    .line 771
    invoke-virtual {v0, v1, v3, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 772
    .line 773
    .line 774
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 775
    .line 776
    iget v7, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 777
    .line 778
    iget v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 779
    .line 780
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 781
    .line 782
    if-lez v3, :cond_34

    .line 783
    .line 784
    add-int/2addr v4, v3

    .line 785
    :cond_34
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 786
    .line 787
    iget v10, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 788
    .line 789
    invoke-virtual {v0, v3, v10}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillEnd$1(II)V

    .line 790
    .line 791
    .line 792
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 793
    .line 794
    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 795
    .line 796
    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 797
    .line 798
    iget v10, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 799
    .line 800
    add-int/2addr v4, v10

    .line 801
    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 802
    .line 803
    invoke-virtual {v0, v1, v3, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 804
    .line 805
    .line 806
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 807
    .line 808
    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 809
    .line 810
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 811
    .line 812
    if-lez v3, :cond_38

    .line 813
    .line 814
    invoke-virtual {v0, v9, v7}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillStart$1(II)V

    .line 815
    .line 816
    .line 817
    iget-object v7, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 818
    .line 819
    iput v3, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 820
    .line 821
    invoke-virtual {v0, v1, v7, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 822
    .line 823
    .line 824
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 825
    .line 826
    iget v7, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 827
    .line 828
    goto :goto_1d

    .line 829
    :cond_35
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 830
    .line 831
    invoke-virtual {v0, v7, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillEnd$1(II)V

    .line 832
    .line 833
    .line 834
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 835
    .line 836
    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 837
    .line 838
    invoke-virtual {v0, v1, v3, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 839
    .line 840
    .line 841
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 842
    .line 843
    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 844
    .line 845
    iget v7, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 846
    .line 847
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 848
    .line 849
    if-lez v3, :cond_36

    .line 850
    .line 851
    add-int/2addr v9, v3

    .line 852
    :cond_36
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 853
    .line 854
    iget v10, v6, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 855
    .line 856
    invoke-virtual {v0, v3, v10}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillStart$1(II)V

    .line 857
    .line 858
    .line 859
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 860
    .line 861
    iput v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 862
    .line 863
    iget v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 864
    .line 865
    iget v10, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 866
    .line 867
    add-int/2addr v9, v10

    .line 868
    iput v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 869
    .line 870
    invoke-virtual {v0, v1, v3, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 871
    .line 872
    .line 873
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 874
    .line 875
    iget v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 876
    .line 877
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 878
    .line 879
    if-lez v3, :cond_37

    .line 880
    .line 881
    invoke-virtual {v0, v7, v4}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillEnd$1(II)V

    .line 882
    .line 883
    .line 884
    iget-object v4, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 885
    .line 886
    iput v3, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 887
    .line 888
    invoke-virtual {v0, v1, v4, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 889
    .line 890
    .line 891
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 892
    .line 893
    iget v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 894
    .line 895
    :cond_37
    move v7, v9

    .line 896
    :cond_38
    :goto_1d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 897
    .line 898
    .line 899
    move-result v3

    .line 900
    if-lez v3, :cond_3a

    .line 901
    .line 902
    iget-boolean v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 903
    .line 904
    if-eqz v3, :cond_39

    .line 905
    .line 906
    const/4 v3, 0x1

    .line 907
    invoke-virtual {v0, v4, v1, v2, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fixLayoutEndGap$1(ILorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 908
    .line 909
    .line 910
    move-result v9

    .line 911
    add-int/2addr v7, v9

    .line 912
    add-int/2addr v4, v9

    .line 913
    invoke-virtual {v0, v7, v1, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fixLayoutStartGap$1(ILorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 914
    .line 915
    .line 916
    move-result v9

    .line 917
    :goto_1e
    add-int/2addr v7, v9

    .line 918
    add-int/2addr v4, v9

    .line 919
    goto :goto_1f

    .line 920
    :cond_39
    const/4 v3, 0x1

    .line 921
    invoke-virtual {v0, v7, v1, v2, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fixLayoutStartGap$1(ILorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 922
    .line 923
    .line 924
    move-result v9

    .line 925
    add-int/2addr v7, v9

    .line 926
    add-int/2addr v4, v9

    .line 927
    invoke-virtual {v0, v4, v1, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fixLayoutEndGap$1(ILorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 928
    .line 929
    .line 930
    move-result v9

    .line 931
    goto :goto_1e

    .line 932
    :cond_3a
    const/4 v3, 0x1

    .line 933
    :goto_1f
    iget-boolean v9, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 934
    .line 935
    if-eqz v9, :cond_3b

    .line 936
    .line 937
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 938
    .line 939
    .line 940
    move-result v9

    .line 941
    if-eqz v9, :cond_3b

    .line 942
    .line 943
    iget-boolean v9, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 944
    .line 945
    if-nez v9, :cond_3b

    .line 946
    .line 947
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 948
    .line 949
    .line 950
    move-result v9

    .line 951
    if-nez v9, :cond_3c

    .line 952
    .line 953
    :cond_3b
    move-object/from16 v17, v6

    .line 954
    .line 955
    goto/16 :goto_26

    .line 956
    .line 957
    :cond_3c
    iget-object v9, v1, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Ljava/lang/Object;

    .line 958
    .line 959
    check-cast v9, Ljava/util/List;

    .line 960
    .line 961
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 962
    .line 963
    .line 964
    move-result v10

    .line 965
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 966
    .line 967
    .line 968
    move-result-object v11

    .line 969
    if-eqz v11, :cond_3d

    .line 970
    .line 971
    invoke-static {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 972
    .line 973
    .line 974
    move-result v11

    .line 975
    goto :goto_20

    .line 976
    :cond_3d
    move v11, v5

    .line 977
    :goto_20
    move v12, v5

    .line 978
    move v13, v12

    .line 979
    move v14, v13

    .line 980
    :goto_21
    if-ge v12, v10, :cond_41

    .line 981
    .line 982
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v15

    .line 986
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 987
    .line 988
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 989
    .line 990
    .line 991
    move-result v3

    .line 992
    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 993
    .line 994
    move-object/from16 v17, v6

    .line 995
    .line 996
    const/4 v6, -0x1

    .line 997
    if-ne v3, v6, :cond_3e

    .line 998
    .line 999
    goto :goto_23

    .line 1000
    :cond_3e
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 1001
    .line 1002
    .line 1003
    move-result v3

    .line 1004
    if-ge v3, v11, :cond_3f

    .line 1005
    .line 1006
    const/4 v3, 0x1

    .line 1007
    goto :goto_22

    .line 1008
    :cond_3f
    const/4 v3, 0x0

    .line 1009
    :goto_22
    iget-boolean v15, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1010
    .line 1011
    if-eq v3, v15, :cond_40

    .line 1012
    .line 1013
    invoke-virtual {v8, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    add-int/2addr v13, v3

    .line 1018
    goto :goto_23

    .line 1019
    :cond_40
    invoke-virtual {v8, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v3

    .line 1023
    add-int/2addr v14, v3

    .line 1024
    :goto_23
    add-int/lit8 v12, v12, 0x1

    .line 1025
    .line 1026
    move-object/from16 v6, v17

    .line 1027
    .line 1028
    const/4 v3, 0x1

    .line 1029
    const/4 v5, 0x0

    .line 1030
    goto :goto_21

    .line 1031
    :cond_41
    move-object/from16 v17, v6

    .line 1032
    .line 1033
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1034
    .line 1035
    iput-object v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 1036
    .line 1037
    if-lez v13, :cond_42

    .line 1038
    .line 1039
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToStart$2()Landroid/view/View;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v3

    .line 1043
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v3

    .line 1047
    invoke-virtual {v0, v3, v7}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillStart$1(II)V

    .line 1048
    .line 1049
    .line 1050
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1051
    .line 1052
    iput v13, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1053
    .line 1054
    const/4 v5, 0x0

    .line 1055
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1056
    .line 1057
    const/4 v6, 0x0

    .line 1058
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1059
    .line 1060
    .line 1061
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1062
    .line 1063
    invoke-virtual {v0, v1, v3, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 1064
    .line 1065
    .line 1066
    goto :goto_24

    .line 1067
    :cond_42
    const/4 v5, 0x0

    .line 1068
    :goto_24
    if-lez v14, :cond_43

    .line 1069
    .line 1070
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToEnd$2()Landroid/view/View;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v3

    .line 1074
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 1075
    .line 1076
    .line 1077
    move-result v3

    .line 1078
    invoke-virtual {v0, v3, v4}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutStateToFillEnd$1(II)V

    .line 1079
    .line 1080
    .line 1081
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1082
    .line 1083
    iput v14, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1084
    .line 1085
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1086
    .line 1087
    const/4 v6, 0x0

    .line 1088
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1089
    .line 1090
    .line 1091
    iget-object v3, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1092
    .line 1093
    invoke-virtual {v0, v1, v3, v2, v5}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 1094
    .line 1095
    .line 1096
    goto :goto_25

    .line 1097
    :cond_43
    const/4 v6, 0x0

    .line 1098
    :goto_25
    iget-object v0, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1099
    .line 1100
    iput-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 1101
    .line 1102
    :goto_26
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 1103
    .line 1104
    if-nez v0, :cond_44

    .line 1105
    .line 1106
    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    iput v0, v8, Landroidx/room/RoomOpenDelegate;->version:I

    .line 1111
    .line 1112
    return-void

    .line 1113
    :cond_44
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 1114
    .line 1115
    .line 1116
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 6
    .line 7
    const/high16 p1, -0x80000000

    .line 8
    .line 9
    iput p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 10
    .line 11
    iget-object p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateScrolledToTop()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 8
    .line 9
    iget v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iput v1, p1, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 11
    .line 12
    iput v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 13
    .line 14
    iget v1, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 15
    .line 16
    iput v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 17
    .line 18
    iget-boolean v0, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 38
    .line 39
    iput-boolean v1, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 40
    .line 41
    iget-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToEnd$2()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v2}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v2, p0}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sub-int/2addr v1, v2

    .line 58
    iput v1, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 59
    .line 60
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    iput p0, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToStart$2()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 76
    .line 77
    invoke-virtual {v2, p0}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {v2}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    sub-int/2addr p0, v1

    .line 86
    iput p0, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_2
    const/4 p0, -0x1

    .line 90
    iput p0, v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 91
    .line 92
    return-object v0
.end method

.method public final prepareForDrop(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->resolveShouldLayoutReverse$2()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, 0x1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    move v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v2

    .line 27
    :goto_0
    iget-boolean v4, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 28
    .line 29
    iget-object v5, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v5}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v5, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {v5, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/2addr p1, p2

    .line 48
    sub-int/2addr v0, p1

    .line 49
    invoke-virtual {p0, v1, v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {v5}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {v5, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    sub-int/2addr p1, p2

    .line 62
    invoke-virtual {p0, v1, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    if-ne v0, v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v5, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, v1, p1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    invoke-virtual {v5, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-virtual {v5, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    sub-int/2addr p2, p1

    .line 85
    invoke-virtual {p0, v1, p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final recycleByLayoutState(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V
    .locals 6

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 12
    .line 13
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 14
    .line 15
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 16
    .line 17
    iget-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne p2, v4, :cond_7

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    goto/16 :goto_8

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v2}, Landroidx/room/RoomOpenDelegate;->getEnd()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int/2addr v4, v0

    .line 36
    add-int/2addr v4, v1

    .line 37
    iget-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    move v0, v3

    .line 42
    :goto_0
    if-ge v0, p2, :cond_e

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-lt v5, v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Landroidx/room/RoomOpenDelegate;->getTransformedStartWithDecoration(Landroid/view/View;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ge v1, v4, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->recycleChildren$1(Lorg/apache/james/mime4j/stream/MimeTokenStream;II)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 69
    .line 70
    move v0, p2

    .line 71
    :goto_2
    if-ltz v0, :cond_e

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v2, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-lt v3, v4, :cond_6

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Landroidx/room/RoomOpenDelegate;->getTransformedStartWithDecoration(Landroid/view/View;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ge v1, v4, :cond_5

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->recycleChildren$1(Lorg/apache/james/mime4j/stream/MimeTokenStream;II)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_7
    if-gez v0, :cond_8

    .line 98
    .line 99
    goto :goto_8

    .line 100
    :cond_8
    sub-int/2addr v0, v1

    .line 101
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iget-boolean v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 106
    .line 107
    if-eqz v1, :cond_b

    .line 108
    .line 109
    add-int/lit8 p2, p2, -0x1

    .line 110
    .line 111
    move v1, p2

    .line 112
    :goto_4
    if-ltz v1, :cond_e

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-gt v4, v0, :cond_a

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Landroidx/room/RoomOpenDelegate;->getTransformedEndWithDecoration(Landroid/view/View;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-le v3, v0, :cond_9

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->recycleChildren$1(Lorg/apache/james/mime4j/stream/MimeTokenStream;II)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_b
    move v1, v3

    .line 139
    :goto_6
    if-ge v1, p2, :cond_e

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v2, v4}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-gt v5, v0, :cond_d

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Landroidx/room/RoomOpenDelegate;->getTransformedEndWithDecoration(Landroid/view/View;)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-le v4, v0, :cond_c

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v3, v1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->recycleChildren$1(Lorg/apache/james/mime4j/stream/MimeTokenStream;II)V

    .line 162
    .line 163
    .line 164
    :cond_e
    :goto_8
    return-void
.end method

.method public final recycleChildren$1(Lorg/apache/james/mime4j/stream/MimeTokenStream;II)V
    .locals 0

    .line 1
    if-ne p2, p3, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    if-le p3, p2, :cond_1

    .line 5
    .line 6
    add-int/lit8 p3, p3, -0x1

    .line 7
    .line 8
    :goto_0
    if-lt p3, p2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILorg/apache/james/mime4j/stream/MimeTokenStream;)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 p3, p3, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILorg/apache/james/mime4j/stream/MimeTokenStream;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_2
    return-void
.end method

.method public final resolveShouldLayoutReverse$2()V
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iput-boolean v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 19
    .line 20
    return-void
.end method

.method public final scrollBy$1(ILandroidx/recyclerview/widget/RecyclerView$State;Lorg/apache/james/mime4j/stream/MimeTokenStream;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->ensureLayoutState()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 18
    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, -0x1

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, v0, v3, v2, p2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateLayoutState$1(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 32
    .line 33
    iget v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 34
    .line 35
    invoke-virtual {p0, p3, v2, p2, v1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->fill(Lorg/apache/james/mime4j/stream/MimeTokenStream;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    add-int/2addr p2, v4

    .line 40
    if-gez p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateScrolledToTop()V

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    if-le v3, p2, :cond_3

    .line 47
    .line 48
    mul-int p1, v0, p2

    .line 49
    .line 50
    :cond_3
    iget-object p2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 51
    .line 52
    neg-int p3, p1

    .line 53
    invoke-virtual {p2, p3}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 57
    .line 58
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 59
    .line 60
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->updateScrolledToTop()V

    .line 61
    .line 62
    .line 63
    return p1

    .line 64
    :cond_4
    :goto_1
    return v1
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$State;Lorg/apache/james/mime4j/stream/MimeTokenStream;)I
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollBy$1(ILandroidx/recyclerview/widget/RecyclerView$State;Lorg/apache/james/mime4j/stream/MimeTokenStream;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final scrollToPosition(I)V
    .locals 1

    .line 1
    iput p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    iput p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 6
    .line 7
    iget-object p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final scrollToPositionWithOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPosition:I

    .line 2
    .line 3
    iput p2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 4
    .line 5
    iget-object p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    iput p2, p1, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$State;Lorg/apache/james/mime4j/stream/MimeTokenStream;)I
    .locals 1

    .line 1
    iget v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->scrollBy$1(ILandroidx/recyclerview/widget/RecyclerView$State;Lorg/apache/james/mime4j/stream/MimeTokenStream;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput p2, v0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mPendingSavedState:Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final updateLayoutState$1(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getMode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getEnd()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 23
    .line 24
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 25
    .line 26
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 27
    .line 28
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mReusableIntPair:[I

    .line 29
    .line 30
    aput v3, v0, v3

    .line 31
    .line 32
    aput v3, v0, v4

    .line 33
    .line 34
    invoke-virtual {p0, p4, v0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 35
    .line 36
    .line 37
    aget p4, v0, v3

    .line 38
    .line 39
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    aget v0, v0, v4

    .line 44
    .line 45
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne p1, v4, :cond_1

    .line 50
    .line 51
    move v3, v4

    .line 52
    :cond_1
    iget-object p1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    move v2, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v2, p4

    .line 59
    :goto_1
    iput v2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move p4, v0

    .line 65
    :goto_2
    iput p4, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 66
    .line 67
    const/4 p4, -0x1

    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getEndPadding()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v0, v2

    .line 75
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 76
    .line 77
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToEnd$2()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 82
    .line 83
    iget-boolean v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    move v4, p4

    .line 88
    :cond_4
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 89
    .line 90
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    iget-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 95
    .line 96
    iget v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 97
    .line 98
    add-int/2addr p4, v3

    .line 99
    iput p4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result p4

    .line 105
    iput p4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 112
    .line 113
    .line 114
    move-result p4

    .line 115
    sub-int/2addr p1, p4

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->getChildClosestToStart$2()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 122
    .line 123
    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    add-int/2addr v3, v2

    .line 130
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 131
    .line 132
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 133
    .line 134
    iget-boolean v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 135
    .line 136
    if-eqz v2, :cond_6

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    move v4, p4

    .line 140
    :goto_3
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 141
    .line 142
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 143
    .line 144
    .line 145
    move-result p4

    .line 146
    iget-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 147
    .line 148
    iget v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 149
    .line 150
    add-int/2addr p4, v3

    .line 151
    iput p4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 152
    .line 153
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 154
    .line 155
    .line 156
    move-result p4

    .line 157
    iput p4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    neg-int p1, p1

    .line 164
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 165
    .line 166
    .line 167
    move-result p4

    .line 168
    add-int/2addr p1, p4

    .line 169
    :goto_4
    iget-object p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 170
    .line 171
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 172
    .line 173
    if-eqz p3, :cond_7

    .line 174
    .line 175
    sub-int/2addr p2, p1

    .line 176
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 177
    .line 178
    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 179
    .line 180
    return-void
.end method

.method public final updateLayoutStateToFillEnd$1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, p2

    .line 10
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 11
    .line 12
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 13
    .line 14
    iget-boolean p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v1

    .line 22
    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 23
    .line 24
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 25
    .line 26
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 27
    .line 28
    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 29
    .line 30
    const/high16 p0, -0x80000000

    .line 31
    .line 32
    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 33
    .line 34
    return-void
.end method

.method public final updateLayoutStateToFillStart$1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int v1, p2, v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 12
    .line 13
    iget-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 14
    .line 15
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 16
    .line 17
    iget-boolean p0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, p1

    .line 25
    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 26
    .line 27
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 28
    .line 29
    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 30
    .line 31
    const/high16 p0, -0x80000000

    .line 32
    .line 33
    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 34
    .line 35
    return-void
.end method

.method public final updateScrolledToTop()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    :cond_1
    :goto_0
    move v1, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v3, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v3, v2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ne v4, v2, :cond_1

    .line 36
    .line 37
    :goto_1
    iput-boolean v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->mScrolledToTop:Z

    .line 38
    .line 39
    return-void
.end method
