.class public final Lrnauthenticator/authenticator/model/SetPasswordKt;
.super Ljava/lang/Object;
.source "SetPassword.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toSetPassword",
        "Lrnauthenticator/authenticator/model/SetPassword;",
        "Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;",
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
.method public static final toSetPassword(Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;)Lrnauthenticator/authenticator/model/SetPassword;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lrnauthenticator/authenticator/model/SetPassword;

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lrnauthenticator/authenticator/model/SetPassword;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
