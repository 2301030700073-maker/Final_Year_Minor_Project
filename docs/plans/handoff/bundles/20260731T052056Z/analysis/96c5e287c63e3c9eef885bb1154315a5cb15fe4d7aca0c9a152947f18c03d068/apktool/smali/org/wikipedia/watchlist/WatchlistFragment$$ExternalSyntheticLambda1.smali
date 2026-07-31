.class public final synthetic Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/watchlist/WatchlistFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/watchlist/WatchlistFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->resultLauncher:Landroidx/fragment/app/Fragment$10;

    .line 11
    .line 12
    sget v0, Lorg/wikipedia/watchlist/WatchlistFilterActivity;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    const-class v1, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 24
    .line 25
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lorg/wikipedia/watchlist/WatchlistActivity;

    .line 41
    .line 42
    iget-object v0, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v1}, Lorg/wikipedia/watchlist/WatchlistViewModel;->updateList(Z)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void

    .line 58
    :pswitch_1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    sget p1, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :pswitch_2
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 83
    .line 84
    if-nez p0, :cond_2

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    :cond_2
    invoke-virtual {p1, v1}, Lorg/wikipedia/watchlist/WatchlistViewModel;->fetchWatchlist(Z)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
