.class public final Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DISALLOWED_CIPHERS:[Ljava/lang/String;

.field public static final DISALLOWED_PROTOCOLS:[Ljava/lang/String;

.field public static final ENABLED_CIPHERS:[Ljava/lang/String;

.field public static final ENABLED_PROTOCOLS:[Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final trustManagerFactory:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const-string v21, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    .line 2
    .line 3
    const-string v22, "TLS_RSA_WITH_NULL_SHA256"

    .line 4
    .line 5
    const-string v2, "SSL_RSA_WITH_DES_CBC_SHA"

    .line 6
    .line 7
    const-string v3, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    .line 8
    .line 9
    const-string v4, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    .line 10
    .line 11
    const-string v5, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    .line 12
    .line 13
    const-string v6, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 14
    .line 15
    const-string v7, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 16
    .line 17
    const-string v8, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    .line 18
    .line 19
    const-string v9, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 20
    .line 21
    const-string v10, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 22
    .line 23
    const-string v11, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    .line 24
    .line 25
    const-string v12, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    .line 26
    .line 27
    const-string v13, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    .line 28
    .line 29
    const-string v14, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    .line 30
    .line 31
    const-string v15, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    .line 32
    .line 33
    const-string v16, "SSL_RSA_WITH_RC4_128_SHA"

    .line 34
    .line 35
    const-string v17, "SSL_RSA_WITH_RC4_128_MD5"

    .line 36
    .line 37
    const-string v18, "TLS_ECDH_RSA_WITH_NULL_SHA"

    .line 38
    .line 39
    const-string v19, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 40
    .line 41
    const-string v20, "TLS_ECDH_anon_WITH_NULL_SHA"

    .line 42
    .line 43
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->DISALLOWED_CIPHERS:[Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "SSLv3"

    .line 50
    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->DISALLOWED_PROTOCOLS:[Ljava/lang/String;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    :try_start_0
    const-string v0, "TLS"

    .line 59
    .line 60
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    .line 92
    move-object v2, v1

    .line 93
    :goto_0
    const/4 v3, 0x0

    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    const-string v4, "Error getting information about available SSL/TLS ciphers and protocols"

    .line 97
    .line 98
    invoke-static {v0, v4, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    move-object v0, v1

    .line 102
    :goto_1
    if-eqz v2, :cond_0

    .line 103
    .line 104
    sget-object v3, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->DISALLOWED_CIPHERS:[Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v2, v3}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory$Companion;->access$remove([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto :goto_2

    .line 111
    :cond_0
    move-object v2, v1

    .line 112
    :goto_2
    sput-object v2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->ENABLED_CIPHERS:[Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    sget-object v1, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->DISALLOWED_PROTOCOLS:[Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0, v1}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory$Companion;->access$remove([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :cond_1
    sput-object v1, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    .line 123
    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mail/ssl/TrustManagerFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->trustManagerFactory:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ":"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->trustManagerFactory:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->cachedTrustManagers:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v3, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;

    .line 42
    .line 43
    invoke-direct {v3, v1, p2, p3}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;-><init>(Lcom/fsck/k9/mail/ssl/TrustManagerFactory;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-object v0, v3

    .line 50
    :goto_0
    const/4 v1, 0x1

    .line 51
    new-array v2, v1, [Ljavax/net/ssl/TrustManager;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    aput-object v0, v2, v3

    .line 55
    .line 56
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v4, 0x0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    new-array v0, v1, [Ljavax/net/ssl/KeyManager;

    .line 64
    .line 65
    new-instance v5, Lcom/fsck/k9/helper/KeyChainKeyManager;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->context:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {v5, p0, p4}, Lcom/fsck/k9/helper/KeyChainKeyManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    aput-object v5, v0, v3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v0, v4

    .line 76
    :goto_1
    const-string p0, "TLS"

    .line 77
    .line 78
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v0, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-object p3, p1

    .line 104
    check-cast p3, Ljavax/net/ssl/SSLSocket;

    .line 105
    .line 106
    sget-object p4, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->ENABLED_CIPHERS:[Ljava/lang/String;

    .line 107
    .line 108
    if-eqz p4, :cond_3

    .line 109
    .line 110
    invoke-virtual {p3, p4}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    sget-object p4, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    .line 114
    .line 115
    if-eqz p4, :cond_4

    .line 116
    .line 117
    invoke-virtual {p3, p4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-static {p2}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalIPv4Address(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    if-nez p4, :cond_5

    .line 125
    .line 126
    invoke-static {p2}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalIPv6Address(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    :cond_5
    if-nez p4, :cond_6

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p3, p2}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory$Companion;->access$setSniHost(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    return-object p1
.end method
