.class public final Lnet/openid/appauth/AuthorizationResponse;
.super Lorg/jsoup/nodes/NodeUtils;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final BUILT_IN_PARAMS:Ljava/util/Set;


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final accessTokenExpirationTime:Ljava/lang/Long;

.field public final additionalParameters:Ljava/util/Map;

.field public final authorizationCode:Ljava/lang/String;

.field public final idToken:Ljava/lang/String;

.field public final request:Lnet/openid/appauth/AuthorizationRequest;

.field public final scope:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final tokenType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v6, "id_token"

    .line 4
    .line 5
    const-string v7, "scope"

    .line 6
    .line 7
    const-string v1, "token_type"

    .line 8
    .line 9
    const-string v2, "state"

    .line 10
    .line 11
    const-string v3, "code"

    .line 12
    .line 13
    const-string v4, "access_token"

    .line 14
    .line 15
    const-string v5, "expires_in"

    .line 16
    .line 17
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lnet/openid/appauth/AuthorizationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 2

    .line 1
    const-string v0, "dataIntent must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "net.openid.appauth.AuthorizationResponse"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationResponse;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v1, "Intent contains malformed auth response"

    .line 34
    .line 35
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 12

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lnet/openid/appauth/AuthorizationResponse;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v0, "state"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v0, "token_type"

    .line 26
    .line 27
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v0, "code"

    .line 32
    .line 33
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v0, "access_token"

    .line 38
    .line 39
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v0, "expires_at"

    .line 44
    .line 45
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    const-string v0, "id_token"

    .line 50
    .line 51
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const-string v0, "scope"

    .line 56
    .line 57
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    const-string v0, "additional_parameters"

    .line 62
    .line 63
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-direct/range {v2 .. v11}, Lnet/openid/appauth/AuthorizationResponse;-><init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_0
    const-string p0, "authorization request not provided and not found in JSON"

    .line 72
    .line 73
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method


# virtual methods
.method public final createTokenExchangeRequest()Lnet/openid/appauth/TokenRequest;
    .locals 13

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "additionalExchangeParameters cannot be null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v9, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v9, :cond_4

    .line 12
    .line 13
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    .line 14
    .line 15
    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 16
    .line 17
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v2, "clientId cannot be null or empty"

    .line 23
    .line 24
    invoke-static {v4, v2}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "grantType cannot be null or empty"

    .line 33
    .line 34
    const-string v6, "authorization_code"

    .line 35
    .line 36
    invoke-static {v6, v2}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v7, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v5, "redirectUri must have a scheme"

    .line 48
    .line 49
    invoke-static {v2, v5}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v11, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v11, :cond_1

    .line 55
    .line 56
    invoke-static {v11}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    const-string v2, "authorization code must not be empty"

    .line 60
    .line 61
    invoke-static {v9, v2}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Lnet/openid/appauth/TokenRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    .line 65
    .line 66
    invoke-static {v0, v2}, Lkotlin/text/StringsKt__IndentKt;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationRequest;->nonce:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    move-object v5, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object v5, p0

    .line 81
    :goto_0
    if-eqz v7, :cond_3

    .line 82
    .line 83
    new-instance v2, Lnet/openid/appauth/TokenRequest;

    .line 84
    .line 85
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    const/4 v8, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    invoke-direct/range {v2 .. v12}, Lnet/openid/appauth/TokenRequest;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_3
    const-string p0, "no redirect URI specified on token request for code exchange"

    .line 96
    .line 97
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_4
    const-string p0, "authorizationCode not available for exchange request"

    .line 102
    .line 103
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v1
.end method

.method public final getState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    .line 7
    .line 8
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerialize()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "request"

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "state"

    .line 18
    .line 19
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "token_type"

    .line 25
    .line 26
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "code"

    .line 32
    .line 33
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "access_token"

    .line 39
    .line 40
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "expires_at"

    .line 46
    .line 47
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "id_token"

    .line 53
    .line 54
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "scope"

    .line 60
    .line 61
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    .line 67
    .line 68
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v1, "additional_parameters"

    .line 73
    .line 74
    invoke-static {v0, v1, p0}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public final toIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationResponse;->jsonSerialize()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "net.openid.appauth.AuthorizationResponse"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
