.class public final Lnet/openid/appauth/IdToken;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final BUILT_IN_CLAIMS:Ljava/util/Set;


# instance fields
.field public final additionalClaims:Ljava/util/HashMap;

.field public final audience:Ljava/util/ArrayList;

.field public final authorizedParty:Ljava/lang/String;

.field public final expiration:Ljava/lang/Long;

.field public final issuedAt:Ljava/lang/Long;

.field public final issuer:Ljava/lang/String;

.field public final nonce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "nonce"

    .line 2
    .line 3
    const-string v6, "azp"

    .line 4
    .line 5
    const-string v0, "iss"

    .line 6
    .line 7
    const-string v1, "sub"

    .line 8
    .line 9
    const-string v2, "aud"

    .line 10
    .line 11
    const-string v3, "exp"

    .line 12
    .line 13
    const-string v4, "iat"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lnet/openid/appauth/IdToken;->BUILT_IN_CLAIMS:Ljava/util/Set;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openid/appauth/IdToken;->issuer:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/openid/appauth/IdToken;->audience:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/openid/appauth/IdToken;->expiration:Ljava/lang/Long;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/openid/appauth/IdToken;->issuedAt:Ljava/lang/Long;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/openid/appauth/IdToken;->nonce:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/openid/appauth/IdToken;->authorizedParty:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/openid/appauth/IdToken;->additionalClaims:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static from(Ljava/lang/String;)Lnet/openid/appauth/IdToken;
    .locals 10

    .line 1
    const-string v0, "aud"

    .line 2
    .line 3
    const-string v1, "\\."

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget-object v1, p0, v1

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v4, Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    aget-object p0, p0, v2

    .line 33
    .line 34
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "iss"

    .line 49
    .line 50
    invoke-static {p0, v1}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v1, "sub"

    .line 55
    .line 56
    invoke-static {p0, v1}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lkotlinx/atomicfu/AtomicFU;->toStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v4, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    .line 76
    .line 77
    const-string v2, "field \"aud\" not found in json object"

    .line 78
    .line 79
    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    new-instance v1, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-object v4, v1

    .line 96
    :goto_0
    const-string v0, "exp"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-string v0, "iat"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v0, "nonce"

    .line 117
    .line 118
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const-string v0, "azp"

    .line 123
    .line 124
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    sget-object v0, Lnet/openid/appauth/IdToken;->BUILT_IN_CLAIMS:Ljava/util/Set;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->toMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v2, Lnet/openid/appauth/IdToken;

    .line 155
    .line 156
    invoke-direct/range {v2 .. v9}, Lnet/openid/appauth/IdToken;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 157
    .line 158
    .line 159
    return-object v2

    .line 160
    :cond_2
    new-instance p0, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 161
    .line 162
    const-string v0, "ID token must have both header and claims section"

    .line 163
    .line 164
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0
.end method


# virtual methods
.method public final validate(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/SystemClock;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Lnet/openid/appauth/TokenRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$UriField;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lnet/openid/appauth/IdToken;->issuer:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const-string v1, "https"

    .line 36
    .line 37
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 45
    .line 46
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 47
    .line 48
    const-string p2, "Issuer must be an https URL"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-nez p3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-nez p3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-gtz p3, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 86
    .line 87
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 88
    .line 89
    const-string p2, "Issuer URL should not containt query parameters or fragment components"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    throw p0

    .line 99
    :cond_3
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 100
    .line 101
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 102
    .line 103
    const-string p2, "Issuer host can not be empty"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    throw p0

    .line 113
    :cond_4
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 114
    .line 115
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 116
    .line 117
    const-string p2, "Issuer mismatch"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    throw p0

    .line 127
    :cond_5
    :goto_1
    iget-object p3, p1, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v0, p0, Lnet/openid/appauth/IdToken;->audience:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_7

    .line 136
    .line 137
    iget-object v0, p0, Lnet/openid/appauth/IdToken;->authorizedParty:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-eqz p3, :cond_6

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 147
    .line 148
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 149
    .line 150
    const-string p2, "Audience mismatch"

    .line 151
    .line 152
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    throw p0

    .line 160
    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide p2

    .line 167
    const-wide/16 v0, 0x3e8

    .line 168
    .line 169
    div-long/2addr p2, v0

    .line 170
    iget-object v0, p0, Lnet/openid/appauth/IdToken;->expiration:Ljava/lang/Long;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    cmp-long v0, p2, v0

    .line 177
    .line 178
    if-gtz v0, :cond_b

    .line 179
    .line 180
    iget-object v0, p0, Lnet/openid/appauth/IdToken;->issuedAt:Ljava/lang/Long;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 183
    .line 184
    .line 185
    move-result-wide v0

    .line 186
    sub-long/2addr p2, v0

    .line 187
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .line 188
    .line 189
    .line 190
    move-result-wide p2

    .line 191
    const-wide/16 v0, 0x258

    .line 192
    .line 193
    cmp-long p2, p2, v0

    .line 194
    .line 195
    if-gtz p2, :cond_a

    .line 196
    .line 197
    const-string p2, "authorization_code"

    .line 198
    .line 199
    iget-object p3, p1, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-eqz p2, :cond_9

    .line 206
    .line 207
    iget-object p1, p1, Lnet/openid/appauth/TokenRequest;->nonce:Ljava/lang/String;

    .line 208
    .line 209
    iget-object p0, p0, Lnet/openid/appauth/IdToken;->nonce:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_8

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_8
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 219
    .line 220
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 221
    .line 222
    const-string p2, "Nonce mismatch"

    .line 223
    .line 224
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    throw p0

    .line 232
    :cond_9
    :goto_3
    return-void

    .line 233
    :cond_a
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 234
    .line 235
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 236
    .line 237
    const-string p2, "Issued at time is more than 10 minutes before or after the current time"

    .line 238
    .line 239
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    throw p0

    .line 247
    :cond_b
    sget-object p0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 248
    .line 249
    new-instance p1, Lnet/openid/appauth/IdToken$IdTokenException;

    .line 250
    .line 251
    const-string p2, "ID Token expired"

    .line 252
    .line 253
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    throw p0
.end method
