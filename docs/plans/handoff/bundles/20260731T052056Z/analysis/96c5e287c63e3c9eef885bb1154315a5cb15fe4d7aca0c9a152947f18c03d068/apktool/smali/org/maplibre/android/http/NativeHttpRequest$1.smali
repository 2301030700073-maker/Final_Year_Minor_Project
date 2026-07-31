.class public final Lorg/maplibre/android/http/NativeHttpRequest$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public this$0:Lorg/maplibre/android/http/NativeHttpRequest;


# virtual methods
.method public handleFailure(Lokhttp3/internal/connection/RealCall;Ljava/lang/Exception;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Error processing the request"

    .line 13
    .line 14
    :goto_0
    instance-of v1, p2, Ljava/net/NoRouteToHostException;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    instance-of v1, p2, Ljava/net/UnknownHostException;

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    instance-of v1, p2, Ljava/net/SocketException;

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    instance-of v1, p2, Ljava/net/ProtocolException;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    instance-of v1, p2, Ljavax/net/ssl/SSLException;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    instance-of p2, p2, Ljava/io/InterruptedIOException;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    move p2, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 p2, 0x2

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 45
    :goto_2
    if-eqz p1, :cond_8

    .line 46
    .line 47
    iget-object p1, p1, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    .line 48
    .line 49
    if-eqz p1, :cond_8

    .line 50
    .line 51
    iget-object p1, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 52
    .line 53
    iget-object p1, p1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 54
    .line 55
    if-ne p2, v2, :cond_4

    .line 56
    .line 57
    const/4 p1, 0x3

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    if-nez p2, :cond_5

    .line 60
    .line 61
    const/4 p1, 0x4

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    const/4 p1, 0x5

    .line 64
    :goto_3
    if-ne p2, v2, :cond_6

    .line 65
    .line 66
    const-string v1, "temporary"

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    if-nez p2, :cond_7

    .line 70
    .line 71
    const-string v1, "connection"

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_7
    const-string v1, "permanent"

    .line 75
    .line 76
    :goto_4
    const-string v2, " error: "

    .line 77
    .line 78
    const-string v3, " "

    .line 79
    .line 80
    const-string v4, "Request failed due to a "

    .line 81
    .line 82
    invoke-static {v4, v1, v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {p1, v1}, Lokhttp3/Cookie$Companion;->log(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_8
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    .line 90
    .line 91
    invoke-virtual {p0, p2, v0}, Lorg/maplibre/android/http/NativeHttpRequest;->handleFailure(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/http/NativeHttpRequest$1;->handleFailure(Lokhttp3/internal/connection/RealCall;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    .locals 9

    .line 1
    iget-boolean v0, p2, Lokhttp3/Response;->isSuccessful:Z

    .line 2
    .line 3
    iget-object v1, p2, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p2, Lokhttp3/Response;->code:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "[HTTP] Request was successful (code = "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")."

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-static {v1, v0}, Lokhttp3/Cookie$Companion;->log(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "No additional information"

    .line 41
    .line 42
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "[HTTP] Request with response = "

    .line 45
    .line 46
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ": "

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x3

    .line 65
    invoke-static {v1, v0}, Lokhttp3/Cookie$Companion;->log(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    iget-object v0, p2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    const/4 p0, 0x6

    .line 73
    const-string p1, "[HTTP] Received empty response body"

    .line 74
    .line 75
    invoke-static {p0, p1}, Lokhttp3/Cookie$Companion;->log(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    .line 80
    .line 81
    .line 82
    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    .line 87
    .line 88
    iget v1, p2, Lokhttp3/Response;->code:I

    .line 89
    .line 90
    const-string p0, "ETag"

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p2, p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string p0, "Last-Modified"

    .line 98
    .line 99
    invoke-virtual {p2, p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const-string p0, "Cache-Control"

    .line 104
    .line 105
    invoke-virtual {p2, p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-string p0, "Expires"

    .line 110
    .line 111
    invoke-virtual {p2, p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const-string p0, "Retry-After"

    .line 116
    .line 117
    invoke-virtual {p2, p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string/jumbo p0, "x-rate-limit-reset"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual/range {v0 .. v8}, Lorg/maplibre/android/http/NativeHttpRequest;->onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    move-object p0, v0

    .line 134
    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/http/NativeHttpRequest$1;->handleFailure(Lokhttp3/internal/connection/RealCall;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_2
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 144
    .line 145
    .line 146
    throw p0
.end method
