.class public final Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p2, -0x1

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    sget-object p1, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded(JZ)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 1
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/recyclerview/widget/FastScroller;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget p3, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 28
    .line 29
    sub-int v2, v0, v1

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-lez v2, :cond_0

    .line 34
    .line 35
    if-lt v1, p3, :cond_0

    .line 36
    .line 37
    move v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v2, v3

    .line 40
    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 49
    .line 50
    sub-int v6, v2, v5

    .line 51
    .line 52
    if-lez v6, :cond_1

    .line 53
    .line 54
    if-lt v5, p3, :cond_1

    .line 55
    .line 56
    move p3, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move p3, v3

    .line 59
    :goto_1
    iput-boolean p3, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 60
    .line 61
    iget-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 62
    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    if-nez p3, :cond_2

    .line 66
    .line 67
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    const/high16 p3, 0x40000000    # 2.0f

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    int-to-float p1, p1

    .line 80
    int-to-float v3, v1

    .line 81
    div-float v6, v3, p3

    .line 82
    .line 83
    add-float/2addr v6, p1

    .line 84
    mul-float/2addr v6, v3

    .line 85
    int-to-float p1, v0

    .line 86
    div-float/2addr v6, p1

    .line 87
    float-to-int p1, v6

    .line 88
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 89
    .line 90
    mul-int p1, v1, v1

    .line 91
    .line 92
    div-int/2addr p1, v0

    .line 93
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 98
    .line 99
    :cond_3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    int-to-float p1, p2

    .line 104
    int-to-float p2, v5

    .line 105
    div-float p3, p2, p3

    .line 106
    .line 107
    add-float/2addr p3, p1

    .line 108
    mul-float/2addr p3, p2

    .line 109
    int-to-float p1, v2

    .line 110
    div-float/2addr p3, p1

    .line 111
    float-to-int p1, p3

    .line 112
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 113
    .line 114
    mul-int p1, v5, v5

    .line 115
    .line 116
    div-int/2addr p1, v2

    .line 117
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 122
    .line 123
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    if-ne p1, v4, :cond_6

    .line 128
    .line 129
    :cond_5
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_2
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
