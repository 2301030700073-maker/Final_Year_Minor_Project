.class public final Lcom/fsck/k9/mail/CertificateChainException;
.super Ljava/security/cert/CertificateException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final certChain:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/mail/CertificateChainException;->certChain:[Ljava/security/cert/X509Certificate;

    .line 5
    .line 6
    return-void
.end method
