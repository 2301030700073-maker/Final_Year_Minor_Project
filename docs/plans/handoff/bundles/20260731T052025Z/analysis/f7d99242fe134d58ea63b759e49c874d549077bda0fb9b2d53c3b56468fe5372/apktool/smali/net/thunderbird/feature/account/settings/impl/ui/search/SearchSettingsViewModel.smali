.class public final Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final getLegacyAccount:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final updateSearchSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/common/resources/StringsResourceManager;)V
    .locals 5

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 6
    .line 7
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 8
    .line 9
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v3, p6, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;I)V

    .line 13
    .line 14
    .line 15
    const-string v4, "25"

    .line 16
    .line 17
    invoke-direct {v2, v4, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v1, v3, v2}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;-><init>(Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 31
    .line 32
    iput-object p3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->updateSearchSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;

    .line 33
    .line 34
    iput-object p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->getLegacyAccount:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 35
    .line 36
    iput-object p5, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 37
    .line 38
    iput-object p6, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 39
    .line 40
    iput-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;->invoke(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 47
    .line 48
    const/16 p3, 0x13

    .line 49
    .line 50
    invoke-direct {p2, p0, v3, p3}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 51
    .line 52
    .line 53
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 54
    .line 55
    const/4 p4, 0x2

    .line 56
    invoke-direct {p3, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance p2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 71
    .line 72
    const/16 p3, 0x19

    .line 73
    .line 74
    invoke-direct {p2, p0, v3, p3}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0, v3, p2, p4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static final access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "SearchSettingsViewModel"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v4, 0x0

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
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    invoke-direct {v0, p1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v3, v2, v0, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    const/16 v4, 0xb

    .line 43
    .line 44
    invoke-direct {v0, p1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v3, v2, v0, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static final access$selectOptionForServerSearchLimit(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;I)Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7f120145

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0xa

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x7f12013e

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 v0, 0x19

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    const v0, 0x7f120141

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/16 v0, 0x32

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    const v0, 0x7f120143

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/16 v0, 0x64

    .line 32
    .line 33
    if-ne p1, v0, :cond_4

    .line 34
    .line 35
    const v0, 0x7f12013f

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/16 v0, 0xfa

    .line 40
    .line 41
    if-ne p1, v0, :cond_5

    .line 42
    .line 43
    const v0, 0x7f120142

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    const/16 v0, 0x1f4

    .line 48
    .line 49
    if-ne p1, v0, :cond_6

    .line 50
    .line 51
    const v0, 0x7f120144

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    const/16 v0, 0x3e8

    .line 56
    .line 57
    if-ne p1, v0, :cond_7

    .line 58
    .line 59
    const v0, 0x7f120140

    .line 60
    .line 61
    .line 62
    :goto_0
    new-instance v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    invoke-direct {v2, v0, v3, p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p1, v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_7
    const-string p0, "Invalid serverSearchLimit value: "

    .line 79
    .line 80
    invoke-static {p0, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnBackPressed;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Effect$NavigateBack;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Effect$NavigateBack;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Event$OnServerSearchLimitChange;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v1, p0, p1, v2, v3}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    .line 33
    invoke-static {v0, p0, v2, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
