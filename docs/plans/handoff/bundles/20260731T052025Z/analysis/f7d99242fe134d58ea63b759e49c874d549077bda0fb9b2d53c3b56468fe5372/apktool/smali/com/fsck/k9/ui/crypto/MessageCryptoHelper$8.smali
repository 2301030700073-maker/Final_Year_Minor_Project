.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSizeForProgress()Ljava/lang/Long;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 6
    .line 7
    iget p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/fsck/k9/mail/Multipart;

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-ne p0, v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    instance-of v0, p0, Lcom/fsck/k9/mail/internet/SizeAware;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    check-cast p0, Lcom/fsck/k9/mail/internet/SizeAware;

    .line 38
    .line 39
    invoke-interface {p0}, Lcom/fsck/k9/mail/internet/SizeAware;->getSize()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_1
    return-object v2

    .line 49
    :cond_2
    const-string p0, "part to stream must be encrypted or inline!"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v2
.end method

.method public final writeTo(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 6
    .line 7
    iget p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/fsck/k9/mail/Multipart;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    if-ne p0, v2, :cond_1

    .line 30
    .line 31
    const-wide/16 v1, -0x1

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "part to stream must be encrypted or inline!"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const/4 p1, 0x0

    .line 55
    new-array p1, p1, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v0, "MessagingException while writing message to crypto provider"

    .line 58
    .line 59
    invoke-static {p0, v0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
