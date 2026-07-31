.class public final Lnet/openid/appauth/EndSessionResponse;
.super Lorg/jsoup/nodes/NodeUtils;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final request:Lnet/openid/appauth/EndSessionRequest;

.field public final state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/EndSessionRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openid/appauth/EndSessionResponse;->request:Lnet/openid/appauth/EndSessionRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/openid/appauth/EndSessionResponse;->state:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/openid/appauth/EndSessionResponse;->state:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toIntent()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lnet/openid/appauth/EndSessionResponse;->request:Lnet/openid/appauth/EndSessionRequest;

    .line 12
    .line 13
    invoke-virtual {v2}, Lnet/openid/appauth/EndSessionRequest;->jsonSerialize()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "request"

    .line 18
    .line 19
    invoke-static {v1, v3, v2}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "state"

    .line 23
    .line 24
    iget-object p0, p0, Lnet/openid/appauth/EndSessionResponse;->state:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v2, p0}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "net.openid.appauth.EndSessionResponse"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
