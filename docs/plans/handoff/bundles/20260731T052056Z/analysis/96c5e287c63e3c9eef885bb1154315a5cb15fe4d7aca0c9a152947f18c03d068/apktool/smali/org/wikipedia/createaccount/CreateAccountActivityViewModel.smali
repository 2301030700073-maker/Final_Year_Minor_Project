.class public final Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _authManagerState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _createAccountInfoState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _doCreateAccountState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _verifyUserNameState:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final authManagerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final createAccountInfoState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final doCreateAccountState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public token:Ljava/lang/String;

.field public verifyUserNameJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final verifyUserNameState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_authManagerState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->authManagerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 21
    .line 22
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_createAccountInfoState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    .line 33
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->createAccountInfoState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    .line 40
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_doCreateAccountState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 50
    .line 51
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->doCreateAccountState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 57
    .line 58
    const/4 v0, 0x7

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_verifyUserNameState:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 66
    .line 67
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->verifyUserNameState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 73
    .line 74
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1;

    .line 79
    .line 80
    const/4 v3, 0x2

    .line 81
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;I)V

    .line 82
    .line 83
    .line 84
    new-instance v4, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 85
    .line 86
    const/4 v5, 0x3

    .line 87
    invoke-direct {v4, v5, p0, v2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1, v2, v4, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 91
    .line 92
    .line 93
    return-void
.end method
