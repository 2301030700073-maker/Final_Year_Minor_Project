.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final authenticator:Lokhttp3/HttpUrl$Companion;

.field public final call:Lokhttp3/internal/connection/RealCall;

.field public calls:I

.field public final certificateChainCleaner:Lnet/newpipe/app/AppKt;

.field public final certificatePinner:Lokhttp3/CertificatePinner;

.field public final connectTimeoutMillis:I

.field public final connectionPool:Lokhttp3/ConnectionPool;

.field public final cookieJar:Lokhttp3/HttpUrl$Companion;

.field public final dns:Lokhttp3/HttpUrl$Companion;

.field public final exchange:Landroidx/compose/runtime/Latch;

.field public final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public final index:I

.field public final interceptors:Ljava/util/ArrayList;

.field public final proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

.field public final proxySelector:Ljava/net/ProxySelector;

.field public final readTimeoutMillis:I

.field public final request:Lokhttp3/Request;

.field public final retryOnConnectionFailure:Z

.field public final socketFactory:Ljavax/net/SocketFactory;

.field public final sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

.field public final writeTimeoutMillis:I

.field public final x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;IIILokhttp3/HttpUrl$Companion;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionPool;Lokhttp3/HttpUrl$Companion;Lokhttp3/HttpUrl$Companion;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/HttpUrl$Companion;Ljava/net/ProxySelector;ZLjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Lnet/newpipe/app/AppKt;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 35
    .line 36
    iput-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 39
    .line 40
    iput-object p4, p0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 41
    .line 42
    iput-object p5, p0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 43
    .line 44
    iput p6, p0, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 45
    .line 46
    iput p7, p0, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 47
    .line 48
    iput p8, p0, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 49
    .line 50
    iput-object p9, p0, Lokhttp3/internal/http/RealInterceptorChain;->authenticator:Lokhttp3/HttpUrl$Companion;

    .line 51
    .line 52
    iput-object p10, p0, Lokhttp3/internal/http/RealInterceptorChain;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 53
    .line 54
    iput-object p11, p0, Lokhttp3/internal/http/RealInterceptorChain;->connectionPool:Lokhttp3/ConnectionPool;

    .line 55
    .line 56
    iput-object p12, p0, Lokhttp3/internal/http/RealInterceptorChain;->cookieJar:Lokhttp3/HttpUrl$Companion;

    .line 57
    .line 58
    iput-object p13, p0, Lokhttp3/internal/http/RealInterceptorChain;->dns:Lokhttp3/HttpUrl$Companion;

    .line 59
    .line 60
    iput-object p14, p0, Lokhttp3/internal/http/RealInterceptorChain;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 61
    .line 62
    iput-object p15, p0, Lokhttp3/internal/http/RealInterceptorChain;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 63
    .line 64
    move-object/from16 p1, p16

    .line 65
    .line 66
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->proxySelector:Ljava/net/ProxySelector;

    .line 67
    .line 68
    move/from16 p1, p17

    .line 69
    .line 70
    iput-boolean p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->retryOnConnectionFailure:Z

    .line 71
    .line 72
    move-object/from16 p1, p18

    .line 73
    .line 74
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->socketFactory:Ljavax/net/SocketFactory;

    .line 75
    .line 76
    move-object/from16 p1, p19

    .line 77
    .line 78
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 79
    .line 80
    move-object/from16 p1, p20

    .line 81
    .line 82
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 83
    .line 84
    move-object/from16 p1, p21

    .line 85
    .line 86
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->certificateChainCleaner:Lnet/newpipe/app/AppKt;

    .line 87
    .line 88
    return-void
.end method

