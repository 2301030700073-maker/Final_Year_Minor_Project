.class public abstract Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;
.super Lorg/schabi/newpipe/player/playqueue/PlayQueue;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field final baseUrl:Ljava/lang/String;

.field public transient fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

.field private isComplete:Z

.field isInitial:Z

.field nextPage:Lorg/schabi/newpipe/extractor/Page;

.field final serviceId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V
    .locals 1

    .line 59
    invoke-static {p4}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->extractListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    .line 60
    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->baseUrl:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 62
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->serviceId:I

    .line 63
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    if-nez p1, :cond_0

    .line 64
    invoke-static {p3}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/ListInfo;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    const/16 v4, 0x1b

    .line 34
    .line 35
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    move-object v4, p1

    .line 51
    check-cast v4, Ljava/util/List;

    .line 52
    .line 53
    move-object v0, p0

    .line 54
    move v5, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static extractListItems(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

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


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->dispose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 13
    .line 14
    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final isComplete()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    .line 2
    .line 3
    return p0
.end method
