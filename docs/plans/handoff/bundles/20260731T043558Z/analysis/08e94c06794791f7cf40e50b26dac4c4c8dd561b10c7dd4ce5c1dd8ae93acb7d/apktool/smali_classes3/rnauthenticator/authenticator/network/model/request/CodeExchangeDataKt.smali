.class public final Lrnauthenticator/authenticator/network/model/request/CodeExchangeDataKt;
.super Ljava/lang/Object;
.source "CodeExchangeData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "toRequestParams",
        "",
        "",
        "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toRequestParams(Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "code"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 14
    const-string v1, "code_verifier"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;->getCodeVerifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 15
    const-string v1, "grant_type"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;->getGrantType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 16
    const-string v1, "redirect_uri"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;->getRedirectUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 12
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
