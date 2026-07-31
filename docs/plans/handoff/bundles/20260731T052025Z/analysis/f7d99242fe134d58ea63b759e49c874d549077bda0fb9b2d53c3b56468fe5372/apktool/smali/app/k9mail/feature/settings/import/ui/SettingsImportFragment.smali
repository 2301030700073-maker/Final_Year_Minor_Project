.class public final Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

.field public final pickDocumentLauncher:Landroidx/fragment/app/Fragment$10;

.field public final qrCodeScannerLauncher:Landroidx/fragment/app/Fragment$10;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 23
    .line 24
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v0, p0, v2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 31
    .line 32
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    invoke-direct {v2, v1, p0}, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 42
    .line 43
    invoke-direct {v1, v3}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->pickDocumentLauncher:Landroidx/fragment/app/Fragment$10;

    .line 51
    .line 52
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 62
    .line 63
    const/16 v1, 0x9

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->qrCodeScannerLauncher:Landroidx/fragment/app/Fragment$10;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_SUCCESS:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eq p1, v4, :cond_1

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    if-ne p2, v3, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->currentlyAuthorizingAccountUuid:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    iput-object v2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->currentlyAuthorizingAccountUuid:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->getListIndexOfAccount(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {p2, p3, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->updateCloseButtonAndImportStatusText()V

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-virtual {p3, p2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-object p3, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 50
    .line 51
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1, v2, v1}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p3, v2, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    if-ne p2, v3, :cond_4

    .line 61
    .line 62
    if-eqz p3, :cond_3

    .line 63
    .line 64
    const-string p1, "accountUuid"

    .line 65
    .line 66
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const-string p2, "incomingServerPassword"

    .line 73
    .line 74
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const-string v3, "outgoingServerPassword"

    .line 79
    .line 80
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    new-instance v3, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;

    .line 85
    .line 86
    invoke-direct {v3, p1, p2, p3}, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->getListIndexOfAccount(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p2, p1, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->setSettingsListState(ILapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->updateCloseButtonAndImportStatusText()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 121
    .line 122
    new-instance p3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 123
    .line 124
    invoke-direct {p3, v3, p0, v2, v4}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1, p2, v2, p3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_2
    const-string p0, "Missing account UUID"

    .line 132
    .line 133
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    const-string p0, "No result intent received"

    .line 138
    .line 139
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-boolean v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->isInitialized:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->migrationManager:Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->isInitialized:Z

    .line 20
    .line 21
    :goto_0
    new-instance p1, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v0, 0x18

    .line 24
    .line 25
    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, v2, p1}, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "pickApp"

    .line 39
    .line 40
    invoke-virtual {v0, p1, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0c0176

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 9
    .line 10
    const-string v1, "settingsListVisible"

    .line 11
    .line 12
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListVisible:Z

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    const-string v1, "settingsListEnabled"

    .line 18
    .line 19
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v1, "importButton"

    .line 25
    .line 26
    iget-object v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Landroidx/work/Operation$State;->putEnum(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "closeButton"

    .line 32
    .line 33
    iget-object v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 34
    .line 35
    invoke-static {p1, v1, v2}, Landroidx/work/Operation$State;->putEnum(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "closeButtonLabel"

    .line 39
    .line 40
    iget-object v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 41
    .line 42
    invoke-static {p1, v1, v2}, Landroidx/work/Operation$State;->putEnum(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "pickDocumentButtonVisible"

    .line 46
    .line 47
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 48
    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    const-string v1, "pickDocumentButtonEnabled"

    .line 53
    .line 54
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 55
    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v1, "scanQrCodeButtonVisible"

    .line 60
    .line 61
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    const-string v1, "scanQrCodeButtonEnabled"

    .line 67
    .line 68
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 69
    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const-string v1, "loadingProgressVisible"

    .line 74
    .line 75
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isLoadingProgressVisible:Z

    .line 76
    .line 77
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const-string v1, "importProgressVisible"

    .line 81
    .line 82
    iget-boolean v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 83
    .line 84
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    const-string v1, "statusText"

    .line 88
    .line 89
    iget-object v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 90
    .line 91
    invoke-static {p1, v1, v2}, Landroidx/work/Operation$State;->putEnum(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 92
    .line 93
    .line 94
    const-string v1, "currentlyAuthorizingAccountUuid"

    .line 95
    .line 96
    iget-object v2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->currentlyAuthorizingAccountUuid:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListVisible:Z

    .line 102
    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->getContainsGeneralSettings()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const-string v2, "containsGeneralSettings"

    .line 110
    .line 111
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    const-string v1, "includeGeneralSettings"

    .line 117
    .line 118
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->getIncludeGeneralSettings()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_1

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 142
    .line 143
    instance-of v3, v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$GeneralSettings;

    .line 144
    .line 145
    if-eqz v3, :cond_0

    .line 146
    .line 147
    iget-object v1, v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 148
    .line 149
    const-string v2, "generalSettingsImportStatus"

    .line 150
    .line 151
    invoke-static {p1, v2, v1}, Landroidx/work/Operation$State;->putEnum(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    .line 156
    .line 157
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_2
    :goto_0
    iget-object v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 162
    .line 163
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    sget-object v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;->INSTANCE$1:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;

    .line 168
    .line 169
    new-instance v3, Lkotlin/sequences/FilteringSequence;

    .line 170
    .line 171
    const/4 v4, 0x1

    .line 172
    invoke-direct {v3, v1, v4, v2}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;

    .line 176
    .line 177
    invoke-direct {v1, p0, v4}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;I)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Lkotlin/sequences/TakeWhileSequence;

    .line 181
    .line 182
    const/4 v5, 0x2

    .line 183
    invoke-direct {v2, v3, v1, v5}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    .line 187
    .line 188
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    sub-int/2addr v0, v4

    .line 195
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lkotlin/sequences/TakeWhileSequence;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :goto_1
    move-object v2, v0

    .line 203
    check-cast v2, Landroidx/core/view/TreeIterator;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroidx/core/view/TreeIterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_3

    .line 210
    .line 211
    invoke-virtual {v2}, Landroidx/core/view/TreeIterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_3
    const-string v0, "accountList"

    .line 220
    .line 221
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 222
    .line 223
    .line 224
    :cond_4
    const-string v0, "contentUri"

    .line 225
    .line 226
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentUri:Landroid/net/Uri;

    .line 227
    .line 228
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-boolean v0, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->wasActionHandled:Z

    .line 15
    .line 16
    const-string v2, "contentUri"

    .line 17
    .line 18
    const-class v3, Landroid/net/Uri;

    .line 19
    .line 20
    invoke-static {p2, v2, v3}, Landroidx/sqlite/SQLite;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/net/Uri;

    .line 25
    .line 26
    iput-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentUri:Landroid/net/Uri;

    .line 27
    .line 28
    const-string v2, "currentlyAuthorizingAccountUuid"

    .line 29
    .line 30
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->currentlyAuthorizingAccountUuid:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v3, 0x11

    .line 39
    .line 40
    invoke-direct {v2, v3, p2, v1}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 44
    .line 45
    invoke-virtual {v2, p2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance p2, Lapp/k9mail/feature/settings/import/ui/ViewHolder;

    .line 54
    .line 55
    invoke-direct {p2, p1}, Lapp/k9mail/feature/settings/import/ui/ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 64
    .line 65
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 66
    .line 67
    invoke-direct {v1}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, v1, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 77
    .line 78
    invoke-static {v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    iput-object v1, v4, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 85
    .line 86
    :cond_1
    iput-object v1, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    move v2, v3

    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x0

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    add-int/lit8 v6, v2, 0x1

    .line 105
    .line 106
    if-ltz v2, :cond_2

    .line 107
    .line 108
    check-cast v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 109
    .line 110
    iput v2, v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 111
    .line 112
    move v2, v6

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 115
    .line 116
    .line 117
    throw v5

    .line 118
    :cond_3
    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 125
    .line 126
    const/4 v2, 0x6

    .line 127
    invoke-direct {p1, v2, p0}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iput-object p1, v1, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    .line 131
    .line 132
    new-instance p1, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;

    .line 133
    .line 134
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;

    .line 135
    .line 136
    invoke-direct {v2, p0, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, v2, v0}, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;-><init>(Lkotlin/Function;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p2, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->settingsImportList:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {p1, p0, v3}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p2, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->pickDocumentButton:Landroid/view/View;

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    invoke-direct {p1, p0, v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p2, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->scanQrCodeButton:Landroid/view/View;

    .line 166
    .line 167
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    const/4 v1, 0x2

    .line 173
    invoke-direct {p1, p0, v1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p2, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->pickAppButton:Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;

    .line 182
    .line 183
    const/4 v1, 0x3

    .line 184
    invoke-direct {p1, p0, v1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p2, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->importButton:Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;

    .line 193
    .line 194
    const/4 v1, 0x4

    .line 195
    invoke-direct {p1, p0, v1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p2, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->closeButton:Lcom/google/android/material/button/MaterialButton;

    .line 199
    .line 200
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 208
    .line 209
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-nez v2, :cond_4

    .line 214
    .line 215
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 216
    .line 217
    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_4
    new-instance p1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 221
    .line 222
    const/16 v2, 0x10

    .line 223
    .line 224
    invoke-direct {p1, v2, p0, p2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v1, p0, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 235
    .line 236
    new-instance p2, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;

    .line 237
    .line 238
    invoke-direct {p2, p0, v3}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda6;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V

    .line 239
    .line 240
    .line 241
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 245
    .line 246
    if-eqz p1, :cond_9

    .line 247
    .line 248
    sget-object p2, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->Companion:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction$Companion;

    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    const-string p2, "action"

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    sget-object p2, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 260
    .line 261
    invoke-virtual {p2}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_6

    .line 270
    .line 271
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    move-object v2, v1

    .line 276
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 277
    .line 278
    iget-object v2, v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->bundleValue:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_5

    .line 285
    .line 286
    move-object v5, v1

    .line 287
    :cond_6
    check-cast v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 288
    .line 289
    if-nez v5, :cond_7

    .line 290
    .line 291
    sget-object v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->Overview:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 292
    .line 293
    :cond_7
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    iput-object v5, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->action:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 301
    .line 302
    iget-boolean p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->wasActionHandled:Z

    .line 303
    .line 304
    if-nez p1, :cond_9

    .line 305
    .line 306
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->wasActionHandled:Z

    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_9

    .line 313
    .line 314
    if-ne p1, v0, :cond_8

    .line 315
    .line 316
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->disablePickButtons()V

    .line 322
    .line 323
    .line 324
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 325
    .line 326
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/Action$ScanQrCode;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/Action$ScanQrCode;

    .line 330
    .line 331
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 336
    .line 337
    .line 338
    :cond_9
    return-void
.end method
