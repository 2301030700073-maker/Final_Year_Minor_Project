.class public final Lcoil3/video/MediaDataSourceFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/video/MediaDataSourceFetcher$Factory;,
        Lcoil3/video/MediaDataSourceFetcher$MediaDataSourceOkioSource;,
        Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;
    }
.end annotation


# instance fields
.field private final data:Landroid/media/MediaDataSource;

.field private final options:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Landroid/media/MediaDataSource;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/video/MediaDataSourceFetcher;->data:Landroid/media/MediaDataSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/video/MediaDataSourceFetcher;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcoil3/video/MediaDataSourceFetcher$MediaDataSourceOkioSource;

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/video/MediaDataSourceFetcher;->data:Landroid/media/MediaDataSource;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lcoil3/video/MediaDataSourceFetcher$MediaDataSourceOkioSource;-><init>(Landroid/media/MediaDataSource;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lokio/RealBufferedSource;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcoil3/video/MediaDataSourceFetcher;->options:Lcoil3/request/Options;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcoil3/request/Options;->getFileSystem()Lokio/FileSystem;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v1, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;

    .line 20
    .line 21
    iget-object p0, p0, Lcoil3/video/MediaDataSourceFetcher;->data:Landroid/media/MediaDataSource;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;-><init>(Landroid/media/MediaDataSource;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lcoil3/decode/ImageSourceKt;->ImageSource(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)Lcoil3/decode/ImageSource;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lcoil3/fetch/SourceFetchResult;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    sget-object v1, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 34
    .line 35
    invoke-direct {p1, p0, v0, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method
