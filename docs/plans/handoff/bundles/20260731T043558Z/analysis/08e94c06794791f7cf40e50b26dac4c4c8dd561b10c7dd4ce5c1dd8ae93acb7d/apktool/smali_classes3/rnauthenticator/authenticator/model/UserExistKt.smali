.class public final Lrnauthenticator/authenticator/model/UserExistKt;
.super Ljava/lang/Object;
.source "UserExist.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toUserExist",
        "Lrnauthenticator/authenticator/model/UserExist;",
        "Lrnauthenticator/authenticator/network/model/response/UserExistResponse;",
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
.method public static final toUserExist(Lrnauthenticator/authenticator/network/model/response/UserExistResponse;)Lrnauthenticator/authenticator/model/UserExist;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lrnauthenticator/authenticator/model/UserExist;

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/UserExistResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/response/UserExistResponse;->isEmailVerified()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lrnauthenticator/authenticator/model/UserExist;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
