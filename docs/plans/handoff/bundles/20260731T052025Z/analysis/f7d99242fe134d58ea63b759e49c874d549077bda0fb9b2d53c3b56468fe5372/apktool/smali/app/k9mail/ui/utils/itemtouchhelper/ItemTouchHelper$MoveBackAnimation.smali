.class public final Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveBackAnimation;
.super Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFF)V
    .locals 8

    .line 1
    iput-object p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveBackAnimation;->this$0:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move v2, p3

    .line 8
    move v3, p4

    .line 9
    move v4, p5

    .line 10
    move v5, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveBackAnimation;->this$0:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 2
    .line 3
    iget-object v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 4
    .line 5
    invoke-super {p0, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->onSwipeEnded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v1, p1, p0}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    if-ne p1, p0, :cond_1

    .line 28
    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    iput-object p0, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
