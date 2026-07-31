.class public final Lcom/fsck/k9/ui/messagedetails/MessageDetailsDividerItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final getLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0c02d0

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const p0, 0x7f090296

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/fsck/k9/ui/messagedetails/EmptyItem$ViewHolder;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/ui/messagedetails/EmptyItem$ViewHolder;-><init>(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
