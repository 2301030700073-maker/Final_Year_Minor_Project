.class public final Lorg/wikipedia/search/SearchResultLongPressHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lorg/wikipedia/readinglist/LongPressMenu$Callback;


# instance fields
.field public final callback:Lorg/wikipedia/search/SearchFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/search/SearchFragment;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/search/SearchFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->SEARCH:Lorg/wikipedia/Constants$InvokeSource;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, p1, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 12
    .line 13
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->SEARCH:Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onOpenInNewTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/search/SearchFragment;->navigateToTitle(Lorg/wikipedia/page/PageTitle;ZLandroid/location/Location;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public bridge onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onOpenLink(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/search/SearchFragment;->navigateToTitle(Lorg/wikipedia/page/PageTitle;ZLandroid/location/Location;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getShowHybridSearch()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/search/SearchFragment;->startSearch(Ljava/lang/String;ZZ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string p0, "searchResultsFragment"

    .line 40
    .line 41
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultLongPressHandler;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Landroidx/paging/HintHandler;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v3, 0x23

    .line 29
    .line 30
    if-lt v1, v3, :cond_0

    .line 31
    .line 32
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 33
    .line 34
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v3, 0x1e

    .line 39
    .line 40
    if-lt v1, v3, :cond_1

    .line 41
    .line 42
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 43
    .line 44
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v3, 0x1a

    .line 49
    .line 50
    if-lt v1, v3, :cond_2

    .line 51
    .line 52
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 53
    .line 54
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 59
    .line 60
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 67
    .line 68
    invoke-direct {v0}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lorg/wikipedia/search/HybridSearchAbCTest;->isHybridSearchEnabled(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v1, 0x1

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lorg/wikipedia/search/SearchResultsFragment;->setShowHybridSearch(Z)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/search/SearchFragment;->startSearch(Ljava/lang/String;ZZ)V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :cond_3
    const-string p0, "searchResultsFragment"

    .line 93
    .line 94
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    throw p0

    .line 99
    :cond_4
    return v1
.end method

.method public onRemoveRequest()V
    .locals 0

    .line 1
    return-void
.end method

.method public onShareRequest()V
    .locals 0

    .line 1
    return-void
.end method
