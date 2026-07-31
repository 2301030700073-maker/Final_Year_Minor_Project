.class public final Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 1
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 10
    .line 11
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->getBehavior()Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p2, -0x1

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    xor-int/2addr p1, p3

    .line 21
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/FastScroller;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 43
    .line 44
    sub-int v3, v1, v2

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    if-lez v3, :cond_0

    .line 48
    .line 49
    if-lt v2, v0, :cond_0

    .line 50
    .line 51
    move v3, p3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v3, v4

    .line 54
    :goto_0
    iput-boolean v3, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 63
    .line 64
    sub-int v6, v3, v5

    .line 65
    .line 66
    if-lez v6, :cond_1

    .line 67
    .line 68
    if-lt v5, v0, :cond_1

    .line 69
    .line 70
    move v0, p3

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v0, v4

    .line 73
    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 74
    .line 75
    iget-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 76
    .line 77
    if-nez v6, :cond_2

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 90
    .line 91
    if-eqz v6, :cond_3

    .line 92
    .line 93
    int-to-float p1, p1

    .line 94
    int-to-float v4, v2

    .line 95
    div-float v6, v4, v0

    .line 96
    .line 97
    add-float/2addr v6, p1

    .line 98
    mul-float/2addr v6, v4

    .line 99
    int-to-float p1, v1

    .line 100
    div-float/2addr v6, p1

    .line 101
    float-to-int p1, v6

    .line 102
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 103
    .line 104
    mul-int p1, v2, v2

    .line 105
    .line 106
    div-int/2addr p1, v1

    .line 107
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 112
    .line 113
    :cond_3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    int-to-float p1, p2

    .line 118
    int-to-float p2, v5

    .line 119
    div-float v0, p2, v0

    .line 120
    .line 121
    add-float/2addr v0, p1

    .line 122
    mul-float/2addr v0, p2

    .line 123
    int-to-float p1, v3

    .line 124
    div-float/2addr v0, p1

    .line 125
    float-to-int p1, v0

    .line 126
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 127
    .line 128
    mul-int p1, v5, v5

    .line 129
    .line 130
    div-int/2addr p1, v3

    .line 131
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 136
    .line 137
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 138
    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    if-ne p1, p3, :cond_6

    .line 142
    .line 143
    :cond_5
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_2
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
