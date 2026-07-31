.class public abstract Lorg/schabi/newpipe/player/playqueue/PlayQueue;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private backup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public transient broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

.field public transient disposed:Z

.field public transient eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field private final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->disposed:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-le p2, p1, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 34
    .line 35
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final declared-synchronized append(Ljava/util/List;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isShuffled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/lit8 v1, v1, -0x1

    .line 72
    .line 73
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p1
.end method

.method public final broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->disposed:Z

    .line 15
    .line 16
    return-void
.end method

.method public final enqueueNext(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    add-int/lit8 p2, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 p2, 0x1

    .line 23
    new-array v1, p2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p1, v1, v2

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    aget-object v1, v1, v2

    .line 34
    .line 35
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    sub-int/2addr p1, p2

    .line 55
    add-int/2addr v0, p2

    .line 56
    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->move(II)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_3

    .line 28
    .line 29
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    return v0

    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final equalStreamsAndIndex(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-ne p1, p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final declared-synchronized error()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-le v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 30
    .line 31
    iget-object v3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ErrorEvent;

    .line 50
    .line 51
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ErrorEvent;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw v0
.end method

.method public abstract fetch()V
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p0

    return-object p0
.end method

.method public final getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public abstract isComplete()Z
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isShuffled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final declared-synchronized move(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_6

    .line 3
    .line 4
    if-gez p2, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_5

    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lt p2, v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    if-ge p1, v0, :cond_3

    .line 41
    .line 42
    if-lt p2, v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-le p1, v0, :cond_4

    .line 51
    .line 52
    if-gt p2, v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 57
    .line 58
    .line 59
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->setAutoQueued(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;

    .line 77
    .line 78
    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :cond_5
    :goto_1
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p1

    .line 90
    :cond_6
    :goto_3
    monitor-exit p0

    .line 91
    return-void
.end method

.method public final declared-synchronized offsetIndex(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/2addr v0, p1

    .line 9
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method public final declared-synchronized previous()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v2, v1

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-int/2addr v2, v1

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 36
    .line 37
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setIndex(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return v1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw v0
.end method

.method public final declared-synchronized remove(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p1, v0, :cond_1

    .line 9
    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->removeInternal(I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final declared-synchronized removeInternal(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-le v0, p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-lt v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    rem-int/2addr v0, v1

    .line 31
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-le p1, v0, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 84
    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 86
    .line 87
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 98
    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_4
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p1
.end method

.method public final declared-synchronized setIndex(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    :goto_0
    move p1, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge p1, v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    rem-int/2addr p1, v1

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/lit8 p1, p1, -0x1

    .line 52
    .line 53
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 56
    .line 57
    .line 58
    if-eq v0, p1, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 61
    .line 62
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 69
    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_4
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$SelectEvent;

    .line 74
    .line 75
    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$SelectEvent;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p1
.end method

.method public final declared-synchronized setRecovery(IJ)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 20
    .line 21
    invoke-virtual {v0, p2, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->setRecoveryPosition(J)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RecoveryEvent;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RecoveryEvent;-><init>(IJ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    monitor-exit p0

    .line 38
    return-void
.end method

.method public final declared-synchronized shuffle()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v1, 0x2

    .line 25
    if-gt v0, v1, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ReorderEvent;

    .line 66
    .line 67
    invoke-direct {v1, v0, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ReorderEvent;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw v0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final declared-synchronized unshuffle()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 19
    .line 20
    iput-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput-object v3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    if-eq v1, v3, :cond_1

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-le v1, v2, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    .line 59
    .line 60
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 61
    .line 62
    iget-object v3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 73
    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ReorderEvent;

    .line 78
    .line 79
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ReorderEvent;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    throw v0
.end method
