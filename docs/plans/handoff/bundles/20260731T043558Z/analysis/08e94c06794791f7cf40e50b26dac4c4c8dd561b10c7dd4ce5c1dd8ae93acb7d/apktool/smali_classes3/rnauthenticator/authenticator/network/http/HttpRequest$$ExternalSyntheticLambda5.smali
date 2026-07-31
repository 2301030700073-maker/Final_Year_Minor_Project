.class public final synthetic Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lrnauthenticator/authenticator/network/http/HttpRequest;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;->f$1:Lrnauthenticator/authenticator/network/http/HttpRequest;

    iput-object p3, p0, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;->f$1:Lrnauthenticator/authenticator/network/http/HttpRequest;

    iget-object v2, p0, Lrnauthenticator/authenticator/network/http/HttpRequest$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lokhttp3/Response;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Lrnauthenticator/authenticator/network/http/HttpRequest;->$r8$lambda$XtpGIzbahU5w1CYesc_NJoMOo9U(Lkotlin/jvm/functions/Function1;Lrnauthenticator/authenticator/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;Lokhttp3/Response;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
