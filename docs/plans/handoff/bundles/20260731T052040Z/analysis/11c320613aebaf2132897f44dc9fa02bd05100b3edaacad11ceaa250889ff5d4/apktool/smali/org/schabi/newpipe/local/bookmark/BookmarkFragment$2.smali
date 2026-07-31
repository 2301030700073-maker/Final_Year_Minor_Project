.class public final Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/reactivestreams/Subscriber;
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public held(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    move-object v5, p1

    .line 10
    check-cast v5, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 11
    .line 12
    sget p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 13
    .line 14
    const p0, 0x7f13041e

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const p0, 0x7f1300eb

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const p0, 0x7f130512

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget-object p0, v2, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 36
    .line 37
    invoke-virtual {v5}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-virtual {p0, v0, v1}, Lokhttp3/Dispatcher;->getIsPlaylistThumbnailPermanent(J)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    if-eqz v7, :cond_0

    .line 57
    .line 58
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;

    .line 62
    .line 63
    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Ljava/util/ArrayList;Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Ljava/lang/String;ZLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    .line 68
    iget-object p1, v2, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    new-array p1, p1, [Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, [Ljava/lang/CharSequence;

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 83
    .line 84
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 85
    .line 86
    iput-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    instance-of p0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 93
    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 97
    .line 98
    sget p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 99
    .line 100
    iget-object p0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2, p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->showDeleteDialog(Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    .line 4
    .line 5
    const-string v2, "Loading playlists"

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 70
    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    const-wide/16 v0, 0x1

    .line 74
    .line 75
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showLoading()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 20
    .line 21
    const-wide/16 v0, 0x1

    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public selected(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    sget v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    :cond_0
    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getInstance(Ljava/lang/String;J)Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v0, 0x7f0a01a9

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 56
    .line 57
    iget v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 58
    .line 59
    iget-object v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p0, v0, v1, p1}, Landroidx/sqlite/SQLite;->openPlaylistFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method
