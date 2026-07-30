.class public final Lrnauthenticator/authenticator/model/ResetPasswordKt;
.super Ljava/lang/Object;
.source "ResetPassword.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toResetPassword",
        "Lrnauthenticator/authenticator/model/ResetPassword;",
        "Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;",
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
.method public static final toResetPassword(Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;)Lrnauthenticator/authenticator/model/ResetPassword;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lrnauthenticator/authenticator/model/ResetPassword;

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;->getError()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;->getStatus()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-direct {v0, v1, v3, v2}, Lrnauthenticator/authenticator/model/ResetPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
