.class public final Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;
.super Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mMoveBackAfterwards:Z

.field public final mSwipeDirection:I

.field public final synthetic this$0:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;->this$0:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 2
    .line 3
    move-object p1, p2

    .line 4
    move p2, p3

    .line 5
    move p3, p4

    .line 6
    move p4, p5

    .line 7
    move p5, p6

    .line 8
    move p6, p7

    .line 9
    move p7, p8

    .line 10
    invoke-direct/range {p0 .. p7}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V

    .line 11
    .line 12
    .line 13
    iput p9, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;->mSwipeDirection:I

    .line 14
    .line 15
    iput-boolean p10, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;->mMoveBackAfterwards:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;->this$0:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 12
    .line 13
    iget-boolean v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;->mMoveBackAfterwards:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mPendingCleanup:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    .line 26
    .line 27
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    new-instance v3, Landroidx/work/impl/utils/StopWorkRunnable;

    .line 30
    .line 31
    iget v4, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;->mSwipeDirection:I

    .line 32
    .line 33
    invoke-direct {v3, v0, p0, v4, v1}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;IZ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object p0, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 42
    .line 43
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 44
    .line 45
    if-ne p0, p1, :cond_2

    .line 46
    .line 47
    if-ne p1, p0, :cond_2

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    iput-object p0, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method
