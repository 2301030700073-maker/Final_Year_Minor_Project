.class public final Lorg/schabi/newpipe/player/helper/CacheFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field public final cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

.field public final context:Lorg/schabi/newpipe/player/PlayerService;

.field public final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field public final upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    .line 21
    .line 22
    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 28
    .line 29
    const-wide/32 v1, 0x200000

    .line 30
    .line 31
    .line 32
    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x0

    .line 39
    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 40
    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method
