.class public final synthetic Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $tmp0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;->$tmp0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/activity/result/ActivityResultCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;->getFunctionDelegate()Lkotlin/Function;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 14
    .line 15
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 2
    .line 3
    const-string v6, "onLoginResult(Lapp/k9mail/feature/settings/import/ui/AuthorizationResult;)V"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const-class v3, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;->$tmp0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 10
    .line 11
    const-string v5, "onLoginResult"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;->getFunctionDelegate()Lkotlin/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthorizationResult;

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;->$tmp0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 4
    .line 5
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    move-object p1, p0

    .line 14
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 15
    .line 16
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$2:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p1, Lapp/k9mail/feature/settings/import/ui/AuthorizationResult;->exception:Lnet/openid/appauth/AuthorizationException;

    .line 26
    .line 27
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/AuthorizationResult;->response:Lnet/openid/appauth/AuthorizationResponse;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->authState:Lnet/openid/appauth/AuthState;

    .line 32
    .line 33
    invoke-virtual {v2, p1, v1}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 41
    .line 42
    sget-object v3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 43
    .line 44
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 45
    .line 46
    const/16 v5, 0x15

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-direct {v4, p0, p1, v6, v5}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x2

    .line 53
    invoke-static {v2, v3, v6, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 54
    .line 55
    .line 56
    :cond_2
    if-eqz v1, :cond_4

    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    move-object p1, p0

    .line 63
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 64
    .line 65
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Failed;

    .line 66
    .line 67
    iget-object v2, v1, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, v1, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {p1, v2, v3}, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Failed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    :cond_4
    :goto_0
    return-void
.end method
