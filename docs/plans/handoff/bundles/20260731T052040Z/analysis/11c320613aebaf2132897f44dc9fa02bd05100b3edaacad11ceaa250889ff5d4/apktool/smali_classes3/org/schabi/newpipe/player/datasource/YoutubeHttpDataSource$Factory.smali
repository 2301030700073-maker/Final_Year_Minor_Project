.class public final Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# instance fields
.field public final connectTimeoutMs:I

.field public final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field public rangeParameterEnabled:Z

.field public final readTimeoutMs:I

.field public rnParameterEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 10
    .line 11
    const/16 v0, 0x1f40

    .line 12
    .line 13
    iput v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->connectTimeoutMs:I

    .line 14
    .line 15
    iput v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->readTimeoutMs:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;

    .line 2
    .line 3
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rangeParameterEnabled:Z

    .line 4
    .line 5
    iget-boolean v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rnParameterEnabled:Z

    .line 6
    .line 7
    iget-object v5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 8
    .line 9
    iget v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->connectTimeoutMs:I

    .line 10
    .line 11
    iget v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->readTimeoutMs:I

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;-><init>(IIZZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 6

    .line 17
    new-instance v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;

    iget-boolean v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rangeParameterEnabled:Z

    iget-boolean v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rnParameterEnabled:Z

    iget-object v5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    iget v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->connectTimeoutMs:I

    iget v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->readTimeoutMs:I

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;-><init>(IIZZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v0
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
