.class public final Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public final presenterScope:Lkotlinx/coroutines/CoroutineScope;

.field public showTransferCodePi:Landroid/app/PendingIntent;

.field public final view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

.field public final viewModel:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/openintents/openpgp/OpenPgpApiManager;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;)V
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/JobKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->preferences:Lcom/fsck/k9/Preferences;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->viewModel:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->presenterScope:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    iget-object p2, p4, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;->autocryptSetupMessageLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 25
    .line 26
    new-instance p3, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 p5, 0x0

    .line 29
    invoke-direct {p3, p0, p5}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;I)V

    .line 30
    .line 31
    .line 32
    new-instance p5, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-direct {p5, v0, p3}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1, p5}, Lcom/fsck/k9/helper/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p4, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;->autocryptSetupTransferLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 42
    .line 43
    new-instance p3, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 p4, 0x1

    .line 46
    invoke-direct {p3, p0, p4}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;I)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 50
    .line 51
    invoke-direct {p0, v0, p3}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1, p0}, Lcom/fsck/k9/helper/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
