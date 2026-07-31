.class public final Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onError$org$schabi$newpipe$player$playqueue$AbstractInfoPlayQueue$1(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Error fetching more playlist, marking playlist as complete."

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V

    .line 13
    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "Error fetching more playlist, marking playlist as complete."

    .line 13
    .line 14
    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V

    .line 18
    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$AppendEvent;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->onError$org$schabi$newpipe$player$playqueue$AbstractInfoPlayQueue$1(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fgetisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void

    .line 36
    :pswitch_0
    invoke-static {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fgetisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 61
    .line 62
    .line 63
    :goto_3
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1b

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 13
    .line 14
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 28
    .line 29
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 36
    .line 37
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/util/List;

    .line 62
    .line 63
    invoke-static {p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->extractListItems(Ljava/util/List;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 71
    .line 72
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/ListInfo;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->hasNextPage()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    invoke-static {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 107
    .line 108
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 116
    .line 117
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Ljava/util/List;

    .line 133
    .line 134
    invoke-static {p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->extractListItems(Ljava/util/List;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 142
    .line 143
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 144
    .line 145
    .line 146
    iput-object v1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
