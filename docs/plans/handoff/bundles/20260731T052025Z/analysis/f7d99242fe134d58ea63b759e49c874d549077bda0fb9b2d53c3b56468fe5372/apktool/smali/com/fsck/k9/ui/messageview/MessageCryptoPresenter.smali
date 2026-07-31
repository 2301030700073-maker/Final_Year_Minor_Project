.class public final Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field public final messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

.field public reloadOnResumeWithoutRecreateFlag:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 5
    .line 6
    return-void
.end method

.method public static getOpenPgpApiProviderIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    return-object v0
.end method


# virtual methods
.method public final getDecryptionResultForReply()Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method
