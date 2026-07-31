.class public final Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const v1, 0x7f1202c7

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    if-eq p1, v2, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    if-eq p1, p0, :cond_0

    .line 19
    .line 20
    iget-object p0, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 21
    .line 22
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p0, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 31
    .line 32
    const p1, 0x7f1202c8

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p0, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 50
    .line 51
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onOpenPgpProviderStatusChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 6
    .line 7
    sget-object v1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UI_REQUIRED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 14
    .line 15
    const v1, 0x7f1202c9

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
