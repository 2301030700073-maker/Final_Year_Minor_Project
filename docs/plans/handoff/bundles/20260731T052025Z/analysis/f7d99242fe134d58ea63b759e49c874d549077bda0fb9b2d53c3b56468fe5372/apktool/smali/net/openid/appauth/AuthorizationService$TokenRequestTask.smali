.class public final Lnet/openid/appauth/AuthorizationService$TokenRequestTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

.field public final mClientAuthentication:Lnet/openid/appauth/SystemClock;

.field public final mClock:Lnet/openid/appauth/SystemClock;

.field public final mConnectionBuilder:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

.field public mException:Lnet/openid/appauth/AuthorizationException;

.field public final mRequest:Lnet/openid/appauth/TokenRequest;

.field public final mSkipIssuerHttpsCheck:Z


# direct methods
.method public constructor <init>(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE$1:Lnet/openid/appauth/SystemClock;

    .line 2
    .line 3
    sget-object v1, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 9
    .line 10
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClientAuthentication:Lnet/openid/appauth/SystemClock;

    .line 11
    .line 12
    sget-object p1, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    .line 13
    .line 14
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    .line 15
    .line 16
    iput-object v1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClock:Lnet/openid/appauth/SystemClock;

    .line 17
    .line 18
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mSkipIssuerHttpsCheck:Z

    .line 25
    .line 26
    return-void
.end method

.method public static addJsonToAcceptHeader(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    const-string v0, "Accept"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "application/json"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "Failed to complete exchange request"

    .line 2
    .line 3
    check-cast p1, [Ljava/lang/Void;

    .line 4
    .line 5
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClientAuthentication:Lnet/openid/appauth/SystemClock;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    iget-object v5, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    .line 13
    .line 14
    iget-object v6, v1, Lnet/openid/appauth/TokenRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 15
    .line 16
    iget-object v6, v6, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v6, Landroid/net/Uri;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v6}, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "POST"

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v6, "Content-Type"

    .line 33
    .line 34
    const-string v7, "application/x-www-form-urlencoded"

    .line 35
    .line 36
    invoke-virtual {v5, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v5}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->addJsonToAcceptHeader(Ljava/net/HttpURLConnection;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lnet/openid/appauth/TokenRequest;->getRequestParameters()Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, v1, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    .line 54
    .line 55
    const-string v6, "client_id"

    .line 56
    .line 57
    invoke-static {v6, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :catch_0
    move-exception p1

    .line 71
    move-object v1, v4

    .line 72
    goto :goto_2

    .line 73
    :catch_1
    move-exception p1

    .line 74
    move-object v1, v4

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_0
    :goto_0
    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->formUrlEncode(Ljava/util/HashMap;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v1, "Content-Length"

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5, v1, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-direct {v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const/16 v1, 0xc8

    .line 114
    .line 115
    if-lt p1, v1, :cond_1

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/16 v1, 0x12c

    .line 122
    .line 123
    if-ge p1, v1, :cond_1

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_1
    :try_start_1
    invoke-static {p1}, Lokio/Options$Companion;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v5, Lorg/json/JSONObject;

    .line 139
    .line 140
    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .line 142
    .line 143
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    .line 145
    .line 146
    :catch_2
    return-object v5

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    move-object v4, p1

    .line 149
    goto :goto_6

    .line 150
    :catch_3
    move-exception v1

    .line 151
    move-object v8, v1

    .line 152
    move-object v1, p1

    .line 153
    move-object p1, v8

    .line 154
    goto :goto_2

    .line 155
    :catch_4
    move-exception v1

    .line 156
    move-object v8, v1

    .line 157
    move-object v1, p1

    .line 158
    move-object p1, v8

    .line 159
    goto :goto_4

    .line 160
    :goto_2
    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    .line 161
    .line 162
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v5, v2, p1, v0, v3}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 170
    .line 171
    invoke-static {v0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 176
    .line 177
    if-eqz v1, :cond_2

    .line 178
    .line 179
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :catchall_2
    move-exception p0

    .line 184
    move-object v4, v1

    .line 185
    goto :goto_6

    .line 186
    :goto_4
    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5, v2, p1, v0, v3}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 196
    .line 197
    invoke-static {v0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 202
    .line 203
    if-eqz v1, :cond_2

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catch_5
    :cond_2
    :goto_5
    return-object v4

    .line 207
    :goto_6
    if-eqz v4, :cond_3

    .line 208
    .line 209
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 210
    .line 211
    .line 212
    :catch_6
    :cond_3
    throw p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    .line 6
    .line 7
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v2, v3, v1}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v1, "error"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_6

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lnet/openid/appauth/AuthorizationException;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    .line 40
    .line 41
    :goto_0
    const-string v1, "error_description"

    .line 42
    .line 43
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v4, "error_uri"

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    move-object p1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_1
    new-instance v4, Lnet/openid/appauth/AuthorizationException;

    .line 62
    .line 63
    iget v5, v0, Lnet/openid/appauth/AuthorizationException;->type:I

    .line 64
    .line 65
    iget v6, v0, Lnet/openid/appauth/AuthorizationException;->code:I

    .line 66
    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    :goto_2
    move-object v7, p0

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object p0, v0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_3
    if-eqz v1, :cond_4

    .line 75
    .line 76
    :goto_4
    move-object v8, v1

    .line 77
    goto :goto_5

    .line 78
    :cond_4
    iget-object v1, v0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_5
    if-eqz p1, :cond_5

    .line 82
    .line 83
    :goto_6
    move-object v9, p1

    .line 84
    goto :goto_7

    .line 85
    :cond_5
    iget-object p1, v0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :goto_7
    const/4 v10, 0x0

    .line 89
    invoke-direct/range {v4 .. v10}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_8

    .line 93
    :catch_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 96
    .line 97
    invoke-static {p1, p0}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :goto_8
    invoke-interface {v2, v3, v4}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_c

    .line 105
    .line 106
    :cond_6
    :try_start_1
    new-instance v1, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v4, "request cannot be null"

    .line 112
    .line 113
    invoke-static {v0, v4}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 117
    .line 118
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 119
    .line 120
    iput-object v4, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->fromResponseJson(Lorg/json/JSONObject;)V

    .line 123
    .line 124
    .line 125
    new-instance v5, Lnet/openid/appauth/TokenResponse;

    .line 126
    .line 127
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 128
    .line 129
    move-object v6, p1

    .line 130
    check-cast v6, Lnet/openid/appauth/TokenRequest;

    .line 131
    .line 132
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 133
    .line 134
    move-object v7, p1

    .line 135
    check-cast v7, Ljava/lang/String;

    .line 136
    .line 137
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 138
    .line 139
    move-object v8, p1

    .line 140
    check-cast v8, Ljava/lang/String;

    .line 141
    .line 142
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 143
    .line 144
    move-object v9, p1

    .line 145
    check-cast v9, Ljava/lang/Long;

    .line 146
    .line 147
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 148
    .line 149
    move-object v10, p1

    .line 150
    check-cast v10, Ljava/lang/String;

    .line 151
    .line 152
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 153
    .line 154
    move-object v11, p1

    .line 155
    check-cast v11, Ljava/lang/String;

    .line 156
    .line 157
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 158
    .line 159
    move-object v12, p1

    .line 160
    check-cast v12, Ljava/lang/String;

    .line 161
    .line 162
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 163
    .line 164
    move-object v13, p1

    .line 165
    check-cast v13, Ljava/util/Map;

    .line 166
    .line 167
    invoke-direct/range {v5 .. v13}, Lnet/openid/appauth/TokenResponse;-><init>(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 168
    .line 169
    .line 170
    if-eqz v10, :cond_7

    .line 171
    .line 172
    :try_start_2
    invoke-static {v10}, Lnet/openid/appauth/IdToken;->from(Ljava/lang/String;)Lnet/openid/appauth/IdToken;

    .line 173
    .line 174
    .line 175
    move-result-object p1
    :try_end_2
    .catch Lnet/openid/appauth/IdToken$IdTokenException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :try_start_3
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClock:Lnet/openid/appauth/SystemClock;

    .line 177
    .line 178
    iget-boolean p0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mSkipIssuerHttpsCheck:Z

    .line 179
    .line 180
    invoke-virtual {p1, v0, v1, p0}, Lnet/openid/appauth/IdToken;->validate(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/SystemClock;Z)V
    :try_end_3
    .catch Lnet/openid/appauth/AuthorizationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 181
    .line 182
    .line 183
    goto :goto_b

    .line 184
    :catch_1
    move-exception v0

    .line 185
    move-object p0, v0

    .line 186
    invoke-interface {v2, v3, p0}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 187
    .line 188
    .line 189
    goto :goto_c

    .line 190
    :catch_2
    move-exception v0

    .line 191
    :goto_9
    move-object p0, v0

    .line 192
    goto :goto_a

    .line 193
    :catch_3
    move-exception v0

    .line 194
    goto :goto_9

    .line 195
    :goto_a
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_PARSING_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 196
    .line 197
    invoke-static {p1, p0}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-interface {v2, v3, p0}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 202
    .line 203
    .line 204
    goto :goto_c

    .line 205
    :cond_7
    :goto_b
    iget-object p0, v0, Lnet/openid/appauth/TokenRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p0, Landroid/net/Uri;

    .line 210
    .line 211
    const/4 p1, 0x1

    .line 212
    new-array p1, p1, [Ljava/lang/Object;

    .line 213
    .line 214
    const/4 v0, 0x0

    .line 215
    aput-object p0, p1, v0

    .line 216
    .line 217
    const-string p0, "Token exchange with %s completed"

    .line 218
    .line 219
    invoke-static {p0, p1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v2, v5, v3}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :catch_4
    move-exception v0

    .line 227
    move-object p0, v0

    .line 228
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 229
    .line 230
    invoke-static {p1, p0}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Exception;)Lnet/openid/appauth/AuthorizationException;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-interface {v2, v3, p0}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 235
    .line 236
    .line 237
    :goto_c
    return-void
.end method
