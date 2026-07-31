.class public final Lrnauthenticator/authenticator/model/VerifiedEmailKt;
.super Ljava/lang/Object;
.source "VerifiedEmail.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toVerifiedEmail",
        "Lrnauthenticator/authenticator/model/VerifiedEmail;",
        "Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;",
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
.method public static final toVerifiedEmail(Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;)Lrnauthenticator/authenticator/model/VerifiedEmail;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lrnauthenticator/authenticator/model/VerifiedEmail;

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;->getOkCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;->getOkMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lrnauthenticator/authenticator/model/VerifiedEmail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
