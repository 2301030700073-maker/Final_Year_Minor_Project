.class public final Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final formUiModel:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;

.field public final getSpecialFolderOptions:Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

.field public final validateSpecialFolderOptions:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V
    .locals 12

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 2
    .line 3
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 4
    .line 5
    new-instance v7, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v7, v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;-><init>(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v8, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 12
    .line 13
    invoke-direct {v8, v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v9, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 17
    .line 18
    invoke-direct {v9, v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v10, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 22
    .line 23
    invoke-direct {v10, v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v11, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 27
    .line 28
    invoke-direct {v11, v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    move-object v4, v2

    .line 35
    move-object v5, v2

    .line 36
    move-object v6, v2

    .line 37
    invoke-direct/range {v1 .. v11}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;Z)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->formUiModel:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;

    .line 51
    .line 52
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->getSpecialFolderOptions:Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 53
    .line 54
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->validateSpecialFolderOptions:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;

    .line 55
    .line 56
    move-object/from16 p1, p4

    .line 57
    .line 58
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 59
    .line 60
    return-void
.end method

.method public static final access$loadSpecialFolderOptions(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/folders/FolderFetcherException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    move-object p1, v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :try_start_1
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->getSpecialFolderOptions:Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 52
    .line 53
    iput v3, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel$loadSpecialFolderOptions$1;->label:I

    .line 54
    .line 55
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 56
    .line 57
    new-instance v3, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 58
    .line 59
    const/16 v4, 0x9

    .line 60
    .line 61
    invoke-direct {v3, p1, v2, v4}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_1
    .catch Lcom/fsck/k9/mail/folders/FolderFetcherException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 69
    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    :goto_1
    :try_start_2
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;
    :try_end_2
    .catch Lcom/fsck/k9/mail/folders/FolderFetcherException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    return-object p1

    .line 76
    :goto_2
    const/4 v0, 0x0

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    const-string v1, "Error while loading special folders"

    .line 80
    .line 81
    invoke-static {p1, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 85
    .line 86
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v3, v0

    .line 91
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v6, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 97
    .line 98
    iget-object v1, p1, Lcom/fsck/k9/mail/folders/FolderFetcherException;->messageFromServer:Ljava/lang/String;

    .line 99
    .line 100
    invoke-direct {v6, v1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v8, 0x3

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-static/range {v3 .. v8}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    return-object v2
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$LoadSpecialFolderOptions;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$LoadSpecialFolderOptions;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/16 v8, 0xc

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-class v4, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 21
    .line 22
    const-string v5, "onLoadSpecialFolderOptions"

    .line 23
    .line 24
    const-string v6, "onLoadSpecialFolderOptions()V"

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    invoke-direct/range {v1 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->handleOneTimeEvent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    move-object v3, p0

    .line 35
    instance-of p0, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent;

    .line 40
    .line 41
    new-instance p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/16 v0, 0xd

    .line 44
    .line 45
    invoke-direct {p0, v0, v3, p1}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnNextClicked;

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->saveSpecialFolderSettings()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->navigateNext$6()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnBackClicked;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 80
    .line 81
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateBack;

    .line 85
    .line 86
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnRetryClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Event$OnRetryClicked;

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 103
    .line 104
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object p0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 108
    .line 109
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    move-object v4, p1

    .line 114
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/4 v8, 0x1

    .line 120
    const/4 v9, 0x7

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-static/range {v4 .. v9}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_4

    .line 133
    .line 134
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 139
    .line 140
    const/16 v0, 0x9

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-direct {p1, v3, v1, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 144
    .line 145
    .line 146
    const/4 v0, 0x3

    .line 147
    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final navigateNext$6()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateNext;

    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 13
    .line 14
    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 15
    .line 16
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 21
    .line 22
    iget-boolean v1, v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateNext;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final saveSpecialFolderSettings()V
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    .line 3
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 10
    .line 11
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 12
    .line 13
    new-instance v1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 14
    .line 15
    iget-object v2, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedArchiveSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 16
    .line 17
    iget-object v3, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedDraftsSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 18
    .line 19
    iget-object v4, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedSentSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 20
    .line 21
    iget-object v5, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedSpamSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 22
    .line 23
    iget-object v6, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedTrashSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 24
    .line 25
    invoke-direct/range {v1 .. v6}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;-><init>(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 29
    .line 30
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-object v5, v1

    .line 36
    iget-object v1, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/16 v8, 0xdf

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v1 .. v8}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 52
    .line 53
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v2, v1

    .line 58
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/16 v7, 0xf

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-static/range {v2 .. v7}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    return-void
.end method
