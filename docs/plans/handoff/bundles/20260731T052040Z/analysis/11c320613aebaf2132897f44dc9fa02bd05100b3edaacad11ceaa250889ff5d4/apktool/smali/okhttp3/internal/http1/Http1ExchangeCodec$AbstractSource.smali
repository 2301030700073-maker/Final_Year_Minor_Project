.class public abstract Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lokio/Source;


# instance fields
.field public closed:Z

.field public final synthetic this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

.field public final timeout:Lokio/ForwardingTimeout;

.field public final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->url:Lokhttp3/HttpUrl;

    .line 10
    .line 11
    new-instance p2, Lokio/ForwardingTimeout;

    .line 12
    .line 13
    iget-object p1, p1, Lokhttp3/internal/http1/Http1ExchangeCodec;->socket:Lorg/acra/util/ProcessFinisher;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lokio/RealBufferedSource;

    .line 18
    .line 19
    iget-object p1, p1, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 20
    .line 21
    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public read(JLokio/Buffer;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->socket:Lorg/acra/util/ProcessFinisher;

    .line 7
    .line 8
    iget-object v1, v1, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lokio/RealBufferedSource;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2, p3}, Lokio/RealBufferedSource;->read(JLokio/Buffer;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-wide p0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    iget-object p2, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->carrier:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 19
    .line 20
    invoke-interface {p2}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V

    .line 21
    .line 22
    .line 23
    sget-object p2, Lokhttp3/internal/http1/Http1ExchangeCodec;->TRAILERS_RESPONSE_BODY_TRUNCATED:Lokhttp3/Headers;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete(Lokhttp3/Headers;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final responseBodyComplete(Lokhttp3/Headers;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    iget v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x5

    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    .line 16
    .line 17
    iget-object v3, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 18
    .line 19
    sget-object v4, Lokio/Timeout;->NONE:Lokio/Timeout$Companion$NONE$1;

    .line 20
    .line 21
    iput-object v4, v1, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 22
    .line 23
    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 27
    .line 28
    .line 29
    iput v2, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/HttpUrl$Companion;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->url:Lokhttp3/HttpUrl;

    .line 46
    .line 47
    invoke-static {v0, p0, p1}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/HttpUrl$Companion;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    const-string/jumbo p0, "state: "

    .line 52
    .line 53
    .line 54
    iget p1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 55
    .line 56
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    .line 2
    .line 3
    return-object p0
.end method
