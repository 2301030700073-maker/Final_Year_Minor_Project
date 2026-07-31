.class public final synthetic Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/watchlist/WatchlistFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/watchlist/WatchlistFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->updateDisplayLanguages()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1, p0}, Lorg/wikipedia/watchlist/WatchlistViewModel;->fetchWatchlist(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0, p0}, Lorg/wikipedia/watchlist/WatchlistViewModel;->fetchWatchlist(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->resultLauncher:Landroidx/fragment/app/Fragment$10;

    .line 4
    .line 5
    sget v0, Lorg/wikipedia/watchlist/WatchlistFilterActivity;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v1, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
