.class public final Lorg/wikipedia/readinglist/ReadingListFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;
.implements Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n\u0006\u0007\u0008\t\n\u000b\u000b\u000b\u000c\rB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/wikipedia/readinglist/ReadingListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/core/view/MenuProvider;",
        "Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;",
        "<init>",
        "()V",
        "AppBarListener",
        "ReadingListItemHolder",
        "ReadingListPageItemHolder",
        "FooterViewHolder",
        "DiffLinesAdapter",
        "HeaderCallback",
        "HistorySearchCallback",
        "MultiSelectCallback",
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
.field public _binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public final adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

.field public final appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

.field public articleLimitMessageShown:Z

.field public currentSearchQuery:Ljava/lang/String;

.field public displayedLists:Ljava/util/List;

.field public exclusiveTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

.field public headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

.field public invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public final multiSelectActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

.field public previewSaveDialog:Landroidx/appcompat/app/AlertDialog;

.field public readingList:Lorg/wikipedia/readinglist/database/ReadingList;

.field public readingListId:J

.field public final readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

.field public readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

.field public final readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

.field public final searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

.field public showOverflowMenu:Z

.field public toolbarExpanded:Z

.field public touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    const/16 v3, 0x19

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/4 v4, 0x5

    .line 41
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 45
    .line 46
    const/16 v5, 0xc

    .line 47
    .line 48
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 59
    .line 60
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 61
    .line 62
    new-instance v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 63
    .line 64
    const/4 v1, 0x7

    .line 65
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 69
    .line 70
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    .line 77
    .line 78
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 85
    .line 86
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 87
    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 93
    .line 94
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 95
    .line 96
    invoke-direct {v0, v2, p0}, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 100
    .line 101
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 102
    .line 103
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->multiSelectActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 107
    .line 108
    iput-boolean v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    .line 109
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final beginMultiSelect$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "searchActionMode"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode$2()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string v1, "multiSelectActionMode"

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->multiSelectActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final finishActionMode$2()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 26
    .line 27
    iget-wide v2, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 28
    .line 29
    cmp-long v2, v2, p1

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move-object v0, v1

    .line 34
    :cond_1
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 35
    .line 36
    :cond_2
    return-object v0
.end method

.method public final getSelectedPageCount()I
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 32
    .line 33
    iget-boolean v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-ltz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0

    .line 47
    :cond_3
    return v0
.end method

