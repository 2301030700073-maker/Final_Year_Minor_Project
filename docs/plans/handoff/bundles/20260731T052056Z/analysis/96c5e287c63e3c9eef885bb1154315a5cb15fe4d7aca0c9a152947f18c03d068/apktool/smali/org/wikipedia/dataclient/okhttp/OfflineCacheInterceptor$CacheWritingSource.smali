.class public final Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokio/Source;


# instance fields
.field public cacheRequestClosed:Z

.field public final cacheSink:Lokio/RealBufferedSink;

.field public failed:Z

.field public final obj:Lorg/wikipedia/offline/db/OfflineObject;

.field public final source:Lokio/BufferedSource;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Lokio/RealBufferedSink;Lorg/wikipedia/offline/db/OfflineObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheSink:Lokio/RealBufferedSink;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->obj:Lorg/wikipedia/offline/db/OfflineObject;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->title:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 18
    .line 19
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->offlineObjectDao()Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->obj:Lorg/wikipedia/offline/db/OfflineObject;

    .line 31
    .line 32
    invoke-static {p0}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->deleteFilesForObject(Lorg/wikipedia/offline/db/OfflineObject;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const-wide/16 p2, -0x1

    .line 12
    .line 13
    cmp-long v0, v6, p2

    .line 14
    .line 15
    iget-object v8, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheSink:Lokio/RealBufferedSink;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iput-boolean v1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 24
    .line 25
    invoke-virtual {v8}, Lokio/RealBufferedSink;->close()V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    new-instance p1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 33
    .line 34
    const/16 v0, 0x1c

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {p1, v0, p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lkotlinx/coroutines/AwaitKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    return-wide p2

    .line 44
    :cond_1
    iget-object v3, v8, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 45
    .line 46
    iget-wide p2, p1, Lokio/Buffer;->size:J

    .line 47
    .line 48
    sub-long v4, p2, v6

    .line 49
    .line 50
    move-object v2, p1

    .line 51
    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 55
    .line 56
    .line 57
    return-wide v6

    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object p1, v0

    .line 60
    iput-boolean v1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    .line 61
    .line 62
    iget-boolean p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 63
    .line 64
    if-nez p2, :cond_2

    .line 65
    .line 66
    iput-boolean v1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 67
    .line 68
    :cond_2
    throw p1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    .line 5
    .line 6
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
