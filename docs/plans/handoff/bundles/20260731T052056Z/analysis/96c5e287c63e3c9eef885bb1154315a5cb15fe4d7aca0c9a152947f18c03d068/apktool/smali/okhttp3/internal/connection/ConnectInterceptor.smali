.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final INSTANCE:Lokhttp3/internal/connection/ConnectInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/connection/ConnectInterceptor;->INSTANCE:Lokhttp3/internal/connection/ConnectInterceptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 8

    .line 1
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->expectMoreExchanges:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->socketSourceOpen:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->socketSinkOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Lokhttp3/internal/connection/ExchangeFinder;->find()Lokhttp3/internal/connection/RealConnection;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget v3, p1, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 43
    .line 44
    iget-object v4, v1, Lokhttp3/internal/connection/RealConnection;->socket:Lokhttp3/MultipartBody$Builder;

    .line 45
    .line 46
    iget-object v5, v1, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    new-instance v3, Lokhttp3/internal/http2/Http2ExchangeCodec;

    .line 51
    .line 52
    invoke-direct {v3, v2, v1, p1, v5}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v5, v1, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 59
    .line 60
    .line 61
    iget-object v5, v4, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v5, Lokio/RealBufferedSource;

    .line 64
    .line 65
    iget-object v5, v5, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 66
    .line 67
    invoke-interface {v5}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    int-to-long v6, v3

    .line 72
    invoke-virtual {v5, v6, v7}, Lokio/Timeout;->timeout(J)Lokio/Timeout;

    .line 73
    .line 74
    .line 75
    iget-object v3, v4, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Lokio/RealBufferedSink;

    .line 78
    .line 79
    iget-object v3, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 80
    .line 81
    invoke-interface {v3}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget v5, p1, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 86
    .line 87
    int-to-long v5, v5

    .line 88
    invoke-virtual {v3, v5, v6}, Lokio/Timeout;->timeout(J)Lokio/Timeout;

    .line 89
    .line 90
    .line 91
    new-instance v3, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 92
    .line 93
    invoke-direct {v3, v2, v1, v4}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/MultipartBody$Builder;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    new-instance v1, Landroidx/compose/runtime/Latch;

    .line 97
    .line 98
    invoke-direct {v1, p0, v0, v3}, Landroidx/compose/runtime/Latch;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 102
    .line 103
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 104
    .line 105
    monitor-enter p0

    .line 106
    const/4 v0, 0x1

    .line 107
    :try_start_1
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 108
    .line 109
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    monitor-exit p0

    .line 112
    iget-boolean p0, p0, Lokhttp3/internal/connection/RealCall;->canceled:Z

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    if-nez p0, :cond_1

    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    const/16 v2, 0x3d

    .line 119
    .line 120
    invoke-static {p1, p0, v1, v0, v2}, Lokhttp3/internal/http/RealInterceptorChain;->copy$okhttp$default(Lokhttp3/internal/http/RealInterceptorChain;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    iget-object p1, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :cond_1
    const-string p0, "Canceled"

    .line 132
    .line 133
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    monitor-exit p0

    .line 139
    throw p1

    .line 140
    :catchall_1
    move-exception p1

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string v0, "Check failed."

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_3
    const-string p1, "released"

    .line 151
    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :goto_1
    monitor-exit p0

    .line 159
    throw p1
.end method
