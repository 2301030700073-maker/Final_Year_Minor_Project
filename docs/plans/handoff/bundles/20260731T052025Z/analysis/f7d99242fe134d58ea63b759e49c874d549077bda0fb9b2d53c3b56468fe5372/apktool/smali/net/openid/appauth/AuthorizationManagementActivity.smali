.class public Lnet/openid/appauth/AuthorizationManagementActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAuthIntent:Landroid/content/Intent;

.field public mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

.field public mAuthorizationStarted:Z

.field public mCancelIntent:Landroid/app/PendingIntent;

.field public mCompleteIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final extractState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-array p1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x5

    .line 12
    const-string v3, "No stored state - unable to handle response"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0, v3, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v2, "authIntent"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/content/Intent;

    .line 28
    .line 29
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    .line 30
    .line 31
    const-string v2, "authStarted"

    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput-boolean v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    .line 38
    .line 39
    const-string v2, "completeIntent"

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/app/PendingIntent;

    .line 46
    .line 47
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    .line 48
    .line 49
    const-string v2, "cancelIntent"

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/app/PendingIntent;

    .line 56
    .line 57
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 58
    .line 59
    :try_start_0
    const-string v2, "authRequest"

    .line 60
    .line 61
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "authRequestType"

    .line 66
    .line 67
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-static {v2, p1}, Lkotlin/uuid/UuidKt;->requestFrom(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_1
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    return-void

    .line 80
    :catch_0
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 81
    .line 82
    sget-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    .line 83
    .line 84
    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, p1, v0, v1}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractState(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractState(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super {v0}, Landroidx/activity/ComponentActivity;->onResume()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v1, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    iput-boolean v2, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    const-string v1, "Authorization flow canceled due to missing browser"

    .line 22
    .line 23
    new-array v2, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->PROGRAM_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    .line 29
    .line 30
    invoke-static {v1, v3}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1, v4}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_11

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "error"

    .line 70
    .line 71
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    sget v2, Lnet/openid/appauth/AuthorizationException;->$r8$clinit:I

    .line 78
    .line 79
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    const-string v2, "error_description"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "error_uri"

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-object v4, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lnet/openid/appauth/AuthorizationException;

    .line 102
    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    sget-object v4, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    .line 107
    .line 108
    :goto_0
    new-instance v7, Lnet/openid/appauth/AuthorizationException;

    .line 109
    .line 110
    iget v8, v4, Lnet/openid/appauth/AuthorizationException;->type:I

    .line 111
    .line 112
    iget v9, v4, Lnet/openid/appauth/AuthorizationException;->code:I

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    :goto_1
    move-object v11, v2

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    iget-object v2, v4, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_2
    if-eqz v3, :cond_3

    .line 122
    .line 123
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :goto_3
    move-object v12, v2

    .line 128
    goto :goto_4

    .line 129
    :cond_3
    iget-object v2, v4, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :goto_4
    const/4 v13, 0x0

    .line 133
    invoke-direct/range {v7 .. v13}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    goto/16 :goto_b

    .line 141
    .line 142
    :cond_4
    iget-object v5, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 143
    .line 144
    instance-of v6, v5, Lnet/openid/appauth/AuthorizationRequest;

    .line 145
    .line 146
    const-string v7, "state must not be empty"

    .line 147
    .line 148
    const-string v8, "state"

    .line 149
    .line 150
    if-eqz v6, :cond_b

    .line 151
    .line 152
    move-object v10, v5

    .line 153
    check-cast v10, Lnet/openid/appauth/AuthorizationRequest;

    .line 154
    .line 155
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 156
    .line 157
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-static {v11, v7}, Lokio/Okio;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v5, "token_type"

    .line 168
    .line 169
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    const-string v5, "tokenType must not be empty"

    .line 174
    .line 175
    invoke-static {v12, v5}, Lokio/Okio;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v5, "code"

    .line 179
    .line 180
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    const-string v5, "authorizationCode must not be empty"

    .line 185
    .line 186
    invoke-static {v13, v5}, Lokio/Okio;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v5, "access_token"

    .line 190
    .line 191
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    const-string v5, "accessToken must not be empty"

    .line 196
    .line 197
    invoke-static {v14, v5}, Lokio/Okio;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v5, "expires_in"

    .line 201
    .line 202
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    if-eqz v5, :cond_5

    .line 207
    .line 208
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v5

    .line 212
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    goto :goto_5

    .line 217
    :cond_5
    move-object v5, v3

    .line 218
    :goto_5
    if-nez v5, :cond_6

    .line 219
    .line 220
    move-object v15, v3

    .line 221
    move/from16 v19, v4

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 225
    .line 226
    .line 227
    move-result-wide v6

    .line 228
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 229
    .line 230
    move/from16 v19, v4

    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 233
    .line 234
    .line 235
    move-result-wide v4

    .line 236
    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v4

    .line 240
    add-long/2addr v4, v6

    .line 241
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    move-object v15, v4

    .line 246
    :goto_6
    const-string v4, "id_token"

    .line 247
    .line 248
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    const-string v5, "idToken cannot be empty"

    .line 253
    .line 254
    invoke-static {v4, v5}, Lokio/Okio;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v5, "scope"

    .line 258
    .line 259
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_7

    .line 268
    .line 269
    :goto_7
    move-object/from16 v17, v3

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_7
    const-string v6, " +"

    .line 273
    .line 274
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    if-nez v5, :cond_8

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_8
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v5}, Lorg/jsoup/Jsoup;->iterableToString(Ljava/util/List;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    move-object/from16 v17, v5

    .line 290
    .line 291
    :goto_8
    sget-object v5, Lnet/openid/appauth/AuthorizationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    .line 292
    .line 293
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 294
    .line 295
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    :cond_9
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    if-eqz v8, :cond_a

    .line 311
    .line 312
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    check-cast v8, Ljava/lang/String;

    .line 317
    .line 318
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    if-nez v9, :cond_9

    .line 323
    .line 324
    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_a
    sget-object v5, Lnet/openid/appauth/AuthorizationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    .line 333
    .line 334
    invoke-static {v6, v5}, Lkotlin/text/StringsKt__IndentKt;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    new-instance v9, Lnet/openid/appauth/AuthorizationResponse;

    .line 339
    .line 340
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 341
    .line 342
    .line 343
    move-result-object v18

    .line 344
    move-object/from16 v16, v4

    .line 345
    .line 346
    invoke-direct/range {v9 .. v18}, Lnet/openid/appauth/AuthorizationResponse;-><init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 347
    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_b
    move/from16 v19, v4

    .line 351
    .line 352
    instance-of v4, v5, Lnet/openid/appauth/EndSessionRequest;

    .line 353
    .line 354
    if-eqz v4, :cond_10

    .line 355
    .line 356
    check-cast v5, Lnet/openid/appauth/EndSessionRequest;

    .line 357
    .line 358
    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    if-eqz v4, :cond_c

    .line 363
    .line 364
    invoke-static {v4, v7}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :cond_c
    new-instance v9, Lnet/openid/appauth/EndSessionResponse;

    .line 368
    .line 369
    invoke-direct {v9, v5, v4}, Lnet/openid/appauth/EndSessionResponse;-><init>(Lnet/openid/appauth/EndSessionRequest;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :goto_a
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 373
    .line 374
    invoke-interface {v4}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    if-nez v4, :cond_d

    .line 379
    .line 380
    invoke-virtual {v9}, Lorg/jsoup/nodes/NodeUtils;->getState()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    if-nez v4, :cond_e

    .line 385
    .line 386
    :cond_d
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 387
    .line 388
    invoke-interface {v4}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    if-eqz v4, :cond_f

    .line 393
    .line 394
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 395
    .line 396
    invoke-interface {v4}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v9}, Lorg/jsoup/nodes/NodeUtils;->getState()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-nez v4, :cond_f

    .line 409
    .line 410
    :cond_e
    invoke-virtual {v9}, Lorg/jsoup/nodes/NodeUtils;->getState()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    iget-object v5, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 415
    .line 416
    invoke-interface {v5}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    const/4 v6, 0x2

    .line 421
    new-array v6, v6, [Ljava/lang/Object;

    .line 422
    .line 423
    aput-object v4, v6, v19

    .line 424
    .line 425
    aput-object v5, v6, v2

    .line 426
    .line 427
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    const/4 v4, 0x5

    .line 432
    const-string v5, "State returned in authorization response (%s) does not match state from request (%s) - discarding response"

    .line 433
    .line 434
    invoke-virtual {v2, v4, v3, v5, v6}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    sget-object v2, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STATE_MISMATCH:Lnet/openid/appauth/AuthorizationException;

    .line 438
    .line 439
    invoke-virtual {v2}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    goto :goto_b

    .line 444
    :cond_f
    invoke-virtual {v9}, Lorg/jsoup/nodes/NodeUtils;->toIntent()Landroid/content/Intent;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    :goto_b
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    .line 452
    .line 453
    const/4 v3, -0x1

    .line 454
    invoke-virtual {v0, v1, v2, v3}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 455
    .line 456
    .line 457
    goto :goto_c

    .line 458
    :cond_10
    const-string v0, "Malformed request or uri"

    .line 459
    .line 460
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :cond_11
    move/from16 v19, v4

    .line 465
    .line 466
    const-string v1, "Authorization flow canceled by user"

    .line 467
    .line 468
    move/from16 v2, v19

    .line 469
    .line 470
    new-array v4, v2, [Ljava/lang/Object;

    .line 471
    .line 472
    invoke-static {v1, v4}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    sget-object v1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->USER_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    .line 476
    .line 477
    invoke-static {v1, v3}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iget-object v3, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 486
    .line 487
    invoke-virtual {v0, v3, v1, v2}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 488
    .line 489
    .line 490
    :goto_c
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 491
    .line 492
    .line 493
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "authStarted"

    .line 5
    .line 6
    iget-boolean v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "authIntent"

    .line 12
    .line 13
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 19
    .line 20
    invoke-interface {v0}, Lnet/openid/appauth/AuthorizationManagementRequest;->jsonSerializeString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "authRequest"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 30
    .line 31
    instance-of v1, v0, Lnet/openid/appauth/AuthorizationRequest;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v0, "authorization"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, v0, Lnet/openid/appauth/EndSessionRequest;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "end_session"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    const-string v1, "authRequestType"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "completeIntent"

    .line 52
    .line 53
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "cancelIntent"

    .line 59
    .line 60
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 61
    .line 62
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, p0, p3, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const/4 p1, 0x1

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    .line 12
    aput-object p0, p1, p3

    .line 13
    .line 14
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x6

    .line 19
    const/4 p3, 0x0

    .line 20
    const-string v0, "Failed to send cancel intent"

    .line 21
    .line 22
    invoke-virtual {p0, p2, p3, v0, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
