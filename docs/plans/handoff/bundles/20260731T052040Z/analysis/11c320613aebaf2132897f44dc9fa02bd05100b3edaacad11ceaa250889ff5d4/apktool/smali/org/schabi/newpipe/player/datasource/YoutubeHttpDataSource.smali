.class public final Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# static fields
.field public static final POST_BODY:[B


# instance fields
.field public bytesRead:J

.field public bytesToRead:J

.field public final connectTimeoutMillis:I

.field public connection:Ljava/net/HttpURLConnection;

.field public dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field public inputStream:Ljava/io/InputStream;

.field public opened:Z

.field public final rangeParameterEnabled:Z

.field public final readTimeoutMillis:I

.field public requestNumber:J

.field public final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field public responseCode:I

.field public final rnParameterEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->POST_BODY:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x78t
        0x0t
    .end array-data
.end method

.method public constructor <init>(IIZZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connectTimeoutMillis:I

    .line 6
    .line 7
    iput p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->readTimeoutMillis:I

    .line 8
    .line 9
    iput-boolean p3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rangeParameterEnabled:Z

    .line 10
    .line 11
    iput-boolean p4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rnParameterEnabled:Z

    .line 12
    .line 13
    iput-object p5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 21
    .line 22
    const-wide/16 p1, 0x0

    .line 23
    .line 24
    iput-wide p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    .line 25
    .line 26
    return-void
.end method

.method public static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    if-lt v0, v1, :cond_4

    .line 8
    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long v0, p1, v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, -0x1

    .line 29
    if-ne p1, p2, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v0, 0x800

    .line 33
    .line 34
    cmp-long p1, p1, v0

    .line 35
    .line 36
    if-gtz p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Class;

    .line 76
    .line 77
    const-string/jumbo p2, "unexpectedEndOfInput"

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearAllRequestProperties()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearRequestProperty(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final close()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-wide v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 8
    .line 9
    const-wide/16 v5, -0x1

    .line 10
    .line 11
    cmp-long v7, v3, v5

    .line 12
    .line 13
    if-nez v7, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    .line 17
    .line 18
    sub-long v5, v3, v5

    .line 19
    .line 20
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    invoke-static {v3, v5, v6}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception v2

    .line 32
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 33
    .line 34
    iget-object v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 35
    .line 36
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 41
    .line 42
    const/16 v5, 0x7d0

    .line 43
    .line 44
    const/4 v6, 0x3

    .line 45
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 46
    .line 47
    .line 48
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :goto_2
    iput-object v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 76
    .line 77
    .line 78
    :cond_3
    throw v2
.end method

.method public final closeConnectionQuietly()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "YoutubeHttpDataSource"

    .line 11
    .line 12
    const-string v2, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final getResponseCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 6
    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return p0

    .line 11
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 12
    return p0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$NullFilteringHeadersMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final makeConnection(Ljava/net/URL;JJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v1, "/videoplayback"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-wide/16 v1, 0x1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rnParameterEnabled:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v3, "&rn="

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-wide v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    .line 36
    .line 37
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-wide v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    .line 45
    .line 46
    add-long/2addr v3, v1

    .line 47
    iput-wide v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    .line 48
    .line 49
    :cond_0
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rangeParameterEnabled:Z

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    cmp-long p1, p2, v5

    .line 59
    .line 60
    const-wide/16 v5, -0x1

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    cmp-long p1, p4, v5

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    move-object p1, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string p1, "&range="

    .line 71
    .line 72
    const-string v7, "-"

    .line 73
    .line 74
    invoke-static {p2, p3, p1, v7}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    cmp-long v5, p4, v5

    .line 79
    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    add-long v5, p2, p4

    .line 83
    .line 84
    sub-long/2addr v5, v1

    .line 85
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_0
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-static {v0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :cond_3
    new-instance p1, Ljava/net/URL;

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 108
    .line 109
    iget v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connectTimeoutMillis:I

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 112
    .line 113
    .line 114
    iget v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->readTimeoutMillis:I

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 142
    .line 143
    .line 144
    move-object/from16 p0, p8

    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Ljava/lang/String;

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    if-nez v3, :cond_6

    .line 186
    .line 187
    invoke-static/range {p2 .. p5}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    if-eqz p0, :cond_6

    .line 192
    .line 193
    const-string p2, "Range"

    .line 194
    .line 195
    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    .line 199
    .line 200
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-nez p0, :cond_7

    .line 205
    .line 206
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    .line 207
    .line 208
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eqz p0, :cond_8

    .line 213
    .line 214
    :cond_7
    const-string p0, "Origin"

    .line 215
    .line 216
    const-string p2, "https://www.youtube.com"

    .line 217
    .line 218
    invoke-virtual {p1, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string p0, "Referer"

    .line 222
    .line 223
    invoke-virtual {p1, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string p0, "Sec-Fetch-Dest"

    .line 227
    .line 228
    const-string p2, "empty"

    .line 229
    .line 230
    invoke-virtual {p1, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string p0, "Sec-Fetch-Mode"

    .line 234
    .line 235
    const-string p2, "cors"

    .line 236
    .line 237
    invoke-virtual {p1, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string p0, "Sec-Fetch-Site"

    .line 241
    .line 242
    const-string p2, "cross-site"

    .line 243
    .line 244
    invoke-virtual {p1, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    const-string p0, "TE"

    .line 248
    .line 249
    const-string/jumbo p2, "trailers"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    .line 256
    .line 257
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    const-string p2, "User-Agent"

    .line 262
    .line 263
    if-eqz p0, :cond_9

    .line 264
    .line 265
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_9
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    .line 274
    .line 275
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    if-eqz p0, :cond_a

    .line 280
    .line 281
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getIosUserAgent()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_a
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_VISIONOS_PATTERN:Ljava/util/regex/Pattern;

    .line 290
    .line 291
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    if-eqz p0, :cond_b

    .line 296
    .line 297
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisionOsUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_b
    const-string p0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    .line 306
    .line 307
    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :goto_2
    if-eqz p6, :cond_c

    .line 311
    .line 312
    const-string p0, "gzip"

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_c
    const-string p0, "identity"

    .line 316
    .line 317
    :goto_3
    const-string p2, "Accept-Encoding"

    .line 318
    .line 319
    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 323
    .line 324
    .line 325
    const-string p0, "POST"

    .line 326
    .line 327
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const/4 p0, 0x1

    .line 331
    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 332
    .line 333
    .line 334
    const/4 p0, 0x2

    .line 335
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    sget-object p2, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->POST_BODY:[B

    .line 346
    .line 347
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 351
    .line 352
    .line 353
    return-object p1
.end method

.method public final open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iput-object v0, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 6
    .line 7
    const-wide/16 v10, 0x0

    .line 8
    .line 9
    iput-wide v10, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    .line 10
    .line 11
    iput-wide v10, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 14
    .line 15
    .line 16
    const/4 v12, 0x1

    .line 17
    :try_start_0
    iget-object v2, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 18
    .line 19
    new-instance v3, Ljava/net/URL;

    .line 20
    .line 21
    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v5, v3

    .line 31
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 32
    .line 33
    move-object v7, v5

    .line 34
    iget-wide v5, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 35
    .line 36
    move-object v8, v7

    .line 37
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    iget-object v9, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 42
    .line 43
    move-object v2, v8

    .line 44
    const/4 v8, 0x1

    .line 45
    invoke-virtual/range {v1 .. v9}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->makeConnection(Ljava/net/URL;JJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 61
    iget v3, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 62
    .line 63
    const-string v4, "Content-Range"

    .line 64
    .line 65
    const/16 v5, 0xc8

    .line 66
    .line 67
    const-wide/16 v6, -0x1

    .line 68
    .line 69
    if-lt v3, v5, :cond_7

    .line 70
    .line 71
    const/16 v8, 0x12b

    .line 72
    .line 73
    if-le v3, v8, :cond_0

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    iget-boolean v3, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rangeParameterEnabled:Z

    .line 81
    .line 82
    if-nez v3, :cond_1

    .line 83
    .line 84
    iget v3, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 85
    .line 86
    if-ne v3, v5, :cond_1

    .line 87
    .line 88
    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 89
    .line 90
    cmp-long v3, v8, v10

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    move-wide v10, v8

    .line 95
    :cond_1
    const-string v3, "Content-Encoding"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v5, "gzip"

    .line 102
    .line 103
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 110
    .line 111
    cmp-long v5, v8, v6

    .line 112
    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    iput-wide v8, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const-string v5, "Content-Length"

    .line 119
    .line 120
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    cmp-long v8, v4, v6

    .line 133
    .line 134
    if-eqz v8, :cond_3

    .line 135
    .line 136
    sub-long v6, v4, v10

    .line 137
    .line 138
    :cond_3
    iput-wide v6, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 142
    .line 143
    iput-wide v4, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 144
    .line 145
    :goto_0
    const/16 v4, 0x7d0

    .line 146
    .line 147
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 152
    .line 153
    if-eqz v3, :cond_5

    .line 154
    .line 155
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 156
    .line 157
    iget-object v3, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 158
    .line 159
    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    .line 161
    .line 162
    iput-object v2, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    goto :goto_2

    .line 167
    :cond_5
    :goto_1
    iput-boolean v12, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 170
    .line 171
    .line 172
    :try_start_2
    iget-object v0, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 173
    .line 174
    invoke-virtual {v1, v10, v11, v0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .line 176
    .line 177
    iget-wide v0, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 178
    .line 179
    return-wide v0

    .line 180
    :catch_1
    move-exception v0

    .line 181
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 182
    .line 183
    .line 184
    instance-of v2, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 185
    .line 186
    if-eqz v2, :cond_6

    .line 187
    .line 188
    check-cast v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 189
    .line 190
    throw v0

    .line 191
    :cond_6
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 192
    .line 193
    iget-object v1, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 194
    .line 195
    invoke-direct {v2, v0, v1, v4, v12}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 196
    .line 197
    .line 198
    throw v2

    .line 199
    :goto_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 203
    .line 204
    iget-object v1, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 205
    .line 206
    invoke-direct {v2, v0, v1, v4, v12}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 207
    .line 208
    .line 209
    throw v2

    .line 210
    :cond_7
    :goto_3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 211
    .line 212
    .line 213
    move-result-object v17

    .line 214
    iget v3, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 215
    .line 216
    const/16 v5, 0x1a0

    .line 217
    .line 218
    if-ne v3, v5, :cond_9

    .line 219
    .line 220
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    .line 225
    .line 226
    .line 227
    move-result-wide v3

    .line 228
    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 229
    .line 230
    cmp-long v3, v8, v3

    .line 231
    .line 232
    if-nez v3, :cond_9

    .line 233
    .line 234
    iput-boolean v12, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 235
    .line 236
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 237
    .line 238
    .line 239
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 240
    .line 241
    cmp-long v2, v0, v6

    .line 242
    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    return-wide v0

    .line 246
    :cond_8
    return-wide v10

    .line 247
    :cond_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_a

    .line 252
    .line 253
    :try_start_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    goto :goto_4

    .line 258
    :cond_a
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 259
    .line 260
    :goto_4
    move-object/from16 v19, v0

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :catch_2
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :goto_5
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 267
    .line 268
    .line 269
    iget v0, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 270
    .line 271
    if-ne v0, v5, :cond_b

    .line 272
    .line 273
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    .line 274
    .line 275
    const/16 v2, 0x7d8

    .line 276
    .line 277
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    .line 278
    .line 279
    .line 280
    :goto_6
    move-object/from16 v16, v0

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_b
    const/4 v0, 0x0

    .line 284
    goto :goto_6

    .line 285
    :goto_7
    new-instance v13, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 286
    .line 287
    iget v14, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 288
    .line 289
    iget-object v0, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 290
    .line 291
    move-object/from16 v18, v0

    .line 292
    .line 293
    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    .line 294
    .line 295
    .line 296
    throw v13

    .line 297
    :catch_3
    move-exception v0

    .line 298
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 299
    .line 300
    .line 301
    iget-object v1, v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 302
    .line 303
    invoke-static {v0, v1, v12}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    throw v0
.end method

.method public final read([BII)I
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-wide v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    .line 15
    .line 16
    sub-long/2addr v0, v4

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v2, v0, v4

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    int-to-long v4, p3

    .line 25
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-int p3, v0

    .line 30
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/io/InputStream;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v3, :cond_3

    .line 43
    .line 44
    :goto_0
    return v3

    .line 45
    :cond_3
    iget-wide p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    .line 46
    .line 47
    int-to-long v0, p1

    .line 48
    add-long/2addr p2, v0

    .line 49
    iput-wide p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return p1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 63
    .line 64
    const/4 p2, 0x2

    .line 65
    invoke-static {p1, p0, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    throw p0
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/16 v2, 0x1000

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    :goto_0
    cmp-long v3, p1, v0

    .line 13
    .line 14
    if-lez v3, :cond_3

    .line 15
    .line 16
    const-wide/16 v3, 0x1000

    .line 17
    .line 18
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    long-to-int v3, v3

    .line 23
    iget-object v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 24
    .line 25
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/io/InputStream;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v4, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x1

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    const/4 v4, -0x1

    .line 48
    if-eq v3, v4, :cond_1

    .line 49
    .line 50
    int-to-long v4, v3

    .line 51
    sub-long/2addr p1, v4

    .line 52
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 57
    .line 58
    const/16 p1, 0x7d8

    .line 59
    .line 60
    invoke-direct {p0, p3, p1, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 65
    .line 66
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 69
    .line 70
    .line 71
    const/16 p2, 0x7d0

    .line 72
    .line 73
    invoke-direct {p0, p1, p3, p2, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_3
    :goto_1
    return-void
.end method
