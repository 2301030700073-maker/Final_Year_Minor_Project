.class public Lcom/android/contacts/list/AutoScrollListView;
.super Landroid/widget/ListView;
.source "AutoScrollListView.java"


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/android/contacts/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/android/contacts/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/android/contacts/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 5

    .line 66
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 67
    iget v0, p0, Lcom/android/contacts/list/AutoScrollListView;->mRequestedScrollPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 72
    :cond_0
    iput v1, p0, Lcom/android/contacts/list/AutoScrollListView;->mRequestedScrollPosition:I

    .line 74
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 75
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-lt v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 81
    iget-boolean v4, p0, Lcom/android/contacts/list/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v4, :cond_2

    .line 82
    invoke-virtual {p0, v0, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 87
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1

    :cond_2
    sub-int v4, v2, v1

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v1, :cond_4

    add-int/2addr v4, v0

    .line 96
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-lt v4, v2, :cond_3

    .line 97
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :cond_3
    if-ge v4, v1, :cond_6

    .line 100
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 101
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0

    :cond_4
    sub-int v1, v0, v4

    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    if-le v1, v2, :cond_6

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 110
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 115
    :cond_6
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 121
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    const/16 p2, 0x19

    if-ne p1, p2, :cond_1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/AutoScrollListView;->layoutChildren()V

    :cond_1
    return-void
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/contacts/list/AutoScrollListView;->mRequestedScrollPosition:I

    .line 60
    iput-boolean p2, p0, Lcom/android/contacts/list/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 61
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
