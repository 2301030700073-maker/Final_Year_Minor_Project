.class public Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;
.super Lorg/schabi/newpipe/local/BaseLocalListFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;
.implements Lorg/schabi/newpipe/util/debounce/DebounceSavable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/local/BaseLocalListFragment<",
        "Ljava/util/List<",
        "Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;",
        ">;",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;",
        "Lorg/schabi/newpipe/util/debounce/DebounceSavable;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public databaseSubscription:Lorg/reactivestreams/Subscription;

.field public debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

.field public disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public headerBinding:Lorg/jsoup/nodes/Printer;

.field public isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isRewritingPlaylist:Z

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field itemsListState:Landroid/os/Parcelable;

.field protected name:Ljava/lang/String;

.field public playlistControlBinding:Lokhttp3/Dispatcher;

.field protected playlistId:Ljava/lang/Long;

.field public playlistManager:Lokhttp3/Dispatcher;


# direct methods
.method public static synthetic $r8$lambda$P_u4_HiCmhoZzHplnujq-I4PrkI(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 6
    .line 7
    return-void
.end method

.method public static getInstance(Ljava/lang/String;J)Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 11
    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, ""

    .line 20
    .line 21
    :goto_0
    iput-object p0, v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public final changeThumbnailStreamId(JZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lokhttp3/Dispatcher;->getIsPlaylistThumbnailPermanent(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f1303de

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 33
    .line 34
    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/4 v6, 0x0

    .line 41
    move-wide v4, p1

    .line 42
    move v7, p3

    .line 43
    invoke-virtual/range {v1 .. v7}, Lokhttp3/Dispatcher;->modifyPlaylist(JJLjava/lang/String;Z)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance p3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    invoke-direct {p3, v0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/4 v1, 0x7

    .line 61
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 65
    .line 66
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 67
    .line 68
    invoke-direct {v2, p3, v0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 69
    .line 70
    .line 71
    :try_start_0
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 72
    .line 73
    invoke-direct {p3, v2, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object p0, v0

    .line 87
    const-string/jumbo p1, "subscribeActual failed"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    move-object p0, v0

    .line 97
    throw p0

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method public final createRenameDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/jsoup/parser/TokenData;->inflate(Landroid/view/LayoutInflater;)Lorg/jsoup/parser/TokenData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 27
    .line 28
    const v2, 0x7f130347

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const v3, 0x7f13041f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v3, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 78
    .line 79
    iput-boolean v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 80
    .line 81
    const v2, 0x7f130076

    .line 82
    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-direct {v2, p0, v0, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    const p0, 0x7f13041e

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public final getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const v2, 0x7f0d0088

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0a0308

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v2}, Lokhttp3/Dispatcher;->bind(Landroid/view/View;)Lokhttp3/Dispatcher;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const v1, 0x7f0a0311

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v6, v2

    .line 38
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    const v1, 0x7f0a0312

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v7, v2

    .line 50
    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    new-instance v3, Lorg/jsoup/nodes/Printer;

    .line 55
    .line 56
    move-object v4, v0

    .line 57
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    const/16 v8, 0x8

    .line 60
    .line 61
    invoke-direct/range {v3 .. v8}, Lorg/jsoup/nodes/Printer;-><init>(Landroid/view/ViewGroup;Landroidx/viewbinding/ViewBinding;Landroid/view/View;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    iput-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 65
    .line 66
    iput-object v5, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-virtual {v7, v0}, Landroid/view/View;->setSelected(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 73
    .line 74
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda2;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda2;-><init>(Lorg/jsoup/nodes/Printer;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v0, "Missing required view with ID: "

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method

.method public final getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    move-result-object p0

    return-object p0
.end method

.method public final getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 6
    .line 7
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lorg/schabi/newpipe/database/LocalItem;

    .line 40
    .line 41
    instance-of v2, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    check-cast v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 56
    .line 57
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(ILjava/util/List;)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public final hideLoading()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const-wide/16 v2, 0xc8

    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 19
    .line 20
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-static {p0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final initListeners()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 6
    .line 7
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lokio/Options$Companion;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const/16 v1, 0xf

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x3

    .line 33
    :goto_0
    new-instance v2, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;

    .line 34
    .line 35
    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 42
    .line 43
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 49
    .line 50
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 56
    .line 57
    iput-object v1, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 58
    .line 59
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setTitle(Ljava/lang/String;)V

    .line 7
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
    new-instance p1, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Lokhttp3/Dispatcher;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 18
    .line 19
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 25
    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance p1, Lokhttp3/internal/connection/RealConnectionPool;

    .line 34
    .line 35
    const-wide/16 v0, 0x2710

    .line 36
    .line 37
    invoke-direct {p1, v0, v1, p0}, Lokhttp3/internal/connection/RealConnectionPool;-><init>(JLorg/schabi/newpipe/util/debounce/DebounceSavable;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 41
    .line 42
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0f0009

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0061

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

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
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

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
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 10
    .line 11
    iput-object v1, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iput-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 14
    .line 15
    iput-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iput-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 32
    .line 33
    iput-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 34
    .line 35
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a024f

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f130471

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 28
    .line 29
    iput-boolean v3, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 30
    .line 31
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;

    .line 32
    .line 33
    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;I)V

    .line 34
    .line 35
    .line 36
    const v1, 0x7f130475

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;I)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f130472

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;

    .line 56
    .line 57
    const/4 v1, 0x3

    .line 58
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;I)V

    .line 59
    .line 60
    .line 61
    const p0, 0x7f130474

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 69
    .line 70
    .line 71
    return v3

    .line 72
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const v1, 0x7f0a024a

    .line 77
    .line 78
    .line 79
    if-ne v0, v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->createRenameDialog()V

    .line 82
    .line 83
    .line 84
    return v3

    .line 85
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const v1, 0x7f0a0249

    .line 90
    .line 91
    .line 92
    const v4, 0x7f130076

    .line 93
    .line 94
    .line 95
    if-ne v0, v1, :cond_2

    .line 96
    .line 97
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 98
    .line 99
    if-nez p1, :cond_3

    .line 100
    .line 101
    new-instance p1, Landroid/widget/CheckBox;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    const v0, 0x7f13041b

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    .line 127
    .line 128
    const/16 v1, 0x14

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v5, v1}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    .line 143
    const/4 v2, -0x1

    .line 144
    const/4 v5, -0x2

    .line 145
    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    const v2, 0x7f13041d

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 164
    .line 165
    .line 166
    const v2, 0x7f13041c

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;

    .line 177
    .line 178
    invoke-direct {v1, p0, p1, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    const p0, 0x7f130542

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    new-instance p1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    .line 189
    .line 190
    invoke-direct {p1, v3}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 198
    .line 199
    .line 200
    return v3

    .line 201
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    const v0, 0x7f0a0248

    .line 206
    .line 207
    .line 208
    if-ne p1, v0, :cond_4

    .line 209
    .line 210
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 211
    .line 212
    if-nez p1, :cond_3

    .line 213
    .line 214
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 215
    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    const v0, 0x7f130419

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 227
    .line 228
    .line 229
    const v0, 0x7f130418

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;

    .line 236
    .line 237
    invoke-direct {v0, p0, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;I)V

    .line 238
    .line 239
    .line 240
    const p0, 0x7f130397

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    const/4 p1, 0x0

    .line 248
    invoke-virtual {p0, v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 252
    .line 253
    .line 254
    :cond_3
    return v3

    .line 255
    :cond_4
    return v2
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
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final resetFragment()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final saveImmediate()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 16
    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 26
    .line 27
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 28
    .line 29
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 40
    .line 41
    iget-object v0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lorg/schabi/newpipe/database/LocalItem;

    .line 67
    .line 68
    instance-of v3, v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    check-cast v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 73
    .line 74
    iget-wide v2, v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    .line 75
    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object v4, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 85
    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    move v10, v2

    .line 106
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ge v10, v3, :cond_4

    .line 111
    .line 112
    move-wide v6, v5

    .line 113
    new-instance v5, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    .line 114
    .line 115
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v8

    .line 125
    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;-><init>(JJI)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v10, v10, 0x1

    .line 132
    .line 133
    move-wide v5, v6

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move-wide v6, v5

    .line 136
    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;

    .line 137
    .line 138
    const/4 v8, 0x0

    .line 139
    move-wide v5, v6

    .line 140
    move-object v7, v0

    .line 141
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;-><init>(Lokhttp3/Dispatcher;JLjava/util/ArrayList;I)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 145
    .line 146
    const/4 v1, 0x2

    .line 147
    invoke-direct {v0, v3, v1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 170
    .line 171
    const/4 v3, 0x5

    .line 172
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 176
    .line 177
    invoke-direct {v3, v2, v1}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 184
    .line 185
    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 186
    .line 187
    .line 188
    :cond_5
    :goto_2
    return-void
.end method

.method public final setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 19
    .line 20
    const/4 v3, 0x7

    .line 21
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 39
    .line 40
    const/4 v3, 0x5

    .line 41
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v2, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    invoke-direct {v2, v3}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sum()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 63
    .line 64
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 67
    .line 68
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 69
    .line 70
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {v2, v3, v0}, Lorg/schabi/newpipe/util/Localization;->getDurationString(JZ)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 8
    .line 9
    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {v2, v3, v4}, Lokhttp3/Dispatcher;->getPlaylistStreams(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v3, p1, v0, v4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    const v4, 0x7fffffff

    .line 26
    .line 27
    .line 28
    const-string v5, "maxConcurrency"

    .line 29
    .line 30
    invoke-static {v4, v5}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 34
    .line 35
    invoke-direct {v4, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v4, v2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;

    .line 47
    .line 48
    invoke-direct {v3, p0, p1, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 58
    .line 59
    invoke-direct {p0, v3, p1}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final showLoading()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/jsoup/nodes/Printer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const-wide/16 v2, 0xc8

    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 19
    .line 20
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-static {p0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final startLoading(Z)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->startLoading(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 18
    .line 19
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->getDebouncedSaver()Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 27
    .line 28
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 29
    .line 30
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {v0, v1, v2}, Lokhttp3/Dispatcher;->getPlaylistStreams(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;

    .line 53
    .line 54
    invoke-direct {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureError;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final updateThumbnailUrl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lokhttp3/Dispatcher;->getIsPlaylistThumbnailPermanent(J)Z

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
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 17
    .line 18
    iget-object v0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-wide/16 v2, -0x1

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0, v2, v3, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->changeThumbnailStreamId(JZ)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
