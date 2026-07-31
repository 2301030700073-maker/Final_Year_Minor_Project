.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u000b\u0005\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "SearchBarAdapter",
        "LoadingItemAdapter",
        "CategoryMemberDiffCallback",
        "CategoryMembersAdapter",
        "LoadingViewHolder",
        "SeparatorViewHolder",
        "SearchBarViewHolder",
        "EmptyMessagesViewHolder",
        "RecentEditsItemHolder",
        "SearchCallback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lokio/internal/DefaultSocket;

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public final launchFilterActivity:Landroidx/fragment/app/Fragment$10;

.field public final loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

.field public final recentEditsEmptyMessagesAdapter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

.field public final recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public final recentEditsSearchBarAdapter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

.field public final searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsSearchBarAdapter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsEmptyMessagesAdapter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 28
    .line 29
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda2;

    .line 30
    .line 31
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-direct {v0, p0, v3, v1}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 39
    .line 40
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 41
    .line 42
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda2;

    .line 43
    .line 44
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0, v3, v1}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 51
    .line 52
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 53
    .line 54
    const/16 v2, 0xb

    .line 55
    .line 56
    invoke-direct {v0, v2, p0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 60
    .line 61
    new-instance v3, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 62
    .line 63
    const/16 v4, 0xc

    .line 64
    .line 65
    invoke-direct {v3, v4, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-class v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 73
    .line 74
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 81
    .line 82
    const/16 v4, 0x14

    .line 83
    .line 84
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 88
    .line 89
    const/16 v6, 0x15

    .line 90
    .line 91
    invoke-direct {v5, v0, v6}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 95
    .line 96
    invoke-direct {v6, p0, v0, v4}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lokhttp3/Request$Builder;

    .line 100
    .line 101
    invoke-direct {v0, v2, v3, v6, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 105
    .line 106
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 107
    .line 108
    const/4 v2, 0x4

    .line 109
    invoke-direct {v0, v2, p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 113
    .line 114
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 115
    .line 116
    const/4 v2, 0x3

    .line 117
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 130
    .line 131
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->launchFilterActivity:Landroidx/fragment/app/Fragment$10;

    .line 132
    .line 133
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p0, 0x7f0e001d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c01b0

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f090569

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    move-object v2, p3

    .line 20
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f090572

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    move-object v3, p3

    .line 32
    check-cast v3, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const p2, 0x7f0906cb

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    move-object v4, p3

    .line 44
    check-cast v4, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    new-instance v0, Lokio/internal/DefaultSocket;

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    check-cast v1, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    const/16 v5, 0x11

    .line 54
    .line 55
    invoke-direct/range {v0 .. v5}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object p2, p2, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const p2, 0x7f1208a6

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string p1, "Missing required view with ID: "

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 p0, 0x0

    .line 128
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 6
    .line 7
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0903ba

    .line 9
    .line 10
    .line 11
    const-string v1, "pt_recent_changes"

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo p1, "top_menu_learn_click"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const p1, 0x7f12007e

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 46
    .line 47
    .line 48
    return v3

    .line 49
    :cond_0
    const v0, 0x7f0903e7

    .line 50
    .line 51
    .line 52
    if-ne p1, v0, :cond_1

    .line 53
    .line 54
    const-string p1, "list_saved_init"

    .line 55
    .line 56
    const-string v0, "pt_warning_messages"

    .line 57
    .line 58
    invoke-static {p1, v0, v2}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 68
    .line 69
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v12, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget v0, Lorg/wikipedia/talk/template/TalkTemplatesActivity;->$r8$clinit:I

    .line 114
    .line 115
    move-object v5, v4

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-wide/16 v8, 0x0

    .line 121
    .line 122
    const/16 v10, 0x18

    .line 123
    .line 124
    const-wide/16 v6, 0x0

    .line 125
    .line 126
    invoke-static/range {v4 .. v10}, Lokio/Path$Companion;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;JJI)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    .line 132
    .line 133
    return v3

    .line 134
    :cond_1
    const v0, 0x7f0903e1

    .line 135
    .line 136
    .line 137
    if-ne p1, v0, :cond_2

    .line 138
    .line 139
    const-string/jumbo p1, "top_menu_feedback_click"

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v1, v2}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const v0, 0x7f1201d1

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    const v1, 0x7f1201d0

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const/4 v1, 0x2

    .line 170
    const/4 v2, 0x0

    .line 171
    invoke-static {p1, v2, v0, p0, v1}, Lorg/wikipedia/util/ShareUtil;->composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    return v3

    .line 175
    :cond_2
    const/4 p0, 0x0

    .line 176
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903d0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, "notificationButtonView"

    .line 26
    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 30
    .line 31
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {v2, v5}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    new-instance v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;

    .line 43
    .line 44
    invoke-direct {v5, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    const v5, 0x7f12047f

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    new-array v0, v0, [Landroid/view/View;

    .line 79
    .line 80
    aput-object p1, v0, v1

    .line 81
    .line 82
    aget-object p1, v0, v1

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p1, v0}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v3

    .line 96
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v3

    .line 100
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v3

    .line 104
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v3

    .line 108
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v3

    .line 112
    :cond_5
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    .line 114
    .line 115
    :goto_0
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->updateNotificationDot$1(Z)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "searchActionMode"

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 21
    .line 22
    check-cast p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/views/SearchAndFilterActionProvider;->updateFilterIconAndText()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/wikipedia/views/NotificationButtonView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, p2, v0}, Lorg/wikipedia/views/NotificationButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 25
    .line 26
    invoke-virtual {p1, p0, p2, v1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 37
    .line 38
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 55
    .line 56
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-direct {p2, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->setupAdapters$2()V

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 93
    .line 94
    invoke-direct {p2, p0, v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x3

    .line 98
    invoke-static {p1, v0, v0, p2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-boolean p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->actionModeActive:Z

    .line 106
    .line 107
    if-eqz p1, :cond_0

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 120
    .line 121
    :cond_0
    return-void
.end method

.method public final setupAdapters$2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateFooter(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v0, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 34
    .line 35
    invoke-virtual {v3, v1, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsSearchBarAdapter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

    .line 41
    .line 42
    invoke-virtual {v1, v2, p0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final updateNotificationDot$1(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "notificationButtonView"

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 11
    .line 12
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v0, v3}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/views/NotificationButtonView;->runAnimation()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 49
    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method
