.class public final Lcom/fsck/k9/mail/store/pop3/Pop3Connection;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

.field public in:Ljava/io/BufferedInputStream;

.field public out:Ljava/io/BufferedOutputStream;

.field public final settings:Lcom/fsck/k9/backend/pop3/CommandSetFlag;

.field public socket:Ljava/net/Socket;

.field public topNotAdvertised:Z

.field public final trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/backend/pop3/CommandSetFlag;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->settings:Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    .line 10
    .line 11
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 14
    .line 15
    .line 16
    :catch_2
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 22
    .line 23
    return-void
.end method

.method public final connect()Ljava/net/Socket;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->settings:Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->host:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v1, :cond_0

    .line 16
    .line 17
    aget-object v2, v0, v4

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception v5

    .line 25
    const/4 v6, 0x1

    .line 26
    new-array v6, v6, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v2, v6, v3

    .line 29
    .line 30
    const-string v2, "Could not connect to %s"

    .line 31
    .line 32
    invoke-static {v5, v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    move-object v2, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v2, Ljava/net/UnknownHostException;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_1
    throw v2
.end method

.method public final connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->settings:Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 4
    .line 5
    sget-object v1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->host:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v1, v2, v3

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aput-object p1, v2, v1

    .line 23
    .line 24
    const-string v1, "Connecting to %s as %s"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 30
    .line 31
    iget v2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->port:I

    .line 32
    .line 33
    invoke-direct {v1, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->connectionSecurity:Ljava/io/Serializable;

    .line 37
    .line 38
    check-cast p1, Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 39
    .line 40
    sget-object v2, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 41
    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->host:Ljava/lang/String;

    .line 45
    .line 46
    iget v2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->port:I

    .line 47
    .line 48
    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->clientCertificateAlias:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/lang/String;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0, v3, p1, v2, v0}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance p0, Ljava/net/Socket;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 63
    .line 64
    .line 65
    :goto_0
    const/16 p1, 0x7530

    .line 66
    .line 67
    invoke-virtual {p0, v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method

.method public final executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    sget-object v2, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget-object p2, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 16
    .line 17
    invoke-interface {p2}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const-string p2, ">>> [Command Hidden, Enable Sensitive Debug Logging To Show]"

    .line 24
    .line 25
    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p2, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, p2, v1

    .line 34
    .line 35
    const-string v2, ">>> %s"

    .line 36
    .line 37
    invoke-static {v2, p2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 50
    .line 51
    const/16 p2, 0xd

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 57
    .line 58
    const/16 p2, 0xa

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->readLine()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/16 p2, 0x2b

    .line 83
    .line 84
    if-ne p1, p2, :cond_3

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_3
    new-instance p1, Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse;

    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    invoke-direct {p1, p0, v0, p2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final getCapabilities()Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "CAPA"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->readLine()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "."

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z

    .line 26
    .line 27
    if-nez v1, :cond_7

    .line 28
    .line 29
    iput-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->topNotAdvertised:Z

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "STLS"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->stls:Z

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "UIDL"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->uidl:Z

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v2, "TOP"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const-string v2, "SASL"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    const-string v2, " "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "PLAIN"

    .line 90
    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->authPlain:Z

    .line 98
    .line 99
    :cond_5
    const-string v2, "CRAM-MD5"

    .line 100
    .line 101
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->cramMD5:Z

    .line 108
    .line 109
    :cond_6
    const-string v2, "EXTERNAL"

    .line 110
    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    .line 117
    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->external:Z
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    :cond_7
    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final open()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->settings:Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->connect()Ljava/net/Socket;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 11
    .line 12
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/16 v4, 0x400

    .line 21
    .line 22
    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/16 v4, 0x200

    .line 36
    .line 37
    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 43
    .line 44
    const v3, 0xea60

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->isOpen()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0, v2, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->getCapabilities()Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iput-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 66
    .line 67
    iget-object v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->connectionSecurity:Ljava/io/Serializable;

    .line 68
    .line 69
    check-cast v3, Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 70
    .line 71
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 72
    .line 73
    if-ne v3, v4, :cond_0

    .line 74
    .line 75
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 76
    .line 77
    iget-object v4, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->host:Ljava/lang/String;

    .line 78
    .line 79
    iget v5, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->port:I

    .line 80
    .line 81
    iget-object v6, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->clientCertificateAlias:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v6, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->performStartTlsUpgrade(Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :catch_2
    move-exception p0

    .line 94
    goto :goto_3

    .line 95
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->authType:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lcom/fsck/k9/mail/AuthType;

    .line 98
    .line 99
    invoke-virtual {p0, v0, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->performAuthentication(Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_1
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 104
    .line 105
    const-string v2, "Unable to connect socket"

    .line 106
    .line 107
    invoke-direct {v0, v2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->close()V

    .line 112
    .line 113
    .line 114
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 115
    .line 116
    const-string v2, "Unable to open connection to POP server."

    .line 117
    .line 118
    invoke-direct {p0, v2, v1, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :goto_2
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 123
    .line 124
    const-string v2, "Unable to open connection to POP server due to security error."

    .line 125
    .line 126
    invoke-direct {v0, v2, v1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :goto_3
    invoke-static {p0}, Lcom/fsck/k9/mail/ssl/LocalKeyStoreKt;->extract(Ljavax/net/ssl/SSLException;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    new-instance v1, Lcom/fsck/k9/mail/CertificateValidationException;

    .line 137
    .line 138
    invoke-direct {v1, v0, p0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/util/List;Ljavax/net/ssl/SSLException;)V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :cond_2
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 143
    .line 144
    const-string v2, "Unable to connect"

    .line 145
    .line 146
    invoke-direct {v0, v2, v1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v0
.end method

.method public final performAuthentication(Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->settings:Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    if-eq v1, v3, :cond_2

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    if-ne v1, p2, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 19
    .line 20
    iget-boolean p1, p1, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->external:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "AUTH EXTERNAL "

    .line 25
    .line 26
    :try_start_0
    iget-object p2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 52
    .line 53
    const-string p2, "AUTH EXTERNAL failed"

    .line 54
    .line 55
    iget-object v0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p1, p2, v0, p0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_0
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 62
    .line 63
    const-string p1, "SASL EXTERNAL"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_1
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "Unhandled authentication method: "

    .line 76
    .line 77
    const-string v0, " found in the server settings (bug)."

    .line 78
    .line 79
    invoke-static {p2, p1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 88
    .line 89
    iget-boolean p1, p1, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->cramMD5:Z

    .line 90
    .line 91
    const-string v1, ""

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    const-string p1, "AUTH CRAM-MD5"

    .line 96
    .line 97
    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string p2, "+ "

    .line 102
    .line 103
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object p2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p2, Ljava/lang/String;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->password:Ljava/io/Serializable;

    .line 112
    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p2, v0, p1}, Lcom/fsck/k9/mail/K9MailLib;->computeCramMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catch_1
    move-exception p0

    .line 124
    new-instance p1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 125
    .line 126
    const-string p2, "AUTH CRAM-MD5 failed"

    .line 127
    .line 128
    iget-object v0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {p1, p2, v0, p0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_3
    const-string p1, "APOP "

    .line 135
    .line 136
    const-string v4, "^\\+OK *(?:\\[[^\\]]+\\])?[^<]*(<[^>]*>)?[^<]*$"

    .line 137
    .line 138
    const-string v5, "$1"

    .line 139
    .line 140
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_4

    .line 149
    .line 150
    :try_start_2
    const-string v1, "MD5"

    .line 151
    .line 152
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 153
    .line 154
    .line 155
    move-result-object v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    .line 156
    iget-object v2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->password:Ljava/io/Serializable;

    .line 157
    .line 158
    check-cast v2, Ljava/lang/String;

    .line 159
    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {p2}, Lcom/fsck/k9/mail/filter/Hex;->encodeHex([B)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    :try_start_3
    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Ljava/lang/String;

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, " "

    .line 200
    .line 201
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p0, p1, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_3
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :catch_2
    move-exception p0

    .line 216
    new-instance p1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 217
    .line 218
    const-string p2, "APOP failed"

    .line 219
    .line 220
    iget-object v0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 221
    .line 222
    invoke-direct {p1, p2, v0, p0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :catch_3
    move-exception p0

    .line 227
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 228
    .line 229
    const-string p2, "MD5 failure during POP3 auth APOP"

    .line 230
    .line 231
    invoke-direct {p1, p2, v2, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_4
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 236
    .line 237
    const-string p1, "APOP authentication is not supported"

    .line 238
    .line 239
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p0

    .line 243
    :cond_5
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 244
    .line 245
    iget-boolean p1, p1, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->authPlain:Z

    .line 246
    .line 247
    if-eqz p1, :cond_6

    .line 248
    .line 249
    const-string p1, "\u0000"

    .line 250
    .line 251
    const-string p2, "AUTH PLAIN"

    .line 252
    .line 253
    invoke-virtual {p0, p2, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    :try_start_4
    iget-object p2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p2, Ljava/lang/String;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->password:Ljava/io/Serializable;

    .line 261
    .line 262
    check-cast v0, Ljava/lang/String;

    .line 263
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64$1([B)[B

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    new-instance p2, Ljava/lang/String;

    .line 291
    .line 292
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p2, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_4
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse; {:try_start_4 .. :try_end_4} :catch_4

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :catch_4
    move-exception p0

    .line 300
    new-instance p1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 301
    .line 302
    const-string p2, "AUTH PLAIN failed"

    .line 303
    .line 304
    iget-object v0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 305
    .line 306
    invoke-direct {p1, p2, v0, p0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    :cond_6
    const-string p1, "PASS "

    .line 311
    .line 312
    iget-object p2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p2, Ljava/lang/String;

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v4, "USER "

    .line 319
    .line 320
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {p0, p2, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    :try_start_5
    iget-object p2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->password:Ljava/io/Serializable;

    .line 334
    .line 335
    check-cast p2, Ljava/lang/String;

    .line 336
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p0, p1, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_5
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse; {:try_start_5 .. :try_end_5} :catch_5

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :catch_5
    move-exception p0

    .line 354
    new-instance p1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 355
    .line 356
    const-string p2, "USER/PASS failed"

    .line 357
    .line 358
    iget-object v0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 359
    .line 360
    invoke-direct {p1, p2, v0, p0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    .line 362
    .line 363
    throw p1
.end method

.method public final performStartTlsUpgrade(Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->stls:Z

    .line 4
    .line 5
    const-string v1, "STLS"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 20
    .line 21
    const p2, 0xea60

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/16 p3, 0x400

    .line 36
    .line 37
    invoke-direct {p1, p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 41
    .line 42
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->socket:Ljava/net/Socket;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const/16 p3, 0x200

    .line 51
    .line 52
    invoke-direct {p1, p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->out:Ljava/io/BufferedOutputStream;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->isOpen()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->getCapabilities()Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 71
    .line 72
    const-string p1, "Unable to connect socket"

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 79
    .line 80
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v1, v2, :cond_4

    .line 14
    .line 15
    :cond_0
    int-to-char v1, v1

    .line 16
    const/16 v3, 0xd

    .line 17
    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v3, 0xa

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    aput-object p0, v0, v1

    .line 54
    .line 55
    const-string v1, "<<< %s"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-object p0

    .line 61
    :cond_4
    const-string p0, "End of stream reached while trying to read line."

    .line 62
    .line 63
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method
