.class public final synthetic Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

.field public final synthetic f$1:Landroid/widget/Toast;

.field public final synthetic f$2:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

.field public final synthetic f$3:Lokhttp3/Dispatcher;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lokhttp3/Dispatcher;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$1:Landroid/widget/Toast;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$2:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$3:Lokhttp3/Dispatcher;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$1:Landroid/widget/Toast;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$2:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 9
    .line 10
    iget-object v1, v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, -0x1

    .line 19
    .line 20
    cmp-long v1, v1, v3

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    .line 25
    .line 26
    iget-object v1, v1, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 27
    .line 28
    iget-wide v3, v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    .line 29
    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    iget-object v2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$3:Lokhttp3/Dispatcher;

    .line 46
    .line 47
    invoke-virtual/range {v2 .. v8}, Lokhttp3/Dispatcher;->modifyPlaylist(JJLjava/lang/String;Z)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda5;

    .line 56
    .line 57
    invoke-direct {v2, p1, v9}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda5;-><init>(Landroid/widget/Toast;I)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 61
    .line 62
    sget-object v3, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 63
    .line 64
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 65
    .line 66
    invoke-direct {v4, v2, p1, v3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 70
    .line 71
    invoke-direct {p1, v4, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object p0, v0

    .line 83
    const-string/jumbo p1, "subscribeActual failed"

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    move-object p0, v0

    .line 93
    throw p0

    .line 94
    :cond_0
    return-void
.end method
