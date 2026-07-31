.class public final Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountOAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

.field public final createAccountStateUseCase:Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;

.field public final getAutoDiscovery:Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;)V
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v2, v2}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;-><init>(ZLcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->accountOAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 14
    .line 15
    iput-object p3, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->getAutoDiscovery:Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 16
    .line 17
    iput-object p4, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->createAccountStateUseCase:Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;

    .line 18
    .line 19
    new-instance p1, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 20
    .line 21
    invoke-direct {p1, p0, v2}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    new-instance p3, Lkotlinx/coroutines/flow/SafeFlow;

    .line 25
    .line 26
    invoke-direct {p3, v1, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 30
    .line 31
    invoke-direct {p1, p0, v2, v1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;-><init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 32
    .line 33
    .line 34
    sget p4, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->$r8$clinit:I

    .line 35
    .line 36
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 37
    .line 38
    invoke-direct {p4, p3, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 42
    .line 43
    const/4 p3, 0x7

    .line 44
    invoke-direct {p1, p3, p4}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance p3, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 48
    .line 49
    const/4 p4, 0x1

    .line 50
    invoke-direct {p3, p0, v2, p4}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;-><init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 51
    .line 52
    .line 53
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-direct {p4, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p4, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 64
    .line 65
    .line 66
    iget-object p1, p2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 67
    .line 68
    new-instance p2, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 69
    .line 70
    invoke-direct {p2, p0, v2, v0}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;-><init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 71
    .line 72
    .line 73
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 74
    .line 75
    invoke-direct {p3, p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p3, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$SignInClicked;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$SignInClicked;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object p0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->accountOAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;->INSTANCE$2:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->event(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$OnOAuthResult;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;

    .line 27
    .line 28
    check-cast p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$OnOAuthResult;

    .line 29
    .line 30
    iget v1, p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$OnOAuthResult;->resultCode:I

    .line 31
    .line 32
    iget-object p1, p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$OnOAuthResult;->data:Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {v0, p1, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;-><init>(Landroid/content/Intent;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->event(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