.method public final getSelectedPages()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    instance-of v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 55
    .line 56
    iget-boolean v2, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    iput-boolean v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    return-object p0

    .line 85
    :cond_5
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 86
    .line 87
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isRecommendedList()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 2
    .line 3
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final onAddItemToOther(J)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

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

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 8
    .line 9
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f0e001a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const p0, 0x7f0e001b

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
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
    const v1, 0x7f0c01a5

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
    const v3, 0x7f09021f

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
    check-cast v7, Lorg/wikipedia/views/WikiErrorView;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v7, :cond_e

    .line 30
    .line 31
    move-object v6, v1

    .line 32
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 33
    .line 34
    const v3, 0x7f090513

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v8, v5

    .line 42
    check-cast v8, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 43
    .line 44
    if-eqz v8, :cond_e

    .line 45
    .line 46
    const v3, 0x7f09053b

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    move-object v9, v5

    .line 54
    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout;

    .line 55
    .line 56
    if-eqz v9, :cond_e

    .line 57
    .line 58
    const v3, 0x7f09053c

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    move-object v10, v5

    .line 66
    check-cast v10, Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz v10, :cond_e

    .line 69
    .line 70
    const v3, 0x7f09053d

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    move-object v11, v5

    .line 78
    check-cast v11, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 79
    .line 80
    if-eqz v11, :cond_e

    .line 81
    .line 82
    const v3, 0x7f090550

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move-object v12, v5

    .line 90
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    if-eqz v12, :cond_e

    .line 93
    .line 94
    const v3, 0x7f090551

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    move-object v13, v5

    .line 102
    check-cast v13, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 103
    .line 104
    if-eqz v13, :cond_e

    .line 105
    .line 106
    const v3, 0x7f090552

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    move-object v14, v5

    .line 114
    check-cast v14, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 115
    .line 116
    if-eqz v14, :cond_e

    .line 117
    .line 118
    const v3, 0x7f090553

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    move-object v15, v5

    .line 126
    check-cast v15, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 127
    .line 128
    if-eqz v15, :cond_e

    .line 129
    .line 130
    const v3, 0x7f0905c6

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    move-object/from16 v16, v5

    .line 138
    .line 139
    check-cast v16, Lorg/wikipedia/views/SearchEmptyView;

    .line 140
    .line 141
    if-eqz v16, :cond_e

    .line 142
    .line 143
    new-instance v5, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 144
    .line 145
    invoke-direct/range {v5 .. v16}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lorg/wikipedia/views/WikiErrorView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Lorg/wikipedia/readinglist/ReadingListHeaderView;Landroidx/recyclerview/widget/RecyclerView;Lorg/wikipedia/views/WikiSwipeRefreshLayout;Lcom/google/android/material/appbar/MaterialToolbar;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lorg/wikipedia/views/SearchEmptyView;)V

    .line 146
    .line 147
    .line 148
    iput-object v5, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v3, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    const/4 v3, 0x1

    .line 178
    invoke-virtual {v1, v3}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    const-string v5, ""

    .line 193
    .line 194
    invoke-virtual {v1, v5}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v5, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 209
    .line 210
    invoke-static {v1, v5, v3}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Lcom/google/android/material/appbar/MaterialToolbar;Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v5, "readingListMode"

    .line 218
    .line 219
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListMode;

    .line 224
    .line 225
    if-nez v1, :cond_0

    .line 226
    .line 227
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 228
    .line 229
    :cond_0
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v5, "readingListId"

    .line 236
    .line 237
    const-wide/16 v6, -0x1

    .line 238
    .line 239
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 240
    .line 241
    .line 242
    move-result-wide v5

    .line 243
    iput-wide v5, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const-string v5, "invokeSource"

    .line 250
    .line 251
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    .line 256
    .line 257
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 258
    .line 259
    new-instance v1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 260
    .line 261
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-direct {v1, v5}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 269
    .line 270
    new-instance v5, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 271
    .line 272
    invoke-direct {v5, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 283
    .line 284
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 296
    .line 297
    invoke-virtual {v1, v0, v5, v6}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 308
    .line 309
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    .line 310
    .line 311
    invoke-virtual {v1, v5}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 322
    .line 323
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    const v6, 0x7f04051a

    .line 328
    .line 329
    .line 330
    invoke-static {v5, v6}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    invoke-virtual {v1, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 345
    .line 346
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    const v6, 0x7f0404e7

    .line 351
    .line 352
    .line 353
    invoke-static {v5, v6}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    invoke-virtual {v1, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrimColor(I)V

    .line 358
    .line 359
    .line 360
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-direct {v1, v5, v2}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;I)V

    .line 367
    .line 368
    .line 369
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 370
    .line 371
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 372
    .line 373
    invoke-direct {v5, v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v5}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 380
    .line 381
    const-string v5, "headerView"

    .line 382
    .line 383
    if-eqz v1, :cond_d

    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 389
    .line 390
    if-eqz v1, :cond_c

    .line 391
    .line 392
    invoke-virtual {v1, v2}, Lorg/wikipedia/readinglist/ReadingListItemView;->setThumbnailVisible(Z)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 396
    .line 397
    if-eqz v1, :cond_b

    .line 398
    .line 399
    const v6, 0x7f13018b

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v6}, Lorg/wikipedia/readinglist/ReadingListItemView;->setTitleTextAppearance(I)V

    .line 403
    .line 404
    .line 405
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 406
    .line 407
    if-eqz v1, :cond_a

    .line 408
    .line 409
    invoke-virtual {v1, v3}, Lorg/wikipedia/readinglist/ReadingListItemView;->setOverflowViewVisibility(Z)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 413
    .line 414
    if-eqz v1, :cond_9

    .line 415
    .line 416
    iget-object v6, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 417
    .line 418
    invoke-virtual {v1, v6}, Lorg/wikipedia/readinglist/ReadingListItemView;->setMode(Lorg/wikipedia/readinglist/ReadingListMode;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 422
    .line 423
    sget-object v6, Lorg/wikipedia/readinglist/ReadingListMode;->PREVIEW:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 424
    .line 425
    if-ne v1, v6, :cond_2

    .line 426
    .line 427
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 428
    .line 429
    if-eqz v1, :cond_1

    .line 430
    .line 431
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;

    .line 432
    .line 433
    invoke-direct {v5, v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v5}, Lorg/wikipedia/readinglist/ReadingListItemView;->setSaveClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    .line 438
    .line 439
    goto :goto_0

    .line 440
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw v4

    .line 444
    :cond_2
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 445
    .line 446
    new-array v1, v2, [Ljava/lang/Object;

    .line 447
    .line 448
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 449
    .line 450
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    const v6, 0x7f120660

    .line 459
    .line 460
    .line 461
    invoke-static {v1, v2, v5, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-static {v5, v2, v1, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-nez v1, :cond_4

    .line 474
    .line 475
    new-instance v1, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 476
    .line 477
    const/16 v5, 0xc

    .line 478
    .line 479
    invoke-direct {v1, v5, v0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->exclusiveTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 483
    .line 484
    if-eqz v5, :cond_3

    .line 485
    .line 486
    goto :goto_0

    .line 487
    :cond_3
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->exclusiveTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 488
    .line 489
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 490
    .line 491
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v5, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 497
    .line 498
    new-instance v6, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 499
    .line 500
    const/16 v7, 0x1b

    .line 501
    .line 502
    invoke-direct {v6, v7, v0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    const-wide/16 v7, 0x1f4

    .line 506
    .line 507
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    .line 509
    .line 510
    :cond_4
    :goto_0
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 518
    .line 519
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 520
    .line 521
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 522
    .line 523
    .line 524
    invoke-direct {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 528
    .line 529
    .line 530
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 538
    .line 539
    iget-object v5, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 540
    .line 541
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 542
    .line 543
    .line 544
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 552
    .line 553
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 558
    .line 559
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    iput-boolean v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mSupportsChangeAnimations:Z

    .line 563
    .line 564
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 565
    .line 566
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 572
    .line 573
    new-instance v5, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 574
    .line 575
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 576
    .line 577
    .line 578
    move-result-object v6

    .line 579
    const/16 v7, 0x10

    .line 580
    .line 581
    invoke-direct {v5, v6, v3, v2, v7}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    if-eqz v1, :cond_5

    .line 592
    .line 593
    goto :goto_1

    .line 594
    :cond_5
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 595
    .line 596
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 602
    .line 603
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 604
    .line 605
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 609
    .line 610
    .line 611
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v1}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->getDisableReadingListSync()Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eqz v1, :cond_6

    .line 620
    .line 621
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 622
    .line 623
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 629
    .line 630
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 631
    .line 632
    .line 633
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-eqz v1, :cond_8

    .line 638
    .line 639
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 640
    .line 641
    if-eqz v1, :cond_7

    .line 642
    .line 643
    invoke-virtual {v1}, Lorg/wikipedia/Constants$InvokeSource;->getValue()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    :cond_7
    move-object v12, v4

    .line 648
    const/16 v13, 0x17c

    .line 649
    .line 650
    const-string v5, "impression"

    .line 651
    .line 652
    const-string v6, "rrl_discover"

    .line 653
    .line 654
    const/4 v7, 0x0

    .line 655
    const/4 v8, 0x0

    .line 656
    const/4 v9, 0x0

    .line 657
    const/4 v10, 0x0

    .line 658
    const/4 v11, 0x0

    .line 659
    invoke-static/range {v5 .. v13}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 660
    .line 661
    .line 662
    :cond_8
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 663
    .line 664
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 670
    .line 671
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    return-object v0

    .line 675
    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v4

    .line 679
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v4

    .line 683
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    throw v4

    .line 687
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    throw v4

    .line 691
    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    throw v4

    .line 695
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    const-string v1, "Missing required view with ID: "

    .line 704
    .line 705
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    return-object v4
.end method

.method public final onDeleteItem(J)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 9
    .line 10
    if-eqz p2, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    invoke-static {p2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :goto_1
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p2, p1, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deletePages(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_2
    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->previewSaveDialog:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 29
    .line 30
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 39
    .line 40
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

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
    const v0, 0x7f0903ea

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    const v0, 0x7f0903ee

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v2, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSortMode(II)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const v0, 0x7f0903ef

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    const/4 v4, 0x2

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v3, v4}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSortMode(II)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    const v0, 0x7f0903dc

    .line 46
    .line 47
    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 57
    .line 58
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 59
    .line 60
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :cond_3
    const v0, 0x7f0903d9

    .line 68
    .line 69
    .line 70
    if-ne p1, v0, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 73
    .line 74
    if-eqz p1, :cond_8

    .line 75
    .line 76
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;

    .line 83
    .line 84
    invoke-direct {v3, p0, p1, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, p1, v1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :cond_4
    const v0, 0x7f0903dd

    .line 92
    .line 93
    .line 94
    if-ne p1, v0, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 97
    .line 98
    if-eqz p1, :cond_8

    .line 99
    .line 100
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 107
    .line 108
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 109
    .line 110
    const/4 v3, 0x5

    .line 111
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 115
    .line 116
    .line 117
    return v1

    .line 118
    :cond_5
    const v0, 0x7f0903db

    .line 119
    .line 120
    .line 121
    if-ne p1, v0, :cond_6

    .line 122
    .line 123
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 134
    .line 135
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 136
    .line 137
    const/4 v3, 0x6

    .line 138
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v0, p1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :cond_6
    const v0, 0x7f0903df

    .line 146
    .line 147
    .line 148
    if-ne p1, v0, :cond_7

    .line 149
    .line 150
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 151
    .line 152
    if-eqz p1, :cond_8

    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 163
    .line 164
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 165
    .line 166
    .line 167
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    invoke-direct {v2, p1, p0, v5}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v3, v5, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 174
    .line 175
    .line 176
    return v1

    .line 177
    :cond_7
    const v0, 0x7f0903da

    .line 178
    .line 179
    .line 180
    if-ne p1, v0, :cond_9

    .line 181
    .line 182
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 183
    .line 184
    if-eqz p1, :cond_8

    .line 185
    .line 186
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->INSTANCE$1:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    check-cast p0, Lorg/wikipedia/activity/BaseActivity;

    .line 193
    .line 194
    invoke-static {p1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v0, p0, p1}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->exportLists(Lorg/wikipedia/activity/BaseActivity;Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    return v1

    .line 202
    :cond_9
    const v0, 0x7f0903de

    .line 203
    .line 204
    .line 205
    if-ne p1, v0, :cond_a

    .line 206
    .line 207
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->beginMultiSelect$1()V

    .line 208
    .line 209
    .line 210
    return v1

    .line 211
    :cond_a
    return v2
.end method

.method public final onMoveItemToOther(J)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

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
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    .line 16
    .line 17
    iget-object v4, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 18
    .line 19
    iget-object p0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object p0, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

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
    sget-object p0, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

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
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lkotlin/Pair;

    .line 62
    .line 63
    const-string v4, "pageTitleList"

    .line 64
    .line 65
    invoke-direct {p1, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lkotlin/Pair;

    .line 69
    .line 70
    const-string v4, "invokeSource"

    .line 71
    .line 72
    invoke-direct {v3, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance v0, Lkotlin/Pair;

    .line 80
    .line 81
    const-string v1, "sourceReadingListId"

    .line 82
    .line 83
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    .line 88
    new-instance v1, Lkotlin/Pair;

    .line 89
    .line 90
    const-string v4, "showDefaultList"

    .line 91
    .line 92
    invoke-direct {v1, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x4

    .line 96
    new-array p0, p0, [Lkotlin/Pair;

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    aput-object p1, p0, v4

    .line 100
    .line 101
    const/4 p1, 0x1

    .line 102
    aput-object v3, p0, p1

    .line 103
    .line 104
    const/4 p1, 0x2

    .line 105
    aput-object v0, p0, p1

    .line 106
    .line 107
    const/4 p1, 0x3

    .line 108
    aput-object v1, p0, p1

    .line 109
    .line 110
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    iput-object p0, v2, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 119
    .line 120
    invoke-static {p2, v2}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 5
    .line 6
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    const v0, 0x7f0903ee

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0903ef

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 27
    .line 28
    const v2, 0x7f120656

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const v4, 0x7f1207a3

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v4, 0x7f1207a2

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    if-ne v2, v0, :cond_2

    .line 50
    .line 51
    const v0, 0x7f1207a5

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const v0, 0x7f1207a4

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0903ea

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const v1, 0x7f0903f0

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-boolean v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const v4, 0x106000b

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v4}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const v4, 0x7f04051a

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v4}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_2
    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 109
    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_5

    .line 117
    .line 118
    const p0, 0x7f0903dc

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    if-eqz p0, :cond_4

    .line 126
    .line 127
    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    .line 129
    .line 130
    :cond_4
    const p0, 0x7f0903d9

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-eqz p0, :cond_5

    .line 138
    .line 139
    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_3
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 26
    .line 27
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v0, v2}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "ReadingList.ListItemsCount:"

    .line 35
    .line 36
    const-string v3, ".shown"

    .line 37
    .line 38
    invoke-static {p0, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v1, v0, p0}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onSelectItem(J)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 9
    .line 10
    if-eqz p2, :cond_3

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-string v0, "multiSelectActionMode"

    .line 15
    .line 16
    iget-object p2, p2, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p2, 0x0

    .line 27
    :goto_0
    if-eqz p2, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    return-void

    .line 31
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->beginMultiSelect$1()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->toggleSelectPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onShareItem(J)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

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
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p1, v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->togglePageOffline(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p2, p0, v1, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    invoke-static {p1, v1, v1, p2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final previewSaveDialog()V
    .locals 9

    .line 1
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 2
    .line 3
    if-eqz v2, :cond_2

    .line 4
    .line 5
    new-instance v6, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {v6, v0}, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 15
    .line 16
    invoke-virtual {v6, v0}, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->setReadingListMode(Lorg/wikipedia/readinglist/ReadingListMode;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v2, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f120785

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v0, Lretrofit2/OkHttpCall$1;

    .line 43
    .line 44
    const/16 v1, 0x14

    .line 45
    .line 46
    invoke-direct {v0, v1, p0, v4}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v6, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 50
    .line 51
    iput-object v3, v6, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->savedReadingListPages:Ljava/util/ArrayList;

    .line 52
    .line 53
    iput-object v0, v6, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->callback:Lretrofit2/OkHttpCall$1;

    .line 54
    .line 55
    iget-object v0, v6, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 56
    .line 57
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->PREVIEW:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 58
    .line 59
    if-ne v0, v1, :cond_0

    .line 60
    .line 61
    const v0, 0x7f1207c3

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const v0, 0x7f12081c

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    new-instance v1, Ljava/util/Date;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "MM/dd/yyyy HH:mm"

    .line 84
    .line 85
    invoke-static {v5, v1}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, " "

    .line 98
    .line 99
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, v6, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 110
    .line 111
    iget-object v5, v1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eqz v5, :cond_1

    .line 120
    .line 121
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->validateTitleAndList()V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    new-instance v1, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 132
    .line 133
    const/16 v5, 0x8

    .line 134
    .line 135
    invoke-direct {v1, v5, v6}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    .line 140
    .line 141
    new-instance v7, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const/4 v8, 0x0

    .line 148
    invoke-direct {v7, v0, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;

    .line 152
    .line 153
    const/4 v5, 0x0

    .line 154
    move-object v1, p0

    .line 155
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    const p0, 0x7f1207c6

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    const p0, 0x7f1207c5

    .line 165
    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-virtual {v7, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    iput-object p0, v1, Lorg/wikipedia/readinglist/ReadingListFragment;->previewSaveDialog:Landroidx/appcompat/app/AlertDialog;

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 178
    .line 179
    iput-object v6, v0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 180
    .line 181
    iput-boolean v8, v0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 184
    .line 185
    .line 186
    :cond_2
    return-void
.end method

.method public final requestPermissionAndScheduleRecommendedReadingNotification$1()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 28
    .line 29
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListActivity;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/wikipedia/activity/BaseActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v1, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 59
    .line 60
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final setSearchQuery$1(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    const/16 v3, 0xb

    .line 26
    .line 27
    invoke-direct {v2, v3, p0, p1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 31
    .line 32
    new-instance v4, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 33
    .line 34
    const/16 v5, 0x18

    .line 35
    .line 36
    invoke-direct {v4, p1, v2, v1, v5}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-static {v0, v3, v1, v4, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 50
    .line 51
    iget-object v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateEmptyState(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 65
    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 p1, 0x0

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 80
    :goto_3
    iput-boolean p1, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    const-string/jumbo p0, "touchCallback"

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_5
    return-void
.end method

.method public final setSortMode(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const v0, 0x7f120656

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eq v1, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, p2

    .line 15
    :goto_0
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setStatusBarActionMode(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 13
    .line 14
    iget-boolean v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    move v2, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_0
    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Lcom/google/android/material/appbar/MaterialToolbar;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListActivity;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    new-instance p1, Landroid/util/TypedValue;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0404e7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    :goto_1
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget v3, p1, Landroid/util/TypedValue;->data:I

    .line 60
    .line 61
    :goto_2
    invoke-virtual {p0, v3}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    const-string p0, "Attribute not found; ID=2130969831"

    .line 66
    .line 67
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final toggleSelectPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-boolean v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    iput-boolean v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPageCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode$2()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPageCount()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPageCount()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    aput-object v3, v1, v4

    .line 43
    .line 44
    const v3, 0x7f100010

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public final update(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    iget-object v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v5, "headerView"

    .line 33
    .line 34
    if-eqz v1, :cond_7

    .line 35
    .line 36
    sget-object v6, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->DETAIL:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    .line 37
    .line 38
    sget v7, Lorg/wikipedia/readinglist/ReadingListItemView;->$r8$clinit:I

    .line 39
    .line 40
    invoke-virtual {v1, p1, v6, v4, v4}, Lorg/wikipedia/readinglist/ReadingListItemView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;ZZ)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 44
    .line 45
    if-eqz v1, :cond_6

    .line 46
    .line 47
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lorg/wikipedia/readinglist/ReadingListItemView;->setMode(Lorg/wikipedia/readinglist/ReadingListMode;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lorg/wikipedia/readinglist/ReadingListHeaderView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 65
    .line 66
    const v1, 0x7f120656

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x2

    .line 74
    const/4 v5, 0x1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    if-eq v1, v5, :cond_3

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    const/4 v3, 0x3

    .line 82
    if-eq v1, v3, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;

    .line 86
    .line 87
    const/16 v3, 0x15

    .line 88
    .line 89
    invoke-direct {v1, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/16 v6, 0xb

    .line 95
    .line 96
    invoke-direct {v3, v6, v1}, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;

    .line 104
    .line 105
    const/16 v3, 0x14

    .line 106
    .line 107
    invoke-direct {v1, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/16 v6, 0xa

    .line 113
    .line 114
    invoke-direct {v3, v6, v1}, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;

    .line 122
    .line 123
    const/16 v3, 0x13

    .line 124
    .line 125
    invoke-direct {v1, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 126
    .line 127
    .line 128
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    const/16 v6, 0x9

    .line 131
    .line 132
    invoke-direct {v3, v6, v1}, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;

    .line 140
    .line 141
    const/16 v6, 0xe

    .line 142
    .line 143
    invoke-direct {v1, v6}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 144
    .line 145
    .line 146
    new-instance v6, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    invoke-direct {v6, v3, v1}, Landroidx/compose/ui/semantics/SemanticsSortKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery$1(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    .line 160
    .line 161
    if-nez v1, :cond_5

    .line 162
    .line 163
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 171
    .line 172
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->articleLimitMessageShown:Z

    .line 180
    .line 181
    if-nez v1, :cond_8

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/16 v1, 0x1388

    .line 188
    .line 189
    if-lt v0, v1, :cond_8

    .line 190
    .line 191
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-array v1, v2, [Ljava/lang/Object;

    .line 200
    .line 201
    aput-object p1, v1, v4

    .line 202
    .line 203
    aput-object v0, v1, v5

    .line 204
    .line 205
    const p1, 0x7f120758

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const/16 v1, 0xc

    .line 220
    .line 221
    invoke-static {v0, p1, v4, v1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 226
    .line 227
    .line 228
    iput-boolean v5, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->articleLimitMessageShown:Z

    .line 229
    .line 230
    return-void

    .line 231
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v2

    .line 235
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v2

    .line 239
    :cond_8
    return-void
.end method

.method public final updateEmptyState(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p1, :cond_3

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
    goto :goto_2

    .line 13
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

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
    move v2, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, v0

    .line 33
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lorg/wikipedia/views/SearchEmptyView;

    .line 44
    .line 45
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v0, v1

    .line 55
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Lorg/wikipedia/views/SearchEmptyView;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Landroid/widget/TextView;

    .line 103
    .line 104
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_4

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    move v0, v1

    .line 114
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final updateReadingListData()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eq v0, v1, :cond_7

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eq v0, v2, :cond_4

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    if-ne v0, v3, :cond_3

    .line 21
    .line 22
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isNewRecommendedReadingListGenerated()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 52
    .line 53
    .line 54
    const p0, 0x7f12066a

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 58
    .line 59
    .line 60
    new-instance p0, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getViewModel()Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;

    .line 78
    .line 79
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;I)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 83
    .line 84
    const/16 v4, 0x9

    .line 85
    .line 86
    invoke-direct {v3, v4, p0, v7}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1, v7, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 98
    .line 99
    if-nez v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v3, 0x7f1207c3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v3, Ljava/util/Date;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    const-string v0, "HH:mm, MMM d, yyyy"

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    const-string v0, "hh:mm a, MMM d, yyyy"

    .line 136
    .line 137
    :goto_1
    invoke-static {v0, v3}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getViewModel()Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;

    .line 150
    .line 151
    invoke-direct {v0, v6, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;I)V

    .line 152
    .line 153
    .line 154
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 155
    .line 156
    const/16 v8, 0x1a

    .line 157
    .line 158
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0, v0, v7, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_6
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_7
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getViewModel()Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    iget-wide v4, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    .line 174
    .line 175
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;

    .line 180
    .line 181
    const/4 v1, 0x4

    .line 182
    invoke-direct {v0, v6, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;I)V

    .line 183
    .line 184
    .line 185
    new-instance v3, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 186
    .line 187
    const/4 v8, 0x5

    .line 188
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 189
    .line 190
    .line 191
    invoke-static {p0, v0, v7, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 192
    .line 193
    .line 194
    return-void
.end method
