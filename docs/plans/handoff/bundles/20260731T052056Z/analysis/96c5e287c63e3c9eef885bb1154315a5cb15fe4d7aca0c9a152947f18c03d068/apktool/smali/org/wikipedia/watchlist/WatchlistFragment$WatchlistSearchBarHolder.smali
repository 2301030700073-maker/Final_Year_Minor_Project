.class public final Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final itemBinding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

.field public final synthetic this$0:Lorg/wikipedia/watchlist/WatchlistFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/watchlist/WatchlistFragment;Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;->this$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 4
    .line 5
    iget-object v1, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->rootView:Lorg/wikipedia/views/WikiCardView;

    .line 6
    .line 7
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;->itemBinding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p2, Landroid/util/TypedValue;

    .line 17
    .line 18
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const v2, 0x7f040061

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {p0, v2, p2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object p2, v2

    .line 38
    :goto_0
    if-eqz p2, :cond_1

    .line 39
    .line 40
    iget p0, p2, Landroid/util/TypedValue;->data:I

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    const/4 p2, 0x2

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    const/4 p2, 0x3

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    new-array p0, v3, [Landroid/view/View;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    aput-object v0, p0, p1

    .line 67
    .line 68
    aget-object p0, p0, p1

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    const-string p0, "Attribute not found; ID=2130968673"

    .line 79
    .line 80
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v2
.end method
