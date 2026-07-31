.class public final Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;
.super Lokhttp3/ResponseBody;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final contentLength:J

.field public final contentType:Ljava/lang/String;

.field public final source:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->source:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentType:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentLength:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 1

    .line 1
    new-instance v0, Lokio/RealBufferedSource;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->source:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
