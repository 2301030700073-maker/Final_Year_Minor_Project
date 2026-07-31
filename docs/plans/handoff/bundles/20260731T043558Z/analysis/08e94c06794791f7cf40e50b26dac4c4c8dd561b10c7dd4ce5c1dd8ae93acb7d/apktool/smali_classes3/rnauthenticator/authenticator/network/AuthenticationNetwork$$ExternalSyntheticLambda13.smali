.class public final synthetic Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lokhttp3/Response;

    invoke-static {p1}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->$r8$lambda$bXKfExg4Wm-xf1cDENiF7bW9H7w(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/AuthResponse;

    move-result-object p1

    return-object p1
.end method
