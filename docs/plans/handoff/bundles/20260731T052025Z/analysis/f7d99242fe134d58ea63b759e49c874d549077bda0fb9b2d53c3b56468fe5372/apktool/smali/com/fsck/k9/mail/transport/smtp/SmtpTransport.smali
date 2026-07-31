.class public final Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public areUnicodeAddressesAllowed:Z

.field public final authType:Lcom/fsck/k9/mail/AuthType;

.field public final clientCertificateAlias:Ljava/lang/String;

.field public final connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field public final host:Ljava/lang/String;

.field public inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field public is8bitEncodingAllowed:Z

.field public isEnhancedStatusCodesProvided:Z

.field public isPipeliningSupported:Z

.field public largestAcceptableMessage:I

.field public final logger:Lcom/bumptech/glide/GlideBuilder$1;

.field public final oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public outputStream:Ljava/io/BufferedOutputStream;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public responseParser:Lcom/google/zxing/BinaryBitmap;

.field public retryOAuthWithNewToken:Z

.field public socket:Ljava/net/Socket;

.field public final trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 10
    .line 11
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    .line 14
    .line 15
    iget p2, p1, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 16
    .line 17
    iput p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->port:I

    .line 18
    .line 19
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->clientCertificateAlias:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->authType:Lcom/fsck/k9/mail/AuthType;

    .line 34
    .line 35
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 38
    .line 39
    new-instance p2, Lcom/bumptech/glide/GlideBuilder$1;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->logger:Lcom/bumptech/glide/GlideBuilder$1;

    .line 45
    .line 46
    iget-object p0, p1, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "smtp"

    .line 49
    .line 50
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const-string p0, "Expected SMTP ServerSettings!"

    .line 58
    .line 59
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    throw p0
.end method

.method public static handlePossibleAuthenticationFailure(Ljava/lang/String;Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyCode:I

    .line 2
    .line 3
    const/16 v1, 0x217

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 8
    .line 9
    const-string v1, " failed"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object v1, p1, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyText:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1, p1}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_0
    throw p1
.end method

