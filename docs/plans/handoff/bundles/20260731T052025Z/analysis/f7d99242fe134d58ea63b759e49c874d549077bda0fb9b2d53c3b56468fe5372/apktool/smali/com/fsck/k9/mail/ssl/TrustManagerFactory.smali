.class public final Lcom/fsck/k9/mail/ssl/TrustManagerFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cachedTrustManagers:Ljava/util/HashMap;

.field public defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field public final keyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->cachedTrustManagers:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->keyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 5

    .line 1
    const-string v0, "X509"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .line 28
    .line 29
    iput-object v3, p0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method
