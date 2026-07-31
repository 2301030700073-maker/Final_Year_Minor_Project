.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;


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
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final processData(Ljava/io/BufferedInputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->context:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Landroidx/navigation/internal/NavContext;

    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Landroidx/work/Data$Companion;->parse(Landroidx/navigation/internal/NavContext;Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const/4 p1, 0x0

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v0, "Something went wrong while parsing the decrypted MIME part"

    .line 28
    .line 29
    invoke-static {p0, v0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