.method public static logResponse(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;Z)V
    .locals 9

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, v0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->enhancedStatusCode:Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 25
    .line 26
    iget v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 27
    .line 28
    iget-object p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v5, "SMTP <<< "

    .line 36
    .line 37
    const/16 v6, 0x20

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v2, v6}, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->appendIfNotNull(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;C)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    const-string p0, " [omitted]"

    .line 57
    .line 58
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-le p1, v1, :cond_3

    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sub-int/2addr p1, v1

    .line 73
    move v7, v0

    .line 74
    :goto_1
    if-ge v7, p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 v8, 0x2d

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-static {v4, v2, v8}, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->appendIfNotNull(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;C)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 v8, 0xa

    .line 106
    .line 107
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v2, v6}, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->appendIfNotNull(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;C)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    new-array p1, v1, [Ljava/lang/Object;

    .line 145
    .line 146
    aput-object p0, p1, v0

    .line 147
    .line 148
    const-string p0, "%s"

    .line 149
    .line 150
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    return-void
.end method


# virtual methods
.method public final attempOAuth(Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder$12;->getToken()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;->buildInitialClientResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;->getCommand()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    aput-object p2, v1, p1

    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "%s %s"

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0, p2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget p2, p1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 38
    .line 39
    const/16 v0, 0x14e

    .line 40
    .line 41
    if-ne p2, v0, :cond_0

    .line 42
    .line 43
    iget-object v3, p1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/16 v8, 0x3e

    .line 47
    .line 48
    const-string v4, " "

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/oauth/XOAuth2ChallengeParser;->shouldRetry(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput-boolean p1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->retryOAuthWithNewToken:Z

    .line 63
    .line 64
    new-array p1, v2, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, ""

    .line 71
    .line 72
    invoke-virtual {p0, v2, p2, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public final checkSettings()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->ensureClosed()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->open$tfa_mail_protocols_smtp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    :try_start_1
    const-string v1, "Error while checking server settings"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public final close()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "QUIT"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->writeLine(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    :catch_0
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 8
    .line 9
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/BufferedOutputStream;

    .line 13
    .line 14
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/BufferedOutputStream;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 30
    .line 31
    return-void
.end method

.method public final connect()Ljava/net/Socket;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v1, :cond_0

    .line 15
    .line 16
    aget-object v2, v0, v4

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception v5

    .line 27
    const/4 v6, 0x1

    .line 28
    new-array v6, v6, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v2, v6, v3

    .line 31
    .line 32
    const-string v2, "Could not connect to %s"

    .line 33
    .line 34
    invoke-static {v5, v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    move-object v2, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v2, Ljava/net/UnknownHostException;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_1
    throw v2
.end method

.method public final connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;
    .locals 4

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object p1, v0, v2

    .line 19
    .line 20
    const-string v2, "Connecting to %s as %s"

    .line 21
    .line 22
    invoke-static {v2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 26
    .line 27
    iget v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->port:I

    .line 28
    .line 29
    invoke-direct {v0, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 33
    .line 34
    sget-object v3, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 35
    .line 36
    if-ne p1, v3, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iget-object v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->clientCertificateAlias:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 42
    .line 43
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Ljava/net/Socket;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_0
    const/16 p1, 0x7530

    .line 54
    .line 55
    invoke-virtual {p0, v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method public final constructSmtpMailFromCommand([Lcom/fsck/k9/mail/Address;ZZ)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/fsck/k9/mail/Address;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->areUnicodeAddressesAllowed:Z

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    const-string p0, " SMTPUTF8"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p0, v0

    .line 21
    :goto_0
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const-string v0, " BODY=8BITMIME"

    .line 24
    .line 25
    :cond_1
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    const/4 p3, 0x3

    .line 28
    new-array v1, p3, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object p1, v1, v2

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    aput-object p0, v1, p1

    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    aput-object v0, v1, p0

    .line 38
    .line 39
    invoke-static {v1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "MAIL FROM:<%s>%s%s"

    .line 44
    .line 45
    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final ensureClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/BufferedOutputStream;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v2, "SmtpTransport was open when it was expected to be closed"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final varargs executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    array-length v1, p3

    .line 4
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    array-length v1, p3

    .line 9
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->writeLine(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isEnhancedStatusCodesProvided:Z

    .line 26
    .line 27
    iget-object p3, p2, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p3, Lokio/Buffer;

    .line 30
    .line 31
    invoke-virtual {p3}, Lokio/Buffer;->clear()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/google/zxing/BinaryBitmap;->readReplyCode()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    invoke-virtual {p2, p3, p0}, Lcom/google/zxing/BinaryBitmap;->readResponseAfterReplyCode(IZ)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->logResponse(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;Z)V

    .line 43
    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->isNegativeResponse:Z

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_0
    new-instance p1, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    .line 51
    .line 52
    iget p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const/16 v5, 0x3e

    .line 58
    .line 59
    const-string v1, " "

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {p1, p0, p2}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public final executePipelinedCommands(Lkotlin/collections/builders/ListBuilder;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    :goto_0
    move-object v1, p1

    .line 7
    check-cast v1, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 8
    .line 9
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->writeLine(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final open$tfa_mail_protocols_smtp()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->logger:Lcom/bumptech/glide/GlideBuilder$1;

    .line 2
    .line 3
    const-string v1, "STARTTLS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connect()Ljava/net/Socket;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iput-object v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 11
    .line 12
    const v4, 0xea60

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 19
    .line 20
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/16 v7, 0x400

    .line 27
    .line 28
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/BufferedInputStream;)V

    .line 32
    .line 33
    .line 34
    iput-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 35
    .line 36
    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    .line 37
    .line 38
    invoke-direct {v5, v0, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/bumptech/glide/GlideBuilder$1;Lcom/fsck/k9/mail/filter/PeekableInputStream;)V

    .line 39
    .line 40
    .line 41
    iput-object v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 42
    .line 43
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v4, v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 50
    .line 51
    .line 52
    iput-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/BufferedOutputStream;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->readGreeting()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->sendHello()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "8BITMIME"

    .line 62
    .line 63
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iput-boolean v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->is8bitEncodingAllowed:Z

    .line 68
    .line 69
    const-string v5, "SMTPUTF8"

    .line 70
    .line 71
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iput-boolean v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->areUnicodeAddressesAllowed:Z

    .line 76
    .line 77
    const-string v5, "ENHANCEDSTATUSCODES"

    .line 78
    .line 79
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iput-boolean v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isEnhancedStatusCodesProvided:Z

    .line 84
    .line 85
    const-string v5, "PIPELINING"

    .line 86
    .line 87
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    iput-boolean v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isPipeliningSupported:Z

    .line 92
    .line 93
    iget-object v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 94
    .line 95
    sget-object v6, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 96
    .line 97
    if-ne v5, v6, :cond_1

    .line 98
    .line 99
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_0

    .line 104
    .line 105
    new-array v4, v2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {p0, v2, v1, v4}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    .line 117
    .line 118
    iget v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->port:I

    .line 119
    .line 120
    iget-object v6, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->clientCertificateAlias:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 127
    .line 128
    new-instance v3, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 129
    .line 130
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-direct {v4, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/BufferedInputStream;)V

    .line 140
    .line 141
    .line 142
    iput-object v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 143
    .line 144
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 145
    .line 146
    invoke-direct {v4, v0, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/bumptech/glide/GlideBuilder$1;Lcom/fsck/k9/mail/filter/PeekableInputStream;)V

    .line 147
    .line 148
    .line 149
    iput-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 150
    .line 151
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-direct {v0, v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/BufferedOutputStream;

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->sendHello()Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :catch_1
    move-exception v0

    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    :catch_2
    move-exception v0

    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :catch_3
    move-exception v0

    .line 177
    goto/16 :goto_5

    .line 178
    .line 179
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 180
    .line 181
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_1
    :goto_0
    const-string v0, "AUTH"

    .line 186
    .line 187
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/util/List;

    .line 192
    .line 193
    if-eqz v0, :cond_2

    .line 194
    .line 195
    const-string v1, "LOGIN"

    .line 196
    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    const-string v3, "PLAIN"

    .line 202
    .line 203
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    const-string v5, "CRAM-MD5"

    .line 208
    .line 209
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    const-string v6, "EXTERNAL"

    .line 214
    .line 215
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    const-string v7, "XOAUTH2"

    .line 220
    .line 221
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    const-string v8, "OAUTHBEARER"

    .line 226
    .line 227
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    goto :goto_1

    .line 232
    :cond_2
    move v0, v2

    .line 233
    move v1, v0

    .line 234
    move v3, v1

    .line 235
    move v5, v3

    .line 236
    move v6, v5

    .line 237
    move v7, v6

    .line 238
    :goto_1
    const-string v8, "SIZE"

    .line 239
    .line 240
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Ljava/util/List;

    .line 245
    .line 246
    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->parseOptionalSizeValue(Ljava/util/List;)V

    .line 247
    .line 248
    .line 249
    iget-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->authType:Lcom/fsck/k9/mail/AuthType;

    .line 250
    .line 251
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_c

    .line 256
    .line 257
    const/4 v1, 0x1

    .line 258
    if-eq v4, v1, :cond_a

    .line 259
    .line 260
    const/4 v1, 0x2

    .line 261
    if-eq v4, v1, :cond_8

    .line 262
    .line 263
    const/4 v1, 0x3

    .line 264
    if-eq v4, v1, :cond_4

    .line 265
    .line 266
    const/4 v0, 0x4

    .line 267
    if-ne v4, v0, :cond_3

    .line 268
    .line 269
    return-void

    .line 270
    :cond_3
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 271
    .line 272
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 273
    .line 274
    .line 275
    throw v0

    .line 276
    :cond_4
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 277
    .line 278
    if-eqz v1, :cond_7

    .line 279
    .line 280
    if-eqz v0, :cond_5

    .line 281
    .line 282
    sget-object v0, Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;->OAUTHBEARER:Lcom/fsck/k9/mail/transport/smtp/OAuthMethod$OAUTHBEARER;

    .line 283
    .line 284
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslOAuth(Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_5
    if-eqz v7, :cond_6

    .line 289
    .line 290
    sget-object v0, Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;->XOAUTH2:Lcom/fsck/k9/mail/transport/smtp/OAuthMethod$XOAUTH2;

    .line 291
    .line 292
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslOAuth(Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_6
    new-instance v0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 297
    .line 298
    const-string v1, "AUTH OAUTHBEARER"

    .line 299
    .line 300
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_7
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 305
    .line 306
    const-string v1, "No OAuth2TokenProvider available."

    .line 307
    .line 308
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_8
    if-eqz v6, :cond_9

    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthExternal()V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_9
    new-instance v0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 319
    .line 320
    const-string v1, "AUTH EXTERNAL"

    .line 321
    .line 322
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_a
    if-eqz v5, :cond_b

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthCramMD5()V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :cond_b
    new-instance v0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 333
    .line 334
    const-string v1, "AUTH CRAM-MD5"

    .line 335
    .line 336
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :cond_c
    if-eqz v3, :cond_d

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthPlain()V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :cond_d
    if-eqz v1, :cond_e

    .line 347
    .line 348
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthLogin()V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_e
    new-instance v0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 353
    .line 354
    const-string v1, "AUTH PLAIN"

    .line 355
    .line 356
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v0
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 361
    .line 362
    .line 363
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 364
    .line 365
    const-string v1, "Unable to open connection to SMTP server."

    .line 366
    .line 367
    invoke-direct {p0, v1, v2, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :goto_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 372
    .line 373
    .line 374
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 375
    .line 376
    const-string v1, "Unable to open connection to SMTP server due to security error."

    .line 377
    .line 378
    invoke-direct {p0, v1, v2, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    throw p0

    .line 382
    :goto_4
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 383
    .line 384
    .line 385
    invoke-static {v0}, Lcom/fsck/k9/mail/ssl/LocalKeyStoreKt;->extract(Ljavax/net/ssl/SSLException;)Ljava/util/List;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    if-eqz p0, :cond_f

    .line 390
    .line 391
    new-instance v1, Lcom/fsck/k9/mail/CertificateValidationException;

    .line 392
    .line 393
    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/util/List;Ljavax/net/ssl/SSLException;)V

    .line 394
    .line 395
    .line 396
    throw v1

    .line 397
    :cond_f
    throw v0

    .line 398
    :goto_5
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 399
    .line 400
    .line 401
    throw v0
.end method

.method public final parseOptionalSizeValue(Ljava/util/List;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->largestAcceptableMessage:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object p0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    new-array p0, p0, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    aput-object p1, p0, v0

    .line 41
    .line 42
    const-string p1, "SIZE parameter is not a valid integer: %s"

    .line 43
    .line 44
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final readGreeting()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lokio/Buffer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readReplyCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/BinaryBitmap;->readResponseAfterReplyCode(IZ)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->logResponse(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;Z)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->isNegativeResponse:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    .line 31
    .line 32
    iget v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 33
    .line 34
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/16 v7, 0x3e

    .line 38
    .line 39
    const-string v3, " "

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final readPipelinedResponse(Lkotlin/collections/builders/ListBuilder;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lkotlin/collections/builders/ListBuilder;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, p1, :cond_1

    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isEnhancedStatusCodesProvided:Z

    .line 16
    .line 17
    iget-object v5, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Lokio/Buffer;

    .line 20
    .line 21
    invoke-virtual {v5}, Lokio/Buffer;->clear()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/zxing/BinaryBitmap;->readReplyCode()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v0, v5, v4}, Lcom/google/zxing/BinaryBitmap;->readResponseAfterReplyCode(IZ)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->logResponse(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;Z)V

    .line 33
    .line 34
    .line 35
    iget-boolean v5, v4, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->isNegativeResponse:Z

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    new-instance v1, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    .line 42
    .line 43
    iget v5, v4, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 44
    .line 45
    iget-object v6, v4, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const/16 v11, 0x3e

    .line 49
    .line 50
    const-string v7, " "

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-direct {v1, v4, v5}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-nez v1, :cond_2

    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    throw v1
.end method

.method public final saslAuthCramMD5()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "AUTH CRAM-MD5"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v2, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v5, v1}, Lcom/fsck/k9/mail/K9MailLib;->computeCramMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    new-array v3, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v4, v1, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-static {v2, p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->handlePossibleAuthenticationFailure(Ljava/lang/String;Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0

    .line 53
    :cond_0
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 54
    .line 55
    const-string v0, "Unable to negotiate CRAM-MD5"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final saslAuthExternal()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v2, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v0, v2, v3

    .line 15
    .line 16
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "AUTH EXTERNAL %s"

    .line 21
    .line 22
    invoke-virtual {p0, v3, v1, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final saslAuthLogin()V
    .locals 5

    .line 1
    const-string v0, "AUTH LOGIN"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p0, v1, v0, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {p0, v4, v2, v3}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-array v3, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v4, v2, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-static {v0, p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->handlePossibleAuthenticationFailure(Ljava/lang/String;Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    throw p0
.end method

.method public final saslAuthPlain()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\u0000"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :try_start_0
    const-string v1, "AUTH PLAIN %s"

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    new-array v3, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object v0, v3, v4

    .line 39
    .line 40
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v2, v1, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string v0, "AUTH PLAIN"

    .line 50
    .line 51
    invoke-static {v0, p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->handlePossibleAuthenticationFailure(Ljava/lang/String;Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    throw p0
.end method

.method public final saslOAuth(Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "saslOAuth() called with: method = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->retryOAuthWithNewToken:Z

    .line 23
    .line 24
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 25
    .line 26
    if-eqz v2, :cond_18

    .line 27
    .line 28
    new-instance v3, Lkotlin/collections/builders/SetBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v5, v2, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$messages:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v5, Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 41
    .line 42
    invoke-interface {v5}, Lcom/fsck/k9/mail/oauth/AuthStateStorage;->getAuthorizationState()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x0

    .line 47
    if-eqz v5, :cond_17

    .line 48
    .line 49
    invoke-static {v5}, Lnet/openid/appauth/AuthState;->jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthState;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    :try_start_0
    invoke-static {v5}, Lnet/openid/appauth/IdToken;->from(Ljava/lang/String;)Lnet/openid/appauth/IdToken;

    .line 60
    .line 61
    .line 62
    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/openid/appauth/IdToken$IdTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    :cond_0
    move-object v5, v6

    .line 65
    :goto_0
    if-eqz v5, :cond_1

    .line 66
    .line 67
    iget-object v5, v5, Lnet/openid/appauth/IdToken;->additionalClaims:Ljava/util/HashMap;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v5, v6

    .line 71
    :goto_1
    if-nez v5, :cond_2

    .line 72
    .line 73
    sget-object v5, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 74
    .line 75
    :cond_2
    new-instance v7, Lkotlin/collections/builders/SetBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v8, "preferred_username"

    .line 81
    .line 82
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    if-eqz v8, :cond_3

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v7, v8}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    const-string v8, "email"

    .line 96
    .line 97
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    if-eqz v8, :cond_4

    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v7, v8}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_4
    const-string v8, "unique_name"

    .line 111
    .line 112
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    if-eqz v8, :cond_5

    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v7, v8}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    const-string/jumbo v8, "upn"

    .line 126
    .line 127
    .line 128
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    if-eqz v8, :cond_6

    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v7, v8}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_6
    const-string/jumbo v8, "verified_primary_email"

    .line 142
    .line 143
    .line 144
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    const/16 v9, 0xa

    .line 149
    .line 150
    if-eqz v8, :cond_9

    .line 151
    .line 152
    instance-of v10, v8, Ljava/util/List;

    .line 153
    .line 154
    if-eqz v10, :cond_8

    .line 155
    .line 156
    check-cast v8, Ljava/lang/Iterable;

    .line 157
    .line 158
    new-instance v10, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    if-eqz v11, :cond_7

    .line 176
    .line 177
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    invoke-virtual {v7, v10}, Lkotlin/collections/builders/SetBuilder;->addAll(Ljava/util/Collection;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v7, v8}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_9
    :goto_3
    const-string/jumbo v8, "verified_secondary_email"

    .line 201
    .line 202
    .line 203
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    if-eqz v5, :cond_c

    .line 208
    .line 209
    instance-of v8, v5, Ljava/util/List;

    .line 210
    .line 211
    if-eqz v8, :cond_b

    .line 212
    .line 213
    check-cast v5, Ljava/lang/Iterable;

    .line 214
    .line 215
    new-instance v8, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    if-eqz v9, :cond_a

    .line 233
    .line 234
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_a
    invoke-virtual {v7, v8}, Lkotlin/collections/builders/SetBuilder;->addAll(Ljava/util/Collection;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v7, v5}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_c
    :goto_5
    invoke-static {v7}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v3, v5}, Lkotlin/collections/builders/SetBuilder;->addAll(Ljava/util/Collection;)Z

    .line 262
    .line 263
    .line 264
    invoke-static {v3}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 273
    .line 274
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 275
    .line 276
    .line 277
    sget-object v7, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 278
    .line 279
    invoke-interface {v7}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_d

    .line 284
    .line 285
    move-object v7, v3

    .line 286
    goto :goto_6

    .line 287
    :cond_d
    move-object v7, v6

    .line 288
    :goto_6
    if-nez v7, :cond_e

    .line 289
    .line 290
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    const-string v8, "["

    .line 295
    .line 296
    const-string v9, " emails found]"

    .line 297
    .line 298
    invoke-static {v7, v8, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string/jumbo v9, "users = "

    .line 305
    .line 306
    .line 307
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    new-array v8, v1, [Ljava/lang/Object;

    .line 318
    .line 319
    invoke-static {v7, v8}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    const/16 v8, 0x217

    .line 331
    .line 332
    if-eqz v7, :cond_12

    .line 333
    .line 334
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    check-cast v7, Ljava/lang/String;

    .line 339
    .line 340
    :try_start_1
    sget-object v9, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 341
    .line 342
    invoke-interface {v9}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 343
    .line 344
    .line 345
    move-result v9
    :try_end_1
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    if-eqz v9, :cond_f

    .line 347
    .line 348
    move-object v9, v7

    .line 349
    goto :goto_8

    .line 350
    :cond_f
    move-object v9, v6

    .line 351
    :goto_8
    if-nez v9, :cond_10

    .line 352
    .line 353
    const-string v9, "*sensitive*"

    .line 354
    .line 355
    :cond_10
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v11, "trying to authenticate with user \'"

    .line 361
    .line 362
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v9, "\'"

    .line 369
    .line 370
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    new-array v10, v1, [Ljava/lang/Object;

    .line 378
    .line 379
    invoke-static {v9, v10}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0, p1, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->attempOAuth(Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_2
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_2 .. :try_end_2} :catch_1

    .line 386
    .line 387
    .line 388
    goto :goto_9

    .line 389
    :catch_1
    move-exception v9

    .line 390
    const-string v10, "saslOAuth: failed to authenticate."

    .line 391
    .line 392
    new-array v11, v1, [Ljava/lang/Object;

    .line 393
    .line 394
    invoke-static {v9, v10, v11}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    iget v10, v9, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyCode:I

    .line 398
    .line 399
    if-ne v10, v8, :cond_11

    .line 400
    .line 401
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 402
    .line 403
    .line 404
    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_11
    throw v9

    .line 409
    :cond_12
    :goto_9
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_16

    .line 414
    .line 415
    const-string v3, "failed to authenticate with all discovered users."

    .line 416
    .line 417
    new-array v6, v1, [Ljava/lang/Object;

    .line 418
    .line 419
    invoke-static {v3, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    check-cast v3, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    .line 427
    .line 428
    if-eqz v3, :cond_13

    .line 429
    .line 430
    new-instance v5, Lkotlin/Pair;

    .line 431
    .line 432
    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_13
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    check-cast v3, Ljava/lang/Iterable;

    .line 441
    .line 442
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    check-cast v3, Ljava/util/Map$Entry;

    .line 447
    .line 448
    new-instance v5, Lkotlin/Pair;

    .line 449
    .line 450
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :goto_a
    iget-object v3, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v3, Ljava/lang/String;

    .line 464
    .line 465
    iget-object v4, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v4, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    .line 468
    .line 469
    const-string v5, "invalidating current token"

    .line 470
    .line 471
    new-array v6, v1, [Ljava/lang/Object;

    .line 472
    .line 473
    invoke-static {v5, v6}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    iput-boolean v0, v2, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 477
    .line 478
    iget-boolean v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->retryOAuthWithNewToken:Z

    .line 479
    .line 480
    const-string v6, " failed"

    .line 481
    .line 482
    if-eqz v5, :cond_15

    .line 483
    .line 484
    const-string v5, "Authentication exception, re-trying with new token"

    .line 485
    .line 486
    new-array v7, v1, [Ljava/lang/Object;

    .line 487
    .line 488
    invoke-static {v4, v5, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->attempOAuth(Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_3 .. :try_end_3} :catch_2

    .line 492
    .line 493
    .line 494
    goto :goto_b

    .line 495
    :catch_2
    move-exception p0

    .line 496
    iget v3, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyCode:I

    .line 497
    .line 498
    if-eq v3, v8, :cond_14

    .line 499
    .line 500
    throw p0

    .line 501
    :cond_14
    const-string v3, "Authentication exception for new token, permanent error assumed"

    .line 502
    .line 503
    new-array v1, v1, [Ljava/lang/Object;

    .line 504
    .line 505
    invoke-static {p0, v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    iput-boolean v0, v2, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 509
    .line 510
    new-instance v0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 511
    .line 512
    invoke-virtual {p1}, Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;->getCommand()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyText:Ljava/lang/String;

    .line 521
    .line 522
    invoke-direct {v0, p1, v1, p0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    .line 524
    .line 525
    throw v0

    .line 526
    :cond_15
    new-instance p0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 527
    .line 528
    invoke-virtual {p1}, Lcom/fsck/k9/mail/transport/smtp/OAuthMethod;->getCommand()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    iget-object v0, v4, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyText:Ljava/lang/String;

    .line 537
    .line 538
    invoke-direct {p0, p1, v0, v4}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    .line 540
    .line 541
    throw p0

    .line 542
    :cond_16
    :goto_b
    return-void

    .line 543
    :cond_17
    new-instance p0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 544
    .line 545
    const-string p1, "Login required"

    .line 546
    .line 547
    const/4 v0, 0x6

    .line 548
    invoke-direct {p0, p1, v6, v0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 549
    .line 550
    .line 551
    throw p0

    .line 552
    :cond_18
    const-string p0, "No OAuth2TokenProvider available."

    .line 553
    .line 554
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    return-void
.end method

.method public final sendHello()Ljava/util/Map;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "EHLO ehlo.thunderbird.net"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->writeLine(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseParser:Lcom/google/zxing/BinaryBitmap;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 17
    .line 18
    iget-object v4, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lokio/Buffer;

    .line 21
    .line 22
    invoke-virtual {v4}, Lokio/Buffer;->clear()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->readReplyCode()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/16 v5, 0xfa

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    sget-object v7, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 33
    .line 34
    if-eq v4, v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v4, v2}, Lcom/google/zxing/BinaryBitmap;->readResponseAfterReplyCode(IZ)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Error;

    .line 41
    .line 42
    invoke-direct {v3, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Error;-><init>(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const-string v9, "Unexpected end of stream"

    .line 57
    .line 58
    const/4 v10, -0x1

    .line 59
    const/4 v11, 0x0

    .line 60
    if-eq v8, v10, :cond_b

    .line 61
    .line 62
    int-to-char v8, v8

    .line 63
    const/16 v12, 0xa

    .line 64
    .line 65
    const/16 v13, 0xd

    .line 66
    .line 67
    const/16 v14, 0x20

    .line 68
    .line 69
    if-eq v8, v14, :cond_8

    .line 70
    .line 71
    const/16 v15, 0x2d

    .line 72
    .line 73
    if-ne v8, v15, :cond_7

    .line 74
    .line 75
    invoke-virtual {v1, v15}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->readUntilEndOfLine()Lokio/Buffer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v8}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v13}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v12}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 93
    .line 94
    .line 95
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->readReplyCode()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ne v2, v4, :cond_6

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eq v2, v10, :cond_5

    .line 111
    .line 112
    int-to-char v2, v2

    .line 113
    const-string v10, "EHLO line must not be empty"

    .line 114
    .line 115
    if-eq v2, v14, :cond_3

    .line 116
    .line 117
    if-ne v2, v15, :cond_2

    .line 118
    .line 119
    invoke-virtual {v1, v15}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->readUntilEndOfLine()Lokio/Buffer;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v16

    .line 134
    if-eqz v16, :cond_1

    .line 135
    .line 136
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2, v8}, Lcom/google/zxing/BinaryBitmap;->parseEhloLine(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v13}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v12}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 146
    .line 147
    .line 148
    const/4 v10, -0x1

    .line 149
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1, v10, v6}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    throw v11

    .line 154
    :cond_2
    invoke-virtual {v1, v2, v6}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 155
    .line 156
    .line 157
    throw v11

    .line 158
    :cond_3
    invoke-virtual {v1, v14}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->readUntilEndOfLine()Lokio/Buffer;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2, v8}, Lcom/google/zxing/BinaryBitmap;->parseEhloLine(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v13}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v12}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 185
    .line 186
    .line 187
    new-instance v3, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Hello;

    .line 188
    .line 189
    new-instance v1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 190
    .line 191
    invoke-direct {v1, v4, v11, v5}, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;-><init>(ILcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v3, v1, v8}, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Hello;-><init>(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;Ljava/util/Map;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {v1, v10, v6}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    throw v11

    .line 202
    :cond_5
    invoke-virtual {v1, v9, v6}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 203
    .line 204
    .line 205
    throw v11

    .line 206
    :cond_6
    const-string v0, "Multi-line response with reply codes not matching: "

    .line 207
    .line 208
    const-string v3, " != "

    .line 209
    .line 210
    invoke-static {v4, v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v1, v0, v6}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 215
    .line 216
    .line 217
    throw v11

    .line 218
    :cond_7
    invoke-virtual {v1, v8, v6}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 219
    .line 220
    .line 221
    throw v11

    .line 222
    :cond_8
    invoke-virtual {v1, v14}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->readUntilEndOfLine()Lokio/Buffer;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v13}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v12}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 237
    .line 238
    .line 239
    new-instance v3, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Hello;

    .line 240
    .line 241
    new-instance v1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 242
    .line 243
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-direct {v1, v4, v11, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;-><init>(ILcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;Ljava/util/List;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v3, v1, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Hello;-><init>(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;Ljava/util/Map;)V

    .line 251
    .line 252
    .line 253
    :goto_1
    invoke-interface {v3}, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse;->getResponse()Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    const/4 v2, 0x0

    .line 258
    invoke-static {v1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->logResponse(Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;Z)V

    .line 259
    .line 260
    .line 261
    instance-of v1, v3, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Hello;

    .line 262
    .line 263
    if-eqz v1, :cond_9

    .line 264
    .line 265
    check-cast v3, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Hello;

    .line 266
    .line 267
    iget-object v0, v3, Lcom/fsck/k9/mail/transport/smtp/SmtpHelloResponse$Hello;->keywords:Ljava/util/Map;

    .line 268
    .line 269
    return-object v0

    .line 270
    :cond_9
    sget-object v1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 271
    .line 272
    invoke-interface {v1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_a

    .line 277
    .line 278
    const-string v1, "Server doesn\'t support the EHLO command. Trying HELO..."

    .line 279
    .line 280
    new-array v3, v2, [Ljava/lang/Object;

    .line 281
    .line 282
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_a
    :try_start_0
    const-string v1, "HELO %s"

    .line 286
    .line 287
    new-array v3, v6, [Ljava/lang/Object;

    .line 288
    .line 289
    const-string v4, "ehlo.thunderbird.net"

    .line 290
    .line 291
    aput-object v4, v3, v2

    .line 292
    .line 293
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v0, v2, v1, v3}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .line 299
    .line 300
    return-object v7

    .line 301
    :catch_0
    const-string v0, "Server doesn\'t support the HELO command. Continuing anyway."

    .line 302
    .line 303
    const/4 v2, 0x0

    .line 304
    new-array v1, v2, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    return-object v7

    .line 310
    :cond_b
    invoke-virtual {v1, v9, v6}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    throw v11
.end method

.method public final sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 8

    .line 1
    new-instance v0, Lkotlin/collections/builders/SetBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_0

    .line 19
    .line 20
    aget-object v5, v1, v4

    .line 21
    .line 22
    iget-object v5, v5, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    array-length v2, v1

    .line 40
    move v4, v3

    .line 41
    :goto_1
    if-ge v4, v2, :cond_1

    .line 42
    .line 43
    aget-object v5, v1, v4

    .line 44
    .line 45
    iget-object v5, v5, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v5}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    array-length v2, v1

    .line 63
    move v4, v3

    .line 64
    :goto_2
    if-ge v4, v2, :cond_2

    .line 65
    .line 66
    aget-object v5, v1, v4

    .line 67
    .line 68
    iget-object v5, v5, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, v0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 81
    .line 82
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    const-string v1, "Bcc"

    .line 90
    .line 91
    iget-object v2, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->removeHeader(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->ensureClosed()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->open$tfa_mail_protocols_smtp()V

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->largestAcceptableMessage:I

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    if-lez v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->hasAttachments()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->calculateSize()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    iget v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->largestAcceptableMessage:I

    .line 118
    .line 119
    int-to-long v6, v1

    .line 120
    cmp-long v1, v4, v6

    .line 121
    .line 122
    if-gtz v1, :cond_4

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 126
    .line 127
    const-string p1, "Message too large for server"

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v2, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_5
    :goto_3
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-boolean v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->is8bitEncodingAllowed:Z

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->usesAnyUnicodeAddresses()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-virtual {p0, v1, v4, v5}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->constructSmtpMailFromCommand([Lcom/fsck/k9/mail/Address;ZZ)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-boolean v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isPipeliningSupported:Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    const-string v5, "RCPT TO:<%s>"

    .line 154
    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    :try_start_1
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v4, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lkotlin/collections/builders/SetBuilder;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :goto_4
    move-object v1, v0

    .line 169
    check-cast v1, Landroidx/emoji2/text/flatbuffer/Table;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroidx/emoji2/text/flatbuffer/Table;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    move-object v1, v0

    .line 178
    check-cast v1, Lkotlin/collections/builders/MapBuilder$KeysItr;

    .line 179
    .line 180
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder$KeysItr;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Ljava/lang/String;

    .line 185
    .line 186
    new-array v6, v2, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v1, v6, v3

    .line 189
    .line 190
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v4, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :catchall_0
    move-exception p1

    .line 203
    goto/16 :goto_a

    .line 204
    .line 205
    :catch_0
    move-exception p1

    .line 206
    goto/16 :goto_8

    .line 207
    .line 208
    :catch_1
    move-exception p1

    .line 209
    goto/16 :goto_9

    .line 210
    .line 211
    :cond_6
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executePipelinedCommands(Lkotlin/collections/builders/ListBuilder;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->readPipelinedResponse(Lkotlin/collections/builders/ListBuilder;)V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_7
    new-array v4, v3, [Ljava/lang/Object;

    .line 223
    .line 224
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {p0, v3, v1, v4}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lkotlin/collections/builders/SetBuilder;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    :goto_5
    move-object v1, v0

    .line 236
    check-cast v1, Landroidx/emoji2/text/flatbuffer/Table;

    .line 237
    .line 238
    invoke-virtual {v1}, Landroidx/emoji2/text/flatbuffer/Table;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_8

    .line 243
    .line 244
    move-object v1, v0

    .line 245
    check-cast v1, Lkotlin/collections/builders/MapBuilder$KeysItr;

    .line 246
    .line 247
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder$KeysItr;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Ljava/lang/String;

    .line 252
    .line 253
    new-array v4, v2, [Ljava/lang/Object;

    .line 254
    .line 255
    aput-object v1, v4, v3

    .line 256
    .line 257
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {p0, v3, v5, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_8
    :goto_6
    const-string v0, "DATA"

    .line 266
    .line 267
    new-array v1, v3, [Ljava/lang/Object;

    .line 268
    .line 269
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p0, v3, v0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 277
    .line 278
    if-eqz v0, :cond_9

    .line 279
    .line 280
    const v1, 0x493e0

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    .line 287
    .line 288
    new-instance v1, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;

    .line 289
    .line 290
    new-instance v4, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;

    .line 291
    .line 292
    iget-object v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/BufferedOutputStream;

    .line 293
    .line 294
    invoke-direct {v4, v5}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 295
    .line 296
    .line 297
    const/4 v5, 0x2

    .line 298
    iput v5, v4, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 299
    .line 300
    invoke-direct {v1, v4}, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;-><init>(Lcom/fsck/k9/mail/filter/SmtpDataStuffing;)V

    .line 301
    .line 302
    .line 303
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {p1, v0}, Lcom/fsck/k9/mail/Part;->writeTo(Ljava/io/OutputStream;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->endWithCrLfAndFlush()V
    :try_end_1
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    .line 311
    .line 312
    :try_start_2
    const-string p1, "."

    .line 313
    .line 314
    new-array v0, v3, [Ljava/lang/Object;

    .line 315
    .line 316
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p0, v3, p1, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
    :try_end_2
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :goto_7
    move v3, v2

    .line 328
    goto :goto_8

    .line 329
    :catch_2
    move-exception p1

    .line 330
    goto :goto_7

    .line 331
    :cond_9
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 332
    .line 333
    const-string v0, "socket == null"

    .line 334
    .line 335
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1
    :try_end_3
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    :goto_8
    :try_start_4
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 340
    .line 341
    const-string v1, "Unable to send message"

    .line 342
    .line 343
    invoke-direct {v0, v1, v3, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :goto_9
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    :goto_a
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 349
    .line 350
    .line 351
    throw p1
.end method

.method public final writeLine(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget-object p2, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 12
    .line 13
    invoke-interface {p2}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    const-string p2, "SMTP >>> *sensitive*"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p2, "SMTP >>> "

    .line 23
    .line 24
    invoke-static {p2, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {p2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string p2, "\r\n"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/BufferedOutputStream;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
