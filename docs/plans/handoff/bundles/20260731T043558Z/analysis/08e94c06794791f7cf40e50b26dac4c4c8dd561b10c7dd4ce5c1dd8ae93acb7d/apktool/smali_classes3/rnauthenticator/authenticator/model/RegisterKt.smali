.class public final Lrnauthenticator/authenticator/model/RegisterKt;
.super Ljava/lang/Object;
.source "Register.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toRegister",
        "Lrnauthenticator/authenticator/model/Register;",
        "Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;",
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
.method public static final toRegister(Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;)Lrnauthenticator/authenticator/model/Register;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lrnauthenticator/authenticator/model/Register;

    .line 13
    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;->getBody()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Lrnauthenticator/authenticator/model/Register;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
