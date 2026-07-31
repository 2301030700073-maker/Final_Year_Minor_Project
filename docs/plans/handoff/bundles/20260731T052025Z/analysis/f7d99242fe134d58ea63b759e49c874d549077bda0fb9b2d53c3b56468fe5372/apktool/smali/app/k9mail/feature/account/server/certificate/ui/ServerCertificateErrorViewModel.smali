.class public final Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final addServerCertificateException:Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

.field public final certificateErrorRepository:Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

.field public final formatServerCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;

.field public final serverCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;)V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;-><init>(ZLapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->certificateErrorRepository:Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 12
    .line 13
    iput-object p2, p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->addServerCertificateException:Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 14
    .line 15
    iput-object p3, p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->formatServerCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;

    .line 16
    .line 17
    iget-object p1, p1, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;->serverCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 18
    .line 19
    iput-object p1, p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->serverCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance p2, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/16 p3, 0xb

    .line 26
    .line 27
    invoke-direct {p2, p3, p0, p1}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Event$OnShowAdvancedClicked;->INSTANCE:Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Event$OnShowAdvancedClicked;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v2, v1, v3}, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;->copy$default(Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;I)Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sget-object v0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Event$OnCertificateAcceptedClicked;->INSTANCE:Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Event$OnCertificateAcceptedClicked;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->serverCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 56
    .line 57
    const/16 v3, 0x17

    .line 58
    .line 59
    invoke-direct {v2, p0, p1, v1, v3}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x3

    .line 63
    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    const-string p0, "Required value was null."

    .line 68
    .line 69
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    sget-object v0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Event$OnBackClicked;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    sget-object p1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Effect$NavigateBack;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 88
    .line 89
    .line 90
    return-void
.end method
