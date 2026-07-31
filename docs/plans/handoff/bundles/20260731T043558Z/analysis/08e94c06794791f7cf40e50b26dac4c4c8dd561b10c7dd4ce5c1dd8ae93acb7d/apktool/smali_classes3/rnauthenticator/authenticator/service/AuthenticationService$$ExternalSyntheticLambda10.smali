.class public final synthetic Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lrnauthenticator/authenticator/service/AuthenticationService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lrnauthenticator/authenticator/service/AuthenticationService;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;->f$0:Lrnauthenticator/authenticator/service/AuthenticationService;

    iput-object p2, p0, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;->f$0:Lrnauthenticator/authenticator/service/AuthenticationService;

    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/Result;

    invoke-static {v0, v1, v2, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->$r8$lambda$ZA8rka2FlOVL44mBUw078A31jEw(Lrnauthenticator/authenticator/service/AuthenticationService;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
