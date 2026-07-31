.class public final Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final updateAvatarImage:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;

.field public final updateGeneralSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;Lnet/thunderbird/core/logging/Logger;)V
    .locals 8

    .line 1
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 2
    .line 3
    new-instance v2, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v2, v7, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 11
    .line 12
    invoke-direct {v3, v1, v7}, Lnet/thunderbird/core/validation/input/IntegerInputField;-><init>(ILjava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    new-instance v6, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 16
    .line 17
    invoke-direct {v6, v7, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    sget-object v4, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;->MONOGRAM:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-direct/range {v0 .. v6}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;-><init>(Ljava/lang/String;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/IntegerInputField;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;Lnet/thunderbird/feature/account/avatar/Avatar;Lnet/thunderbird/core/validation/input/StringInputField;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 31
    .line 32
    iput-object p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateGeneralSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;

    .line 33
    .line 34
    iput-object p5, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateAvatarImage:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;

    .line 35
    .line 36
    iput-object p6, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;->invoke(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance p4, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;

    .line 43
    .line 44
    const/4 p5, 0x0

    .line 45
    invoke-direct {p4, p0, v7, p5}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 49
    .line 50
    const/4 p6, 0x2

    .line 51
    invoke-direct {p5, p2, p4, p6}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p5, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 59
    .line 60
    .line 61
    iget-object p2, p3, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;->repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->getById(Lnet/thunderbird/feature/account/AccountId;)Lkotlinx/coroutines/flow/Flow;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance p3, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;

    .line 68
    .line 69
    const/4 p4, 0x1

    .line 70
    invoke-direct {p3, p2, p1, p4}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/feature/account/AccountId;I)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;

    .line 74
    .line 75
    invoke-direct {p1, p0, v7, p4}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 79
    .line 80
    invoke-direct {p2, p3, p1, p6}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p2, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static final access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "GeneralSettingsViewModel"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v4, 0x4

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
    const/4 v4, 0x5

    .line 28
    invoke-direct {v0, p1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v3, v2, v0, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    const/4 v4, 0x6

    .line 42
    invoke-direct {v0, p1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v3, v2, v0, v1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnBackPressed;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Effect$NavigateBack;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Effect$NavigateBack;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateAvatar;

    .line 21
    .line 22
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 23
    .line 24
    iget-object p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateAvatar;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateSetting(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateColor;

    .line 38
    .line 39
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;

    .line 40
    .line 41
    iget p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnColorChange;->color:I

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateColor;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateSetting(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnNameChange;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateName;

    .line 55
    .line 56
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnNameChange;

    .line 57
    .line 58
    iget-object p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnNameChange;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateName;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->updateSetting(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnSelectAvatarImageClick;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    sget-object p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Effect$OpenAvatarImagePicker;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Effect$OpenAvatarImagePicker;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarImagePicked;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarImagePicked;

    .line 82
    .line 83
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 88
    .line 89
    const/16 v2, 0x1b

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-direct {v1, p0, p1, v3, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x3

    .line 96
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final updateSetting(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v3, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x3

    .line 14
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 15
    .line 16
    .line 17
    return-void
.end method
