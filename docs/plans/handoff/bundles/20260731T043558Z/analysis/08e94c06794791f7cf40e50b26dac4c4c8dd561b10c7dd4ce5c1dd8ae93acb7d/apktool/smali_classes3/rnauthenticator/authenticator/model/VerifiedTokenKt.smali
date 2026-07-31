.class public final Lrnauthenticator/authenticator/model/VerifiedTokenKt;
.super Ljava/lang/Object;
.source "VerifiedToken.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toVerifiedToken",
        "Lrnauthenticator/authenticator/model/VerifiedToken;",
        "Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;",
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
.method public static final toVerifiedToken(Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;)Lrnauthenticator/authenticator/model/VerifiedToken;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lrnauthenticator/authenticator/model/VerifiedToken;

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;->getValidToken()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lrnauthenticator/authenticator/model/VerifiedToken;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
