.class public final Lnet/openid/appauth/AuthState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

.field public mConfig:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

.field public mLastRegistrationResponse:Lnet/openid/appauth/RegistrationResponse;

.field public mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

.field public mNeedsTokenRefreshOverride:Z

.field public mPendingActions:Ljava/util/ArrayList;

.field public final mPendingActionsSyncObject:Ljava/lang/Object;

.field public mRefreshToken:Ljava/lang/String;

.field public mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/AuthState;->mPendingActionsSyncObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/TokenResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/openid/appauth/AuthState;->mPendingActionsSyncObject:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lnet/openid/appauth/AuthState;->mPendingActions:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2, v0}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthState;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "jsonStr cannot be null or empty"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lnet/openid/appauth/AuthState;

    .line 14
    .line 15
    invoke-direct {v0}, Lnet/openid/appauth/AuthState;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "refreshToken"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, v0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, "scope"

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, v0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    .line 33
    .line 34
    const-string v4, "config"

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Lcom/fsck/k9/mailstore/LocalStore$7;->fromJson(Lorg/json/JSONObject;)Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iput-object v4, v0, Lnet/openid/appauth/AuthState;->mConfig:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 51
    .line 52
    :cond_0
    const-string v4, "mAuthorizationException"

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Lnet/openid/appauth/AuthorizationException;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iput-object v4, v0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 69
    .line 70
    :cond_1
    const-string v4, "lastAuthorizationResponse"

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Lnet/openid/appauth/AuthorizationResponse;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iput-object v4, v0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 87
    .line 88
    :cond_2
    const-string v4, "mLastTokenResponse"

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/4 v6, 0x0

    .line 95
    const-string v7, "configuration"

    .line 96
    .line 97
    const-string v8, "request"

    .line 98
    .line 99
    const-string v9, "additionalParameters"

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    sget-object v5, Lnet/openid/appauth/TokenResponse;->BUILT_IN_PARAMS:Ljava/util/HashSet;

    .line 108
    .line 109
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_3

    .line 114
    .line 115
    new-instance v10, Lnet/openid/appauth/TokenResponse;

    .line 116
    .line 117
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    sget-object v11, Lnet/openid/appauth/TokenRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    .line 122
    .line 123
    const-string v11, "json object cannot be null"

    .line 124
    .line 125
    invoke-static {v5, v11}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v11, Lnet/openid/appauth/TokenRequest;

    .line 129
    .line 130
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-static {v12}, Lcom/fsck/k9/mailstore/LocalStore$7;->fromJson(Lorg/json/JSONObject;)Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    const-string v12, "clientId"

    .line 139
    .line 140
    invoke-static {v5, v12}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    const-string v12, "nonce"

    .line 145
    .line 146
    invoke-static {v5, v12}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    const-string v12, "grantType"

    .line 151
    .line 152
    invoke-static {v5, v12}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v16

    .line 156
    const-string v12, "redirectUri"

    .line 157
    .line 158
    invoke-static {v5, v12}, Lkotlinx/atomicfu/AtomicFU;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v17

    .line 162
    invoke-static {v5, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v18

    .line 166
    const-string v12, "authorizationCode"

    .line 167
    .line 168
    invoke-static {v5, v12}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v19

    .line 172
    invoke-static {v5, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v20

    .line 176
    const-string v2, "codeVerifier"

    .line 177
    .line 178
    invoke-static {v5, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v21

    .line 182
    invoke-static {v5, v9}, Lkotlinx/atomicfu/AtomicFU;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 183
    .line 184
    .line 185
    move-result-object v22

    .line 186
    move-object v12, v11

    .line 187
    invoke-direct/range {v12 .. v22}, Lnet/openid/appauth/TokenRequest;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    .line 189
    .line 190
    const-string v2, "token_type"

    .line 191
    .line 192
    invoke-static {v4, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    const-string v2, "access_token"

    .line 197
    .line 198
    invoke-static {v4, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    const-string v2, "expires_at"

    .line 203
    .line 204
    invoke-static {v4, v2}, Lkotlinx/atomicfu/AtomicFU;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    const-string v2, "id_token"

    .line 209
    .line 210
    invoke-static {v4, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    const-string v2, "refresh_token"

    .line 215
    .line 216
    invoke-static {v4, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v16

    .line 220
    invoke-static {v4, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v17

    .line 224
    invoke-static {v4, v9}, Lkotlinx/atomicfu/AtomicFU;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 225
    .line 226
    .line 227
    move-result-object v18

    .line 228
    invoke-direct/range {v10 .. v18}, Lnet/openid/appauth/TokenResponse;-><init>(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    .line 230
    .line 231
    iput-object v10, v0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_3
    const-string v0, "token request not provided and not found in JSON"

    .line 235
    .line 236
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-object v6

    .line 240
    :cond_4
    :goto_0
    const-string v2, "lastRegistrationResponse"

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_8

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    sget v2, Lnet/openid/appauth/RegistrationResponse;->$r8$clinit:I

    .line 253
    .line 254
    const-string v2, "json cannot be null"

    .line 255
    .line 256
    invoke-static {v1, v2}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_7

    .line 264
    .line 265
    new-instance v10, Lnet/openid/appauth/RegistrationResponse;

    .line 266
    .line 267
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    sget v3, Lnet/openid/appauth/RegistrationRequest;->$r8$clinit:I

    .line 272
    .line 273
    const-string v3, "json must not be null"

    .line 274
    .line 275
    invoke-static {v2, v3}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance v11, Lnet/openid/appauth/RegistrationRequest;

    .line 279
    .line 280
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-static {v3}, Lcom/fsck/k9/mailstore/LocalStore$7;->fromJson(Lorg/json/JSONObject;)Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    const-string v3, "redirect_uris"

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_6

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    new-instance v13, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .line 304
    .line 305
    if-eqz v3, :cond_5

    .line 306
    .line 307
    const/4 v4, 0x0

    .line 308
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-ge v4, v5, :cond_5

    .line 313
    .line 314
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_5
    const-string v3, "response_types"

    .line 336
    .line 337
    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringListIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 338
    .line 339
    .line 340
    move-result-object v14

    .line 341
    const-string v3, "grant_types"

    .line 342
    .line 343
    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringListIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 344
    .line 345
    .line 346
    move-result-object v15

    .line 347
    const-string v3, "subject_type"

    .line 348
    .line 349
    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v16

    .line 353
    const-string v3, "jwks_uri"

    .line 354
    .line 355
    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 356
    .line 357
    .line 358
    move-result-object v17

    .line 359
    const-string v3, "jwks"

    .line 360
    .line 361
    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->getJsonObjectIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 362
    .line 363
    .line 364
    move-result-object v18

    .line 365
    const-string v3, "token_endpoint_auth_method"

    .line 366
    .line 367
    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v19

    .line 371
    invoke-static {v2, v9}, Lkotlinx/atomicfu/AtomicFU;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 372
    .line 373
    .line 374
    move-result-object v20

    .line 375
    invoke-direct/range {v11 .. v20}, Lnet/openid/appauth/RegistrationRequest;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 376
    .line 377
    .line 378
    const-string v2, "client_id"

    .line 379
    .line 380
    invoke-static {v1, v2}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v12

    .line 384
    const-string v2, "client_id_issued_at"

    .line 385
    .line 386
    invoke-static {v1, v2}, Lkotlinx/atomicfu/AtomicFU;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 387
    .line 388
    .line 389
    move-result-object v13

    .line 390
    const-string v2, "client_secret"

    .line 391
    .line 392
    invoke-static {v1, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    const-string v2, "client_secret_expires_at"

    .line 397
    .line 398
    invoke-static {v1, v2}, Lkotlinx/atomicfu/AtomicFU;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    const-string v2, "registration_access_token"

    .line 403
    .line 404
    invoke-static {v1, v2}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v16

    .line 408
    const-string v2, "registration_client_uri"

    .line 409
    .line 410
    invoke-static {v1, v2}, Lkotlinx/atomicfu/AtomicFU;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 411
    .line 412
    .line 413
    move-result-object v17

    .line 414
    invoke-static {v1, v3}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v18

    .line 418
    invoke-static {v1, v9}, Lkotlinx/atomicfu/AtomicFU;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 419
    .line 420
    .line 421
    move-result-object v19

    .line 422
    invoke-direct/range {v10 .. v19}, Lnet/openid/appauth/RegistrationResponse;-><init>(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 423
    .line 424
    .line 425
    iput-object v10, v0, Lnet/openid/appauth/AuthState;->mLastRegistrationResponse:Lnet/openid/appauth/RegistrationResponse;

    .line 426
    .line 427
    return-object v0

    .line 428
    :cond_6
    new-instance v0, Lorg/json/JSONException;

    .line 429
    .line 430
    const-string v1, "field \"redirect_uris\" not found in json object"

    .line 431
    .line 432
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :cond_7
    const-string v0, "registration request not found in JSON"

    .line 437
    .line 438
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    return-object v6

    .line 442
    :cond_8
    return-object v0
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object p0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    return-object v1
.end method

.method public final getIdToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object p0, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    return-object v1
.end method

.method public final jsonSerializeString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "refreshToken"

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "scope"

    .line 16
    .line 17
    invoke-static {v0, v3, v1}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mConfig:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v4, "config"

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore$7;->toJson()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v4, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v4, "mAuthorizationException"

    .line 38
    .line 39
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationException;->toJson()Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v4, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v4, "lastAuthorizationResponse"

    .line 51
    .line 52
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationResponse;->jsonSerialize()Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v4, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 60
    .line 61
    const-string v4, "additionalParameters"

    .line 62
    .line 63
    const-string v5, "configuration"

    .line 64
    .line 65
    const-string v6, "request"

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    new-instance v7, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v8, v1, Lnet/openid/appauth/TokenResponse;->request:Lnet/openid/appauth/TokenRequest;

    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v9, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v10, v8, Lnet/openid/appauth/TokenRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 85
    .line 86
    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalStore$7;->toJson()Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-static {v9, v5, v10}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 91
    .line 92
    .line 93
    const-string v10, "clientId"

    .line 94
    .line 95
    iget-object v11, v8, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v9, v10, v11}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v10, "nonce"

    .line 101
    .line 102
    iget-object v11, v8, Lnet/openid/appauth/TokenRequest;->nonce:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v9, v10, v11}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v10, "grantType"

    .line 108
    .line 109
    iget-object v11, v8, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v9, v10, v11}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v10, "redirectUri"

    .line 115
    .line 116
    iget-object v11, v8, Lnet/openid/appauth/TokenRequest;->redirectUri:Landroid/net/Uri;

    .line 117
    .line 118
    invoke-static {v9, v10, v11}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .line 120
    .line 121
    iget-object v10, v8, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v9, v3, v10}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v10, "authorizationCode"

    .line 127
    .line 128
    iget-object v11, v8, Lnet/openid/appauth/TokenRequest;->authorizationCode:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v9, v10, v11}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v10, v8, Lnet/openid/appauth/TokenRequest;->refreshToken:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v9, v2, v10}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v2, "codeVerifier"

    .line 139
    .line 140
    iget-object v10, v8, Lnet/openid/appauth/TokenRequest;->codeVerifier:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v9, v2, v10}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v8, Lnet/openid/appauth/TokenRequest;->additionalParameters:Ljava/util/Map;

    .line 146
    .line 147
    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v9, v4, v2}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v7, v6, v9}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 155
    .line 156
    .line 157
    const-string v2, "token_type"

    .line 158
    .line 159
    iget-object v8, v1, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v7, v2, v8}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v2, "access_token"

    .line 165
    .line 166
    iget-object v8, v1, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v7, v2, v8}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v2, "expires_at"

    .line 172
    .line 173
    iget-object v8, v1, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 174
    .line 175
    invoke-static {v7, v2, v8}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    .line 177
    .line 178
    const-string v2, "id_token"

    .line 179
    .line 180
    iget-object v8, v1, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v7, v2, v8}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v2, "refresh_token"

    .line 186
    .line 187
    iget-object v8, v1, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v7, v2, v8}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v1, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v7, v3, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v1, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    .line 198
    .line 199
    invoke-static {v1}, Lkotlinx/atomicfu/AtomicFU;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v7, v4, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 204
    .line 205
    .line 206
    const-string v1, "mLastTokenResponse"

    .line 207
    .line 208
    invoke-static {v0, v1, v7}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 209
    .line 210
    .line 211
    :cond_3
    iget-object p0, p0, Lnet/openid/appauth/AuthState;->mLastRegistrationResponse:Lnet/openid/appauth/RegistrationResponse;

    .line 212
    .line 213
    if-eqz p0, :cond_7

    .line 214
    .line 215
    new-instance v1, Lorg/json/JSONObject;

    .line 216
    .line 217
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->request:Lnet/openid/appauth/RegistrationRequest;

    .line 221
    .line 222
    new-instance v3, Lorg/json/JSONObject;

    .line 223
    .line 224
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v7, v2, Lnet/openid/appauth/RegistrationRequest;->redirectUris:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-static {v7}, Lkotlinx/atomicfu/AtomicFU;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    const-string v8, "redirect_uris"

    .line 234
    .line 235
    invoke-static {v3, v8, v7}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 236
    .line 237
    .line 238
    const-string v7, "application_type"

    .line 239
    .line 240
    const-string v8, "native"

    .line 241
    .line 242
    invoke-static {v3, v7, v8}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v7, v2, Lnet/openid/appauth/RegistrationRequest;->responseTypes:Ljava/util/List;

    .line 246
    .line 247
    if-eqz v7, :cond_4

    .line 248
    .line 249
    const-string v8, "response_types"

    .line 250
    .line 251
    invoke-static {v7}, Lkotlinx/atomicfu/AtomicFU;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-static {v3, v8, v7}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 256
    .line 257
    .line 258
    :cond_4
    iget-object v7, v2, Lnet/openid/appauth/RegistrationRequest;->grantTypes:Ljava/util/List;

    .line 259
    .line 260
    if-eqz v7, :cond_5

    .line 261
    .line 262
    const-string v8, "grant_types"

    .line 263
    .line 264
    invoke-static {v7}, Lkotlinx/atomicfu/AtomicFU;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-static {v3, v8, v7}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 269
    .line 270
    .line 271
    :cond_5
    const-string v7, "subject_type"

    .line 272
    .line 273
    iget-object v8, v2, Lnet/openid/appauth/RegistrationRequest;->subjectType:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v3, v7, v8}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v7, "jwks_uri"

    .line 279
    .line 280
    iget-object v8, v2, Lnet/openid/appauth/RegistrationRequest;->jwksUri:Landroid/net/Uri;

    .line 281
    .line 282
    invoke-static {v3, v7, v8}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    .line 284
    .line 285
    const-string v7, "jwks"

    .line 286
    .line 287
    iget-object v8, v2, Lnet/openid/appauth/RegistrationRequest;->jwks:Lorg/json/JSONObject;

    .line 288
    .line 289
    if-nez v8, :cond_6

    .line 290
    .line 291
    goto :goto_0

    .line 292
    :cond_6
    :try_start_0
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .line 294
    .line 295
    :goto_0
    iget-object v7, v2, Lnet/openid/appauth/RegistrationRequest;->tokenEndpointAuthenticationMethod:Ljava/lang/String;

    .line 296
    .line 297
    const-string v8, "token_endpoint_auth_method"

    .line 298
    .line 299
    invoke-static {v3, v8, v7}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v7, v2, Lnet/openid/appauth/RegistrationRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 303
    .line 304
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalStore$7;->toJson()Lorg/json/JSONObject;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    invoke-static {v3, v5, v7}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v2, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/LinkedHashMap;

    .line 312
    .line 313
    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-static {v3, v4, v2}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v6, v3}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 321
    .line 322
    .line 323
    const-string v2, "client_id"

    .line 324
    .line 325
    iget-object v3, p0, Lnet/openid/appauth/RegistrationResponse;->clientId:Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v1, v2, v3}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v2, "client_id_issued_at"

    .line 331
    .line 332
    iget-object v3, p0, Lnet/openid/appauth/RegistrationResponse;->clientIdIssuedAt:Ljava/lang/Long;

    .line 333
    .line 334
    invoke-static {v1, v2, v3}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    .line 336
    .line 337
    const-string v2, "client_secret"

    .line 338
    .line 339
    iget-object v3, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecret:Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {v1, v2, v3}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v2, "client_secret_expires_at"

    .line 345
    .line 346
    iget-object v3, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    .line 347
    .line 348
    invoke-static {v1, v2, v3}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    .line 350
    .line 351
    const-string v2, "registration_access_token"

    .line 352
    .line 353
    iget-object v3, p0, Lnet/openid/appauth/RegistrationResponse;->registrationAccessToken:Ljava/lang/String;

    .line 354
    .line 355
    invoke-static {v1, v2, v3}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v2, "registration_client_uri"

    .line 359
    .line 360
    iget-object v3, p0, Lnet/openid/appauth/RegistrationResponse;->registrationClientUri:Landroid/net/Uri;

    .line 361
    .line 362
    invoke-static {v1, v2, v3}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    .line 364
    .line 365
    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->tokenEndpointAuthMethod:Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v1, v8, v2}, Lkotlinx/atomicfu/AtomicFU;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-object p0, p0, Lnet/openid/appauth/RegistrationResponse;->additionalParameters:Ljava/util/LinkedHashMap;

    .line 371
    .line 372
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    invoke-static {v1, v4, p0}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 377
    .line 378
    .line 379
    const-string p0, "lastRegistrationResponse"

    .line 380
    .line 381
    invoke-static {v0, p0, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 382
    .line 383
    .line 384
    goto :goto_1

    .line 385
    :catch_0
    move-exception p0

    .line 386
    const-string v0, "JSONException thrown in violation of contract"

    .line 387
    .line 388
    invoke-static {v0, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    .line 390
    .line 391
    const/4 p0, 0x0

    .line 392
    return-object p0

    .line 393
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0
.end method

.method public final performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;)V
    .locals 13

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "service cannot be null"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "additional params cannot be null"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lnet/openid/appauth/AuthState;->mNeedsTokenRefreshOverride:Z

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    :cond_1
    move-object v3, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v3, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    iget-object v4, v3, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    iget-object v3, v3, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget-object v3, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-object v4, v3, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    iget-object v3, v3, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 46
    .line 47
    :goto_0
    if-nez v3, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_e

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    if-eqz v1, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    iget-object v3, v1, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    iget-object v2, v1, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    iget-object v3, v1, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    iget-object v2, v1, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 79
    .line 80
    :cond_7
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    const-wide/32 v5, 0xea60

    .line 89
    .line 90
    .line 91
    add-long/2addr v3, v5

    .line 92
    cmp-long v1, v1, v3

    .line 93
    .line 94
    if-gtz v1, :cond_e

    .line 95
    .line 96
    :goto_2
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v1, :cond_8

    .line 99
    .line 100
    sget-object p0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 101
    .line 102
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v0, "No refresh token available and token have expired"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    iget-object p1, p2, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 114
    .line 115
    iget-object v0, p2, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 116
    .line 117
    iget-object p2, p2, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 118
    .line 119
    iput-object v8, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_8
    iget-object v1, p0, Lnet/openid/appauth/AuthState;->mPendingActionsSyncObject:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mPendingActions:Ljava/util/ArrayList;

    .line 131
    .line 132
    if-eqz v2, :cond_9

    .line 133
    .line 134
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object p0, v0

    .line 141
    goto :goto_3

    .line 142
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lnet/openid/appauth/AuthState;->mPendingActions:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object p2, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz p2, :cond_d

    .line 156
    .line 157
    iget-object p2, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    .line 158
    .line 159
    if-eqz p2, :cond_c

    .line 160
    .line 161
    iget-object p2, p2, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    .line 162
    .line 163
    iget-object v3, p2, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 164
    .line 165
    iget-object v4, p2, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    const-string p2, "clientId cannot be null or empty"

    .line 171
    .line 172
    invoke-static {v4, p2}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 176
    .line 177
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v6, "refresh_token"

    .line 181
    .line 182
    const-string p2, "grantType cannot be null or empty"

    .line 183
    .line 184
    invoke-static {v6, p2}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_b

    .line 192
    .line 193
    iget-object v10, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v10, :cond_a

    .line 196
    .line 197
    const-string p2, "refresh token cannot be empty if defined"

    .line 198
    .line 199
    invoke-static {v10, p2}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_a
    sget-object p2, Lnet/openid/appauth/TokenRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    .line 203
    .line 204
    invoke-static {v0, p2}, Lkotlin/text/StringsKt__IndentKt;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    const-string v0, "refresh token must be specified for grant_type = refresh_token"

    .line 209
    .line 210
    invoke-static {v10, v0}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v2, Lnet/openid/appauth/TokenRequest;

    .line 214
    .line 215
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    const/4 v5, 0x0

    .line 220
    const/4 v7, 0x0

    .line 221
    const/4 v9, 0x0

    .line 222
    const/4 v11, 0x0

    .line 223
    invoke-direct/range {v2 .. v12}, Lnet/openid/appauth/TokenRequest;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    .line 225
    .line 226
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 227
    .line 228
    const/16 v0, 0x19

    .line 229
    .line 230
    invoke-direct {p2, v0, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v2, p2}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest$1(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_b
    throw v8

    .line 238
    :cond_c
    const-string p0, "No authorization configuration available for refresh request"

    .line 239
    .line 240
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_d
    const-string p0, "No refresh token available for refresh request"

    .line 245
    .line 246
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    throw p0

    .line 252
    :cond_e
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p0}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    iget-object p0, p2, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 260
    .line 261
    iget-object v0, p2, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 262
    .line 263
    iget-object p2, p2, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 264
    .line 265
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 268
    .line 269
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public final update(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    xor-int/2addr v0, v2

    .line 65
    const-string v2, "exactly one of authResponse or authException should be non-null"

    invoke-static {v2, v0}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    if-eqz p2, :cond_3

    .line 66
    iget p1, p2, Lnet/openid/appauth/AuthorizationException;->type:I

    if-ne p1, v1, :cond_2

    .line 67
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    :cond_2
    return-void

    .line 68
    :cond_3
    iput-object p1, p0, Lnet/openid/appauth/AuthState;->mLastAuthorizationResponse:Lnet/openid/appauth/AuthorizationResponse;

    const/4 p2, 0x0

    .line 69
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mConfig:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 70
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 71
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 73
    iget-object p2, p1, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object p2, p1, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    :goto_1
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    return-void
.end method

.method public final update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v3, v0

    .line 13
    :goto_1
    xor-int/2addr v2, v3

    .line 14
    const-string v3, "exactly one of tokenResponse or authException should be non-null"

    .line 15
    .line 16
    invoke-static {v3, v2}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v2, v1, v0

    .line 26
    .line 27
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x5

    .line 32
    const/4 v3, 0x0

    .line 33
    const-string v4, "AuthState.update should not be called in an error state (%s), call updatewith the result of the fresh authorization response first"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v4, v1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 39
    .line 40
    :cond_2
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget p1, p2, Lnet/openid/appauth/AuthorizationException;->type:I

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    if-ne p1, v0, :cond_5

    .line 46
    .line 47
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iput-object p1, p0, Lnet/openid/appauth/AuthState;->mLastTokenResponse:Lnet/openid/appauth/TokenResponse;

    .line 51
    .line 52
    iget-object p2, p1, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    iput-object p2, p0, Lnet/openid/appauth/AuthState;->mScope:Ljava/lang/String;

    .line 57
    .line 58
    :cond_4
    iget-object p1, p1, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    iput-object p1, p0, Lnet/openid/appauth/AuthState;->mRefreshToken:Ljava/lang/String;

    .line 63
    .line 64
    :cond_5
    return-void
.end method
