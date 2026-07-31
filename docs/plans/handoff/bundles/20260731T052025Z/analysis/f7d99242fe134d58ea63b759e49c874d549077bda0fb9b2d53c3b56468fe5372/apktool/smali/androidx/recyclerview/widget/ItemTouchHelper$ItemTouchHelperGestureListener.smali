.class public final Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public mShouldReactToLongPress:Z

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/high16 v4, 0xff0000

    .line 7
    .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 14
    .line 15
    iget-object v0, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 16
    .line 17
    iget-boolean p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v5, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object v6, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v6, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    iget-object v6, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-virtual {v0, v6, p0}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-static {v7, v6}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    and-int/2addr v4, v6

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget v4, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 58
    .line 59
    if-ne v3, v4, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput v4, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchX:F

    .line 74
    .line 75
    iput p1, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchY:F

    .line 76
    .line 77
    iput v2, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 78
    .line 79
    iput v2, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, p0, v1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void

    .line 88
    :pswitch_0
    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 89
    .line 90
    iget-object v0, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    .line 91
    .line 92
    iget-boolean p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 93
    .line 94
    if-nez p0, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_3

    .line 102
    .line 103
    iget-object v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    invoke-virtual {v6, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-eqz p0, :cond_3

    .line 110
    .line 111
    iget-object v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-virtual {v0, v6, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    iget v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 118
    .line 119
    or-int v9, v8, v7

    .line 120
    .line 121
    shl-int/lit8 v8, v8, 0x8

    .line 122
    .line 123
    or-int/2addr v8, v9

    .line 124
    shl-int/lit8 v7, v7, 0x10

    .line 125
    .line 126
    or-int/2addr v7, v8

    .line 127
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    invoke-static {v7, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->convertToAbsoluteDirection(II)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    and-int/2addr v4, v6

    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iget v4, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 143
    .line 144
    if-ne v3, v4, :cond_3

    .line 145
    .line 146
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    iput v4, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 159
    .line 160
    iput p1, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 161
    .line 162
    iput v2, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 163
    .line 164
    iput v2, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->isLongPressDragEnabled()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    invoke-virtual {v5, p0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_1
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
