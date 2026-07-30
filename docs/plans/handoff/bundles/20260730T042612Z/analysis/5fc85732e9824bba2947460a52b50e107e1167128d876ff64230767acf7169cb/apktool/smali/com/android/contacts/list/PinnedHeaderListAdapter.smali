.class public abstract Lcom/android/contacts/list/PinnedHeaderListAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/list/PinnedHeaderListView;)V
    .locals 10

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 103
    :cond_1
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v4

    .line 107
    iget-object v5, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v4, v5, v2

    if-nez v4, :cond_3

    .line 109
    invoke-virtual {p1, v2, v3}, Lcom/android/contacts/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_1
    if-ge v5, v0, :cond_7

    .line 119
    iget-object v8, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_6

    .line 120
    invoke-virtual {p1, v6}, Lcom/android/contacts/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v8

    sub-int/2addr v8, v2

    .line 121
    invoke-virtual {p0, v8}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v8

    if-le v5, v8, :cond_5

    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {p1, v5, v6, v1}, Lcom/android/contacts/list/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 127
    invoke-virtual {p1, v5}, Lcom/android/contacts/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    move v6, v0

    const/4 v8, 0x0

    :cond_8
    :goto_3
    add-int/2addr v0, v4

    if-le v0, v7, :cond_b

    .line 137
    iget-object v9, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_8

    sub-int v9, v5, v8

    .line 138
    invoke-virtual {p1, v9}, Lcom/android/contacts/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v9

    sub-int/2addr v9, v2

    if-gez v9, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v9, v9, -0x1

    .line 144
    invoke-virtual {p0, v9}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v9

    if-eq v9, v4, :cond_b

    if-gt v0, v9, :cond_a

    goto :goto_4

    .line 149
    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v6

    add-int/2addr v8, v6

    sub-int v6, v5, v8

    .line 152
    invoke-virtual {p1, v0, v6, v1}, Lcom/android/contacts/list/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    move v6, v0

    goto :goto_3

    :cond_b
    :goto_4
    add-int/2addr v7, v3

    :goto_5
    if-ge v7, v6, :cond_d

    .line 159
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_c

    .line 160
    invoke-virtual {p0, v7}, Lcom/android/common/widget/CompositeCursorAdapter;->isPartitionEmpty(I)Z

    move-result v0

    invoke-virtual {p1, v7, v0}, Lcom/android/contacts/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->hasHeader(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 86
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-object p2

    :cond_2
    return-object v1
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPositionForPartition(I)I

    move-result p1

    return p1
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->isPartitionEmpty(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/contacts/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return-void
.end method
