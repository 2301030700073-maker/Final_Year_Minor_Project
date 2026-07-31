.class public final Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $onBack$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onNext$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 15
    iput p5, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 5
    .line 6
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p4, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;

    .line 7
    .line 8
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 13
    .line 14
    invoke-direct {p1, p0, p2, v0, v1}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance v2, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;

    .line 19
    .line 20
    iget-object v6, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    iget-object v3, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 24
    .line 25
    iget-object v5, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    move-object v4, p2

    .line 28
    invoke-direct/range {v2 .. v7}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_1
    move-object v4, p2

    .line 33
    new-instance v3, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;

    .line 34
    .line 35
    iget-object v7, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v5, v4

    .line 39
    iget-object v4, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 40
    .line 41
    iget-object v6, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    invoke-direct/range {v3 .. v8}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iget-object v2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->label:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eq v0, v7, :cond_0

    .line 23
    .line 24
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    throw p0

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->getEffect()Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;

    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    iput v7, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->label:I

    .line 46
    .line 47
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-object v4, v6

    .line 51
    :goto_0
    return-object v4

    .line 52
    :pswitch_0
    iget v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->label:I

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    if-eq v0, v7, :cond_2

    .line 57
    .line 58
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0

    .line 67
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v3}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->getEffect()Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;

    .line 75
    .line 76
    invoke-direct {v0, v1, v2, v7}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 77
    .line 78
    .line 79
    iput v7, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->label:I

    .line 80
    .line 81
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-object v4, v6

    .line 85
    :goto_1
    return-object v4

    .line 86
    :pswitch_1
    iget v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->label:I

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    if-eq v0, v7, :cond_4

    .line 91
    .line 92
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    throw p0

    .line 101
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v3}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->getEffect()Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-direct {v0, v1, v2, v3}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 112
    .line 113
    .line 114
    iput v7, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;->label:I

    .line 115
    .line 116
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-object v4, v6

    .line 120
    :goto_2
    return-object v4

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
