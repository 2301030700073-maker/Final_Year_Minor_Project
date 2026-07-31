.class public final Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;
.super Ljava/lang/Object;
.source "BaseModule_ProvideHttpRequestFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lrnauthenticator/authenticator/network/http/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lrnauthenticator/authenticator/di/BaseModule;


# direct methods
.method public constructor <init>(Lrnauthenticator/authenticator/di/BaseModule;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;->module:Lrnauthenticator/authenticator/di/BaseModule;

    return-void
.end method

.method public static create(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;
    .locals 1

    .line 29
    new-instance v0, Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;

    invoke-direct {v0, p0}, Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;-><init>(Lrnauthenticator/authenticator/di/BaseModule;)V

    return-object v0
.end method

.method public static provideHttpRequest(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/network/http/HttpRequest;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lrnauthenticator/authenticator/di/BaseModule;->provideHttpRequest()Lrnauthenticator/authenticator/network/http/HttpRequest;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/http/HttpRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;->get()Lrnauthenticator/authenticator/network/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public get()Lrnauthenticator/authenticator/network/http/HttpRequest;
    .locals 1

    .line 25
    iget-object v0, p0, Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;->module:Lrnauthenticator/authenticator/di/BaseModule;

    invoke-static {v0}, Lrnauthenticator/authenticator/di/BaseModule_ProvideHttpRequestFactory;->provideHttpRequest(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/network/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method
