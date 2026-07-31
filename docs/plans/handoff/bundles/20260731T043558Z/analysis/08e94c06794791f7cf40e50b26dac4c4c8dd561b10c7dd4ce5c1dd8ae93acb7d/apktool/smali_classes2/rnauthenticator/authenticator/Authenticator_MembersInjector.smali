.class public final Lrnauthenticator/authenticator/Authenticator_MembersInjector;
.super Ljava/lang/Object;
.source "Authenticator_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lrnauthenticator/authenticator/Authenticator;",
        ">;"
    }
.end annotation


# instance fields
.field private final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lrnauthenticator/authenticator/Authenticator_MembersInjector;->serviceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lrnauthenticator/authenticator/Authenticator;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lrnauthenticator/authenticator/Authenticator_MembersInjector;

    invoke-direct {v0, p0}, Lrnauthenticator/authenticator/Authenticator_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectService(Lrnauthenticator/authenticator/Authenticator;Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lrnauthenticator/authenticator/Authenticator;->service:Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lrnauthenticator/authenticator/Authenticator;

    invoke-virtual {p0, p1}, Lrnauthenticator/authenticator/Authenticator_MembersInjector;->injectMembers(Lrnauthenticator/authenticator/Authenticator;)V

    return-void
.end method

.method public injectMembers(Lrnauthenticator/authenticator/Authenticator;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lrnauthenticator/authenticator/Authenticator_MembersInjector;->serviceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    invoke-static {p1, v0}, Lrnauthenticator/authenticator/Authenticator_MembersInjector;->injectService(Lrnauthenticator/authenticator/Authenticator;Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;)V

    return-void
.end method
