.class public final Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;
.super Lorg/schabi/newpipe/local/BaseLocalListFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/util/debounce/DebounceSavable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/local/BaseLocalListFragment<",
        "Ljava/util/List<",
        "Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;",
        ">;",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/schabi/newpipe/util/debounce/DebounceSavable;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public databaseSubscription:Lorg/reactivestreams/Subscription;

.field public debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

.field public deletedItems:Ljava/util/ArrayList;

.field public disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field itemsListState:Landroid/os/Parcelable;

.field public localPlaylistManager:Lokhttp3/Dispatcher;

.field public remotePlaylistManager:Lorg/jsoup/parser/TokenData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final initListeners()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lokio/Options$Companion;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/16 v1, 0xf

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x3

    .line 19
    :goto_0
    new-instance v2, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 28
    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 35
    .line 36
    new-instance v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 42
    .line 43
    iput-object v1, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    .line 8
    .line 9
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lokhttp3/Dispatcher;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lokhttp3/Dispatcher;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 19
    .line 20
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenData;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 26
    .line 27
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 33
    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance p1, Lokhttp3/internal/connection/RealConnectionPool;

    .line 42
    .line 43
    const-wide/16 v0, 0xbb8

    .line 44
    .line 45
    invoke-direct {p1, v0, v1, p0}, Lokhttp3/internal/connection/RealConnectionPool;-><init>(JLorg/schabi/newpipe/util/debounce/DebounceSavable;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/ArrayList;

    .line 56
    .line 57
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean p3, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    const v0, 0x7f1304e9

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p0, p3}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const p0, 0x7f0d0053

    .line 18
    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 32
    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/ArrayList;

    .line 36
    .line 37
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 22
    .line 23
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->saveImmediate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const v1, 0x7f1304e9

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final resetFragment()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final saveImmediate()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    iget-object v2, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 14
    .line 15
    if-eqz v2, :cond_9

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    iget-object v1, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 24
    .line 25
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 26
    .line 27
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_1
    iget-object v1, v0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 38
    .line 39
    iget-object v1, v1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v5, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    move v7, v6

    .line 63
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-ge v7, v8, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Lorg/schabi/newpipe/database/LocalItem;

    .line 74
    .line 75
    instance-of v9, v8, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 76
    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    move-object v9, v8

    .line 80
    check-cast v9, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 81
    .line 82
    invoke-virtual {v9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getDisplayIndex()Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    int-to-long v12, v7

    .line 91
    cmp-long v10, v10, v12

    .line 92
    .line 93
    if-eqz v10, :cond_2

    .line 94
    .line 95
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v9, v8}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->setDisplayIndex(Ljava/lang/Long;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    instance-of v9, v8, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 107
    .line 108
    if-eqz v9, :cond_3

    .line 109
    .line 110
    check-cast v8, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 111
    .line 112
    iget-wide v9, v8, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    .line 113
    .line 114
    int-to-long v11, v7

    .line 115
    cmp-long v9, v9, v11

    .line 116
    .line 117
    if-eqz v9, :cond_3

    .line 118
    .line 119
    iput-wide v11, v8, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    .line 120
    .line 121
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    iget-object v1, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_7

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    check-cast v7, Landroid/util/Pair;

    .line 144
    .line 145
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v8, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 148
    .line 149
    sget-object v9, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 150
    .line 151
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_6

    .line 156
    .line 157
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v7, Ljava/lang/Long;

    .line 160
    .line 161
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v8, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 168
    .line 169
    sget-object v9, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_5

    .line 176
    .line 177
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v7, Ljava/lang/Long;

    .line 180
    .line 181
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    iget-object v1, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 191
    .line 192
    iget-object v7, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 193
    .line 194
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    new-instance v8, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_8

    .line 215
    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    check-cast v9, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 221
    .line 222
    new-instance v10, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 223
    .line 224
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    .line 228
    .line 229
    .line 230
    move-result-wide v11

    .line 231
    invoke-virtual {v9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    invoke-virtual {v9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->isThumbnailPermanent()Ljava/lang/Boolean;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    .line 244
    .line 245
    move-result v14

    .line 246
    invoke-virtual {v9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getThumbnailStreamId()Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v15

    .line 250
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 254
    .line 255
    .line 256
    move-result-wide v15

    .line 257
    invoke-virtual {v9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getDisplayIndex()Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 265
    .line 266
    .line 267
    move-result-wide v17

    .line 268
    invoke-direct/range {v10 .. v18}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(JLjava/lang/String;ZJJ)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_8
    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda0;

    .line 276
    .line 277
    invoke-direct {v2, v7, v3, v8, v6}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Dispatcher;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 278
    .line 279
    .line 280
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 281
    .line 282
    const/4 v7, 0x2

    .line 283
    invoke-direct {v3, v2, v7}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 284
    .line 285
    .line 286
    sget-object v2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 287
    .line 288
    invoke-virtual {v3, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    iget-object v8, v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    new-instance v9, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;

    .line 298
    .line 299
    invoke-direct {v9, v8, v5, v4}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;-><init>(Lorg/jsoup/parser/TokenData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 300
    .line 301
    .line 302
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 303
    .line 304
    invoke-direct {v4, v9, v7}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    new-array v4, v7, [Lio/reactivex/rxjava3/core/CompletableSource;

    .line 312
    .line 313
    aput-object v3, v4, v6

    .line 314
    .line 315
    const/4 v3, 0x1

    .line 316
    aput-object v2, v4, v3

    .line 317
    .line 318
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 319
    .line 320
    const/4 v5, 0x3

    .line 321
    invoke-direct {v2, v4, v5}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    new-instance v4, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;

    .line 333
    .line 334
    invoke-direct {v4, v0, v6}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;I)V

    .line 335
    .line 336
    .line 337
    new-instance v5, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;

    .line 338
    .line 339
    invoke-direct {v5, v0, v3}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;I)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 343
    .line 344
    invoke-direct {v0, v5, v4}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 351
    .line 352
    .line 353
    :cond_9
    :goto_4
    return-void
.end method

.method public final showDeleteDialog(Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const v0, 0x7f1300f2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 27
    .line 28
    iput-boolean v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 29
    .line 30
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-direct {v0, p0, p2, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    const p0, 0x7f1300eb

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const p1, 0x7f130076

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final startLoading(Z)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->startLoading(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 11
    .line 12
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->getDebouncedSaver()Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 20
    .line 21
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 22
    .line 23
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 34
    .line 35
    iget-object v2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 36
    .line 37
    iget-object v0, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 40
    .line 41
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    .line 43
    const-string v3, "playlists"

    .line 44
    .line 45
    const-string v4, "playlist_stream_join"

    .line 46
    .line 47
    const-string/jumbo v5, "streams"

    .line 48
    .line 49
    .line 50
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    invoke-direct {v4, v5}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p1, v3, v4}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 73
    .line 74
    iget-object v2, v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 75
    .line 76
    const-string v4, "remote_playlists"

    .line 77
    .line 78
    filled-new-array {v4}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    new-instance v5, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 83
    .line 84
    const/4 v6, 0x2

    .line 85
    invoke-direct {v5, v6}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v1, v4, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/16 v3, 0xa

    .line 99
    .line 100
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;

    .line 108
    .line 109
    invoke-direct {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
