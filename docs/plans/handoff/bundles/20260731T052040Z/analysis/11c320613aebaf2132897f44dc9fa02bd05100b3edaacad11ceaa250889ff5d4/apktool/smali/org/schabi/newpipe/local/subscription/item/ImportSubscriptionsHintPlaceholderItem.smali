.class public final Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d007a

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getSpanSize(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
