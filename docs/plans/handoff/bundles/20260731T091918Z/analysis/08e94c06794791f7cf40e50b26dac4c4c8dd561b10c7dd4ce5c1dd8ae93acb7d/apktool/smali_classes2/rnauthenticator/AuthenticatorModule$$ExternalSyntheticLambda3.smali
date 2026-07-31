.class public final synthetic Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/react/bridge/Promise;

    check-cast p1, Lrnauthenticator/authenticator/Result;

    invoke-static {v0, p1}, Lrnauthenticator/AuthenticatorModule;->$r8$lambda$UKYJForV60EY8nFhikRNW0oMDPY(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
