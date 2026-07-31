.class public final Lcom/fsck/k9/helper/KeyChainKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mAlias:Ljava/lang/String;

.field public final mChain:[Ljava/security/cert/X509Certificate;

.field public final mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    .line 5
    .line 6
    :try_start_0
    invoke-static {p1, p2}, Lcom/fsck/k9/helper/KeyChainKeyManager;->fetchCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mChain:[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    :try_start_1
    invoke-static {p1, p2}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_1
    .catch Landroid/security/KeyChainException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    :try_start_2
    iput-object p1, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;
    :try_end_2
    .catch Landroid/security/KeyChainException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_3
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 22
    .line 23
    const-string p1, "No private key found for: "

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
    :try_end_3
    .catch Landroid/security/KeyChainException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception p0

    .line 36
    :goto_0
    new-instance p1, Lcom/fsck/k9/mail/ClientCertificateException;

    .line 37
    .line 38
    sget-object p2, Lcom/fsck/k9/mail/ClientCertificateError;->RetrievalFailure:Lcom/fsck/k9/mail/ClientCertificateError;

    .line 39
    .line 40
    invoke-direct {p1, p2, p0}, Lcom/fsck/k9/mail/ClientCertificateException;-><init>(Lcom/fsck/k9/mail/ClientCertificateError;Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public static fetchCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :try_start_0
    array-length p1, p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-ge v0, p1, :cond_0

    .line 13
    .line 14
    aget-object v1, p0, v0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lcom/fsck/k9/mail/ClientCertificateException;

    .line 25
    .line 26
    sget-object v0, Lcom/fsck/k9/mail/ClientCertificateError;->CertificateExpired:Lcom/fsck/k9/mail/ClientCertificateError;

    .line 27
    .line 28
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/mail/ClientCertificateException;-><init>(Lcom/fsck/k9/mail/ClientCertificateError;Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 33
    .line 34
    const-string v0, "No certificate chain found for: "

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method


# virtual methods
.method public final chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mChain:[Ljava/security/cert/X509Certificate;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {v4}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    array-length v5, p1

    .line 33
    move v6, v2

    .line 34
    :goto_0
    const/4 v7, 0x1

    .line 35
    iget-object v8, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    .line 36
    .line 37
    if-ge v6, v5, :cond_9

    .line 38
    .line 39
    aget-object v9, p1, v6

    .line 40
    .line 41
    if-nez v9, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const/16 v10, 0x5f

    .line 45
    .line 46
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    const/4 v11, -0x1

    .line 51
    if-ne v10, v11, :cond_2

    .line 52
    .line 53
    move-object v11, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v11, v10, 0x1

    .line 56
    .line 57
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    :goto_1
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    if-eqz v11, :cond_4

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_4

    .line 81
    .line 82
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    if-eqz p2, :cond_8

    .line 86
    .line 87
    array-length p0, p2

    .line 88
    if-nez p0, :cond_5

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    array-length p1, v1

    .line 96
    move p2, v2

    .line 97
    :goto_3
    if-ge p2, p1, :cond_7

    .line 98
    .line 99
    aget-object v3, v1, p2

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    return-object v8

    .line 112
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    new-array p0, v7, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v8, p0, v2

    .line 118
    .line 119
    const-string p1, "Client certificate %s not issued by any of the requested issuers"

    .line 120
    .line 121
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_8
    :goto_4
    return-object v8

    .line 126
    :cond_9
    new-array p0, v7, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v8, p0, v2

    .line 129
    .line 130
    const-string p1, "Client certificate %s does not match any of the requested key types"

    .line 131
    .line 132
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_a
    :goto_5
    return-object v0
.end method

.method public final chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mChain:[Ljava/security/cert/X509Certificate;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    new-array p1, p1, [Ljava/lang/String;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    aput-object p0, p1, p2

    .line 18
    .line 19
    return-object p1
.end method

.method public final getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mAlias:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/helper/KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/KeyChainKeyManager;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    new-array p1, p1, [Ljava/lang/String;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    aput-object p0, p1, p2

    .line 18
    .line 19
    return-object p1
.end method
