.class public final Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$initFromIntent$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$initFromIntent$1;->this$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$initFromIntent$1;->this$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/openintents/openpgp/util/OpenPgpProviderUtil;->getOpenPgpProviderName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    filled-new-array {v0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const v1, 0x7f12064d

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onOpenPgpProviderStatusChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$initFromIntent$1;->this$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 6
    .line 7
    sget-object v2, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UI_REQUIRED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 12
    .line 13
    iget-object v1, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v2}, Lorg/openintents/openpgp/util/OpenPgpProviderUtil;->getOpenPgpProviderName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    filled-new-array {v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const v2, 0x7f12064d

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
