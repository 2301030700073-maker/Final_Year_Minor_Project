.class public final Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

.field public final synthetic this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterCount:Landroid/widget/TextView;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    iget-object v1, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->rootView:Lorg/wikipedia/views/WikiCardView;

    .line 6
    .line 7
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;->binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 11
    .line 12
    const/16 p0, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    sget v1, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->excludedFiltersCount()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const v3, 0x7f040520

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const v3, 0x7f04051a

    .line 40
    .line 41
    .line 42
    :goto_1
    if-eqz v1, :cond_2

    .line 43
    .line 44
    move p0, v2

    .line 45
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->excludedFiltersCount()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-static {p1, v3}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
