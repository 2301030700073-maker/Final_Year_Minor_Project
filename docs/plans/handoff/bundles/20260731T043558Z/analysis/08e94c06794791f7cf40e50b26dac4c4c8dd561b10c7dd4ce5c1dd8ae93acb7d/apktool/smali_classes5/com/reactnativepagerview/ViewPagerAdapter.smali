.class public final Lcom/reactnativepagerview/ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ViewPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/reactnativepagerview/ViewPagerViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000cJ\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000cJ\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000cR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/reactnativepagerview/ViewPagerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/reactnativepagerview/ViewPagerViewHolder;",
        "<init>",
        "()V",
        "childrenViews",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "index",
        "getItemCount",
        "addChild",
        "child",
        "getChildAt",
        "removeChild",
        "removeAll",
        "removeChildAt",
        "react-native-pager-view_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final childrenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addChild(Landroid/view/View;I)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 10
    check-cast p1, Lcom/reactnativepagerview/ViewPagerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->onBindViewHolder(Lcom/reactnativepagerview/ViewPagerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/reactnativepagerview/ViewPagerViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/reactnativepagerview/ViewPagerViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Lcom/reactnativepagerview/ViewPagerViewHolder;->setIsRecyclable(Z)V

    .line 22
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 30
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/reactnativepagerview/ViewPagerViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/reactnativepagerview/ViewPagerViewHolder;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object p2, Lcom/reactnativepagerview/ViewPagerViewHolder;->Companion:Lcom/reactnativepagerview/ViewPagerViewHolder$Companion;

    invoke-virtual {p2, p1}, Lcom/reactnativepagerview/ViewPagerViewHolder$Companion;->create(Landroid/view/ViewGroup;)Lcom/reactnativepagerview/ViewPagerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_2

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.view.View"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/reactnativepagerview/ViewPagerAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final removeChild(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/ViewPagerAdapter;->removeChildAt(I)V

    :cond_0
    return-void
.end method

.method public final removeChildAt(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/ViewPagerAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
