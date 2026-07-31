.class public final Lnet/openid/appauth/AuthorizationServiceDiscovery;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field public static final END_SESSION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field public static final ISSUER:Lnet/openid/appauth/JsonUtil$UriField;

.field public static final MANDATORY_METADATA:Ljava/util/List;

.field public static final REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field public static final TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;


# instance fields
.field public final docJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "issuer"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$UriField;

    .line 11
    .line 12
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move-object v4, v3

    .line 16
    const-string v3, "authorization_endpoint"

    .line 17
    .line 18
    invoke-direct {v0, v3, v4, v1}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 22
    .line 23
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    .line 24
    .line 25
    const-string v5, "token_endpoint"

    .line 26
    .line 27
    invoke-direct {v0, v5, v4, v1}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 31
    .line 32
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    .line 33
    .line 34
    const-string v5, "end_session_endpoint"

    .line 35
    .line 36
    invoke-direct {v0, v5, v4, v1}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->END_SESSION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 40
    .line 41
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    .line 42
    .line 43
    const-string v5, "registration_endpoint"

    .line 44
    .line 45
    invoke-direct {v0, v5, v4, v1}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 49
    .line 50
    const-string v0, "authorization_code"

    .line 51
    .line 52
    const-string v1, "implicit"

    .line 53
    .line 54
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    const-string v0, "client_secret_basic"

    .line 62
    .line 63
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    const-string v0, "normal"

    .line 67
    .line 68
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    const-string v4, "jwks_uri"

    .line 72
    .line 73
    const-string v5, "response_types_supported"

    .line 74
    .line 75
    const-string v6, "subject_types_supported"

    .line 76
    .line 77
    const-string v7, "id_token_signing_alg_values_supported"

    .line 78
    .line 79
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    .line 88
    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 8
    .line 9
    sget-object p1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;

    .line 45
    .line 46
    const-string p1, "Missing mandatory configuration field: "

    .line 47
    .line 48
    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;->mMissingField:Ljava/lang/String;

    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p1, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p1, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v0, p1, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Lnet/openid/appauth/JsonUtil$Field;->convert(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "unexpected JSONException"

    .line 31
    .line 32
    invoke-static {p1, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method
