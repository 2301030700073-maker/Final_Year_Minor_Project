.class public final Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# instance fields
.field public mActionState:I

.field public mActivePointerId:I

.field public final mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

.field public mDistances:Ljava/util/ArrayList;

.field public mDragScrollStartTimeInMs:J

.field public mDx:F

.field public mDy:F

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field public final mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

.field public mOverdrawChild:Landroid/view/View;

.field public final mPendingCleanup:Ljava/util/ArrayList;

.field public final mRecoverAnimations:Ljava/util/ArrayList;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mScrollRunnable:Landroidx/fragment/app/Fragment$1;

.field public mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public mSelectedFlags:I

.field public mSelectedStartX:F

.field public mSelectedStartY:F

.field public mSlop:I

.field public mSwapTargets:Ljava/util/ArrayList;

.field public mSwipeDirection:I

.field public final mTmpPosition:[F

.field public mTmpRect:Landroid/graphics/Rect;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mPendingCleanup:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iput-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpPosition:[F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwipeDirection:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    iput v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 24
    .line 25
    iput v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v1, Landroidx/fragment/app/Fragment$1;

    .line 35
    .line 36
    const/16 v2, 0x1a

    .line 37
    .line 38
    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/Fragment$1;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 42
    .line 43
    iput-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 44
    .line 45
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 52
    .line 53
    iput-object p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 54
    .line 55
    return-void
.end method

.method public static hitTest(Landroid/view/View;FFFF)Z
    .locals 1

    .line 1
    cmpl-float v0, p1, p3

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    cmpl-float p1, p2, p4

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 26
    .line 27
    if-gtz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method


# virtual methods
.method public final checkHorizontalSwipe$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 3

    .line 1
    and-int/lit8 v0, p2, 0xc

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x4

    .line 16
    :goto_0
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeThreshold:F

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    int-to-float p1, p1

    .line 40
    div-float/2addr v1, p1

    .line 41
    mul-float/2addr v1, v2

    .line 42
    and-int p1, p2, v0

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    cmpl-float p0, p0, v1

    .line 53
    .line 54
    if-lez p0, :cond_1

    .line 55
    .line 56
    return v0

    .line 57
    :cond_1
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public final checkSelectForSwipe(IILandroid/view/MotionEvent;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    if-nez v0, :cond_15

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_15

    .line 7
    .line 8
    iget p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 9
    .line 10
    if-eq p1, v0, :cond_15

    .line 11
    .line 12
    iget-object p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eq v3, v4, :cond_2

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget v6, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchX:F

    .line 52
    .line 53
    sub-float/2addr v4, v6

    .line 54
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v6, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchY:F

    .line 59
    .line 60
    sub-float/2addr v3, v6

    .line 61
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget v6, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSlop:I

    .line 70
    .line 71
    int-to-float v6, v6

    .line 72
    cmpg-float v7, v4, v6

    .line 73
    .line 74
    if-gez v7, :cond_3

    .line 75
    .line 76
    cmpg-float v6, v3, v6

    .line 77
    .line 78
    if-gez v6, :cond_3

    .line 79
    .line 80
    :cond_2
    :goto_0
    move-object v1, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    cmpl-float v6, v4, v3

    .line 83
    .line 84
    if-lez v6, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    cmpl-float v3, v3, v4

    .line 94
    .line 95
    if-lez v3, :cond_5

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {p0, p3}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    iget-object v3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_1
    if-nez v1, :cond_7

    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_7
    iget-object v3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 122
    .line 123
    invoke-virtual {p1, v3, v1}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-static {v4, v3}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    const v4, 0xff00

    .line 136
    .line 137
    .line 138
    and-int/2addr v3, v4

    .line 139
    const/16 v4, 0x8

    .line 140
    .line 141
    shr-int/2addr v3, v4

    .line 142
    if-nez v3, :cond_8

    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_8
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    iget v7, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchX:F

    .line 155
    .line 156
    sub-float/2addr v6, v7

    .line 157
    iget v7, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchY:F

    .line 158
    .line 159
    sub-float/2addr p2, v7

    .line 160
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    iget v9, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSlop:I

    .line 169
    .line 170
    int-to-float v9, v9

    .line 171
    cmpg-float v10, v7, v9

    .line 172
    .line 173
    if-gez v10, :cond_9

    .line 174
    .line 175
    cmpg-float v9, v8, v9

    .line 176
    .line 177
    if-gez v9, :cond_9

    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_9
    cmpl-float v7, v7, v8

    .line 182
    .line 183
    const/4 v8, 0x0

    .line 184
    if-lez v7, :cond_b

    .line 185
    .line 186
    cmpg-float p2, v6, v8

    .line 187
    .line 188
    if-gez p2, :cond_a

    .line 189
    .line 190
    and-int/lit8 p2, v3, 0x4

    .line 191
    .line 192
    if-nez p2, :cond_a

    .line 193
    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :cond_a
    cmpl-float p2, v6, v8

    .line 197
    .line 198
    if-lez p2, :cond_d

    .line 199
    .line 200
    and-int/lit8 p2, v3, 0x8

    .line 201
    .line 202
    if-nez p2, :cond_d

    .line 203
    .line 204
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_b
    cmpg-float v7, p2, v8

    .line 207
    .line 208
    if-gez v7, :cond_c

    .line 209
    .line 210
    and-int/lit8 v7, v3, 0x1

    .line 211
    .line 212
    if-nez v7, :cond_c

    .line 213
    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :cond_c
    cmpl-float p2, p2, v8

    .line 217
    .line 218
    if-lez p2, :cond_d

    .line 219
    .line 220
    and-int/lit8 p2, v3, 0x2

    .line 221
    .line 222
    if-nez p2, :cond_d

    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_d
    iput v8, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 227
    .line 228
    iput v8, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 229
    .line 230
    const/4 p2, 0x0

    .line 231
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    iput p3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 236
    .line 237
    cmpl-float p3, v6, v8

    .line 238
    .line 239
    const/4 v0, 0x4

    .line 240
    if-lez p3, :cond_e

    .line 241
    .line 242
    move p3, v4

    .line 243
    goto :goto_2

    .line 244
    :cond_e
    move p3, v0

    .line 245
    :goto_2
    iput p3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwipeDirection:I

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMessageListItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    if-nez v3, :cond_f

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_f
    iput-object v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->activeSwipingMessageListItem:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 255
    .line 256
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 257
    .line 258
    const v7, 0x7f0902ac

    .line 259
    .line 260
    .line 261
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getSwipeActions(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Lnet/thunderbird/core/common/action/SwipeActions;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    iget-object v7, v6, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 271
    .line 272
    iget-object v6, v6, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 273
    .line 274
    if-eq p3, v0, :cond_11

    .line 275
    .line 276
    if-ne p3, v4, :cond_10

    .line 277
    .line 278
    move-object v7, v6

    .line 279
    goto :goto_3

    .line 280
    :cond_10
    const-string p0, "Unsupported direction: "

    .line 281
    .line 282
    invoke-static {p0, p3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_11
    :goto_3
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->listener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->this$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 295
    .line 296
    iget-object p3, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 297
    .line 298
    if-eqz p3, :cond_12

    .line 299
    .line 300
    invoke-virtual {p3, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 301
    .line 302
    .line 303
    :cond_12
    invoke-static {p1, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->access$isMessageSelected(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    iput-boolean p2, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->itemSelectedOnSwipeStart:Z

    .line 308
    .line 309
    if-eqz p2, :cond_14

    .line 310
    .line 311
    sget-object p2, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 312
    .line 313
    if-eq v7, p2, :cond_14

    .line 314
    .line 315
    iget-object p2, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 316
    .line 317
    if-eqz p2, :cond_13

    .line 318
    .line 319
    iget-object p3, p2, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 320
    .line 321
    iget-wide v3, v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 322
    .line 323
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {p3, v0}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 328
    .line 329
    .line 330
    move-result-object p3

    .line 331
    invoke-virtual {p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateAfterSelectionChange()V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_13
    const-string p0, "adapter"

    .line 339
    .line 340
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v5

    .line 344
    :cond_14
    :goto_4
    invoke-virtual {p0, v1, v2}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 345
    .line 346
    .line 347
    :cond_15
    :goto_5
    return-void
.end method

.method public final checkVerticalSwipe$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 3

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeThreshold:F

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    div-float/2addr v1, p1

    .line 40
    mul-float/2addr v1, v2

    .line 41
    and-int p1, p2, v0

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    cmpl-float p0, p0, v1

    .line 52
    .line 53
    if-lez p0, :cond_1

    .line 54
    .line 55
    return v0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public final endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 16
    .line 17
    iget-object v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    if-ne v2, p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 22
    .line 23
    or-int/2addr p1, p2

    .line 24
    iput-boolean p1, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 25
    .line 26
    iget-boolean p1, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    iget v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartX:F

    .line 16
    .line 17
    iget v3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 18
    .line 19
    add-float/2addr v2, v3

    .line 20
    iget v3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartY:F

    .line 21
    .line 22
    iget v4, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 23
    .line 24
    add-float/2addr v3, v4

    .line 25
    invoke-static {v1, v0, p1, v2, v3}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    :goto_0
    if-ltz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 47
    .line 48
    iget-object v4, v3, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    iget v5, v3, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 53
    .line 54
    iget v3, v3, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 55
    .line 56
    invoke-static {v4, v0, p1, v5, v3}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getSelectedDxDy$1([F)V
    .locals 3

    .line 1
    iget v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartX:F

    .line 9
    .line 10
    iget v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 11
    .line 12
    add-float/2addr v0, v2

    .line 13
    iget-object v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    sub-float/2addr v0, v2

    .line 23
    aput v0, p1, v1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aput v0, p1, v1

    .line 35
    .line 36
    :goto_0
    iget v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedFlags:I

    .line 37
    .line 38
    and-int/lit8 v0, v0, 0x3

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartY:F

    .line 44
    .line 45
    iget v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 46
    .line 47
    add-float/2addr v0, v2

    .line 48
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    int-to-float p0, p0

    .line 57
    sub-float/2addr v0, p0

    .line 58
    aput v0, p1, v1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 62
    .line 63
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    aput p0, p1, v1

    .line 70
    .line 71
    return-void
.end method

.method public final limitDeltaX(Landroidx/recyclerview/widget/RecyclerView;F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p2, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    :goto_0
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->shouldAnimateOut(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMaxSwipeDistance(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-float p0, p0

    .line 27
    cmpl-float p1, p1, p0

    .line 28
    .line 29
    if-lez p1, :cond_1

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    mul-float/2addr p1, p0

    .line 36
    return p1

    .line 37
    :cond_1
    return p2
.end method

.method public final moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    iget v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_1
    iget-object v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartX:F

    .line 26
    .line 27
    iget v3, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 28
    .line 29
    add-float/2addr v1, v3

    .line 30
    float-to-int v1, v1

    .line 31
    iget v3, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartY:F

    .line 32
    .line 33
    iget v4, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 34
    .line 35
    add-float/2addr v3, v4

    .line 36
    float-to-int v3, v3

    .line 37
    move-object/from16 v4, p1

    .line 38
    .line 39
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    sub-int v5, v3, v5

    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    int-to-float v5, v5

    .line 52
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    int-to-float v6, v6

    .line 57
    const/high16 v7, 0x3f000000    # 0.5f

    .line 58
    .line 59
    mul-float/2addr v6, v7

    .line 60
    cmpg-float v5, v5, v6

    .line 61
    .line 62
    if-gez v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    sub-int v5, v1, v5

    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    int-to-float v5, v5

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    int-to-float v6, v6

    .line 80
    mul-float/2addr v6, v7

    .line 81
    cmpg-float v5, v5, v6

    .line 82
    .line 83
    if-gez v5, :cond_2

    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_2
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwapTargets:Ljava/util/ArrayList;

    .line 88
    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    new-instance v5, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwapTargets:Ljava/util/ArrayList;

    .line 97
    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDistances:Ljava/util/ArrayList;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 107
    .line 108
    .line 109
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDistances:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    :goto_0
    iget v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartX:F

    .line 115
    .line 116
    iget v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 117
    .line 118
    add-float/2addr v5, v6

    .line 119
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    iget v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartY:F

    .line 124
    .line 125
    iget v7, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 126
    .line 127
    add-float/2addr v6, v7

    .line 128
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    add-int/2addr v7, v5

    .line 137
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    add-int/2addr v8, v6

    .line 142
    add-int v9, v5, v7

    .line 143
    .line 144
    div-int/2addr v9, v2

    .line 145
    add-int v10, v6, v8

    .line 146
    .line 147
    div-int/2addr v10, v2

    .line 148
    iget-object v11, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    if-nez v11, :cond_4

    .line 155
    .line 156
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwapTargets:Ljava/util/ArrayList;

    .line 157
    .line 158
    move/from16 v17, v1

    .line 159
    .line 160
    move/from16 v18, v3

    .line 161
    .line 162
    move-object/from16 v19, v4

    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :cond_4
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    const/4 v14, 0x0

    .line 171
    :goto_1
    if-ge v14, v12, :cond_a

    .line 172
    .line 173
    invoke-virtual {v11, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    if-ne v15, v4, :cond_5

    .line 178
    .line 179
    :goto_2
    move/from16 v17, v1

    .line 180
    .line 181
    move/from16 v16, v2

    .line 182
    .line 183
    :goto_3
    move/from16 v18, v3

    .line 184
    .line 185
    move-object/from16 v19, v4

    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_5
    if-nez v15, :cond_6

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    move/from16 v16, v2

    .line 193
    .line 194
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-lt v2, v6, :cond_7

    .line 199
    .line 200
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-gt v2, v8, :cond_7

    .line 205
    .line 206
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-lt v2, v5, :cond_7

    .line 211
    .line 212
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-le v2, v7, :cond_8

    .line 217
    .line 218
    :cond_7
    move/from16 v17, v1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    .line 223
    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 232
    .line 233
    .line 234
    move-result v18

    .line 235
    add-int v18, v18, v17

    .line 236
    .line 237
    div-int/lit8 v18, v18, 0x2

    .line 238
    .line 239
    sub-int v17, v9, v18

    .line 240
    .line 241
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    .line 242
    .line 243
    .line 244
    move-result v17

    .line 245
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 246
    .line 247
    .line 248
    move-result v18

    .line 249
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    add-int v15, v15, v18

    .line 254
    .line 255
    div-int/lit8 v15, v15, 0x2

    .line 256
    .line 257
    sub-int v15, v10, v15

    .line 258
    .line 259
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    mul-int v17, v17, v17

    .line 264
    .line 265
    mul-int/2addr v15, v15

    .line 266
    add-int v15, v15, v17

    .line 267
    .line 268
    iget-object v13, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwapTargets:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    move/from16 v17, v1

    .line 275
    .line 276
    move/from16 v18, v3

    .line 277
    .line 278
    const/4 v1, 0x0

    .line 279
    const/4 v3, 0x0

    .line 280
    :goto_4
    move-object/from16 v19, v4

    .line 281
    .line 282
    if-ge v1, v13, :cond_9

    .line 283
    .line 284
    iget-object v4, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDistances:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    check-cast v4, Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-le v15, v4, :cond_9

    .line 297
    .line 298
    add-int/lit8 v3, v3, 0x1

    .line 299
    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 301
    .line 302
    move-object/from16 v4, v19

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_9
    iget-object v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwapTargets:Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDistances:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 320
    .line 321
    move/from16 v2, v16

    .line 322
    .line 323
    move/from16 v1, v17

    .line 324
    .line 325
    move/from16 v3, v18

    .line 326
    .line 327
    move-object/from16 v4, v19

    .line 328
    .line 329
    goto/16 :goto_1

    .line 330
    .line 331
    :cond_a
    move/from16 v17, v1

    .line 332
    .line 333
    move/from16 v18, v3

    .line 334
    .line 335
    move-object/from16 v19, v4

    .line 336
    .line 337
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwapTargets:Ljava/util/ArrayList;

    .line 338
    .line 339
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_b

    .line 344
    .line 345
    :goto_7
    return-void

    .line 346
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    add-int v1, v1, v17

    .line 351
    .line 352
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    add-int v3, v3, v18

    .line 357
    .line 358
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    sub-int v4, v17, v4

    .line 363
    .line 364
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    sub-int v5, v18, v5

    .line 369
    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    const/4 v6, 0x0

    .line 375
    const/4 v7, -0x1

    .line 376
    :cond_c
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-eqz v8, :cond_10

    .line 381
    .line 382
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 387
    .line 388
    if-lez v4, :cond_d

    .line 389
    .line 390
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 391
    .line 392
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    sub-int/2addr v9, v1

    .line 397
    if-gez v9, :cond_d

    .line 398
    .line 399
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 400
    .line 401
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    .line 406
    .line 407
    .line 408
    move-result v11

    .line 409
    if-le v10, v11, :cond_d

    .line 410
    .line 411
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-le v9, v7, :cond_d

    .line 416
    .line 417
    move-object v6, v8

    .line 418
    move v7, v9

    .line 419
    :cond_d
    if-gez v4, :cond_e

    .line 420
    .line 421
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 422
    .line 423
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    sub-int v9, v9, v17

    .line 428
    .line 429
    if-lez v9, :cond_e

    .line 430
    .line 431
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 432
    .line 433
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    .line 438
    .line 439
    .line 440
    move-result v11

    .line 441
    if-ge v10, v11, :cond_e

    .line 442
    .line 443
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    if-le v9, v7, :cond_e

    .line 448
    .line 449
    move-object v6, v8

    .line 450
    move v7, v9

    .line 451
    :cond_e
    if-gez v5, :cond_f

    .line 452
    .line 453
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 454
    .line 455
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 456
    .line 457
    .line 458
    move-result v9

    .line 459
    sub-int v9, v9, v18

    .line 460
    .line 461
    if-lez v9, :cond_f

    .line 462
    .line 463
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 464
    .line 465
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 466
    .line 467
    .line 468
    move-result v10

    .line 469
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    if-ge v10, v11, :cond_f

    .line 474
    .line 475
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    if-le v9, v7, :cond_f

    .line 480
    .line 481
    move-object v6, v8

    .line 482
    move v7, v9

    .line 483
    :cond_f
    if-lez v5, :cond_c

    .line 484
    .line 485
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 486
    .line 487
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 488
    .line 489
    .line 490
    move-result v9

    .line 491
    sub-int/2addr v9, v3

    .line 492
    if-gez v9, :cond_c

    .line 493
    .line 494
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 495
    .line 496
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 497
    .line 498
    .line 499
    move-result v10

    .line 500
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    .line 501
    .line 502
    .line 503
    move-result v11

    .line 504
    if-le v10, v11, :cond_c

    .line 505
    .line 506
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    if-le v9, v7, :cond_c

    .line 511
    .line 512
    move-object v6, v8

    .line 513
    move v7, v9

    .line 514
    goto/16 :goto_8

    .line 515
    .line 516
    :cond_10
    if-nez v6, :cond_11

    .line 517
    .line 518
    iget-object v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwapTargets:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 521
    .line 522
    .line 523
    iget-object v0, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDistances:Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :cond_11
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 530
    .line 531
    .line 532
    iget-object v0, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    const-string v0, "not implemented"

    .line 538
    .line 539
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    return-void
.end method

.method public final onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->resetSwipeView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 5
    .line 6
    const/4 v8, 0x1

    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_9

    .line 10
    .line 11
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpPosition:[F

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->getSelectedDxDy$1([F)V

    .line 14
    .line 15
    .line 16
    aget v3, v1, v9

    .line 17
    .line 18
    aget v1, v1, v8

    .line 19
    .line 20
    iget v4, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedFlags:I

    .line 21
    .line 22
    and-int/lit8 v4, v4, 0xc

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    cmpl-float v4, v3, v2

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    move-object/from16 v4, p2

    .line 31
    .line 32
    invoke-virtual {p0, v4, v3}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->limitDeltaX(Landroidx/recyclerview/widget/RecyclerView;F)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object/from16 v4, p2

    .line 38
    .line 39
    :goto_0
    cmpl-float v2, v3, v2

    .line 40
    .line 41
    if-eqz v2, :cond_8

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const/16 v6, 0x8

    .line 45
    .line 46
    if-lez v2, :cond_1

    .line 47
    .line 48
    move v2, v6

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v2, v5

    .line 51
    :goto_1
    iget v7, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwipeDirection:I

    .line 52
    .line 53
    if-eq v2, v7, :cond_8

    .line 54
    .line 55
    iput v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSwipeDirection:I

    .line 56
    .line 57
    iget-object v7, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMessageListItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-nez v7, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    iget-wide v10, v7, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getSwipeActions(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Lnet/thunderbird/core/common/action/SwipeActions;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    iget-object v13, v12, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 79
    .line 80
    iget-object v12, v12, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 81
    .line 82
    if-eq v2, v5, :cond_4

    .line 83
    .line 84
    if-ne v2, v6, :cond_3

    .line 85
    .line 86
    move-object v13, v12

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const-string p0, "Unsupported direction: "

    .line 89
    .line 90
    invoke-static {p0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->listener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v2, v2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->this$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    const-string v6, "adapter"

    .line 106
    .line 107
    sget-object v12, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 108
    .line 109
    if-ne v13, v12, :cond_6

    .line 110
    .line 111
    iget-boolean v12, v2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->itemSelectedOnSwipeStart:Z

    .line 112
    .line 113
    if-eqz v12, :cond_8

    .line 114
    .line 115
    invoke-static {v2, v7}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->access$isMessageSelected(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_8

    .line 120
    .line 121
    iget-object v7, v2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 122
    .line 123
    if-eqz v7, :cond_5

    .line 124
    .line 125
    iget-object v5, v7, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 126
    .line 127
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v7, v5}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateAfterSelectionChange()V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v5

    .line 146
    :cond_6
    invoke-static {v2, v7}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->access$isMessageSelected(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_8

    .line 151
    .line 152
    iget-object v7, v2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 153
    .line 154
    if-eqz v7, :cond_7

    .line 155
    .line 156
    iget-object v5, v7, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 157
    .line 158
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v7, v5}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateAfterSelectionChange()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v5

    .line 177
    :cond_8
    :goto_3
    move v11, v1

    .line 178
    move v10, v3

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    move-object/from16 v4, p2

    .line 181
    .line 182
    move v10, v2

    .line 183
    move v11, v10

    .line 184
    :goto_4
    iget-object v12, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_d

    .line 200
    .line 201
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 206
    .line 207
    iget-object v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 208
    .line 209
    iget v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 210
    .line 211
    iget v5, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 212
    .line 213
    cmpl-float v6, v3, v5

    .line 214
    .line 215
    if-nez v6, :cond_a

    .line 216
    .line 217
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 218
    .line 219
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    iput v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_a
    iget v6, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 227
    .line 228
    invoke-static {v5, v3, v6, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(FFFF)F

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    iput v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 233
    .line 234
    :goto_6
    iget v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 235
    .line 236
    iget v5, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 237
    .line 238
    cmpl-float v6, v3, v5

    .line 239
    .line 240
    if-nez v6, :cond_b

    .line 241
    .line 242
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 243
    .line 244
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    iput v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_b
    iget v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 252
    .line 253
    invoke-static {v5, v3, v2, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(FFFF)F

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    iput v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 258
    .line 259
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 260
    .line 261
    .line 262
    move-result v13

    .line 263
    instance-of v6, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;

    .line 264
    .line 265
    iget v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 266
    .line 267
    const/4 v3, 0x2

    .line 268
    if-ne v2, v3, :cond_c

    .line 269
    .line 270
    move v7, v8

    .line 271
    goto :goto_8

    .line 272
    :cond_c
    move v7, v9

    .line 273
    :goto_8
    iget-object v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 274
    .line 275
    iget v4, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 276
    .line 277
    iget v5, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 278
    .line 279
    move-object v1, p1

    .line 280
    move-object/from16 v2, p2

    .line 281
    .line 282
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZZ)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 286
    .line 287
    .line 288
    move-object/from16 v4, p2

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_d
    if-eqz v12, :cond_e

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    const/4 v6, 0x1

    .line 298
    const/4 v7, 0x0

    .line 299
    move-object v1, p1

    .line 300
    move-object/from16 v2, p2

    .line 301
    .line 302
    move v4, v10

    .line 303
    move v5, v11

    .line 304
    move-object v3, v12

    .line 305
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZZ)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 309
    .line 310
    .line 311
    :cond_e
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpPosition:[F

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->getSelectedDxDy$1([F)V

    .line 10
    .line 11
    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 17
    .line 18
    iget-object v3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v5, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 50
    .line 51
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    sub-int/2addr v3, v1

    .line 67
    :goto_1
    if-ltz v3, :cond_5

    .line 68
    .line 69
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 74
    .line 75
    iget-boolean v0, p1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-boolean p1, p1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    .line 80
    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    if-nez v0, :cond_4

    .line 88
    .line 89
    move v2, v1

    .line 90
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    if-eqz v2, :cond_6

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 96
    .line 97
    .line 98
    :cond_6
    return-void
.end method

.method public final resetSwipeView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0, p1, v2}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mPendingCleanup:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 42
    .line 43
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public final select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move/from16 v12, p2

    .line 6
    .line 7
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    if-ne v11, v0, :cond_0

    .line 10
    .line 11
    iget v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 12
    .line 13
    if-ne v12, v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 17
    .line 18
    iput-wide v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 19
    .line 20
    iget v4, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 21
    .line 22
    const/4 v13, 0x1

    .line 23
    invoke-virtual {v1, v11, v13}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 24
    .line 25
    .line 26
    iput v12, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 27
    .line 28
    const/4 v14, 0x2

    .line 29
    if-ne v12, v14, :cond_2

    .line 30
    .line 31
    if-eqz v11, :cond_1

    .line 32
    .line 33
    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v0, "Must pass a ViewHolder when dragging"

    .line 39
    .line 40
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    mul-int/lit8 v0, v12, 0x8

    .line 45
    .line 46
    const/16 v15, 0x8

    .line 47
    .line 48
    add-int/2addr v0, v15

    .line 49
    shl-int v0, v13, v0

    .line 50
    .line 51
    add-int/lit8 v16, v0, -0x1

    .line 52
    .line 53
    iget-object v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 54
    .line 55
    iget-object v7, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    if-eqz v2, :cond_16

    .line 59
    .line 60
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v9, 0x0

    .line 67
    if-eqz v3, :cond_14

    .line 68
    .line 69
    const v3, -0x100001

    .line 70
    .line 71
    .line 72
    if-ne v4, v14, :cond_3

    .line 73
    .line 74
    :goto_1
    move v0, v8

    .line 75
    const/high16 v17, 0x100000

    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_3
    iget v5, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 80
    .line 81
    if-ne v5, v14, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object v5, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    invoke-virtual {v7, v5, v2}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    iget-object v6, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-static {v5, v6}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    const v10, 0xff00

    .line 101
    .line 102
    .line 103
    and-int/2addr v6, v10

    .line 104
    shr-int/2addr v6, v15

    .line 105
    if-nez v6, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    and-int/2addr v5, v10

    .line 109
    shr-int/2addr v5, v15

    .line 110
    iget v10, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 111
    .line 112
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    const/high16 v17, 0x100000

    .line 117
    .line 118
    iget v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    cmpl-float v0, v10, v0

    .line 125
    .line 126
    if-lez v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v1, v2, v6}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->checkHorizontalSwipe$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_6

    .line 133
    .line 134
    and-int v6, v0, v17

    .line 135
    .line 136
    and-int v10, v0, v3

    .line 137
    .line 138
    and-int/2addr v5, v10

    .line 139
    if-nez v5, :cond_a

    .line 140
    .line 141
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v10, v0}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    :goto_2
    or-int/2addr v0, v6

    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {v1, v2, v6}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->checkVerticalSwipe$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-lez v0, :cond_9

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    invoke-virtual {v1, v2, v6}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->checkVerticalSwipe$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-lez v0, :cond_8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    invoke-virtual {v1, v2, v6}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->checkHorizontalSwipe$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-lez v0, :cond_9

    .line 172
    .line 173
    and-int v6, v0, v17

    .line 174
    .line 175
    and-int v10, v0, v3

    .line 176
    .line 177
    and-int/2addr v5, v10

    .line 178
    if-nez v5, :cond_a

    .line 179
    .line 180
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-static {v10, v0}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    goto :goto_2

    .line 191
    :cond_9
    move v0, v8

    .line 192
    :cond_a
    :goto_3
    and-int v5, v0, v17

    .line 193
    .line 194
    if-eqz v5, :cond_b

    .line 195
    .line 196
    move v5, v13

    .line 197
    goto :goto_4

    .line 198
    :cond_b
    move v5, v8

    .line 199
    :goto_4
    and-int/2addr v0, v3

    .line 200
    iget-object v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 201
    .line 202
    if-eqz v3, :cond_c

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 205
    .line 206
    .line 207
    iput-object v9, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 208
    .line 209
    :cond_c
    iget-object v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpPosition:[F

    .line 210
    .line 211
    invoke-virtual {v1, v3}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->getSelectedDxDy$1([F)V

    .line 212
    .line 213
    .line 214
    iget-object v6, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    .line 216
    aget v10, v3, v8

    .line 217
    .line 218
    invoke-virtual {v1, v6, v10}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->limitDeltaX(Landroidx/recyclerview/widget/RecyclerView;F)F

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    aget v3, v3, v13

    .line 223
    .line 224
    const/4 v10, 0x4

    .line 225
    if-ne v4, v14, :cond_d

    .line 226
    .line 227
    move/from16 v17, v5

    .line 228
    .line 229
    move v5, v6

    .line 230
    move v6, v3

    .line 231
    move v3, v15

    .line 232
    goto :goto_5

    .line 233
    :cond_d
    if-lez v0, :cond_e

    .line 234
    .line 235
    move/from16 v17, v5

    .line 236
    .line 237
    move v5, v6

    .line 238
    move v6, v3

    .line 239
    move v3, v14

    .line 240
    goto :goto_5

    .line 241
    :cond_e
    move/from16 v17, v5

    .line 242
    .line 243
    move v5, v6

    .line 244
    move v6, v3

    .line 245
    move v3, v10

    .line 246
    :goto_5
    if-eq v0, v13, :cond_13

    .line 247
    .line 248
    if-eq v0, v14, :cond_13

    .line 249
    .line 250
    if-eq v0, v10, :cond_f

    .line 251
    .line 252
    if-eq v0, v15, :cond_f

    .line 253
    .line 254
    const/16 v10, 0x10

    .line 255
    .line 256
    if-eq v0, v10, :cond_f

    .line 257
    .line 258
    const/16 v10, 0x20

    .line 259
    .line 260
    if-eq v0, v10, :cond_f

    .line 261
    .line 262
    new-instance v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveBackAnimation;

    .line 263
    .line 264
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveBackAnimation;-><init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFF)V

    .line 265
    .line 266
    .line 267
    move-object v14, v7

    .line 268
    move/from16 v19, v15

    .line 269
    .line 270
    move v15, v8

    .line 271
    move v8, v13

    .line 272
    move-object v13, v9

    .line 273
    goto/16 :goto_6

    .line 274
    .line 275
    :cond_f
    invoke-virtual {v7, v0}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->shouldAnimateOut(I)Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-eqz v10, :cond_10

    .line 280
    .line 281
    iget v10, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 282
    .line 283
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    iget-object v8, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 288
    .line 289
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    int-to-float v8, v8

    .line 294
    mul-float/2addr v10, v8

    .line 295
    move-object v8, v9

    .line 296
    move v9, v0

    .line 297
    new-instance v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;

    .line 298
    .line 299
    move-object/from16 v17, v7

    .line 300
    .line 301
    move v7, v10

    .line 302
    const/4 v10, 0x0

    .line 303
    move-object/from16 v18, v8

    .line 304
    .line 305
    move v8, v6

    .line 306
    move/from16 v19, v15

    .line 307
    .line 308
    move-object/from16 v14, v17

    .line 309
    .line 310
    move-object/from16 v13, v18

    .line 311
    .line 312
    const/4 v15, 0x0

    .line 313
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;-><init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFIZ)V

    .line 314
    .line 315
    .line 316
    const/4 v8, 0x1

    .line 317
    goto :goto_6

    .line 318
    :cond_10
    move-object v14, v7

    .line 319
    move-object v13, v9

    .line 320
    move/from16 v19, v15

    .line 321
    .line 322
    move v9, v0

    .line 323
    move v15, v8

    .line 324
    if-eqz v17, :cond_11

    .line 325
    .line 326
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 327
    .line 328
    invoke-virtual {v14, v0, v9}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMaxSwipeDistance(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    iget v7, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 333
    .line 334
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    int-to-float v0, v0

    .line 339
    mul-float/2addr v7, v0

    .line 340
    new-instance v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;

    .line 341
    .line 342
    const/4 v10, 0x1

    .line 343
    move v8, v6

    .line 344
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;-><init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFIZ)V

    .line 345
    .line 346
    .line 347
    const/4 v8, 0x1

    .line 348
    move-object/from16 v1, p0

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_11
    new-instance v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;

    .line 352
    .line 353
    const/4 v10, 0x1

    .line 354
    move v7, v5

    .line 355
    move v8, v6

    .line 356
    move-object/from16 v1, p0

    .line 357
    .line 358
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;-><init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFIZ)V

    .line 359
    .line 360
    .line 361
    const-wide/16 v4, 0x0

    .line 362
    .line 363
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 364
    .line 365
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 366
    .line 367
    .line 368
    move v8, v15

    .line 369
    :goto_6
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 370
    .line 371
    if-eqz v8, :cond_12

    .line 372
    .line 373
    iget-object v4, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 374
    .line 375
    iget v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 376
    .line 377
    iget v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 378
    .line 379
    sub-float/2addr v5, v6

    .line 380
    invoke-virtual {v14, v4, v3, v5}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IF)J

    .line 381
    .line 382
    .line 383
    move-result-wide v3

    .line 384
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 385
    .line 386
    .line 387
    :cond_12
    iget-object v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    iget-object v0, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 393
    .line 394
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 398
    .line 399
    .line 400
    const/4 v8, 0x1

    .line 401
    goto :goto_7

    .line 402
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 405
    .line 406
    .line 407
    throw v0

    .line 408
    :cond_14
    move-object v14, v7

    .line 409
    move-object v13, v9

    .line 410
    move/from16 v19, v15

    .line 411
    .line 412
    move v15, v8

    .line 413
    iget-object v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 414
    .line 415
    if-ne v0, v3, :cond_15

    .line 416
    .line 417
    iput-object v13, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 418
    .line 419
    :cond_15
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 420
    .line 421
    invoke-virtual {v14, v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 422
    .line 423
    .line 424
    move v8, v15

    .line 425
    :goto_7
    iput-object v13, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_16
    move-object v14, v7

    .line 429
    move/from16 v19, v15

    .line 430
    .line 431
    move v15, v8

    .line 432
    :goto_8
    if-eqz v11, :cond_17

    .line 433
    .line 434
    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 435
    .line 436
    iget-object v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 437
    .line 438
    invoke-virtual {v14, v2, v11}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    invoke-static {v3, v2}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    and-int v2, v2, v16

    .line 451
    .line 452
    iget v3, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActionState:I

    .line 453
    .line 454
    mul-int/lit8 v3, v3, 0x8

    .line 455
    .line 456
    shr-int/2addr v2, v3

    .line 457
    iput v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedFlags:I

    .line 458
    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    int-to-float v2, v2

    .line 464
    iput v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartX:F

    .line 465
    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    int-to-float v2, v2

    .line 471
    iput v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartY:F

    .line 472
    .line 473
    iput-object v11, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 474
    .line 475
    const/4 v2, 0x2

    .line 476
    if-ne v12, v2, :cond_17

    .line 477
    .line 478
    invoke-virtual {v0, v15}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 479
    .line 480
    .line 481
    :cond_17
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 482
    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    if-eqz v0, :cond_19

    .line 488
    .line 489
    iget-object v2, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 490
    .line 491
    if-eqz v2, :cond_18

    .line 492
    .line 493
    const/4 v15, 0x1

    .line 494
    :cond_18
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 495
    .line 496
    .line 497
    :cond_19
    if-nez v8, :cond_1a

    .line 498
    .line 499
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 500
    .line 501
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    if-eqz v0, :cond_1a

    .line 506
    .line 507
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 508
    .line 509
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    const/4 v2, 0x1

    .line 514
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 515
    .line 516
    :cond_1a
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    iget-object v0, v1, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 520
    .line 521
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 522
    .line 523
    .line 524
    return-void
.end method

.method public final updateDxDy(IILandroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget p3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchX:F

    .line 10
    .line 11
    sub-float/2addr v0, p3

    .line 12
    iput v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 13
    .line 14
    iget p3, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchY:F

    .line 15
    .line 16
    sub-float/2addr p2, p3

    .line 17
    iput p2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 18
    .line 19
    and-int/lit8 p2, p1, 0x4

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iput p2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 29
    .line 30
    :cond_0
    and-int/lit8 p2, p1, 0x8

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    iget p2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 35
    .line 36
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 41
    .line 42
    :cond_1
    and-int/lit8 p2, p1, 0x1

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    iget p2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 47
    .line 48
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 53
    .line 54
    :cond_2
    and-int/lit8 p1, p1, 0x2

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iget p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 59
    .line 60
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 65
    .line 66
    :cond_3
    return-void
.end method
