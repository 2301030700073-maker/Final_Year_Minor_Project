.class public final Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $onBack$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onNext$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 12
    iput p3, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2$1;->$onNext$inlined:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect;

    .line 14
    .line 15
    instance-of p2, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateNext;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateNext;

    .line 20
    .line 21
    iget-boolean p1, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateNext;->isManualSetup:Z

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Effect$NavigateBack;

    .line 32
    .line 33
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :goto_0
    move-object v0, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-object v0

    .line 48
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect;

    .line 49
    .line 50
    sget-object p2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateBack;

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    instance-of p2, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateNext;

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateNext;

    .line 67
    .line 68
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateNext;->result:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;

    .line 69
    .line 70
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :goto_2
    move-object v0, v1

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 76
    .line 77
    .line 78
    :goto_3
    return-object v0

    .line 79
    :pswitch_1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect;

    .line 80
    .line 81
    sget-object p2, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateBack;

    .line 82
    .line 83
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    instance-of p2, p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateNext;

    .line 94
    .line 95
    if-eqz p2, :cond_5

    .line 96
    .line 97
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateNext;

    .line 98
    .line 99
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateNext;->accountUuid:Ljava/lang/String;

    .line 100
    .line 101
    new-instance p2, Lapp/k9mail/feature/account/setup/domain/entity/AccountUuid;

    .line 102
    .line 103
    invoke-direct {p2, p1}, Lapp/k9mail/feature/account/setup/domain/entity/AccountUuid;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :goto_4
    move-object v0, v1

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 112
    .line 113
    .line 114
    :goto_5
    return-object v0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
