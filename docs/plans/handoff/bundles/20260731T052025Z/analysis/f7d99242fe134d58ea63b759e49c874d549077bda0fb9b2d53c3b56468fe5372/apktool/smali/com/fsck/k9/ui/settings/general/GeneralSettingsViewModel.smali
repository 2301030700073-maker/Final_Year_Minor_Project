.class public final Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final logFileWriter:Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

.field public snackbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final syncDebugFileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

.field public final uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final uiStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;Lnet/thunderbird/core/logging/file/FileLogSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->logFileWriter:Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->syncDebugFileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 7
    .line 8
    sget-object p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Idle;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Idle;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->uiStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    return-void
.end method

.method public static final access$setExportingState(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->snackbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->snackbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 10
    .line 11
    sget-object v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Exporting;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Exporting;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->uiStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->snackbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 14
    .line 15
    const/16 v3, 0xf

    .line 16
    .line 17
    invoke-direct {v2, p0, p1, v1, v3}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x3

    .line 21
    invoke-static {v0, v1, v1, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->snackbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    return-void
.end method
