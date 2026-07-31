.class public final Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/page/tabs/TabActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doCloseTab()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lorg/wikipedia/page/tabs/TabActivity;->$r8$clinit:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    .line 8
    .line 9
    iget-object v2, v1, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    iget-object v3, v2, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v3, v0

    .line 18
    const/4 v4, 0x1

    .line 19
    sub-int/2addr v3, v4

    .line 20
    iget-object v2, v2, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lorg/wikipedia/page/tabs/Tab;

    .line 27
    .line 28
    iget-object v5, v1, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v5, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v5, Lorg/wikipedia/views/TabCountsView;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-virtual {v5, v6}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 45
    .line 46
    invoke-virtual {v5, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 47
    .line 48
    .line 49
    :cond_0
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    const/16 p0, 0xa

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Landroid/app/Activity;->setResult(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p0, v4, v6

    .line 76
    .line 77
    const p0, 0x7f12092e

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const/16 v4, 0xc

    .line 88
    .line 89
    invoke-static {v1, p0, v6, v4}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance v4, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;

    .line 94
    .line 95
    invoke-direct {v4, v1, v3, v2, v0}, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/page/tabs/TabActivity;ILorg/wikipedia/page/tabs/Tab;I)V

    .line 96
    .line 97
    .line 98
    const v0, 0x7f120775

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void

    .line 108
    :cond_3
    const-string p0, "binding"

    .line 109
    .line 110
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 p0, 0x0

    .line 114
    throw p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget v1, Lorg/wikipedia/page/tabs/TabActivity;->$r8$clinit:I

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    .line 11
    .line 12
    iget-object v2, v1, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 13
    .line 14
    iget-object v3, v2, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int/2addr v3, v0

    .line 21
    add-int/lit8 v3, v3, -0x1

    .line 22
    .line 23
    if-ltz v3, :cond_4

    .line 24
    .line 25
    iget-object v0, v2, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lt v3, v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const v4, 0x7f09064e

    .line 39
    .line 40
    .line 41
    if-ne v0, v4, :cond_3

    .line 42
    .line 43
    iget-object p0, v2, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    add-int/lit8 p0, p0, -0x1

    .line 50
    .line 51
    if-ge v3, p0, :cond_1

    .line 52
    .line 53
    iget-object p0, v2, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lorg/wikipedia/page/tabs/Tab;

    .line 60
    .line 61
    iget-object p1, v2, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-boolean p0, v1, Lorg/wikipedia/page/tabs/TabActivity;->launchedFromPageActivity:Z

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    const/16 p0, 0xa

    .line 71
    .line 72
    invoke-virtual {v1, p0}, Landroid/app/Activity;->setResult(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget p0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 77
    .line 78
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const v0, 0x7f09064d

    .line 94
    .line 95
    .line 96
    if-ne p1, v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;->doCloseTab()V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    return-void
.end method
