.class public final Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

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
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 5
    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel$observeAccountName$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-direct {p1, v2, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    instance-of v0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 32
    .line 33
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    instance-of p1, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 44
    .line 45
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 48
    .line 49
    invoke-static {v2, p0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    move-object v1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-object v1

    .line 58
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-direct {p1, v2, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    instance-of v0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 75
    .line 76
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    instance-of p1, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 87
    .line 88
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 91
    .line 92
    invoke-static {v2, p0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    move-object v1, v3

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 98
    .line 99
    .line 100
    :goto_3
    return-object v1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
