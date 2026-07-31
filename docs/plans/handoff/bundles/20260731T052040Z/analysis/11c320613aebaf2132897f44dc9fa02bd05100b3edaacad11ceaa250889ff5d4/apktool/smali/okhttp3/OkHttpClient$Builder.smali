.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final authenticator:Lokhttp3/HttpUrl$Companion;

.field public final certificatePinner:Lokhttp3/CertificatePinner;

.field public final connectTimeout:I

.field public connectionPool:Lokhttp3/ConnectionPool;

.field public final connectionSpecs:Ljava/util/List;

.field public final cookieJar:Lokhttp3/HttpUrl$Companion;

.field public final dispatcher:Lokhttp3/Dispatcher;

.field public final dns:Lokhttp3/HttpUrl$Companion;

.field public final eventListenerFactory:Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;

.field public final fastFallback:Z

.field public final followRedirects:Z

.field public final followSslRedirects:Z

.field public final hostnameVerifier:Lokhttp3/internal/tls/OkHostnameVerifier;

.field public final interceptors:Ljava/util/ArrayList;

.field public final networkInterceptors:Ljava/util/ArrayList;

.field public final protocols:Ljava/util/List;

.field public final proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

.field public readTimeout:I

.field public final retryOnConnectionFailure:Z

.field public final socketFactory:Ljavax/net/SocketFactory;

.field public final writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lokhttp3/Dispatcher;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/ArrayList;

    .line 25
    .line 26
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 27
    .line 28
    new-instance v0, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->fastFallback:Z

    .line 39
    .line 40
    sget-object v1, Lokhttp3/HttpUrl$Companion;->NONE:Lokhttp3/HttpUrl$Companion;

    .line 41
    .line 42
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/HttpUrl$Companion;

    .line 43
    .line 44
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 47
    .line 48
    sget-object v0, Lokhttp3/HttpUrl$Companion;->NO_COOKIES:Lokhttp3/HttpUrl$Companion;

    .line 49
    .line 50
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/HttpUrl$Companion;

    .line 51
    .line 52
    sget-object v0, Lokhttp3/HttpUrl$Companion;->SYSTEM:Lokhttp3/HttpUrl$Companion;

    .line 53
    .line 54
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/HttpUrl$Companion;

    .line 55
    .line 56
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 57
    .line 58
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 66
    .line 67
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 68
    .line 69
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 70
    .line 71
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 72
    .line 73
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 74
    .line 75
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 76
    .line 77
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 78
    .line 79
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    .line 80
    .line 81
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 82
    .line 83
    const/16 v0, 0x2710

    .line 84
    .line 85
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 86
    .line 87
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 88
    .line 89
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 90
    .line 91
    return-void
.end method
