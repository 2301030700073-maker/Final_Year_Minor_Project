.class public abstract Lcom/xwray/groupie/viewbinding/BindableItem;
.super Lcom/xwray/groupie/Item;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public abstract bind(Landroidx/viewbinding/ViewBinding;)V
.end method

.method public bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method

.method public final bind(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 4
    .line 5
    const-string p1, "Doesn\'t get called"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw p0
.end method

.method public bridge synthetic bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 12
    iget-object p1, p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V

    return-void
.end method

.method public final createViewHolder(Landroid/view/View;)Lcom/xwray/groupie/GroupieViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/viewbinding/BindableItem;->initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public abstract initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
.end method
