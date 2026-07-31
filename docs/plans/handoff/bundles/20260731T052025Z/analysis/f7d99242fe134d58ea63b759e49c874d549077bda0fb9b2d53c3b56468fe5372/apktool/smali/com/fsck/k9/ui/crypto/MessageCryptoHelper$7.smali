.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic val$signedPart:Lcom/fsck/k9/mail/Part;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Part;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;->val$signedPart:Lcom/fsck/k9/mail/Part;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final writeTo(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;->val$signedPart:Lcom/fsck/k9/mail/Part;

    .line 3
    .line 4
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/fsck/k9/mail/Multipart;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "signed data type: %s"

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object v2, v3, v0

    .line 24
    .line 25
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "Exception while writing message to crypto provider"

    .line 34
    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
