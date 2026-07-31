.class public final Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;


# instance fields
.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public final playlistStringByteArray:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->playlistStringByteArray:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->playlistStringByteArray:[B

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;-><init>([B)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
