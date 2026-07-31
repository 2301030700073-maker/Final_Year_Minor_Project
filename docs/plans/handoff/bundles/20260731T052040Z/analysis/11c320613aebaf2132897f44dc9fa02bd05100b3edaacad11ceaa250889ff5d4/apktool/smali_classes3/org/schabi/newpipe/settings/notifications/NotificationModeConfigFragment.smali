.class public final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private _binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

.field private adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private loader:Lio/reactivex/rxjava3/disposables/Disposable;

.field private subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$GbWQNHBfFQcCesez1OGznrb9zPg(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->onViewCreated$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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
    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    return-void
.end method

.method private final getBinding()Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method private static final onViewCreated$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->updateNotificationMode(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "adapter"

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method private final toggleAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "adapter"

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v2, v0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->updateNotificationMode(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1
.end method

.method private final updateNotificationMode(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getServiceId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v2, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 24
    .line 25
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 26
    .line 27
    const/16 v4, 0x9

    .line 28
    .line 29
    invoke-direct {v3, p1, v1, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Lokhttp3/Cookie$Companion;->createMaybe(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Lokio/PriorityQueue;

    .line 37
    .line 38
    const/16 v2, 0xd

    .line 39
    .line 40
    invoke-direct {v1, p2, p0, v2}, Lokio/PriorityQueue;-><init>(ILjava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;

    .line 44
    .line 45
    invoke-direct {p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance p1, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    const-string p0, "subscriptionManager"

    .line 67
    .line 68
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    throw p0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    const p0, 0x7f0f000b

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0d0057

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
    const p2, 0x7f0a032a

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    new-instance p2, Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 24
    .line 25
    check-cast p1, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-direct {p2, p1, p3}, Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 31
    .line 32
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "Missing required view with ID: "

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 12
    .line 13
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

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
    const v0, 0x7f0a0051

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->toggleAll()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 5
    .line 6
    new-instance p2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/16 v0, 0x16

    .line 9
    .line 10
    invoke-direct {p2, p0, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 17
    .line 18
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iget-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const-string v1, "adapter"

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    new-instance v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;

    .line 64
    .line 65
    invoke-direct {v0, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)V

    .line 66
    .line 67
    .line 68
    sget-object p2, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 69
    .line 70
    new-instance v1, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 71
    .line 72
    invoke-direct {v1, v0, p2}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    const-string p0, "subscriptionManager"

    .line 86
    .line 87
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0
.end method
