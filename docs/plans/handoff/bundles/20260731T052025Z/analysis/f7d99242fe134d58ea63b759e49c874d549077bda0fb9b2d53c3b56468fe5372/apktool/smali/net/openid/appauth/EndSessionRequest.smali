.class public final Lnet/openid/appauth/EndSessionRequest;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/openid/appauth/AuthorizationManagementRequest;


# instance fields
.field public final additionalParameters:Ljava/util/LinkedHashMap;

.field public final configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public final idTokenHint:Ljava/lang/String;

.field public final postLogoutRedirectUri:Landroid/net/Uri;

.field public final state:Ljava/lang/String;

.field public final uiLocales:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    const-string v1, "ui_locales"

    .line 4
    .line 5
    const-string v2, "id_token_hint"

    .line 6
    .line 7
    const-string v3, "post_logout_redirect_uri"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/openid/appauth/EndSessionRequest;->idTokenHint:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/openid/appauth/EndSessionRequest;->postLogoutRedirectUri:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/openid/appauth/EndSessionRequest;->state:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/openid/appauth/EndSessionRequest;->uiLocales:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/openid/appauth/EndSessionRequest;->additionalParameters:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/openid/appauth/EndSessionRequest;->state:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lnet/openid/appauth/EndSessionRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore$7;->toJson()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "configuration"

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "id_token_hint"

    .line 18
    .line 19
    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->idTokenHint:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "post_logout_redirect_uri"

    .line 25
    .line 26
    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->postLogoutRedirectUri:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "state"

    .line 32
    .line 33
    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->state:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "ui_locales"

    .line 39
    .line 40
    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->uiLocales:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lnet/openid/appauth/EndSessionRequest;->additionalParameters:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v1, "additionalParameters"

    .line 52
    .line 53
    invoke-static {v0, v1, p0}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final jsonSerializeString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openid/appauth/EndSessionRequest;->jsonSerialize()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
