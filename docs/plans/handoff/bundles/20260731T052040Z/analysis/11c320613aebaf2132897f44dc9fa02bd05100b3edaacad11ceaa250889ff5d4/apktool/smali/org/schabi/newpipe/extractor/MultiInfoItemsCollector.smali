.class public final Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final playlistCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

.field public final streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

.field public final userCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v0, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(ILjava/util/Comparator;I)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 12
    .line 13
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, p1, v0, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(ILjava/util/Comparator;I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->userCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 20
    .line 21
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-direct {v1, p1, v0, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(ILjava/util/Comparator;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->playlistCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final extract(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->userCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 19
    .line 20
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->playlistCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 32
    .line 33
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    const-string p0, "Invalid extractor type: "

    .line 41
    .line 42
    invoke-static {p1, p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public final getErrors()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 13
    .line 14
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->userCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 24
    .line 25
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->playlistCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 35
    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method