.method public static copy$okhttp$default(Lokhttp3/internal/http/RealInterceptorChain;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-int/lit8 v1, p4, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 8
    .line 9
    move v5, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move/from16 v5, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, p4, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 18
    .line 19
    move-object v6, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v6, p2

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v1, p4, 0x4

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 28
    .line 29
    move-object v7, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object/from16 v7, p3

    .line 32
    .line 33
    :goto_2
    iget v8, v0, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 34
    .line 35
    iget v9, v0, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 36
    .line 37
    iget v10, v0, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 38
    .line 39
    iget-object v11, v0, Lokhttp3/internal/http/RealInterceptorChain;->authenticator:Lokhttp3/HttpUrl$Companion;

    .line 40
    .line 41
    iget-object v12, v0, Lokhttp3/internal/http/RealInterceptorChain;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 42
    .line 43
    iget-object v13, v0, Lokhttp3/internal/http/RealInterceptorChain;->connectionPool:Lokhttp3/ConnectionPool;

    .line 44
    .line 45
    iget-object v14, v0, Lokhttp3/internal/http/RealInterceptorChain;->cookieJar:Lokhttp3/HttpUrl$Companion;

    .line 46
    .line 47
    iget-object v15, v0, Lokhttp3/internal/http/RealInterceptorChain;->dns:Lokhttp3/HttpUrl$Companion;

    .line 48
    .line 49
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 50
    .line 51
    iget-object v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 52
    .line 53
    iget-object v3, v0, Lokhttp3/internal/http/RealInterceptorChain;->proxySelector:Ljava/net/ProxySelector;

    .line 54
    .line 55
    iget-boolean v4, v0, Lokhttp3/internal/http/RealInterceptorChain;->retryOnConnectionFailure:Z

    .line 56
    .line 57
    move-object/from16 v16, v1

    .line 58
    .line 59
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->socketFactory:Ljavax/net/SocketFactory;

    .line 60
    .line 61
    move-object/from16 v20, v1

    .line 62
    .line 63
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 64
    .line 65
    move-object/from16 v21, v1

    .line 66
    .line 67
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 68
    .line 69
    move-object/from16 v22, v1

    .line 70
    .line 71
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->certificateChainCleaner:Lnet/newpipe/app/AppKt;

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-object/from16 v17, v2

    .line 104
    .line 105
    new-instance v2, Lokhttp3/internal/http/RealInterceptorChain;

    .line 106
    .line 107
    move-object/from16 v18, v3

    .line 108
    .line 109
    iget-object v3, v0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 110
    .line 111
    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/ArrayList;

    .line 112
    .line 113
    move-object/from16 v23, v1

    .line 114
    .line 115
    move/from16 v19, v4

    .line 116
    .line 117
    move-object v4, v0

    .line 118
    invoke-direct/range {v2 .. v23}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;IIILokhttp3/HttpUrl$Companion;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionPool;Lokhttp3/HttpUrl$Companion;Lokhttp3/HttpUrl$Companion;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/HttpUrl$Companion;Ljava/net/ProxySelector;ZLjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Lnet/newpipe/app/AppKt;)V

    .line 119
    .line 120
    .line 121
    return-object v2
.end method


# virtual methods
.method public final proceed(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, p0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_6

    .line 14
    .line 15
    iget v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    add-int/2addr v1, v4

    .line 19
    iput v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 20
    .line 21
    const-string v1, " must call proceed() exactly once"

    .line 22
    .line 23
    iget-object v5, p0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 24
    .line 25
    const-string v6, "network interceptor "

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-object v7, v5, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v7, Lokhttp3/internal/connection/ExchangeFinder;

    .line 32
    .line 33
    invoke-interface {v7}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-object v8, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v7, v7, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 46
    .line 47
    iget-object v7, v7, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 48
    .line 49
    iget v9, v8, Lokhttp3/HttpUrl;->port:I

    .line 50
    .line 51
    iget v10, v7, Lokhttp3/HttpUrl;->port:I

    .line 52
    .line 53
    if-ne v9, v10, :cond_1

    .line 54
    .line 55
    iget-object v8, v8, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v7, v7, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    iget v7, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 66
    .line 67
    if-ne v7, v4, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sub-int/2addr v3, v4

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0, v1, v6}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_1
    sub-int/2addr v3, v4

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string p1, " must retain the same host and port"

    .line 85
    .line 86
    invoke-static {p0, p1, v6}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :cond_2
    :goto_0
    add-int/lit8 v7, v3, 0x1

    .line 91
    .line 92
    const v8, 0x1ffffa

    .line 93
    .line 94
    .line 95
    invoke-static {p0, v7, v2, p1, v8}, Lokhttp3/internal/http/RealInterceptorChain;->copy$okhttp$default(Lokhttp3/internal/http/RealInterceptorChain;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lokhttp3/Interceptor;

    .line 104
    .line 105
    invoke-interface {p1, p0}, Lokhttp3/Interceptor;->intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ge v7, v0, :cond_4

    .line 118
    .line 119
    iget p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 120
    .line 121
    if-ne p0, v4, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-static {p1, v1, v6}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_4
    :goto_1
    return-object v3

    .line 129
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "interceptor "

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p1, " returned null"

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_6
    const-string p0, "Check failed."

    .line 155
    .line 156
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v2
.end method
