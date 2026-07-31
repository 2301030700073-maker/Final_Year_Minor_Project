.class public final Lcom/fsck/k9/mail/CertificateValidationException;
.super Lnet/thunderbird/core/common/exception/MessagingException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final certificateChain:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljavax/net/ssl/SSLException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/CertificateValidationException;->certificateChain:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method
