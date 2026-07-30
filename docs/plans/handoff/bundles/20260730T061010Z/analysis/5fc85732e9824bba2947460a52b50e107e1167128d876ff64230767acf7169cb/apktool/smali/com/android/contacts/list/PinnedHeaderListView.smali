.class public Lcom/android/contacts/list/PinnedHeaderListView;
.super Lcom/android/contacts/list/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mHeaderPaddingStart:I

.field private mHeaderTouched:Z

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mScrollToSectionOnHeaderTouch:Z

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010074

    .line 116
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    .line 107
    iput-boolean p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderTouched:Z

    const/16 p1, 0x14

    .line 109
    iput p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimationDuration:I

    .line 125
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 126
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;J)V
    .locals 4

    .line 555
    iget-boolean v0, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v0, :cond_1

    .line 556
    iget-wide v0, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v0, p3

    long-to-int p3, v0

    if-gtz p3, :cond_0

    .line 558
    iget p3, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput p3, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 559
    iget-boolean p3, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean p3, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 p3, 0x0

    .line 560
    iput-boolean p3, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    goto :goto_0

    .line 562
    :cond_0
    iget p4, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v0, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    sub-int/2addr v0, p4

    mul-int v0, v0, p3

    iget p3, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v0, p3

    add-int/2addr p4, v0

    iput p4, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 566
    :cond_1
    :goto_0
    iget-boolean p3, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz p3, :cond_4

    .line 567
    iget-object p3, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p4

    .line 569
    invoke-static {p0}, Lcom/android/contacts/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 571
    :cond_2
    iget v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    :goto_1
    int-to-float v0, v0

    .line 572
    iget v1, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 573
    iget v0, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 574
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 575
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget p2, p2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 577
    :cond_3
    invoke-virtual {p3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 578
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 366
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    .line 368
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    .line 370
    :cond_0
    iget v3, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderWidth:I

    .line 371
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 374
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_1

    .line 376
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    .line 378
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 380
    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 382
    iget-object v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v2, p1

    iput v1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0, v4, v4, p1, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method private invalidateIfAnimating()V
    .locals 2

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimating:Z

    .line 481
    :goto_0
    iget v1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimating:Z

    .line 484
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5

    .line 459
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 462
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 469
    iget-object v3, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v1

    .line 470
    iget-boolean v4, v3, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    .line 471
    iget v3, v3, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    add-int/2addr v0, p1

    const/16 p1, 0x64

    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 492
    iget-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 496
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 498
    :goto_1
    iget v7, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v4, v7, :cond_5

    .line 499
    iget-object v7, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v7, v4

    .line 500
    iget-boolean v10, v7, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v10, :cond_4

    .line 502
    iget v5, v7, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v5, v9, :cond_1

    iget v5, v7, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v5, v2, :cond_1

    move v2, v5

    goto :goto_2

    .line 504
    :cond_1
    iget v5, v7, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v5, :cond_2

    if-ne v5, v8, :cond_3

    .line 505
    :cond_2
    iget v5, v7, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v7, v7, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v5, v7

    if-le v5, v6, :cond_3

    move v6, v5

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 517
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v5, :cond_d

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 525
    iget v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    if-lez v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_8

    .line 526
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 527
    iget-object v4, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v3

    if-eqz v4, :cond_8

    if-eqz v2, :cond_7

    .line 530
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 531
    :goto_3
    iget v5, v4, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 536
    :cond_8
    iget v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_b

    .line 537
    iget-object v4, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v2

    .line 538
    iget-boolean v5, v4, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v5, :cond_9

    iget v5, v4, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v5, :cond_a

    if-ne v5, v8, :cond_9

    .line 539
    :cond_a
    invoke-direct {p0, p1, v4, v0, v1}, Lcom/android/contacts/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_4

    .line 543
    :cond_b
    :goto_5
    iget v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    if-ge v3, v2, :cond_d

    .line 544
    iget-object v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v2, v3

    .line 545
    iget-boolean v4, v2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_c

    iget v4, v2, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v4, v9, :cond_c

    .line 546
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/contacts/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;J)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 551
    :cond_d
    invoke-direct {p0}, Lcom/android/contacts/list/PinnedHeaderListView;->invalidateIfAnimating()V

    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1

    .line 249
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 250
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public getPositionAt(I)I
    .locals 2

    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getTopFadingEdgeStrength()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 3

    .line 391
    iget v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    .line 393
    iget-boolean v2, v1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 394
    iget v0, v1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 419
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 423
    :cond_0
    iget v1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mScrollState:I

    if-nez v1, :cond_4

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 426
    iget v4, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 427
    iget-object v5, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v4

    .line 428
    invoke-static {p0}, Lcom/android/contacts/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v6, v7

    iget-object v7, v5, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_0

    .line 430
    :cond_2
    iget v6, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    .line 431
    :goto_0
    iget-boolean v7, v5, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v7, :cond_1

    iget v7, v5, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v7, v1, :cond_1

    iget v8, v5, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v7, v8

    if-le v7, v1, :cond_1

    if-lt v3, v6, :cond_1

    iget-object v5, v5, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 432
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v6, v5

    if-lt v6, v3, :cond_1

    .line 433
    iput-boolean v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 434
    iget-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    if-eqz v0, :cond_3

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 436
    invoke-direct {p0, v4}, Lcom/android/contacts/list/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result p1

    return p1

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 215
    :goto_0
    iget v3, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    if-ge v1, v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v1

    .line 217
    iget-boolean v4, v3, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 218
    iget v4, v3, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v4, :cond_0

    .line 219
    iget v2, v3, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v3, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 221
    iget v0, v3, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 230
    invoke-virtual {p0, p3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 231
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p3, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 236
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 237
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 131
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/AutoScrollListView;->onLayout(ZIIII)V

    .line 132
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 133
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderWidth:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 161
    iget-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz p1, :cond_4

    .line 162
    invoke-interface {p1}, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result p1

    .line 163
    iget v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 164
    iput p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    .line 165
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    if-nez v0, :cond_0

    .line 166
    new-array p1, p1, [Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    iput-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    goto :goto_0

    .line 167
    :cond_0
    array-length v2, v0

    if-ge v2, p1, :cond_1

    .line 169
    new-array p1, p1, [Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    iput-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    .line 170
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mSize:I

    if-ge v1, p1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, p1, v1

    if-nez v0, :cond_2

    .line 176
    new-instance v0, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/list/PinnedHeaderListView$1;)V

    aput-object v0, p1, v1

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, p1, v1

    iget-object v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v2, v1, p1, p0}, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 182
    iget-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {p1, p0}, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/list/PinnedHeaderListView;)V

    .line 183
    invoke-direct {p0}, Lcom/android/contacts/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 185
    :cond_4
    iget-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p1, :cond_5

    .line 186
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 198
    iput p2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mScrollState:I

    .line 199
    iget-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p1, :cond_0

    .line 200
    invoke-interface {p1, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderTouched:Z

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 451
    iput-boolean p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaderTouched:Z

    :cond_0
    return v0

    .line 455
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 39
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 139
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 3

    .line 310
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    .line 319
    iget-object v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v0, 0x2

    .line 320
    iput v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/16 v0, 0xff

    .line 321
    iput v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/4 v1, 0x0

    .line 322
    iput-boolean v1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v1

    .line 325
    iput v1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-eqz p3, :cond_1

    .line 327
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v1

    .line 328
    iget p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    if-ge p2, p3, :cond_1

    sub-int/2addr p2, p3

    add-int v2, p3, p2

    mul-int/lit16 v2, v2, 0xff

    .line 331
    div-int/2addr v2, p3

    iput v2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    add-int/2addr v1, p2

    .line 332
    iput v1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    :cond_1
    return-void
.end method

.method public setHeaderInvisible(IZ)V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    .line 345
    iget-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz p2, :cond_2

    :cond_0
    iget p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 346
    iget p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 347
    iget-boolean p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez p2, :cond_1

    .line 348
    iput-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 349
    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result p2

    iget v2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr p2, v2

    iput p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 351
    :cond_1
    iput-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 352
    iget-wide v2, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 353
    iput-boolean v1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    goto :goto_0

    .line 355
    :cond_2
    iput-boolean v1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    :goto_0
    return-void
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 2

    .line 279
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 280
    iget-object v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    .line 281
    iput v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 282
    iget-boolean v1, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 283
    iget-wide v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 284
    iget p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 285
    iput p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_3

    .line 286
    iget p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne p3, p2, :cond_1

    iget-boolean p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez p3, :cond_3

    .line 287
    :cond_1
    iget-boolean p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz p3, :cond_2

    .line 288
    iget p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_0

    .line 290
    :cond_2
    iput-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 291
    iget p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 293
    :goto_0
    iput-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 294
    iput-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 295
    iget-wide v0, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 296
    iput p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_1

    .line 298
    :cond_3
    iput-boolean v0, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 299
    iput p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    :goto_1
    return-void
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 262
    iget-object p3, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, p3, p1

    const/4 p3, 0x1

    .line 263
    iput-boolean p3, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 264
    iput p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->y:I

    const/4 p2, 0x0

    .line 265
    iput p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 268
    iput-boolean p2, p1, Lcom/android/contacts/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 151
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/contacts/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 145
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method
