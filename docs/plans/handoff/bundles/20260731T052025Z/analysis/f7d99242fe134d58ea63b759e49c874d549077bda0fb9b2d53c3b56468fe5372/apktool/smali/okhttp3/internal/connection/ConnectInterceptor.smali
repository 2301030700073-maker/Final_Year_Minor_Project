.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->call:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/connection/RealCall;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->expectMoreExchanges:Z

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->socketSourceOpen:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->socketSinkOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lokhttp3/internal/connection/ExchangeFinder;->find()Lokhttp3/internal/connection/RealConnection;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget v3, p1, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 42
    .line 43
    iget-object v4, v1, Lokhttp3/internal/connection/RealConnection;->socket:Lorg/slf4j/event/EventRecodingLogger;

    .line 44
    .line 45
    iget-object v5, v1, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 46
    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    new-instance v3, Lokhttp3/internal/http2/Http2ExchangeCodec;

    .line 50
    .line 51
    invoke-direct {v3, v2, v1, p1, v5}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v5, v1, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 58
    .line 59
    .line 60
    iget-object v5, v4, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Lokio/RealBufferedSource;

    .line 63
    .line 64
    iget-object v5, v5, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 65
    .line 66
    invoke-interface {v5}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    int-to-long v6, v3

    .line 71
    invoke-virtual {v5, v6, v7}, Lokio/Timeout;->timeout(J)Lokio/Timeout;

    .line 72
    .line 73
    .line 74
    iget-object v3, v4, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Lokio/RealBufferedSink;

    .line 77
    .line 78
    iget-object v3, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 79
    .line 80
    invoke-interface {v3}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget v5, p1, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 85
    .line 86
    int-to-long v5, v5

    .line 87
    invoke-virtual {v3, v5, v6}, Lokio/Timeout;->timeout(J)Lokio/Timeout;

    .line 88
    .line 89
    .line 90
    new-instance v3, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 91
    .line 92
    invoke-direct {v3, v2, v1, v4}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lorg/slf4j/event/EventRecodingLogger;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    new-instance v1, Landroidx/compose/runtime/Latch;

    .line 96
    .line 97
    invoke-direct {v1, p0, v0, v3}, Landroidx/compose/runtime/Latch;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 101
    .line 102
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 103
    .line 104
    monitor-enter p0

    .line 105
    const/4 v0, 0x1

    .line 106
    :try_start_1
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 107
    .line 108
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    monitor-exit p0

    .line 111
    iget-boolean p0, p0, Lokhttp3/internal/connection/RealCall;->canceled:Z

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    if-nez p0, :cond_1

    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    const/16 v2, 0x3d

    .line 118
    .line 119
    invoke-static {p1, p0, v1, v0, v2}, Lokhttp3/internal/http/RealInterceptorChain;->copy$okhttp$default(Lokhttp3/internal/http/RealInterceptorChain;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iget-object p1, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Lokhttp3/Request;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :cond_1
    const-string p0, "Canceled"

    .line 133
    .line 134
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    monitor-exit p0

    .line 140
    throw p1

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string v0, "Check failed."

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_3
    const-string p1, "released"

    .line 152
    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :goto_1
    monitor-exit p0

    .line 160
    throw p1
.end method
