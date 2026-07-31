.class public final Lorg/wikipedia/readinglist/ReadingListsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0008\u0005\u0006\u0007\u0008\u0005\u0005\t\nB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0010\u00b2\u0006\u0012\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u000f\u001a\u00020\u000e8\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lorg/wikipedia/readinglist/ReadingListsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;",
        "<init>",
        "()V",
        "OverflowCallback",
        "ReadingListItemHolder",
        "ReadingListPageItemHolder",
        "DiffLinesAdapter",
        "MultiSelectCallback",
        "HistorySearchCallback",
        "",
        "",
        "images",
        "",
        "isNewListGenerated",
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
.field public _binding:Landroidx/compose/ui/node/NodeChain;

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public final adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

.field public currentSearchQuery:Ljava/lang/String;

.field public displayedLists:Ljava/util/List;

.field public final filePickerLauncher:Landroidx/fragment/app/Fragment$10;

.field public importMode:Z

.field public final multiSelectModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

.field public final overflowCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

.field public final readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

.field public final readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

.field public recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

.field public final searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

.field public selectMode:Z

.field public shouldShowImportedSnackbar:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 16
    .line 17
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 23
    .line 24
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 30
    .line 31
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 38
    .line 39
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 40
    .line 41
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->multiSelectModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 45
    .line 46
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->overflowCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 52
    .line 53
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 70
    .line 71
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->filePickerLauncher:Landroidx/fragment/app/Fragment$10;

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final beginMultiSelect$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "multiSelectActionMode"

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->selectMode:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->multiSelectModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final enableLayoutTransition(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, v0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroid/widget/ScrollView;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p1, v0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Landroid/widget/ScrollView;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final getPageById$1(J)Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 23
    .line 24
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 25
    .line 26
    cmp-long v1, v1, p1

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 33
    .line 34
    return-object v0
.end method

.method public final getSelectedLists()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v2, v1

    .line 50
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 51
    .line 52
    iget-boolean v2, v2, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    return-object p0
.end method

.method public final onAddItemToOther(J)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById$1(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 16
    .line 17
    iget-object p2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object p2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 28
    .line 29
    iget-object v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 50
    .line 51
    invoke-direct {v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lkotlin/Pair;

    .line 60
    .line 61
    const-string v2, "pageTitleList"

    .line 62
    .line 63
    invoke-direct {p2, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lkotlin/Pair;

    .line 67
    .line 68
    const-string v2, "invokeSource"

    .line 69
    .line 70
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    new-instance v2, Lkotlin/Pair;

    .line 76
    .line 77
    const-string v3, "showDefaultList"

    .line 78
    .line 79
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x3

    .line 83
    new-array p1, p1, [Lkotlin/Pair;

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    aput-object p2, p1, v3

    .line 87
    .line 88
    const/4 p2, 0x1

    .line 89
    aput-object v1, p1, p2

    .line 90
    .line 91
    const/4 p2, 0x2

    .line 92
    aput-object v2, p1, p2

    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    iput-object p1, v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 103
    .line 104
    invoke-static {p0, v0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v7, 0x0

    .line 5
    const/16 v8, 0x1fc

    .line 6
    .line 7
    const-string v0, "impression"

    .line 8
    .line 9
    const-string v1, "rrl_saved"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->setRetainInstance()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c01a6

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f090173

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    const v3, 0x7f0901ce

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v8, v5

    .line 39
    check-cast v8, Landroidx/compose/ui/platform/ComposeView;

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    const v3, 0x7f090213

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v9, v5

    .line 51
    check-cast v9, Landroid/widget/ScrollView;

    .line 52
    .line 53
    if-eqz v9, :cond_1

    .line 54
    .line 55
    const v3, 0x7f090214

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v10, v5

    .line 63
    check-cast v10, Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v10, :cond_1

    .line 66
    .line 67
    const v3, 0x7f090216

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v11, v5

    .line 75
    check-cast v11, Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz v11, :cond_1

    .line 78
    .line 79
    const v3, 0x7f09048c

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v12, v5

    .line 87
    check-cast v12, Lorg/wikipedia/views/MessageCardView;

    .line 88
    .line 89
    if-eqz v12, :cond_1

    .line 90
    .line 91
    const v3, 0x7f09056a

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-object v13, v5

    .line 99
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    if-eqz v13, :cond_1

    .line 102
    .line 103
    const v3, 0x7f0905c6

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    move-object v14, v5

    .line 111
    check-cast v14, Lorg/wikipedia/views/SearchEmptyView;

    .line 112
    .line 113
    if-eqz v14, :cond_1

    .line 114
    .line 115
    move-object v6, v1

    .line 116
    check-cast v6, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 117
    .line 118
    new-instance v5, Landroidx/compose/ui/node/NodeChain;

    .line 119
    .line 120
    const/16 v16, 0x4

    .line 121
    .line 122
    move-object v15, v6

    .line 123
    invoke-direct/range {v5 .. v16}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 124
    .line 125
    .line 126
    iput-object v5, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 127
    .line 128
    const v1, 0x7f12084d

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v1}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 144
    .line 145
    const/4 v5, 0x1

    .line 146
    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    .line 161
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    new-instance v3, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const/16 v7, 0x1c

    .line 182
    .line 183
    invoke-direct {v3, v6, v2, v2, v7}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    new-instance v3, Landroidx/recyclerview/widget/FastScroller$2;

    .line 199
    .line 200
    const/4 v6, 0x3

    .line 201
    invoke-direct {v3, v6, v0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 215
    .line 216
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 217
    .line 218
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->getDisableReadingListSync()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_0

    .line 233
    .line 234
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 244
    .line 245
    .line 246
    :cond_0
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v1, Lorg/wikipedia/views/SearchEmptyView;

    .line 254
    .line 255
    const/16 v3, 0x8

    .line 256
    .line 257
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v5}, Lorg/wikipedia/readinglist/ReadingListsFragment;->enableLayoutTransition(Z)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListsFragment$onCreateView$2;

    .line 272
    .line 273
    invoke-direct {v3, v0, v4, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$onCreateView$2;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 274
    .line 275
    .line 276
    invoke-static {v1, v4, v4, v3, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 277
    .line 278
    .line 279
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    return-object v0

    .line 292
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v1, "Missing required view with ID: "

    .line 301
    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return-object v4
.end method

.method public final onDeleteItem(J)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById$1(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v0, p1, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deletePages(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 34
    .line 35
    return-void
.end method

.method public final onMoveItemToOther(J)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById$1(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 16
    .line 17
    iget-object v4, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 18
    .line 19
    iget-object p2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object p2, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    .line 30
    .line 31
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v6, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v7, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v2, Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    .line 52
    .line 53
    invoke-direct {v2}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lkotlin/Pair;

    .line 62
    .line 63
    const-string v4, "pageTitleList"

    .line 64
    .line 65
    invoke-direct {p2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lkotlin/Pair;

    .line 69
    .line 70
    const-string v4, "invokeSource"

    .line 71
    .line 72
    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Lkotlin/Pair;

    .line 80
    .line 81
    const-string v1, "sourceReadingListId"

    .line 82
    .line 83
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    .line 88
    new-instance v1, Lkotlin/Pair;

    .line 89
    .line 90
    const-string v4, "showDefaultList"

    .line 91
    .line 92
    invoke-direct {v1, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x4

    .line 96
    new-array p1, p1, [Lkotlin/Pair;

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    aput-object p2, p1, v4

    .line 100
    .line 101
    const/4 p2, 0x1

    .line 102
    aput-object v3, p1, p2

    .line 103
    .line 104
    const/4 p2, 0x2

    .line 105
    aput-object v0, p1, p2

    .line 106
    .line 107
    const/4 p2, 0x3

    .line 108
    aput-object v1, p1, p2

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    iput-object p1, v2, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 119
    .line 120
    invoke-static {p0, v2}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 18
    .line 19
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v3}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v3, "ReadingLists.ListsCount:"

    .line 27
    .line 28
    const-string v4, ".shown"

    .line 29
    .line 30
    invoke-static {v1, v3, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onSelectItem(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onShareItem(J)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById$1(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object v2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 13
    .line 14
    iget-object p2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    iget-object v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lorg/wikipedia/util/ShareUtil;->shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onToggleItemOffline(J)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById$1(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p1, v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->togglePageOffline(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setEmptyContainerVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/widget/ScrollView;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/16 p1, 0x20

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object p0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Landroid/widget/ScrollView;

    .line 36
    .line 37
    const/16 p1, 0x8

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final toggleSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    instance-of v3, v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 47
    .line 48
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 63
    .line 64
    xor-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    iput-boolean v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 79
    .line 80
    .line 81
    :cond_5
    return-void
.end method

.method public final updateEmptyState$1(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lorg/wikipedia/views/SearchEmptyView;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->setEmptyContainerVisibility(Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lorg/wikipedia/views/SearchEmptyView;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v0, 0x1

    .line 57
    if-ne p1, v0, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    instance-of p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 96
    .line 97
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Landroid/widget/TextView;

    .line 113
    .line 114
    const v2, 0x7f12046b

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Landroid/widget/TextView;

    .line 132
    .line 133
    const v2, 0x7f12046a

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Landroid/widget/TextView;

    .line 152
    .line 153
    const v2, 0x7f12083e

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p1, Landroid/widget/TextView;

    .line 171
    .line 172
    const v2, 0x7f1207b5

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_5

    .line 189
    .line 190
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p1, Lorg/wikipedia/views/MessageCardView;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_4

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    move v1, v0

    .line 207
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->setEmptyContainerVisibility(Z)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final updateLists()V
    .locals 3

    .line 646
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    xor-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateLists(Ljava/lang/String;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-nez v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, Lorg/wikipedia/views/MessageCardView;

    .line 26
    .line 27
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    :goto_0
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 33
    .line 34
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListOnboardingShown()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x0

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    const/4 v14, 0x0

    .line 42
    const/16 v15, 0x1fc

    .line 43
    .line 44
    const-string v7, "impression"

    .line 45
    .line 46
    const-string v8, "rrl_saved_prompt"

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    invoke-static/range {v7 .. v15}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 64
    .line 65
    const v5, 0x7f1207e5

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/MessageCardView;->setMessageLabel(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 83
    .line 84
    const v5, 0x7f1207e7

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/MessageCardView;->setMessageTitle(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 105
    .line 106
    const v5, 0x7f1207e2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/MessageCardView;->setMessageText(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 127
    .line 128
    const/4 v5, -0x1

    .line 129
    invoke-virtual {v3, v5, v6}, Lorg/wikipedia/views/MessageCardView;->setImageResource(IZ)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 140
    .line 141
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;

    .line 142
    .line 143
    invoke-direct {v5, v0, v6}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 144
    .line 145
    .line 146
    const v7, 0x7f1207e6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v7, v5}, Lorg/wikipedia/views/MessageCardView;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 160
    .line 161
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;

    .line 162
    .line 163
    invoke-direct {v5, v0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 164
    .line 165
    .line 166
    const v7, 0x7f1207e3

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v7, v5}, Lorg/wikipedia/views/MessageCardView;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 180
    .line 181
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :cond_2
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    const-string v7, "Attribute not found; ID=2130970085"

    .line 191
    .line 192
    const v8, 0x7f1207b8

    .line 193
    .line 194
    .line 195
    const v9, 0x7f0405e5

    .line 196
    .line 197
    .line 198
    const/4 v10, 0x1

    .line 199
    if-eqz v5, :cond_5

    .line 200
    .line 201
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-nez v5, :cond_5

    .line 206
    .line 207
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-nez v5, :cond_5

    .line 212
    .line 213
    new-array v5, v6, [Ljava/lang/Object;

    .line 214
    .line 215
    sget-object v11, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 216
    .line 217
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    const v12, 0x7f120659

    .line 226
    .line 227
    .line 228
    invoke-static {v5, v6, v11, v12}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-static {v11, v6, v5, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_5

    .line 241
    .line 242
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v5}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->getDisableReadingListSync()Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-nez v5, :cond_5

    .line 251
    .line 252
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Lorg/wikipedia/views/MessageCardView;->setMessageLabel(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 272
    .line 273
    const v5, 0x7f1207d0

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/MessageCardView;->setMessageTitle(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 287
    .line 288
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 294
    .line 295
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 296
    .line 297
    const v5, 0x7f1207cf

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/MessageCardView;->setMessageText(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    new-instance v11, Landroid/util/TypedValue;

    .line 329
    .line 330
    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v5, v9, v11, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_3

    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_3
    move-object v11, v4

    .line 345
    :goto_1
    if-eqz v11, :cond_4

    .line 346
    .line 347
    iget v5, v11, Landroid/util/TypedValue;->resourceId:I

    .line 348
    .line 349
    invoke-virtual {v3, v5, v10}, Lorg/wikipedia/views/MessageCardView;->setImageResource(IZ)V

    .line 350
    .line 351
    .line 352
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 353
    .line 354
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 360
    .line 361
    new-instance v5, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;

    .line 362
    .line 363
    const/4 v7, 0x3

    .line 364
    invoke-direct {v5, v7}, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 365
    .line 366
    .line 367
    const v9, 0x7f1207ce

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v9, v5}, Lorg/wikipedia/views/MessageCardView;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 371
    .line 372
    .line 373
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 381
    .line 382
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;

    .line 383
    .line 384
    invoke-direct {v5, v0, v7}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v8, v5}, Lorg/wikipedia/views/MessageCardView;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 388
    .line 389
    .line 390
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 398
    .line 399
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_3

    .line 403
    .line 404
    :cond_4
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :cond_5
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_6

    .line 413
    .line 414
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_9

    .line 419
    .line 420
    :cond_6
    new-array v5, v6, [Ljava/lang/Object;

    .line 421
    .line 422
    sget-object v11, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 423
    .line 424
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    const v12, 0x7f120655

    .line 433
    .line 434
    .line 435
    invoke-static {v5, v6, v11, v12}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    invoke-static {v11, v6, v5, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-eqz v5, :cond_9

    .line 448
    .line 449
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-virtual {v5}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->getDisableReadingListSync()Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    if-nez v5, :cond_9

    .line 458
    .line 459
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 467
    .line 468
    invoke-virtual {v3, v4}, Lorg/wikipedia/views/MessageCardView;->setMessageLabel(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 472
    .line 473
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 479
    .line 480
    const v5, 0x7f120779

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/MessageCardView;->setMessageTitle(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 501
    .line 502
    const v5, 0x7f1207be

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/MessageCardView;->setMessageText(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 516
    .line 517
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 523
    .line 524
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    new-instance v11, Landroid/util/TypedValue;

    .line 529
    .line 530
    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    invoke-virtual {v5, v9, v11, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-eqz v5, :cond_7

    .line 542
    .line 543
    goto :goto_2

    .line 544
    :cond_7
    move-object v11, v4

    .line 545
    :goto_2
    if-eqz v11, :cond_8

    .line 546
    .line 547
    iget v5, v11, Landroid/util/TypedValue;->resourceId:I

    .line 548
    .line 549
    invoke-virtual {v3, v5, v10}, Lorg/wikipedia/views/MessageCardView;->setImageResource(IZ)V

    .line 550
    .line 551
    .line 552
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 553
    .line 554
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 560
    .line 561
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;

    .line 562
    .line 563
    const/4 v7, 0x4

    .line 564
    invoke-direct {v5, v0, v7}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 565
    .line 566
    .line 567
    const v7, 0x7f1207bd

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3, v7, v5}, Lorg/wikipedia/views/MessageCardView;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 571
    .line 572
    .line 573
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 574
    .line 575
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 581
    .line 582
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;

    .line 583
    .line 584
    const/4 v7, 0x5

    .line 585
    invoke-direct {v5, v0, v7}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v3, v8, v5}, Lorg/wikipedia/views/MessageCardView;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 589
    .line 590
    .line 591
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 592
    .line 593
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v3, Lorg/wikipedia/views/MessageCardView;

    .line 599
    .line 600
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 601
    .line 602
    .line 603
    goto :goto_3

    .line 604
    :cond_8
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    return-void

    .line 608
    :cond_9
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 609
    .line 610
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v5, Lorg/wikipedia/views/MessageCardView;

    .line 616
    .line 617
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    :goto_3
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 621
    .line 622
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;

    .line 627
    .line 628
    move/from16 v6, p2

    .line 629
    .line 630
    invoke-direct {v5, v0, v6, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;ZLjava/lang/String;)V

    .line 631
    .line 632
    .line 633
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 634
    .line 635
    new-instance v6, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 636
    .line 637
    const/16 v7, 0x18

    .line 638
    .line 639
    invoke-direct {v6, v1, v5, v4, v7}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 640
    .line 641
    .line 642
    invoke-static {v3, v0, v4, v6, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 643
    .line 644
    .line 645
    return-void
.end method
