.class public final Lrnauthenticator/authenticator/network/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/network/http/HttpRequest$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequest.kt\nrnauthenticator/authenticator/network/http/HttpRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,181:1\n216#2,2:182\n*S KotlinDebug\n*F\n+ 1 HttpRequest.kt\nrnauthenticator/authenticator/network/http/HttpRequest\n*L\n95#1:182,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001:\u0001.B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006Jr\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152:\u0010\u0016\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002Jp\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\u0014\u001a\u00020\u001f2:\u0010\u0016\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002Jp\u0010 \u001a\u00020\u001e\"\u0004\u0008\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00032\u0016\u0008\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00082\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H!0%\u0012\u0004\u0012\u00020\u001e0$2\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$J\u0086\u0001\u0010\'\u001a\u00020\u001e\"\u0004\u0008\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00032\u0016\u0008\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00082\u0014\u0008\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H!0%\u0012\u0004\u0012\u00020\u001e0$2\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$J\u0086\u0001\u0010)\u001a\u00020\u001e\"\u0004\u0008\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00032\u0016\u0008\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00082\u0014\u0008\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H!0%\u0012\u0004\u0012\u00020\u001e0$2\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$JC\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H!0%\"\u0004\u0008\u0000\u0010!2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$H\u0002\u00a2\u0006\u0004\u0008,\u0010-R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006/"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/http/HttpRequest;",
        "",
        "clientId",
        "",
        "clientSecret",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "defaultHeaders",
        "",
        "getDefaultHeaders",
        "()Ljava/util/Map;",
        "defaultHeaders$delegate",
        "Lkotlin/Lazy;",
        "request",
        "Lokhttp3/Call;",
        "method",
        "Lrnauthenticator/authenticator/network/http/HttpRequest$Method;",
        "uri",
        "Landroid/net/Uri;",
        "headers",
        "body",
        "Lrnauthenticator/authenticator/network/http/HttpBody;",
        "callback",
        "Lkotlin/Function2;",
        "Lokhttp3/Response;",
        "Lkotlin/ParameterName;",
        "name",
        "response",
        "",
        "error",
        "",
        "Lokhttp3/RequestBody;",
        "get",
        "T",
        "url",
        "params",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "parseResponse",
        "post",
        "query",
        "delete",
        "convertToResult",
        "responseToResult",
        "convertToResult-0E7RQCE",
        "(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Method",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final defaultHeaders$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3fJLypA2WC4cTFsXVl1EvZize8U(Lrnauthenticator/authenticator/network/http/HttpRequest;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/http/HttpRequest;->defaultHeaders_delegate$lambda$0(Lrnauthenticator/authenticator/network/http/HttpRequest;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DC8VmXS85TvF7uwA9DXRifvr1zs(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$lambda$4(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QXsB6NH9vVCdwospI6NH5xvXql4(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$lambda$5(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RVjvz1qIqjCckLMi1efvNdASw88(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lrnauthenticator/authenticator/network/http/HttpRequest;->delete$lambda$6(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XtpGIzbahU5w1CYesc_NJoMOo9U(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lrnauthenticator/authenticator/network/http/HttpRequest;->get$lambda$2(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fhmGzEB1Sy38lvkruWN3uAvyEnQ(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$lambda$3(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/authenticator/network/http/HttpRequest;->clientId:Ljava/lang/String;

    iput-object p2, p0, Lrnauthenticator/authenticator/network/http/HttpRequest;->clientSecret:Ljava/lang/String;

    .line 16
    new-instance p1, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda0;-><init>(Lrnauthenticator/authenticator/network/http/HttpRequest;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lrnauthenticator/authenticator/network/http/HttpRequest;->defaultHeaders$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final convertToResult-0E7RQCE(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Lokhttp3/Response;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Response;",
            "+TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 163
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 167
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 170
    :cond_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 174
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 176
    :cond_3
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unknown error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private static final defaultHeaders_delegate$lambda$0(Lrnauthenticator/authenticator/network/http/HttpRequest;)Ljava/util/Map;
    .locals 3

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    const-string v1, "X-CLIENTID"

    iget-object v2, p0, Lrnauthenticator/authenticator/network/http/HttpRequest;->clientId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 20
    iget-object p0, p0, Lrnauthenticator/authenticator/network/http/HttpRequest;->clientSecret:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v1, "X-CLIENTSECRET"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 17
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic delete$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 142
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    .line 143
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_2

    .line 145
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v6, p6

    .line 140
    invoke-virtual/range {v0 .. v6}, Lrnauthenticator/authenticator/network/http/HttpRequest;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final delete$lambda$6(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 153
    invoke-direct {p1, p4, p3, p2}, Lrnauthenticator/authenticator/network/http/HttpRequest;->convertToResult-0E7RQCE(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic get$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 89
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    .line 91
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    .line 87
    invoke-virtual/range {v0 .. v5}, Lrnauthenticator/authenticator/network/http/HttpRequest;->get(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final get$lambda$2(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 100
    invoke-direct {p1, p4, p3, p2}, Lrnauthenticator/authenticator/network/http/HttpRequest;->convertToResult-0E7RQCE(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getDefaultHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpRequest;->defaultHeaders$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 106
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    .line 107
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_2

    .line 109
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v6, p6

    .line 104
    invoke-virtual/range {v0 .. v6}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final post$lambda$3(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "notificationOptions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\""

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "otpOptions"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    :goto_1
    return-object p0
.end method

.method private static final post$lambda$4(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 129
    invoke-direct {p1, p4, p3, p2}, Lrnauthenticator/authenticator/network/http/HttpRequest;->convertToResult-0E7RQCE(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final post$lambda$5(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 135
    invoke-direct {p1, p4, p3, p2}, Lrnauthenticator/authenticator/network/http/HttpRequest;->convertToResult-0E7RQCE(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final request(Lrnauthenticator/authenticator/network/http/HttpRequest$Method;Landroid/net/Uri;Ljava/util/Map;Lokhttp3/RequestBody;Lkotlin/jvm/functions/Function2;)Lokhttp3/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/http/HttpRequest$Method;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokhttp3/Response;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lokhttp3/Call;"
        }
    .end annotation

    .line 63
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-direct {p0}, Lrnauthenticator/authenticator/network/http/HttpRequest;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {v0, p3}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    .line 65
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 66
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "toString(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 67
    invoke-virtual {p2, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 71
    new-instance p2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 72
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 74
    new-instance p2, Lrnauthenticator/authenticator/network/http/HttpRequest$request$2;

    invoke-direct {p2, p5}, Lrnauthenticator/authenticator/network/http/HttpRequest$request$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lokhttp3/Callback;

    invoke-static {p1, p2}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-object p1
.end method

.method private final request(Lrnauthenticator/authenticator/network/http/HttpRequest$Method;Landroid/net/Uri;Ljava/util/Map;Lrnauthenticator/authenticator/network/http/HttpBody;Lkotlin/jvm/functions/Function2;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/http/HttpRequest$Method;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lrnauthenticator/authenticator/network/http/HttpBody;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokhttp3/Response;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lokhttp3/Call;"
        }
    .end annotation

    .line 31
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-direct {p0}, Lrnauthenticator/authenticator/network/http/HttpRequest;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {v0, p3}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 32
    invoke-interface {p4}, Lrnauthenticator/authenticator/network/http/HttpBody;->data()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-interface {p4}, Lrnauthenticator/authenticator/network/http/HttpBody;->getContentType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p4

    invoke-virtual {v1, v0, p4}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 34
    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 35
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "toString(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 36
    invoke-virtual {p2, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 37
    invoke-virtual {p1}, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 40
    new-instance p2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 41
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 43
    new-instance p2, Lrnauthenticator/authenticator/network/http/HttpRequest$request$1;

    invoke-direct {p2, p5}, Lrnauthenticator/authenticator/network/http/HttpRequest$request$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lokhttp3/Callback;

    invoke-static {p1, p2}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-object p1
.end method


# virtual methods
.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Response;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseResponse"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p3}, Lrnauthenticator/authenticator/network/http/HttpQueryHelperKt;->appendQueryParam(Landroid/net/Uri$Builder;Ljava/util/Map;)V

    .line 150
    new-instance p3, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    invoke-direct {p3, p2}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;-><init>(Ljava/util/Map;)V

    .line 152
    sget-object v1, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->DELETE:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string p1, "build(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p3

    check-cast v4, Lrnauthenticator/authenticator/network/http/HttpBody;

    new-instance v5, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda4;

    invoke-direct {v5, p4, p0, p6}, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V

    move-object v0, p0

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lrnauthenticator/authenticator/network/http/HttpRequest;->request(Lrnauthenticator/authenticator/network/http/HttpRequest$Method;Landroid/net/Uri;Ljava/util/Map;Lrnauthenticator/authenticator/network/http/HttpBody;Lkotlin/jvm/functions/Function2;)Lokhttp3/Call;

    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Response;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseResponse"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 182
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 99
    :cond_1
    sget-object v3, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->GET:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string p1, "build(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;

    invoke-direct {v7, p3, p0, p5}, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lrnauthenticator/authenticator/network/http/HttpRequest;->request(Lrnauthenticator/authenticator/network/http/HttpRequest$Method;Landroid/net/Uri;Ljava/util/Map;Lrnauthenticator/authenticator/network/http/HttpBody;Lkotlin/jvm/functions/Function2;)Lokhttp3/Call;

    return-void
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Response;",
            "+TT;>;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "url"

    move-object/from16 v7, p1

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "params"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "query"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "callback"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "parseResponse"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 113
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v1}, Lrnauthenticator/authenticator/network/http/HttpQueryHelperKt;->appendQueryParam(Landroid/net/Uri$Builder;Ljava/util/Map;)V

    .line 115
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const-string v7, "build(...)"

    if-nez v1, :cond_0

    const-string v1, "application/json"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 116
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    const-string v0, ","

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    new-instance v14, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda1;

    invoke-direct {v14}, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda1;-><init>()V

    const/16 v15, 0x1e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v8, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->POST:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    .line 125
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object v7, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v9, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 123
    new-instance v9, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2, v6, v4}, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v5

    move-object/from16 v3, p5

    move-object v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lrnauthenticator/authenticator/network/http/HttpRequest;->request(Lrnauthenticator/authenticator/network/http/HttpRequest$Method;Landroid/net/Uri;Ljava/util/Map;Lokhttp3/RequestBody;Lkotlin/jvm/functions/Function2;)Lokhttp3/Call;

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;-><init>(Ljava/util/Map;)V

    .line 134
    sget-object v8, Lrnauthenticator/authenticator/network/http/HttpRequest$Method;->POST:Lrnauthenticator/authenticator/network/http/HttpRequest$Method;

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    check-cast v7, Lrnauthenticator/authenticator/network/http/HttpBody;

    new-instance v9, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda3;

    invoke-direct {v9, v2, v6, v4}, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v5

    move-object/from16 v3, p5

    move-object v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lrnauthenticator/authenticator/network/http/HttpRequest;->request(Lrnauthenticator/authenticator/network/http/HttpRequest$Method;Landroid/net/Uri;Ljava/util/Map;Lrnauthenticator/authenticator/network/http/HttpBody;Lkotlin/jvm/functions/Function2;)Lokhttp3/Call;

    :goto_0
    return-void
.end method
