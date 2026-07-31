.class public final Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $authenticationError$delegate:Landroidx/compose/runtime/MutableState;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->$authenticationError$delegate:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->$authenticationError$delegate:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->$authenticationError$delegate:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->label:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v6

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput v5, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->label:I

    .line 35
    .line 36
    const-wide/16 v5, 0x1f4

    .line 37
    .line 38
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-ne p0, v4, :cond_2

    .line 43
    .line 44
    move-object v1, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-object v1

    .line 52
    :pswitch_0
    iget v0, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->label:I

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    if-ne v0, v5, :cond_3

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v1, v6

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError;

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    iput v5, p0, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;->label:I

    .line 79
    .line 80
    const-wide/16 v7, 0x1388

    .line 81
    .line 82
    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-ne p0, v4, :cond_5

    .line 87
    .line 88
    move-object v1, v4

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    :goto_2
    invoke-interface {v2, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_3
    return-object v1

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
