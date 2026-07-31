.class public final Lrnauthenticator/authenticator/di/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\tH\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lrnauthenticator/authenticator/di/BaseModule;",
        "",
        "config",
        "Lrnauthenticator/authenticator/Config;",
        "<init>",
        "(Lrnauthenticator/authenticator/Config;)V",
        "provideHttpRequest",
        "Lrnauthenticator/authenticator/network/http/HttpRequest;",
        "provideEndpoint",
        "Lrnauthenticator/authenticator/network/Endpoint;",
        "provideAuthenticationRepo",
        "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;",
        "httpRequest",
        "endpoint",
        "providePKCE",
        "Lrnauthenticator/authenticator/security/PKCE;",
        "provideAuthenticationService",
        "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
        "network",
        "pkce",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final config:Lrnauthenticator/authenticator/Config;


# direct methods
.method public constructor <init>(Lrnauthenticator/authenticator/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/authenticator/di/BaseModule;->config:Lrnauthenticator/authenticator/Config;

    return-void
.end method


# virtual methods
.method public final provideAuthenticationRepo(Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "httpRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;

    invoke-direct {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;-><init>(Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)V

    check-cast v0, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    return-object v0
.end method

.method public final provideAuthenticationService(Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;Lrnauthenticator/authenticator/security/PKCE;)Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pkce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lrnauthenticator/authenticator/service/AuthenticationService;

    iget-object v1, p0, Lrnauthenticator/authenticator/di/BaseModule;->config:Lrnauthenticator/authenticator/Config;

    invoke-direct {v0, p1, v1, p2}, Lrnauthenticator/authenticator/service/AuthenticationService;-><init>(Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;Lrnauthenticator/authenticator/Config;Lrnauthenticator/authenticator/security/PKCE;)V

    check-cast v0, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    return-object v0
.end method

.method public final provideEndpoint()Lrnauthenticator/authenticator/network/Endpoint;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 23
    new-instance v0, Lrnauthenticator/authenticator/network/Endpoint;

    iget-object v1, p0, Lrnauthenticator/authenticator/di/BaseModule;->config:Lrnauthenticator/authenticator/Config;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/Config;->getEnvironment()Lrnauthenticator/authenticator/Config$Environment;

    move-result-object v1

    iget-object v2, p0, Lrnauthenticator/authenticator/di/BaseModule;->config:Lrnauthenticator/authenticator/Config;

    invoke-virtual {v2}, Lrnauthenticator/authenticator/Config;->getTokenExchangeFlow$propertyguru_react_native_authenticator_release()Z

    move-result v2

    iget-object v3, p0, Lrnauthenticator/authenticator/di/BaseModule;->config:Lrnauthenticator/authenticator/Config;

    invoke-virtual {v3}, Lrnauthenticator/authenticator/Config;->getClientType()Lrnauthenticator/authenticator/Config$ClientType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrnauthenticator/authenticator/network/Endpoint;-><init>(Lrnauthenticator/authenticator/Config$Environment;ZLrnauthenticator/authenticator/Config$ClientType;)V

    return-object v0
.end method

.method public final provideHttpRequest()Lrnauthenticator/authenticator/network/http/HttpRequest;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 18
    new-instance v0, Lrnauthenticator/authenticator/network/http/HttpRequest;

    iget-object v1, p0, Lrnauthenticator/authenticator/di/BaseModule;->config:Lrnauthenticator/authenticator/Config;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/Config;->getClientId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lrnauthenticator/authenticator/di/BaseModule;->config:Lrnauthenticator/authenticator/Config;

    invoke-virtual {v2}, Lrnauthenticator/authenticator/Config;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/network/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providePKCE()Lrnauthenticator/authenticator/security/PKCE;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 36
    new-instance v0, Lrnauthenticator/authenticator/security/PKCE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lrnauthenticator/authenticator/security/PKCE;-><init>(Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
