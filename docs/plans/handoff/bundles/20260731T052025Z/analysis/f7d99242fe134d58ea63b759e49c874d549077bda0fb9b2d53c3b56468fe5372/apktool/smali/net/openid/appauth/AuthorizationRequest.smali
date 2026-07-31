.class public final Lnet/openid/appauth/AuthorizationRequest;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/openid/appauth/AuthorizationManagementRequest;


# instance fields
.field public final additionalParameters:Ljava/util/Map;

.field public final claims:Lorg/json/JSONObject;

.field public final claimsLocales:Ljava/lang/String;

.field public final clientId:Ljava/lang/String;

.field public final codeVerifier:Ljava/lang/String;

.field public final codeVerifierChallenge:Ljava/lang/String;

.field public final codeVerifierChallengeMethod:Ljava/lang/String;

.field public final configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public final display:Ljava/lang/String;

.field public final loginHint:Ljava/lang/String;

.field public final nonce:Ljava/lang/String;

.field public final prompt:Ljava/lang/String;

.field public final redirectUri:Landroid/net/Uri;

.field public final responseMode:Ljava/lang/String;

.field public final responseType:Ljava/lang/String;

.field public final scope:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final uiLocales:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v12, "claims"

    .line 2
    .line 3
    const-string v13, "claims_locales"

    .line 4
    .line 5
    const-string v0, "client_id"

    .line 6
    .line 7
    const-string v1, "code_challenge"

    .line 8
    .line 9
    const-string v2, "code_challenge_method"

    .line 10
    .line 11
    const-string v3, "display"

    .line 12
    .line 13
    const-string v4, "login_hint"

    .line 14
    .line 15
    const-string v5, "prompt"

    .line 16
    .line 17
    const-string v6, "ui_locales"

    .line 18
    .line 19
    const-string v7, "redirect_uri"

    .line 20
    .line 21
    const-string v8, "response_mode"

    .line 22
    .line 23
    const-string v9, "response_type"

    .line 24
    .line 25
    const-string v10, "scope"

    .line 26
    .line 27
    const-string v11, "state"

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 11
    .line 12
    move-object/from16 p1, p18

    .line 13
    .line 14
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 15
    .line 16
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p6, p0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p7, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p8, p0, Lnet/openid/appauth/AuthorizationRequest;->uiLocales:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p9, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p10, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p11, p0, Lnet/openid/appauth/AuthorizationRequest;->nonce:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p12, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p13, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p14, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p15, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    .line 37
    .line 38
    move-object/from16 p1, p16

    .line 39
    .line 40
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest;->claims:Lorg/json/JSONObject;

    .line 41
    .line 42
    move-object/from16 p1, p17

    .line 43
    .line 44
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest;->claimsLocales:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "json cannot be null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lnet/openid/appauth/AuthorizationRequest;

    .line 9
    .line 10
    const-string v1, "configuration"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/fsck/k9/mailstore/LocalStore$7;->fromJson(Lorg/json/JSONObject;)Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v1, "clientId"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v1, "responseType"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v1, "redirectUri"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v1, "display"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const-string v1, "login_hint"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-string v1, "prompt"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v1, "ui_locales"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const-string v1, "scope"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    const-string v1, "state"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    const-string v1, "nonce"

    .line 75
    .line 76
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    const-string v1, "codeVerifier"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    const-string v1, "codeVerifierChallenge"

    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    const-string v1, "codeVerifierChallengeMethod"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v16

    .line 98
    const-string v1, "responseMode"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v17

    .line 104
    const-string v1, "claims"

    .line 105
    .line 106
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getJsonObjectIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    move-result-object v18

    .line 110
    const-string v1, "claimsLocales"

    .line 111
    .line 112
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v19

    .line 116
    const-string v1, "additionalParameters"

    .line 117
    .line 118
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    .line 121
    move-result-object v20

    .line 122
    invoke-direct/range {v2 .. v20}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    return-object v2
.end method


# virtual methods
.method public final getState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

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
    const-string v1, "clientId"

    .line 18
    .line 19
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "responseType"

    .line 25
    .line 26
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "redirectUri"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "display"

    .line 43
    .line 44
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "login_hint"

    .line 50
    .line 51
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "scope"

    .line 57
    .line 58
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "prompt"

    .line 64
    .line 65
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "ui_locales"

    .line 71
    .line 72
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->uiLocales:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "state"

    .line 78
    .line 79
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "nonce"

    .line 85
    .line 86
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->nonce:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "codeVerifier"

    .line 92
    .line 93
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v1, "codeVerifierChallenge"

    .line 99
    .line 100
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "codeVerifierChallengeMethod"

    .line 106
    .line 107
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "responseMode"

    .line 113
    .line 114
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v1, "claims"

    .line 120
    .line 121
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->claims:Lorg/json/JSONObject;

    .line 122
    .line 123
    if-nez v2, :cond_0

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    :goto_0
    const-string v1, "claimsLocales"

    .line 130
    .line 131
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->claimsLocales:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v0, v1, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 137
    .line 138
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string v1, "additionalParameters"

    .line 143
    .line 144
    invoke-static {v0, v1, p0}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :catch_0
    move-exception p0

    .line 149
    const-string v0, "JSONException thrown in violation of contract"

    .line 150
    .line 151
    invoke-static {v0, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    const/4 p0, 0x0

    .line 155
    return-object p0
.end method

.method public final jsonSerializeString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerialize()Lorg/json/JSONObject;

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
