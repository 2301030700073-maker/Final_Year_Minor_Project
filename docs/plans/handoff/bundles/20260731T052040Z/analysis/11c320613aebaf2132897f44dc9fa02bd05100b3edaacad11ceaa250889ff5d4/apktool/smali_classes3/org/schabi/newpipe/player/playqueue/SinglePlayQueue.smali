.class public final Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;
.super Lorg/schabi/newpipe/player/playqueue/PlayQueue;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ljava/util/List;

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 29
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    const/4 p1, 0x1

    .line 30
    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    aget-object p1, v1, v2

    .line 32
    invoke-static {p1, v0, p1, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-direct {p0, v2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 3

    .line 34
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    const/4 p1, 0x1

    .line 35
    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    aget-object p1, v1, v2

    .line 37
    invoke-static {p1, v0, p1, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    .line 38
    invoke-direct {p0, v2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final fetch()V
    .locals 0

    .line 1
    return-void
.end method

.method public final isComplete()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
