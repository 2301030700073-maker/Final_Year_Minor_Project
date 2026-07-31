.class public abstract Lcom/fsck/k9/mail/oauth/XOAuth2ChallengeParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static shouldRetry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-array v0, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object p0, v0, v1

    .line 18
    .line 19
    const-string v3, "Challenge response: %s"

    .line 20
    .line 21
    invoke-static {v3, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    invoke-direct {v0, v3}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/squareup/moshi/Moshi;

    .line 32
    .line 33
    invoke-direct {v3, v0}, Lcom/squareup/moshi/Moshi;-><init>(Lokhttp3/Headers$Builder;)V

    .line 34
    .line 35
    .line 36
    const-class v0, Lcom/fsck/k9/mail/oauth/XOAuth2Response;

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/fsck/k9/mail/oauth/XOAuth2Response;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v0, Lcom/fsck/k9/mail/oauth/XOAuth2Response;->status:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-string v3, "400"

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/squareup/moshi/JsonDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    :goto_0
    const/4 v3, 0x2

    .line 67
    new-array v3, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object p1, v3, v1

    .line 70
    .line 71
    aput-object p0, v3, v2

    .line 72
    .line 73
    const-string p0, "Error decoding JSON response from: %s. Response was: %s"

    .line 74
    .line 75
    invoke-static {v0, p0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return v2
.end method
