.class public final Lretrofit2/RequestFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final baseUrl:Lokhttp3/HttpUrl;

.field public final contentType:Lokhttp3/MediaType;

.field public final hasBody:Z

.field public final headers:Lokhttp3/Headers;

.field public final httpMethod:Ljava/lang/String;

.field public final isFormEncoded:Z

.field public final isKotlinSuspendFunction:Z

.field public final isMultipart:Z

.field public final method:Ljava/lang/reflect/Method;

.field public final parameterHandlers:[Lretrofit2/Utils;

.field public final relativeUrl:Ljava/lang/String;

.field public final service:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->service:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object v0, p0, Lretrofit2/RequestFactory;->service:Ljava/lang/Class;

    .line 7
    .line 8
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    iput-object v0, p0, Lretrofit2/RequestFactory;->method:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 13
    .line 14
    iget-object v0, v0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lokhttp3/HttpUrl;

    .line 17
    .line 18
    iput-object v0, p0, Lretrofit2/RequestFactory;->baseUrl:Lokhttp3/HttpUrl;

    .line 19
    .line 20
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lretrofit2/RequestFactory;->relativeUrl:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    .line 29
    .line 30
    iput-object v0, p0, Lretrofit2/RequestFactory;->headers:Lokhttp3/Headers;

    .line 31
    .line 32
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;

    .line 33
    .line 34
    iput-object v0, p0, Lretrofit2/RequestFactory;->contentType:Lokhttp3/MediaType;

    .line 35
    .line 36
    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lretrofit2/RequestFactory;->hasBody:Z

    .line 39
    .line 40
    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lretrofit2/RequestFactory;->isFormEncoded:Z

    .line 43
    .line 44
    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lretrofit2/RequestFactory;->isMultipart:Z

    .line 47
    .line 48
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/Utils;

    .line 49
    .line 50
    iput-object v0, p0, Lretrofit2/RequestFactory;->parameterHandlers:[Lretrofit2/Utils;

    .line 51
    .line 52
    iget-boolean p1, p1, Lretrofit2/RequestFactory$Builder;->isKotlinSuspendFunction:Z

    .line 53
    .line 54
    iput-boolean p1, p0, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    .line 55
    .line 56
    return-void
.end method
