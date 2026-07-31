.class public final Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->this$0:Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

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
    iget p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;

    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->this$0:Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;

    .line 16
    .line 17
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->this$0:Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, p0, p2, v0}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget-object v4, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->this$0:Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

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
    iget v0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->label:I

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-ne v0, v5, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v6

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object p1, v4, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;->saveServerSettings:Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;

    .line 38
    .line 39
    iget-object v0, v4, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 40
    .line 41
    iget-boolean v2, v4, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;->isIncoming:Z

    .line 42
    .line 43
    iput v5, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->label:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v2, p0}, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;->execute(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-ne p0, v3, :cond_2

    .line 50
    .line 51
    move-object v1, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_0
    iget-object p0, v4, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 54
    .line 55
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    move-object v0, p1

    .line 60
    check-cast v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 66
    .line 67
    new-instance v2, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 68
    .line 69
    invoke-direct {v2, v0, v7}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;-><init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;

    .line 83
    .line 84
    invoke-direct {p1, v4, v6, v7}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    invoke-static {p0, v6, v6, p1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_1
    new-instance v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-nez p0, :cond_4

    .line 99
    .line 100
    const-string p0, "Unknown error"

    .line 101
    .line 102
    :cond_4
    invoke-direct {v0, p0}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v8, v4, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 106
    .line 107
    :cond_5
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    move-object p1, p0

    .line 112
    check-cast p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 118
    .line 119
    invoke-direct {p1, v0, v7}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;-><init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_5

    .line 127
    .line 128
    :goto_2
    return-object v1

    .line 129
    :pswitch_0
    iget v0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->label:I

    .line 130
    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    if-ne v0, v5, :cond_6

    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move-object v1, v6

    .line 143
    goto :goto_4

    .line 144
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput v5, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;->label:I

    .line 148
    .line 149
    const-wide/16 v5, 0x1f4

    .line 150
    .line 151
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-ne p0, v3, :cond_8

    .line 156
    .line 157
    move-object v1, v3

    .line 158
    goto :goto_4

    .line 159
    :cond_8
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 167
    .line 168
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 169
    .line 170
    .line 171
    sget-object p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect$NavigateNext;

    .line 172
    .line 173
    invoke-virtual {v4, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_4
    return-object v1

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
