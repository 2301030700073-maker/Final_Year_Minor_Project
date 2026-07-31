.class public final synthetic Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/tabs/TabActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/wikipedia/page/tabs/Tab;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;ILorg/wikipedia/page/tabs/Tab;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/page/tabs/TabActivity;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$2:Lorg/wikipedia/page/tabs/Tab;

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/page/tabs/TabActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget v2, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    .line 9
    iget-object v3, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$2:Lorg/wikipedia/page/tabs/Tab;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "binding"

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-object v1, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lorg/wikipedia/views/AutoFitRecyclerView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget p0, p0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;->f$3:I

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 35
    .line 36
    invoke-virtual {v1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v1, p1, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lorg/wikipedia/views/TabCountsView;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {v1, v5}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 49
    .line 50
    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-le p0, v4, :cond_2

    .line 58
    .line 59
    iget-object p0, p1, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lorg/wikipedia/views/AutoFitRecyclerView;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v2

    .line 81
    :cond_2
    return-void

    .line 82
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v2

    .line 86
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v2
.end method
