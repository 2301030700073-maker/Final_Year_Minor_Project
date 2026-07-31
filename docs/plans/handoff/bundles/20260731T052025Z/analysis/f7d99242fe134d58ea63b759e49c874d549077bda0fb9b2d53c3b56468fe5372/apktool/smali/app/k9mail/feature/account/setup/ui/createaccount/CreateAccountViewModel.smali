.class public final Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final createAccount:Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;-><init>(ZLapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;->createAccount:Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;

    .line 12
    .line 13
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Event$CreateAccount;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Event$CreateAccount;

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
    const/16 v8, 0x9

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-class v4, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 21
    .line 22
    const-string v5, "createAccount"

    .line 23
    .line 24
    const-string v6, "createAccount()V"

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
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Event$OnBackClicked;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    iget-object p0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    .line 45
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 46
    .line 47
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 52
    .line 53
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->isLoading:Z

    .line 54
    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 62
    .line 63
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateBack;

    .line 67
    .line 68
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
