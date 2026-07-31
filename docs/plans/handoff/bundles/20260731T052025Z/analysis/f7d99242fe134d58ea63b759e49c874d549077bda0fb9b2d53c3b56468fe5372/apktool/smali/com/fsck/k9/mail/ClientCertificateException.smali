.class public final Lcom/fsck/k9/mail/ClientCertificateException;
.super Lnet/thunderbird/core/common/exception/MessagingException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final error:Lcom/fsck/k9/mail/ClientCertificateError;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ClientCertificateError;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Problem with client certificate: "

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
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, v0, v1, p2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/fsck/k9/mail/ClientCertificateException;->error:Lcom/fsck/k9/mail/ClientCertificateError;

    .line 20
    .line 21
    return-void
.end method
