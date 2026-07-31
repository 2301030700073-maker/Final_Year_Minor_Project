.class public final Lrnauthenticator/authenticator/di/DaggerBaseComponent;
.super Ljava/lang/Object;
.source "DaggerBaseComponent.java"

# interfaces
.implements Lrnauthenticator/authenticator/di/BaseComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;
    }
.end annotation


# instance fields
.field private final baseModule:Lrnauthenticator/authenticator/di/BaseModule;


# direct methods
.method private constructor <init>(Lrnauthenticator/authenticator/di/BaseModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    return-void
.end method

.method synthetic constructor <init>(Lrnauthenticator/authenticator/di/BaseModule;Lrnauthenticator/authenticator/di/DaggerBaseComponent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lrnauthenticator/authenticator/di/DaggerBaseComponent;-><init>(Lrnauthenticator/authenticator/di/BaseModule;)V

    return-void
.end method

.method public static builder()Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;
    .locals 2

    .line 26
    new-instance v0, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;-><init>(Lrnauthenticator/authenticator/di/DaggerBaseComponent-IA;)V

    return-object v0
.end method

.method private getAuthenticationNetworkInterface()Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;
    .locals 3

    .line 30
    iget-object v0, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    invoke-static {v0}, Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;->provideHttpRequest(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/network/http/HttpRequest;

    move-result-object v1

    iget-object v2, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    invoke-static {v2}, Lrnauthenticator/authenticator/di/BaseModule_ProvideEndpointFactory;->provideEndpoint(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/network/Endpoint;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationRepoFactory;->provideAuthenticationRepo(Lrnauthenticator/authenticator/di/BaseModule;Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method private getAuthenticationServiceInterface()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;
    .locals 3

    .line 33
    iget-object v0, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    invoke-direct {p0}, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->getAuthenticationNetworkInterface()Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    move-result-object v1

    iget-object v2, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    invoke-static {v2}, Lrnauthenticator/authenticator/di/BaseModule_ProvidePKCEFactory;->providePKCE(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/security/PKCE;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrnauthenticator/authenticator/di/BaseModule_ProvideAuthenticationServiceFactory;->provideAuthenticationService(Lrnauthenticator/authenticator/di/BaseModule;Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;Lrnauthenticator/authenticator/security/PKCE;)Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    return-object v0
.end method

.method private injectAuthenticator(Lrnauthenticator/authenticator/Authenticator;)Lrnauthenticator/authenticator/Authenticator;
    .locals 1

    .line 40
    invoke-direct {p0}, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->getAuthenticationServiceInterface()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-static {p1, v0}, Lrnauthenticator/authenticator/Authenticator_MembersInjector;->injectService(Lrnauthenticator/authenticator/Authenticator;Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lrnauthenticator/authenticator/Authenticator;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->injectAuthenticator(Lrnauthenticator/authenticator/Authenticator;)Lrnauthenticator/authenticator/Authenticator;

    return-void
.end method
