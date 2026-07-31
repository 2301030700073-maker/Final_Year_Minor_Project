.class public final Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;
.super Ljava/lang/Object;
.source "BaseModule_ProvideAuthenticationRepoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;",
        ">;"
    }
.end annotation


# instance fields
.field private final endpointProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/network/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final httpRequestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/network/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lrnauthenticator/authenticator/di/BaseModule;


# direct methods
.method public constructor <init>(Lrnauthenticator/authenticator/di/BaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/di/BaseModule;",
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/network/http/HttpRequest;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/network/Endpoint;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->module:Lrnauthenticator/authenticator/di/BaseModule;

    .line 29
    iput-object p2, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->httpRequestProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->endpointProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lrnauthenticator/authenticator/di/BaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/di/BaseModule;",
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/network/http/HttpRequest;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lrnauthenticator/authenticator/network/Endpoint;",
            ">;)",
            "Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;

    invoke-direct {v0, p0, p1, p2}, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;-><init>(Lrnauthenticator/authenticator/di/BaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAuthenticationRepo(Lrnauthenticator/authenticator/di/BaseModule;Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lrnauthenticator/authenticator/di/BaseModule;->provideAuthenticationRepo(Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->get()Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public get()Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;
    .locals 3

    .line 35
    iget-object v0, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->module:Lrnauthenticator/authenticator/di/BaseModule;

    iget-object v1, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->httpRequestProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrnauthenticator/authenticator/network/http/HttpRequest;

    iget-object v2, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->endpointProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrnauthenticator/authenticator/network/Endpoint;

    invoke-static {v0, v1, v2}, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->provideAuthenticationRepo(Lrnauthenticator/authenticator/di/BaseModule;Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    move-result-object v0

    return-object v0
.end method
