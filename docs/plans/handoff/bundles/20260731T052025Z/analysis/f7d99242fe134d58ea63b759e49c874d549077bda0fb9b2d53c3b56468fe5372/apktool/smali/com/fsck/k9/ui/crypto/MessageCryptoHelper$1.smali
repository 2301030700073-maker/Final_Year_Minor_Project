.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;


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
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBound(Lorg/openintents/openpgp/IOpenPgpService2;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApiFactory:Lcom/bumptech/glide/GlideBuilder$1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Lorg/openintents/openpgp/util/OpenPgpApi;-><init>(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "Couldn\'t connect to OpenPgpService"

    .line 5
    .line 6
    invoke-static {p1, v0, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
