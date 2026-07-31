.class public final Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final getLegacyAccount:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final updateReadMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/common/resources/StringsResourceManager;)V
    .locals 4

    .line 1
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 2
    .line 3
    new-instance v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 4
    .line 5
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v2, p6, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;I)V

    .line 9
    .line 10
    .line 11
    const-string v3, "NEVER"

    .line 12
    .line 13
    invoke-direct {v1, v3, v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v3, v1, v2}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;-><init>(Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 25
    .line 26
    iput-object p3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->getLegacyAccount:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 27
    .line 28
    iput-object p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->updateReadMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;

    .line 29
    .line 30
    iput-object p5, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 31
    .line 32
    iput-object p6, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;->invoke(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 39
    .line 40
    const/16 p3, 0x12

    .line 41
    .line 42
    invoke-direct {p2, p0, v3, p3}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 46
    .line 47
    const/4 p4, 0x2

    .line 48
    invoke-direct {p3, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 63
    .line 64
    const/16 p3, 0x18

    .line 65
    .line 66
    invoke-direct {p2, p0, v3, p3}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x3

    .line 70
    invoke-static {p1, v3, v3, p2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static final access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "ReadingMailSettingsViewModel"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 10
    .line 11
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v4, 0x7

    .line 14
    invoke-direct {v0, p1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v3, v2, v0, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 26
    .line 27
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    const/16 v4, 0x8

    .line 30
    .line 31
    invoke-direct {v0, p1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v3, v2, v0, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 43
    .line 44
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/16 v4, 0x9

    .line 47
    .line 48
    invoke-direct {v0, p1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v3, v2, v0, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnBackPressed;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Effect$NavigateBack;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Effect$NavigateBack;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnShowPicturesChange;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v3, p0, p1, v2, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct {v3, p0, p1, v2, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 54
    .line 55
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move-object v4, v3

    .line 60
    check-cast v4, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-object v5, p1

    .line 66
    check-cast v5, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;

    .line 67
    .line 68
    iget-boolean v5, v5, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;->isMarkMessageAsReadOnView:Z

    .line 69
    .line 70
    invoke-static {v4, v2, v2, v5, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZI)Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v0, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
