.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;


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
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgress(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-object v1, v2, v0

    .line 17
    .line 18
    const-string v0, "received progress status: %d / %d"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->-$$Nest$mcallbackProgress(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onReturn(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-static {p0, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->-$$Nest$monCryptoOperationReturned(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
