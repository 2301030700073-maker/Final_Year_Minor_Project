.class public final Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public accountUuid:Ljava/lang/String;

.field public final accounts:Landroidx/lifecycle/CoroutineLiveData;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final foldersLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final specialFolderSelectionStrategy:Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;)V
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
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->specialFolderSelectionStrategy:Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    .line 19
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getAccountsFlow()Lkotlinx/coroutines/flow/Flow;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accounts:Landroidx/lifecycle/CoroutineLiveData;

    .line 30
    .line 31
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->foldersLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    return-void
.end method
