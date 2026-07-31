.class public final Lcom/fsck/k9/ui/settings/SettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final accounts:Landroidx/lifecycle/CoroutineLiveData;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 14
    .line 15
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getAccountsFlow()Lkotlinx/coroutines/flow/Flow;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsViewModel;->accounts:Landroidx/lifecycle/CoroutineLiveData;

    .line 26
    .line 27
    return-void
.end method
