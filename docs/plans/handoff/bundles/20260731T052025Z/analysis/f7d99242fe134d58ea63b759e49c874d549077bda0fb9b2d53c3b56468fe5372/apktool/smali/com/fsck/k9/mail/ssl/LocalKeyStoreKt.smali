.class public abstract Lcom/fsck/k9/mail/ssl/LocalKeyStoreKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final PASSWORD:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    sput-object v0, Lcom/fsck/k9/mail/ssl/LocalKeyStoreKt;->PASSWORD:[C

    .line 5
    .line 6
    return-void
.end method

.method public static final extract(Ljavax/net/ssl/SSLException;)Ljava/util/List;
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p0, Lcom/fsck/k9/mail/CertificateChainException;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcom/fsck/k9/mail/CertificateChainException;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-nez v0, :cond_2

    .line 14
    .line 15
    move-object p0, v2

    .line 16
    :goto_1
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/mail/CertificateChainException;->certChain:[Ljava/security/cert/X509Certificate;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    return-object v2

    .line 28
    :cond_2
    move-object p0, v0

    .line 29
    goto :goto_0
.end method
