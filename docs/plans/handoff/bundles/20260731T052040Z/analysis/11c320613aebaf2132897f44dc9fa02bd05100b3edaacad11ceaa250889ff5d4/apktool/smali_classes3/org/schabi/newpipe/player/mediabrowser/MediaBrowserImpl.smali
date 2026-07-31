.class public final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;


# instance fields
.field public final context:Lorg/schabi/newpipe/player/PlayerService;

.field public final database:Lorg/schabi/newpipe/database/AppDatabase;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public final packageValidator:Lokhttp3/Dispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 5
    .line 6
    new-instance v0, Lokhttp3/Dispatcher;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lokhttp3/Dispatcher;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->packageValidator:Lokhttp3/Dispatcher;

    .line 12
    .line 13
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 18
    .line 19
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->getMergedPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 31
    .line 32
    const/16 v1, 0x9

    .line 33
    .line 34
    invoke-direct {v0, p2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    sget-object p2, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 38
    .line 39
    new-instance v1, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 40
    .line 41
    invoke-direct {v1, v0, p2}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static buildLocalPlaylistItemMediaId(JZ)Landroid/net/Uri$Builder;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string p2, "remote"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p2, "local"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Landroid/net/Uri$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "org.schabi.newpipe"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v1, "playlists"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    return-object p0
.end method


# virtual methods
.method public final createRootMediaItem(Ljava/lang/String;ILjava/lang/String;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 9

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/net/Uri$Builder;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "android.resource"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    new-instance v7, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f13003a

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p2, "android.media.browse.CONTENT_STYLE_GROUP_TITLE_HINT"

    .line 59
    .line 60
    invoke-virtual {v7, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 64
    .line 65
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    move-object v1, p1

    .line 72
    move-object v2, p3

    .line 73
    invoke-direct/range {v0 .. v8}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 78
    .line 79
    .line 80
    return-object p0
.end method

.method public final getMergedPlaylists()Lio/reactivex/rxjava3/core/Flowable;
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistStreamDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistRemoteDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    const-string v1, "playlists"

    .line 20
    .line 21
    const-string v2, "playlist_stream_join"

    .line 22
    .line 23
    const-string v3, "streams"

    .line 24
    .line 25
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v0, v3, v1, v2}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    .line 48
    const-string v2, "remote_playlists"

    .line 49
    .line 50
    filled-new-array {v2}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {p0, v4, v2, v3}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/16 v2, 0xa

    .line 72
    .line 73
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p0, v1}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public final populateLocalPlaylist(J)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistStreamDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    const-string v2, "playlist_stream_join"

    .line 16
    .line 17
    const-string v3, "stream_state"

    .line 18
    .line 19
    const-string v4, "streams"

    .line 20
    .line 21
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct {v3, p1, p2, v0, v4}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;-><init>(JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {v1, v0, v2, v3}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 43
    .line 44
    invoke-direct {v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1, p2, v0}, Lorg/schabi/newpipe/streams/WebMReader$Info;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;JI)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 53
    .line 54
    invoke-direct {p0, v2, v1, v4}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public final populateRemotePlaylist(J)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistRemoteDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    const-string v1, "remote_playlists"

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 19
    .line 20
    const/16 v3, 0xb

    .line 21
    .line 22
    invoke-direct {v2, p1, p2, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v3, v1, v2}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 43
    .line 44
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 45
    .line 46
    invoke-direct {v4, v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/schabi/newpipe/streams/WebMReader$Info;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;JI)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 56
    .line 57
    invoke-direct {p0, v4, v0, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method
