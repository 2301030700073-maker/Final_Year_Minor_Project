.class public final Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field public final hostnameVerifier:Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;

.field public final mHost:Ljava/lang/String;

.field public final mPort:I

.field public final synthetic this$0:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ssl/TrustManagerFactory;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->this$0:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 5
    .line 6
    new-instance p1, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->hostnameVerifier:Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    .line 14
    .line 15
    iput p3, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mPort:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->this$0:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->this$0:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 7
    .line 8
    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->hostnameVerifier:Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p2

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p2

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :goto_2
    iget-object v3, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->this$0:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->keyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    .line 40
    .line 41
    iget p0, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->mPort:I

    .line 42
    .line 43
    monitor-enter v3

    .line 44
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v5, v3, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->keyStore$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 51
    .line 52
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/security/KeyStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    if-nez v5, :cond_0

    .line 59
    .line 60
    monitor-exit v3

    .line 61
    goto :goto_5

    .line 62
    :cond_0
    :try_start_2
    invoke-static {v4, p0}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getCertKey(Ljava/lang/String;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const/4 v6, 0x2

    .line 71
    const/4 v7, 0x1

    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    const-string v1, "Couldn\'t find a stored certificate for %s:%d"

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-array v5, v6, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v4, v5, v0

    .line 83
    .line 84
    aput-object p0, v5, v7

    .line 85
    .line 86
    invoke-static {v1, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_6

    .line 92
    :catch_2
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-nez v8, :cond_2

    .line 99
    .line 100
    const-string v8, "Stored certificate for %s:%d doesn\'t match.\nExpected:\n%s\nActual:\n%s"

    .line 101
    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const/4 v9, 0x4

    .line 107
    new-array v9, v9, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v4, v9, v0

    .line 110
    .line 111
    aput-object p0, v9, v7

    .line 112
    .line 113
    aput-object v5, v9, v6

    .line 114
    .line 115
    const/4 p0, 0x3

    .line 116
    aput-object v1, v9, p0

    .line 117
    .line 118
    invoke-static {v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_2
    const-string v1, "Stored certificate for %s:%d matches the server certificate"

    .line 123
    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-array v5, v6, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v4, v5, v0

    .line 131
    .line 132
    aput-object p0, v5, v7

    .line 133
    .line 134
    invoke-static {v1, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    .line 137
    move v0, v7

    .line 138
    goto :goto_4

    .line 139
    :goto_3
    :try_start_3
    const-string v1, "Error reading from KeyStore"

    .line 140
    .line 141
    new-array v4, v0, [Ljava/lang/Object;

    .line 142
    .line 143
    invoke-static {p0, v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .line 145
    .line 146
    :goto_4
    monitor-exit v3

    .line 147
    :goto_5
    if-eqz v0, :cond_3

    .line 148
    .line 149
    return-void

    .line 150
    :cond_3
    new-instance p0, Lcom/fsck/k9/mail/CertificateChainException;

    .line 151
    .line 152
    invoke-direct {p0, v2, p1, p2}, Lcom/fsck/k9/mail/CertificateChainException;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :goto_6
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    throw p0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory$SecureX509TrustManager;->this$0:Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 4
    .line 5
    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
