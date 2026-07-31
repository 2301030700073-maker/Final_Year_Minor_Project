.class public final Landroidx/lifecycle/BlockRunner$maybeRun$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveDataScopeImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    iput v0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 14
    iput p4, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 15
    iput p3, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$app$k9mail$feature$settings$import$ui$AuthViewModel$login$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 4
    .line 5
    iget v1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 31
    .line 32
    iput v2, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 33
    .line 34
    invoke-static {v0, p1, p0}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->access$startLogin(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    .line 40
    if-ne p0, p1, :cond_3

    .line 41
    .line 42
    return-object p1

    .line 43
    :goto_0
    iget-object p1, v0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 44
    .line 45
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/16 v2, 0xf

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 50
    .line 51
    .line 52
    const-string v2, "AuthViewModel"

    .line 53
    .line 54
    invoke-interface {p1, v2, p0, v1}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    move-object v0, p1

    .line 64
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 65
    .line 66
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$1:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method private final invokeSuspend$app$k9mail$feature$settings$import$ui$OAuthFlowActivityKt$observe$1$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 29
    .line 30
    iput v1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 31
    .line 32
    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    if-ne p0, p1, :cond_2

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 13
    .line 14
    check-cast v1, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 15
    .line 16
    const/16 v0, 0x1d

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 27
    .line 28
    check-cast v1, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 29
    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 41
    .line 42
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 43
    .line 44
    const/16 v0, 0x1b

    .line 45
    .line 46
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 55
    .line 56
    check-cast v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    const/16 v0, 0x1a

    .line 59
    .line 60
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_3
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 69
    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    const/16 v0, 0x19

    .line 73
    .line 74
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_4
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 79
    .line 80
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 83
    .line 84
    check-cast v1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 85
    .line 86
    const/16 v0, 0x18

    .line 87
    .line 88
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :pswitch_5
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 97
    .line 98
    check-cast v1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 99
    .line 100
    const/16 v0, 0x17

    .line 101
    .line 102
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :pswitch_6
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 107
    .line 108
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 111
    .line 112
    check-cast v1, Landroid/content/Intent;

    .line 113
    .line 114
    const/16 v0, 0x16

    .line 115
    .line 116
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :pswitch_7
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 121
    .line 122
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 125
    .line 126
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 127
    .line 128
    const/16 v0, 0x15

    .line 129
    .line 130
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 131
    .line 132
    .line 133
    return-object p1

    .line 134
    :pswitch_8
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 135
    .line 136
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 139
    .line 140
    check-cast v1, Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 141
    .line 142
    const/16 v0, 0x14

    .line 143
    .line 144
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :pswitch_9
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 149
    .line 150
    check-cast v1, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 151
    .line 152
    const/16 v0, 0x13

    .line 153
    .line 154
    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 155
    .line 156
    .line 157
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    return-object p0

    .line 160
    :pswitch_a
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 161
    .line 162
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 165
    .line 166
    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 167
    .line 168
    const/16 v0, 0x12

    .line 169
    .line 170
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    :pswitch_b
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 175
    .line 176
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 181
    .line 182
    const/16 v0, 0x11

    .line 183
    .line 184
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    return-object p1

    .line 188
    :pswitch_c
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 189
    .line 190
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 193
    .line 194
    check-cast v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 195
    .line 196
    const/16 v0, 0x10

    .line 197
    .line 198
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 199
    .line 200
    .line 201
    return-object p1

    .line 202
    :pswitch_d
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 203
    .line 204
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 207
    .line 208
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 209
    .line 210
    const/16 v0, 0xf

    .line 211
    .line 212
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 213
    .line 214
    .line 215
    return-object p1

    .line 216
    :pswitch_e
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 217
    .line 218
    check-cast v1, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 219
    .line 220
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 221
    .line 222
    invoke-direct {p1, v1, p0, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Landroidx/lifecycle/LiveDataScopeImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 223
    .line 224
    .line 225
    return-object p1

    .line 226
    :pswitch_f
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 227
    .line 228
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 229
    .line 230
    const/16 v0, 0xd

    .line 231
    .line 232
    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 233
    .line 234
    .line 235
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 236
    .line 237
    return-object p0

    .line 238
    :pswitch_10
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 239
    .line 240
    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 241
    .line 242
    const/16 v0, 0xc

    .line 243
    .line 244
    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 245
    .line 246
    .line 247
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_11
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 251
    .line 252
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p0, Landroid/content/Intent;

    .line 255
    .line 256
    check-cast v1, Landroid/content/Context;

    .line 257
    .line 258
    const/16 v0, 0xb

    .line 259
    .line 260
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 261
    .line 262
    .line 263
    return-object p1

    .line 264
    :pswitch_12
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 265
    .line 266
    check-cast v1, Lokhttp3/Dispatcher;

    .line 267
    .line 268
    const/16 p1, 0xa

    .line 269
    .line 270
    invoke-direct {p0, v1, p2, p1}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 271
    .line 272
    .line 273
    return-object p0

    .line 274
    :pswitch_13
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 275
    .line 276
    check-cast v1, Landroidx/datastore/core/DataStoreImpl;

    .line 277
    .line 278
    const/16 v0, 0x9

    .line 279
    .line 280
    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 281
    .line 282
    .line 283
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 284
    .line 285
    return-object p0

    .line 286
    :pswitch_14
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 287
    .line 288
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 291
    .line 292
    check-cast v1, Landroidx/datastore/core/Data;

    .line 293
    .line 294
    const/16 v0, 0x8

    .line 295
    .line 296
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 297
    .line 298
    .line 299
    return-object p1

    .line 300
    :pswitch_15
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 301
    .line 302
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast p0, Landroidx/datastore/core/DataStoreImpl;

    .line 305
    .line 306
    check-cast v1, Landroidx/datastore/core/Message$Update;

    .line 307
    .line 308
    const/4 v0, 0x7

    .line 309
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 310
    .line 311
    .line 312
    return-object p1

    .line 313
    :pswitch_16
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 314
    .line 315
    check-cast v1, Ljava/util/List;

    .line 316
    .line 317
    const/4 v0, 0x6

    .line 318
    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 319
    .line 320
    .line 321
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 322
    .line 323
    return-object p0

    .line 324
    :pswitch_17
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 325
    .line 326
    check-cast v1, Landroidx/compose/ui/window/PopupLayout;

    .line 327
    .line 328
    const/4 v0, 0x5

    .line 329
    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 330
    .line 331
    .line 332
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 333
    .line 334
    return-object p0

    .line 335
    :pswitch_18
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 336
    .line 337
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 340
    .line 341
    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    .line 342
    .line 343
    const/4 v0, 0x4

    .line 344
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 345
    .line 346
    .line 347
    return-object p1

    .line 348
    :pswitch_19
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 349
    .line 350
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 353
    .line 354
    check-cast v1, Ljava/lang/Runnable;

    .line 355
    .line 356
    const/4 v0, 0x3

    .line 357
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 358
    .line 359
    .line 360
    return-object p1

    .line 361
    :pswitch_1a
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 362
    .line 363
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 366
    .line 367
    check-cast v1, Landroid/view/View;

    .line 368
    .line 369
    const/4 v0, 0x2

    .line 370
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 371
    .line 372
    .line 373
    return-object p1

    .line 374
    :pswitch_1b
    new-instance p1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 375
    .line 376
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast p0, Lkotlinx/coroutines/flow/StateFlow;

    .line 379
    .line 380
    check-cast v1, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    .line 381
    .line 382
    const/4 v0, 0x1

    .line 383
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 384
    .line 385
    .line 386
    return-object p1

    .line 387
    :pswitch_1c
    new-instance p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 388
    .line 389
    check-cast v1, Lcom/eygraber/uri/Uri$Builder;

    .line 390
    .line 391
    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 393
    .line 394
    .line 395
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 396
    .line 397
    return-object p0

    .line 398
    nop

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 41
    .line 42
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 56
    .line 57
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 71
    .line 72
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 86
    .line 87
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 101
    .line 102
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 116
    .line 117
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 124
    .line 125
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 131
    .line 132
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 139
    .line 140
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 146
    .line 147
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 154
    .line 155
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 161
    .line 162
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 169
    .line 170
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 176
    .line 177
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 178
    .line 179
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 184
    .line 185
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 191
    .line 192
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 193
    .line 194
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    return-object p0

    .line 205
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 206
    .line 207
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 208
    .line 209
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 214
    .line 215
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    return-object p0

    .line 220
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 221
    .line 222
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 223
    .line 224
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 229
    .line 230
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 236
    .line 237
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 238
    .line 239
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 244
    .line 245
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    :pswitch_f
    check-cast p1, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 251
    .line 252
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 253
    .line 254
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 259
    .line 260
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    return-object p0

    .line 265
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 266
    .line 267
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 268
    .line 269
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 274
    .line 275
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    return-object v1

    .line 279
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 280
    .line 281
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 282
    .line 283
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 288
    .line 289
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    return-object v2

    .line 293
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 294
    .line 295
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 296
    .line 297
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 302
    .line 303
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    return-object p0

    .line 308
    :pswitch_13
    check-cast p1, Landroidx/datastore/core/Message$Update;

    .line 309
    .line 310
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 311
    .line 312
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 317
    .line 318
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 324
    .line 325
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 326
    .line 327
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 332
    .line 333
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    return-object p0

    .line 338
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 339
    .line 340
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 341
    .line 342
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 347
    .line 348
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    return-object p0

    .line 353
    :pswitch_16
    check-cast p1, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;

    .line 354
    .line 355
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 356
    .line 357
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 362
    .line 363
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0

    .line 368
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 369
    .line 370
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 371
    .line 372
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 377
    .line 378
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0

    .line 383
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 384
    .line 385
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 386
    .line 387
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 392
    .line 393
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0

    .line 398
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 399
    .line 400
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 401
    .line 402
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 407
    .line 408
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    return-object p0

    .line 413
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 414
    .line 415
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 416
    .line 417
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 422
    .line 423
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    return-object p0

    .line 428
    :pswitch_1b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 429
    .line 430
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 431
    .line 432
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 437
    .line 438
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    return-object v1

    .line 442
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 443
    .line 444
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 445
    .line 446
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    check-cast p0, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 451
    .line 452
    invoke-virtual {p0, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    return-object p0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    if-ne v2, v5, :cond_0

    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 35
    .line 36
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 39
    .line 40
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 41
    .line 42
    invoke-interface {v2, v3, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-ne v1, v0, :cond_2

    .line 47
    .line 48
    move-object v6, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    .line 52
    :goto_1
    return-object v6

    .line 53
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend$app$k9mail$feature$settings$import$ui$OAuthFlowActivityKt$observe$1$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/BlockRunner$maybeRun$1;->invokeSuspend$app$k9mail$feature$settings$import$ui$AuthViewModel$login$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :pswitch_2
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 66
    .line 67
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 68
    .line 69
    iget v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    if-ne v3, v5, :cond_3

    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object/from16 v1, p1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 82
    .line 83
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 91
    .line 92
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 93
    .line 94
    iget-object v7, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Ljava/util/ArrayList;

    .line 97
    .line 98
    const/16 v8, 0x13

    .line 99
    .line 100
    invoke-direct {v4, v0, v7, v6, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 101
    .line 102
    .line 103
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 104
    .line 105
    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v2, :cond_5

    .line 110
    .line 111
    move-object v6, v2

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_2
    check-cast v1, Landroid/net/Uri;

    .line 114
    .line 115
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$ReturnResult;

    .line 116
    .line 117
    invoke-direct {v2, v1}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$ReturnResult;-><init>(Landroid/net/Uri;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    .line 125
    :goto_3
    return-object v6

    .line 126
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 127
    .line 128
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 129
    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    if-ne v2, v5, :cond_6

    .line 133
    .line 134
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_6
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 139
    .line 140
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 148
    .line 149
    const-wide/16 v2, 0x1f4

    .line 150
    .line 151
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-ne v2, v0, :cond_8

    .line 156
    .line 157
    move-object v6, v0

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    :goto_4
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 162
    .line 163
    iget-object v1, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v1, Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-object v2, v2, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 175
    .line 176
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateNext;

    .line 180
    .line 181
    invoke-direct {v2, v1}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$Effect$NavigateNext;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 188
    .line 189
    :goto_5
    return-object v6

    .line 190
    :pswitch_4
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 193
    .line 194
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 195
    .line 196
    iget v7, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 197
    .line 198
    if-eqz v7, :cond_a

    .line 199
    .line 200
    if-ne v7, v5, :cond_9

    .line 201
    .line 202
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    move-object/from16 v1, p1

    .line 206
    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_9
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 210
    .line 211
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_9

    .line 215
    .line 216
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget-object v7, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;->createAccount:Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;

    .line 220
    .line 221
    iget-object v8, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 224
    .line 225
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 226
    .line 227
    new-instance v9, Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 228
    .line 229
    iget-object v5, v7, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;->uuidGenerator:Lkotlin/jvm/functions/Function0;

    .line 230
    .line 231
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    move-object v10, v5

    .line 236
    check-cast v10, Ljava/lang/String;

    .line 237
    .line 238
    iget-object v11, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object v5, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const/16 v12, 0x1ff

    .line 249
    .line 250
    invoke-static {v5, v6, v6, v6, v12}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    iget-object v13, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 255
    .line 256
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static {v13, v6, v6, v6, v12}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    iget-object v12, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 264
    .line 265
    if-eqz v12, :cond_b

    .line 266
    .line 267
    iget-object v12, v12, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;->value:Ljava/lang/String;

    .line 268
    .line 269
    move-object v14, v12

    .line 270
    goto :goto_6

    .line 271
    :cond_b
    move-object v14, v6

    .line 272
    :goto_6
    iget-object v15, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 273
    .line 274
    iget-object v12, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 275
    .line 276
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget-object v8, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 280
    .line 281
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    new-instance v16, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 285
    .line 286
    iget-object v2, v12, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;->accountName:Ljava/lang/String;

    .line 287
    .line 288
    iget-object v4, v12, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;->displayName:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v12, v12, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;->emailSignature:Ljava/lang/String;

    .line 291
    .line 292
    iget v6, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->checkFrequencyInMinutes:I

    .line 293
    .line 294
    move-object/from16 v19, v2

    .line 295
    .line 296
    iget v2, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->messageDisplayCount:I

    .line 297
    .line 298
    iget-boolean v8, v8, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->showNotification:Z

    .line 299
    .line 300
    move/from16 v18, v2

    .line 301
    .line 302
    move-object/from16 v20, v4

    .line 303
    .line 304
    move/from16 v17, v6

    .line 305
    .line 306
    move/from16 v22, v8

    .line 307
    .line 308
    move-object/from16 v21, v12

    .line 309
    .line 310
    invoke-direct/range {v16 .. v22}, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    move-object v12, v5

    .line 314
    invoke-direct/range {v9 .. v16}, Lapp/k9mail/feature/account/common/domain/entity/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;)V

    .line 315
    .line 316
    .line 317
    iget-object v2, v7, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;->accountCreator:Lnet/thunderbird/app/common/account/AccountCreator;

    .line 318
    .line 319
    invoke-virtual {v2, v9, v1}, Lnet/thunderbird/app/common/account/AccountCreator;->createAccount(Lapp/k9mail/feature/account/common/domain/entity/Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-ne v1, v3, :cond_c

    .line 324
    .line 325
    move-object v6, v3

    .line 326
    goto :goto_9

    .line 327
    :cond_c
    :goto_7
    check-cast v1, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult;

    .line 328
    .line 329
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Success;

    .line 330
    .line 331
    if-eqz v2, :cond_e

    .line 332
    .line 333
    check-cast v1, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Success;

    .line 334
    .line 335
    iget-object v2, v1, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Success;->accountUuid:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    iget-object v3, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 341
    .line 342
    :cond_d
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    move-object v4, v1

    .line 347
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 348
    .line 349
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    new-instance v4, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 353
    .line 354
    const/4 v5, 0x0

    .line 355
    const/4 v6, 0x0

    .line 356
    invoke-direct {v4, v5, v6}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;-><init>(ZLapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v1, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_d

    .line 364
    .line 365
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    new-instance v3, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 370
    .line 371
    const/16 v4, 0x19

    .line 372
    .line 373
    invoke-direct {v3, v0, v2, v6, v4}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 374
    .line 375
    .line 376
    const/4 v2, 0x3

    .line 377
    invoke-static {v1, v6, v6, v3, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_e
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 382
    .line 383
    if-eqz v2, :cond_10

    .line 384
    .line 385
    check-cast v1, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 386
    .line 387
    iget-object v0, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 388
    .line 389
    :cond_f
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    move-object v3, v2

    .line 394
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 395
    .line 396
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    new-instance v3, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 400
    .line 401
    const/4 v5, 0x0

    .line 402
    invoke-direct {v3, v5, v1}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;-><init>(ZLapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_f

    .line 410
    .line 411
    :goto_8
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_10
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 415
    .line 416
    .line 417
    const/4 v6, 0x0

    .line 418
    :goto_9
    return-object v6

    .line 419
    :pswitch_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 420
    .line 421
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v2, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 424
    .line 425
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 426
    .line 427
    iget v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 428
    .line 429
    if-eqz v4, :cond_12

    .line 430
    .line 431
    if-ne v4, v5, :cond_11

    .line 432
    .line 433
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_11
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 438
    .line 439
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    const/4 v6, 0x0

    .line 443
    goto :goto_c

    .line 444
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    iget-object v4, v2, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->addServerCertificateException:Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 448
    .line 449
    iget-object v6, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v6, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 452
    .line 453
    iget-object v7, v6, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;->hostname:Ljava/lang/String;

    .line 454
    .line 455
    move-object v8, v7

    .line 456
    iget v7, v6, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;->port:I

    .line 457
    .line 458
    iget-object v6, v6, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;->certificateChain:Ljava/util/List;

    .line 459
    .line 460
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 465
    .line 466
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 467
    .line 468
    iget-object v10, v4, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 469
    .line 470
    move-object v5, v4

    .line 471
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 472
    .line 473
    const/4 v9, 0x0

    .line 474
    move-object/from16 v25, v8

    .line 475
    .line 476
    move-object v8, v6

    .line 477
    move-object/from16 v6, v25

    .line 478
    .line 479
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;Ljava/lang/String;ILjava/security/cert/X509Certificate;Lkotlin/coroutines/Continuation;)V

    .line 480
    .line 481
    .line 482
    invoke-static {v10, v4, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    if-ne v1, v3, :cond_13

    .line 487
    .line 488
    goto :goto_a

    .line 489
    :cond_13
    move-object v1, v0

    .line 490
    :goto_a
    if-ne v1, v3, :cond_14

    .line 491
    .line 492
    move-object v6, v3

    .line 493
    goto :goto_c

    .line 494
    :cond_14
    :goto_b
    iget-object v1, v2, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->certificateErrorRepository:Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 495
    .line 496
    const/4 v6, 0x0

    .line 497
    iput-object v6, v1, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;->serverCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 498
    .line 499
    sget-object v1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Effect$NavigateCertificateAccepted;->INSTANCE:Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Effect$NavigateCertificateAccepted;

    .line 500
    .line 501
    invoke-virtual {v2, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    move-object v6, v0

    .line 505
    :goto_c
    return-object v6

    .line 506
    :pswitch_6
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 509
    .line 510
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 511
    .line 512
    iget v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 513
    .line 514
    if-eqz v3, :cond_16

    .line 515
    .line 516
    if-ne v3, v5, :cond_15

    .line 517
    .line 518
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    move-object/from16 v1, p1

    .line 522
    .line 523
    goto :goto_e

    .line 524
    :cond_15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 525
    .line 526
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    :goto_d
    const/4 v6, 0x0

    .line 530
    goto/16 :goto_10

    .line 531
    .line 532
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    iget-object v3, v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->finishOAuthSignIn:Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 536
    .line 537
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast v4, Landroid/content/Intent;

    .line 540
    .line 541
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 542
    .line 543
    invoke-virtual {v3, v4, v1}, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;->execute(Landroid/content/Intent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    if-ne v1, v2, :cond_17

    .line 548
    .line 549
    move-object v6, v2

    .line 550
    goto :goto_10

    .line 551
    :cond_17
    :goto_e
    check-cast v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult;

    .line 552
    .line 553
    sget-object v2, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Canceled;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Canceled;

    .line 554
    .line 555
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_18

    .line 560
    .line 561
    sget-object v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->updateErrorState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;)V

    .line 564
    .line 565
    .line 566
    goto :goto_f

    .line 567
    :cond_18
    sget-object v2, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Canceled;->INSTANCE:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Canceled;

    .line 568
    .line 569
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-eqz v2, :cond_19

    .line 574
    .line 575
    sget-object v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 576
    .line 577
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->updateErrorState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;)V

    .line 578
    .line 579
    .line 580
    goto :goto_f

    .line 581
    :cond_19
    instance-of v2, v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;

    .line 582
    .line 583
    if-eqz v2, :cond_1a

    .line 584
    .line 585
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;

    .line 586
    .line 587
    check-cast v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;

    .line 588
    .line 589
    iget-object v1, v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;->error:Ljava/lang/Exception;

    .line 590
    .line 591
    invoke-direct {v2, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;-><init>(Ljava/lang/Exception;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, v2}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->updateErrorState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;)V

    .line 595
    .line 596
    .line 597
    goto :goto_f

    .line 598
    :cond_1a
    instance-of v2, v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Success;

    .line 599
    .line 600
    if-eqz v2, :cond_1c

    .line 601
    .line 602
    iget-object v2, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 603
    .line 604
    :cond_1b
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    move-object v4, v3

    .line 609
    check-cast v4, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 610
    .line 611
    const/16 v5, 0x1f

    .line 612
    .line 613
    const/4 v6, 0x0

    .line 614
    const/4 v7, 0x0

    .line 615
    invoke-static {v4, v6, v7, v6, v5}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    invoke-virtual {v2, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-eqz v3, :cond_1b

    .line 624
    .line 625
    check-cast v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Success;

    .line 626
    .line 627
    iget-object v1, v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Success;->state:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 628
    .line 629
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;

    .line 630
    .line 631
    invoke-direct {v2, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;-><init>(Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    :goto_f
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 638
    .line 639
    goto :goto_10

    .line 640
    :cond_1c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 641
    .line 642
    .line 643
    goto :goto_d

    .line 644
    :goto_10
    return-object v6

    .line 645
    :pswitch_7
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 646
    .line 647
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 648
    .line 649
    if-eqz v2, :cond_1e

    .line 650
    .line 651
    if-ne v2, v5, :cond_1d

    .line 652
    .line 653
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 657
    .line 658
    goto :goto_11

    .line 659
    :cond_1d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 660
    .line 661
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    const/4 v6, 0x0

    .line 665
    goto :goto_11

    .line 666
    :cond_1e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 672
    .line 673
    iget-object v2, v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 674
    .line 675
    new-instance v3, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;

    .line 676
    .line 677
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 680
    .line 681
    const/4 v6, 0x0

    .line 682
    invoke-direct {v3, v6, v4}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 683
    .line 684
    .line 685
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 686
    .line 687
    invoke-virtual {v2, v3, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-object v6, v0

    .line 691
    :goto_11
    return-object v6

    .line 692
    :pswitch_8
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 695
    .line 696
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v2, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 699
    .line 700
    iget-object v4, v2, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->_foldableState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 701
    .line 702
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 703
    .line 704
    iget v7, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 705
    .line 706
    if-eqz v7, :cond_20

    .line 707
    .line 708
    if-ne v7, v5, :cond_1f

    .line 709
    .line 710
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    goto :goto_12

    .line 714
    :cond_1f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 715
    .line 716
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    const/4 v6, 0x0

    .line 720
    goto :goto_13

    .line 721
    :cond_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 725
    .line 726
    const-wide/16 v7, 0x12c

    .line 727
    .line 728
    invoke-static {v7, v8, v1}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    if-ne v1, v6, :cond_21

    .line 733
    .line 734
    goto :goto_13

    .line 735
    :cond_21
    :goto_12
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    if-eq v1, v0, :cond_22

    .line 740
    .line 741
    iget-object v1, v2, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 742
    .line 743
    const-string v5, "FoldableStateObserver"

    .line 744
    .line 745
    new-instance v6, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 746
    .line 747
    const/16 v7, 0x9

    .line 748
    .line 749
    invoke-direct {v6, v7, v2, v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 750
    .line 751
    .line 752
    const/4 v7, 0x0

    .line 753
    invoke-static {v1, v5, v7, v6, v3}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 754
    .line 755
    .line 756
    sput-object v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->lastKnownState:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 757
    .line 758
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v4, v7, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    :cond_22
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 765
    .line 766
    :goto_13
    return-object v6

    .line 767
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 768
    .line 769
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 770
    .line 771
    if-eqz v2, :cond_24

    .line 772
    .line 773
    if-ne v2, v5, :cond_23

    .line 774
    .line 775
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_15

    .line 779
    .line 780
    :cond_23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 781
    .line 782
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    const/4 v6, 0x0

    .line 786
    goto/16 :goto_16

    .line 787
    .line 788
    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 794
    .line 795
    new-instance v3, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 796
    .line 797
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v4, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 800
    .line 801
    invoke-direct {v3, v4, v2}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;-><init>(Landroidx/work/impl/constraints/controllers/BaseConstraintController;Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 802
    .line 803
    .line 804
    iget-object v4, v4, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 805
    .line 806
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    iget-object v6, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 810
    .line 811
    monitor-enter v6

    .line 812
    :try_start_0
    iget-object v7, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v7, Ljava/util/LinkedHashSet;

    .line 815
    .line 816
    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v7

    .line 820
    if-eqz v7, :cond_26

    .line 821
    .line 822
    iget-object v7, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast v7, Ljava/util/LinkedHashSet;

    .line 825
    .line 826
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    .line 827
    .line 828
    .line 829
    move-result v7

    .line 830
    if-ne v7, v5, :cond_25

    .line 831
    .line 832
    invoke-virtual {v4}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->readSystemState()Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v7

    .line 836
    iput-object v7, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 837
    .line 838
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 839
    .line 840
    .line 841
    move-result-object v7

    .line 842
    sget-object v8, Landroidx/work/impl/constraints/trackers/ConstraintTrackerKt;->TAG:Ljava/lang/String;

    .line 843
    .line 844
    new-instance v9, Ljava/lang/StringBuilder;

    .line 845
    .line 846
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    move-result-object v10

    .line 853
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v10

    .line 857
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v10, ": initial state = "

    .line 861
    .line 862
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    iget-object v10, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 866
    .line 867
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v9

    .line 874
    invoke-virtual {v7, v8, v9}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v4}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->startTracking()V

    .line 878
    .line 879
    .line 880
    goto :goto_14

    .line 881
    :catchall_0
    move-exception v0

    .line 882
    goto :goto_17

    .line 883
    :cond_25
    :goto_14
    iget-object v4, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 884
    .line 885
    invoke-virtual {v3, v4}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->onConstraintChanged(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    .line 887
    .line 888
    :cond_26
    monitor-exit v6

    .line 889
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v4, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 892
    .line 893
    new-instance v6, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 894
    .line 895
    const/4 v7, 0x4

    .line 896
    invoke-direct {v6, v7, v4, v3}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 900
    .line 901
    invoke-static {v2, v6, v1}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    if-ne v1, v0, :cond_27

    .line 906
    .line 907
    move-object v6, v0

    .line 908
    goto :goto_16

    .line 909
    :cond_27
    :goto_15
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 910
    .line 911
    :goto_16
    return-object v6

    .line 912
    :goto_17
    monitor-exit v6

    .line 913
    throw v0

    .line 914
    :pswitch_a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 915
    .line 916
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 917
    .line 918
    if-eqz v2, :cond_29

    .line 919
    .line 920
    if-ne v2, v5, :cond_28

    .line 921
    .line 922
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 923
    .line 924
    .line 925
    goto :goto_18

    .line 926
    :cond_28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 927
    .line 928
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    const/4 v6, 0x0

    .line 932
    goto :goto_19

    .line 933
    :cond_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 934
    .line 935
    .line 936
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 937
    .line 938
    const-wide/16 v2, 0x3e8

    .line 939
    .line 940
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    if-ne v2, v0, :cond_2a

    .line 945
    .line 946
    move-object v6, v0

    .line 947
    goto :goto_19

    .line 948
    :cond_2a
    :goto_18
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    sget-object v2, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 953
    .line 954
    const-string v3, "NetworkRequestConstraintController didn\'t receive neither onCapabilitiesChanged/onLost callback, sending `ConstraintsNotMet` after 1000 ms"

    .line 955
    .line 956
    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 960
    .line 961
    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .line 962
    .line 963
    new-instance v1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 964
    .line 965
    const/4 v2, 0x7

    .line 966
    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 967
    .line 968
    .line 969
    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 970
    .line 971
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 975
    .line 976
    :goto_19
    return-object v6

    .line 977
    :pswitch_b
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 978
    .line 979
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 980
    .line 981
    if-eqz v2, :cond_2c

    .line 982
    .line 983
    if-ne v2, v5, :cond_2b

    .line 984
    .line 985
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 986
    .line 987
    .line 988
    move-object/from16 v0, p1

    .line 989
    .line 990
    goto :goto_1a

    .line 991
    :cond_2b
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 992
    .line 993
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    const/4 v0, 0x0

    .line 997
    goto :goto_1a

    .line 998
    :cond_2c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 999
    .line 1000
    .line 1001
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1004
    .line 1005
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1008
    .line 1009
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1010
    .line 1011
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1012
    .line 1013
    invoke-interface {v2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v1

    .line 1017
    if-ne v1, v0, :cond_2d

    .line 1018
    .line 1019
    goto :goto_1a

    .line 1020
    :cond_2d
    move-object v0, v1

    .line 1021
    :goto_1a
    return-object v0

    .line 1022
    :pswitch_c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1023
    .line 1024
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1025
    .line 1026
    if-eqz v2, :cond_2f

    .line 1027
    .line 1028
    if-ne v2, v5, :cond_2e

    .line 1029
    .line 1030
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    move-object/from16 v0, p1

    .line 1034
    .line 1035
    goto :goto_1b

    .line 1036
    :cond_2e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1037
    .line 1038
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    const/4 v0, 0x0

    .line 1042
    goto :goto_1b

    .line 1043
    :cond_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1044
    .line 1045
    .line 1046
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1047
    .line 1048
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1049
    .line 1050
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1051
    .line 1052
    check-cast v3, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 1053
    .line 1054
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1055
    .line 1056
    invoke-interface {v2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    if-ne v1, v0, :cond_30

    .line 1061
    .line 1062
    goto :goto_1b

    .line 1063
    :cond_30
    move-object v0, v1

    .line 1064
    :goto_1b
    return-object v0

    .line 1065
    :pswitch_d
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1066
    .line 1067
    move-object v2, v0

    .line 1068
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 1069
    .line 1070
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1071
    .line 1072
    iget v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1073
    .line 1074
    if-eqz v3, :cond_32

    .line 1075
    .line 1076
    if-ne v3, v5, :cond_31

    .line 1077
    .line 1078
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1079
    .line 1080
    .line 1081
    move-object/from16 v1, p1

    .line 1082
    .line 1083
    goto :goto_1c

    .line 1084
    :catchall_1
    move-exception v0

    .line 1085
    goto :goto_1e

    .line 1086
    :cond_31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1087
    .line 1088
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    const/4 v6, 0x0

    .line 1092
    goto :goto_1d

    .line 1093
    :cond_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1094
    .line 1095
    .line 1096
    :try_start_2
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1097
    .line 1098
    check-cast v3, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 1099
    .line 1100
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1101
    .line 1102
    invoke-static {v3, v1}, Landroidx/room/TriggerBasedInvalidationTracker;->access$notifyInvalidation(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v1

    .line 1106
    if-ne v1, v0, :cond_33

    .line 1107
    .line 1108
    move-object v6, v0

    .line 1109
    goto :goto_1d

    .line 1110
    :cond_33
    :goto_1c
    check-cast v1, Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1111
    .line 1112
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1116
    .line 1117
    :goto_1d
    return-object v6

    .line 1118
    :goto_1e
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    throw v0

    .line 1122
    :pswitch_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1123
    .line 1124
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1125
    .line 1126
    check-cast v2, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 1127
    .line 1128
    iget-object v2, v2, Landroidx/lifecycle/LiveDataScopeImpl;->target:Landroidx/lifecycle/CoroutineLiveData;

    .line 1129
    .line 1130
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1131
    .line 1132
    iget v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1133
    .line 1134
    if-eqz v4, :cond_35

    .line 1135
    .line 1136
    if-ne v4, v5, :cond_34

    .line 1137
    .line 1138
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1139
    .line 1140
    .line 1141
    goto :goto_1f

    .line 1142
    :cond_34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1143
    .line 1144
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    const/4 v6, 0x0

    .line 1148
    goto :goto_20

    .line 1149
    :cond_35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1150
    .line 1151
    .line 1152
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1153
    .line 1154
    invoke-virtual {v2, v1}, Landroidx/lifecycle/CoroutineLiveData;->clearSource$lifecycle_livedata(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 1155
    .line 1156
    .line 1157
    if-ne v0, v3, :cond_36

    .line 1158
    .line 1159
    move-object v6, v3

    .line 1160
    goto :goto_20

    .line 1161
    :cond_36
    :goto_1f
    iget-object v1, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1162
    .line 1163
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 1164
    .line 1165
    .line 1166
    move-object v6, v0

    .line 1167
    :goto_20
    return-object v6

    .line 1168
    :pswitch_f
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1169
    .line 1170
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1171
    .line 1172
    if-eqz v2, :cond_38

    .line 1173
    .line 1174
    if-ne v2, v5, :cond_37

    .line 1175
    .line 1176
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_21

    .line 1180
    :cond_37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1181
    .line 1182
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    const/4 v6, 0x0

    .line 1186
    goto :goto_22

    .line 1187
    :cond_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1188
    .line 1189
    .line 1190
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1191
    .line 1192
    check-cast v2, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 1193
    .line 1194
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1195
    .line 1196
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    .line 1197
    .line 1198
    new-instance v4, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$1;

    .line 1199
    .line 1200
    invoke-direct {v4, v2}, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$1;-><init>(Landroidx/lifecycle/LiveDataScopeImpl;)V

    .line 1201
    .line 1202
    .line 1203
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1204
    .line 1205
    invoke-interface {v3, v4, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    if-ne v1, v0, :cond_39

    .line 1210
    .line 1211
    move-object v6, v0

    .line 1212
    goto :goto_22

    .line 1213
    :cond_39
    :goto_21
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1214
    .line 1215
    :goto_22
    return-object v6

    .line 1216
    :pswitch_10
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1217
    .line 1218
    move-object v2, v0

    .line 1219
    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 1220
    .line 1221
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1222
    .line 1223
    iget v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1224
    .line 1225
    if-eqz v0, :cond_3d

    .line 1226
    .line 1227
    if-eq v0, v5, :cond_3c

    .line 1228
    .line 1229
    if-eq v0, v3, :cond_3b

    .line 1230
    .line 1231
    const/4 v3, 0x3

    .line 1232
    if-eq v0, v3, :cond_3a

    .line 1233
    .line 1234
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1235
    .line 1236
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    const/4 v6, 0x0

    .line 1240
    goto/16 :goto_27

    .line 1241
    .line 1242
    :cond_3a
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1243
    .line 1244
    check-cast v0, Ljava/lang/Throwable;

    .line 1245
    .line 1246
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1247
    .line 1248
    .line 1249
    goto/16 :goto_28

    .line 1250
    .line 1251
    :cond_3b
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1252
    .line 1253
    move-object v3, v0

    .line 1254
    check-cast v3, Landroidx/lifecycle/Observer;

    .line 1255
    .line 1256
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 1260
    .line 1261
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1262
    .line 1263
    .line 1264
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1265
    :catchall_2
    move-exception v0

    .line 1266
    goto :goto_25

    .line 1267
    :cond_3c
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1268
    .line 1269
    move-object v5, v0

    .line 1270
    check-cast v5, Landroidx/lifecycle/Observer;

    .line 1271
    .line 1272
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1273
    .line 1274
    .line 1275
    goto :goto_23

    .line 1276
    :catchall_3
    move-exception v0

    .line 1277
    move-object v3, v5

    .line 1278
    goto :goto_25

    .line 1279
    :cond_3d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1283
    .line 1284
    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1285
    .line 1286
    new-instance v6, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 1287
    .line 1288
    invoke-direct {v6, v5, v0}, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 1289
    .line 1290
    .line 1291
    :try_start_5
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 1292
    .line 1293
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 1294
    .line 1295
    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 1296
    .line 1297
    new-instance v7, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 1298
    .line 1299
    const/16 v8, 0xe

    .line 1300
    .line 1301
    const/4 v9, 0x0

    .line 1302
    invoke-direct {v7, v2, v6, v9, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1303
    .line 1304
    .line 1305
    iput-object v6, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1306
    .line 1307
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1308
    .line 1309
    invoke-static {v0, v7, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1313
    if-ne v0, v4, :cond_3e

    .line 1314
    .line 1315
    goto :goto_26

    .line 1316
    :cond_3e
    move-object v5, v6

    .line 1317
    :goto_23
    :try_start_6
    iput-object v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1318
    .line 1319
    iput v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1320
    .line 1321
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->awaitCancellation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1322
    .line 1323
    .line 1324
    :goto_24
    move-object v6, v4

    .line 1325
    goto :goto_27

    .line 1326
    :catchall_4
    move-exception v0

    .line 1327
    move-object v3, v6

    .line 1328
    :goto_25
    sget-object v5, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 1329
    .line 1330
    sget-object v5, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 1331
    .line 1332
    iget-object v5, v5, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 1333
    .line 1334
    sget-object v6, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    .line 1335
    .line 1336
    invoke-virtual {v5, v6}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v5

    .line 1340
    new-instance v6, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 1341
    .line 1342
    const/16 v7, 0xf

    .line 1343
    .line 1344
    const/4 v9, 0x0

    .line 1345
    invoke-direct {v6, v2, v3, v9, v7}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1346
    .line 1347
    .line 1348
    iput-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1349
    .line 1350
    const/4 v2, 0x3

    .line 1351
    iput v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1352
    .line 1353
    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v1

    .line 1357
    if-ne v1, v4, :cond_3f

    .line 1358
    .line 1359
    :goto_26
    goto :goto_24

    .line 1360
    :goto_27
    return-object v6

    .line 1361
    :cond_3f
    :goto_28
    throw v0

    .line 1362
    :pswitch_11
    const-string v0, "ActionCallbackBroadcastReceiver:appWidgetId"

    .line 1363
    .line 1364
    const-string v2, "android.widget.extra.CHECKED"

    .line 1365
    .line 1366
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1367
    .line 1368
    check-cast v3, Landroid/content/Intent;

    .line 1369
    .line 1370
    iget v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1371
    .line 1372
    if-eqz v4, :cond_41

    .line 1373
    .line 1374
    if-ne v4, v5, :cond_40

    .line 1375
    .line 1376
    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1377
    .line 1378
    .line 1379
    goto/16 :goto_2a

    .line 1380
    .line 1381
    :cond_40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1382
    .line 1383
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    const/4 v6, 0x0

    .line 1387
    goto/16 :goto_2b

    .line 1388
    .line 1389
    :cond_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1390
    .line 1391
    .line 1392
    :try_start_8
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v4

    .line 1396
    if-eqz v4, :cond_49

    .line 1397
    .line 1398
    const-string v6, "ActionCallbackBroadcastReceiver:parameters"

    .line 1399
    .line 1400
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v6

    .line 1404
    if-eqz v6, :cond_48

    .line 1405
    .line 1406
    const/4 v7, 0x0

    .line 1407
    new-array v7, v7, [Landroidx/room/util/RelationUtil;

    .line 1408
    .line 1409
    invoke-static {v7}, Lcom/fsck/k9/sasl/OAuthBearer;->mutableActionParametersOf([Landroidx/room/util/RelationUtil;)Landroidx/glance/action/MutableActionParameters;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v7

    .line 1413
    iget-object v7, v7, Landroidx/glance/action/MutableActionParameters;->map:Ljava/util/LinkedHashMap;

    .line 1414
    .line 1415
    invoke-virtual {v6}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v8

    .line 1419
    check-cast v8, Ljava/lang/Iterable;

    .line 1420
    .line 1421
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v8

    .line 1425
    :goto_29
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1426
    .line 1427
    .line 1428
    move-result v9

    .line 1429
    if-eqz v9, :cond_43

    .line 1430
    .line 1431
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v9

    .line 1435
    check-cast v9, Ljava/lang/String;

    .line 1436
    .line 1437
    new-instance v10, Landroidx/glance/action/ActionParameters$Key;

    .line 1438
    .line 1439
    invoke-direct {v10, v9}, Landroidx/glance/action/ActionParameters$Key;-><init>(Ljava/lang/String;)V

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v9

    .line 1446
    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    if-nez v9, :cond_42

    .line 1450
    .line 1451
    invoke-interface {v7, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    goto :goto_29

    .line 1455
    :cond_42
    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    goto :goto_29

    .line 1459
    :cond_43
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v6

    .line 1463
    if-eqz v6, :cond_44

    .line 1464
    .line 1465
    sget-object v6, Landroidx/glance/appwidget/action/ToggleableKt;->ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;

    .line 1466
    .line 1467
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v2

    .line 1471
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v2

    .line 1475
    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    .line 1480
    .line 1481
    :cond_44
    const-string v2, "ActionCallbackBroadcastReceiver:callbackClass"

    .line 1482
    .line 1483
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v2

    .line 1487
    if-eqz v2, :cond_47

    .line 1488
    .line 1489
    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 1490
    .line 1491
    .line 1492
    move-result v3

    .line 1493
    if-eqz v3, :cond_46

    .line 1494
    .line 1495
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1496
    .line 1497
    .line 1498
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1499
    .line 1500
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v0

    .line 1504
    const-class v1, Landroidx/glance/appwidget/action/ActionCallback;

    .line 1505
    .line 1506
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1507
    .line 1508
    .line 1509
    move-result v1

    .line 1510
    if-nez v1, :cond_45

    .line 1511
    .line 1512
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1513
    .line 1514
    const-string v1, "Provided class must implement ActionCallback."

    .line 1515
    .line 1516
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    throw v0

    .line 1520
    :cond_45
    const/4 v6, 0x0

    .line 1521
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v0

    .line 1525
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v0

    .line 1529
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1530
    .line 1531
    .line 1532
    new-instance v0, Ljava/lang/ClassCastException;

    .line 1533
    .line 1534
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1535
    .line 1536
    .line 1537
    throw v0

    .line 1538
    :cond_46
    const-string v0, "To update the widget, the intent must contain the AppWidgetId integer using extra: ActionCallbackBroadcastReceiver:appWidgetId"

    .line 1539
    .line 1540
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1541
    .line 1542
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1543
    .line 1544
    .line 1545
    throw v1

    .line 1546
    :cond_47
    const-string v0, "The intent must contain a work class name string using extra: ActionCallbackBroadcastReceiver:callbackClass"

    .line 1547
    .line 1548
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1549
    .line 1550
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1551
    .line 1552
    .line 1553
    throw v1

    .line 1554
    :cond_48
    const-string v0, "The intent must contain a parameters bundle using extra: ActionCallbackBroadcastReceiver:parameters"

    .line 1555
    .line 1556
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1557
    .line 1558
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    throw v1

    .line 1562
    :cond_49
    const-string v0, "The intent must have action parameters extras."

    .line 1563
    .line 1564
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1565
    .line 1566
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1567
    .line 1568
    .line 1569
    throw v1
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1570
    :catchall_5
    move-exception v0

    .line 1571
    const-string v1, "GlanceAppWidget"

    .line 1572
    .line 1573
    const-string v2, "Error in Glance App Widget"

    .line 1574
    .line 1575
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1576
    .line 1577
    .line 1578
    :goto_2a
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1579
    .line 1580
    :goto_2b
    return-object v6

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    throw v0

    .line 1583
    :pswitch_12
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1584
    .line 1585
    check-cast v0, Lokhttp3/Dispatcher;

    .line 1586
    .line 1587
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1588
    .line 1589
    iget v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1590
    .line 1591
    if-eqz v4, :cond_4d

    .line 1592
    .line 1593
    if-eq v4, v5, :cond_4b

    .line 1594
    .line 1595
    if-ne v4, v3, :cond_4a

    .line 1596
    .line 1597
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1598
    .line 1599
    .line 1600
    goto :goto_2f

    .line 1601
    :cond_4a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1602
    .line 1603
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1604
    .line 1605
    .line 1606
    :goto_2c
    const/4 v6, 0x0

    .line 1607
    goto :goto_30

    .line 1608
    :cond_4b
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1609
    .line 1610
    check-cast v4, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 1611
    .line 1612
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1613
    .line 1614
    .line 1615
    move-object/from16 v6, p1

    .line 1616
    .line 1617
    :cond_4c
    const/4 v7, 0x0

    .line 1618
    goto :goto_2d

    .line 1619
    :cond_4d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1620
    .line 1621
    .line 1622
    iget-object v4, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 1623
    .line 1624
    check-cast v4, Landroidx/fragment/app/Fragment$7;

    .line 1625
    .line 1626
    iget-object v4, v4, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 1627
    .line 1628
    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1629
    .line 1630
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1631
    .line 1632
    .line 1633
    move-result v4

    .line 1634
    if-lez v4, :cond_50

    .line 1635
    .line 1636
    :cond_4e
    iget-object v4, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1637
    .line 1638
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 1639
    .line 1640
    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v4

    .line 1644
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 1645
    .line 1646
    .line 1647
    iget-object v4, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1648
    .line 1649
    check-cast v4, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 1650
    .line 1651
    iget-object v6, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1652
    .line 1653
    check-cast v6, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1654
    .line 1655
    iput-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1656
    .line 1657
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1658
    .line 1659
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1660
    .line 1661
    .line 1662
    invoke-static {v6, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v6

    .line 1666
    if-ne v6, v2, :cond_4c

    .line 1667
    .line 1668
    goto :goto_2e

    .line 1669
    :goto_2d
    iput-object v7, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1670
    .line 1671
    iput v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1672
    .line 1673
    invoke-interface {v4, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v4

    .line 1677
    if-ne v4, v2, :cond_4f

    .line 1678
    .line 1679
    :goto_2e
    move-object v6, v2

    .line 1680
    goto :goto_30

    .line 1681
    :cond_4f
    :goto_2f
    iget-object v4, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 1682
    .line 1683
    check-cast v4, Landroidx/fragment/app/Fragment$7;

    .line 1684
    .line 1685
    iget-object v4, v4, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 1686
    .line 1687
    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1688
    .line 1689
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1690
    .line 1691
    .line 1692
    move-result v4

    .line 1693
    if-nez v4, :cond_4e

    .line 1694
    .line 1695
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1696
    .line 1697
    goto :goto_30

    .line 1698
    :cond_50
    const-string v0, "Check failed."

    .line 1699
    .line 1700
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1701
    .line 1702
    .line 1703
    goto :goto_2c

    .line 1704
    :goto_30
    return-object v6

    .line 1705
    :pswitch_13
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1706
    .line 1707
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1708
    .line 1709
    if-eqz v2, :cond_52

    .line 1710
    .line 1711
    if-ne v2, v5, :cond_51

    .line 1712
    .line 1713
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1714
    .line 1715
    .line 1716
    goto :goto_31

    .line 1717
    :cond_51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1718
    .line 1719
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    const/4 v6, 0x0

    .line 1723
    goto :goto_32

    .line 1724
    :cond_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1725
    .line 1726
    .line 1727
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1728
    .line 1729
    check-cast v2, Landroidx/datastore/core/Message$Update;

    .line 1730
    .line 1731
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1732
    .line 1733
    check-cast v3, Landroidx/datastore/core/DataStoreImpl;

    .line 1734
    .line 1735
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1736
    .line 1737
    invoke-static {v3, v2, v1}, Landroidx/datastore/core/DataStoreImpl;->access$handleUpdate(Landroidx/datastore/core/DataStoreImpl;Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v1

    .line 1741
    if-ne v1, v0, :cond_53

    .line 1742
    .line 1743
    move-object v6, v0

    .line 1744
    goto :goto_32

    .line 1745
    :cond_53
    :goto_31
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1746
    .line 1747
    :goto_32
    return-object v6

    .line 1748
    :pswitch_14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1749
    .line 1750
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1751
    .line 1752
    if-eqz v2, :cond_55

    .line 1753
    .line 1754
    if-ne v2, v5, :cond_54

    .line 1755
    .line 1756
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1757
    .line 1758
    .line 1759
    move-object/from16 v0, p1

    .line 1760
    .line 1761
    goto :goto_33

    .line 1762
    :cond_54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1763
    .line 1764
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    const/4 v0, 0x0

    .line 1768
    goto :goto_33

    .line 1769
    :cond_55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1770
    .line 1771
    .line 1772
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1773
    .line 1774
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1775
    .line 1776
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1777
    .line 1778
    check-cast v3, Landroidx/datastore/core/Data;

    .line 1779
    .line 1780
    iget-object v3, v3, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    .line 1781
    .line 1782
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1783
    .line 1784
    invoke-interface {v2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v1

    .line 1788
    if-ne v1, v0, :cond_56

    .line 1789
    .line 1790
    goto :goto_33

    .line 1791
    :cond_56
    move-object v0, v1

    .line 1792
    :goto_33
    return-object v0

    .line 1793
    :pswitch_15
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1794
    .line 1795
    check-cast v0, Landroidx/datastore/core/Message$Update;

    .line 1796
    .line 1797
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1798
    .line 1799
    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .line 1800
    .line 1801
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1802
    .line 1803
    iget v6, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1804
    .line 1805
    if-eqz v6, :cond_5a

    .line 1806
    .line 1807
    if-eq v6, v5, :cond_57

    .line 1808
    .line 1809
    if-eq v6, v3, :cond_59

    .line 1810
    .line 1811
    const/4 v3, 0x3

    .line 1812
    if-ne v6, v3, :cond_58

    .line 1813
    .line 1814
    :cond_57
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1815
    .line 1816
    .line 1817
    move-object/from16 v24, p1

    .line 1818
    .line 1819
    goto/16 :goto_38

    .line 1820
    .line 1821
    :cond_58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1822
    .line 1823
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1824
    .line 1825
    .line 1826
    :goto_34
    const/16 v24, 0x0

    .line 1827
    .line 1828
    goto/16 :goto_38

    .line 1829
    .line 1830
    :cond_59
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1831
    .line 1832
    .line 1833
    goto :goto_36

    .line 1834
    :cond_5a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1835
    .line 1836
    .line 1837
    iget-object v6, v2, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/room/ObservedTableVersions;

    .line 1838
    .line 1839
    invoke-virtual {v6}, Landroidx/room/ObservedTableVersions;->getCurrentState()Landroidx/datastore/core/State;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v6

    .line 1843
    instance-of v7, v6, Landroidx/datastore/core/Data;

    .line 1844
    .line 1845
    if-eqz v7, :cond_5c

    .line 1846
    .line 1847
    iget-object v3, v0, Landroidx/datastore/core/Message$Update;->transform:Lkotlin/jvm/functions/Function2;

    .line 1848
    .line 1849
    iget-object v0, v0, Landroidx/datastore/core/Message$Update;->callerContext:Lkotlin/coroutines/CoroutineContext;

    .line 1850
    .line 1851
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1852
    .line 1853
    invoke-virtual {v2}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/SingleProcessCoordinator;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v5

    .line 1857
    new-instance v6, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 1858
    .line 1859
    const/4 v7, 0x0

    .line 1860
    invoke-direct {v6, v2, v0, v3, v7}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 1861
    .line 1862
    .line 1863
    invoke-virtual {v5, v6, v1}, Landroidx/datastore/core/SingleProcessCoordinator;->lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v0

    .line 1867
    if-ne v0, v4, :cond_5b

    .line 1868
    .line 1869
    goto :goto_37

    .line 1870
    :cond_5b
    move-object/from16 v24, v0

    .line 1871
    .line 1872
    goto :goto_38

    .line 1873
    :cond_5c
    instance-of v5, v6, Landroidx/datastore/core/ReadException;

    .line 1874
    .line 1875
    if-nez v5, :cond_60

    .line 1876
    .line 1877
    instance-of v5, v6, Landroidx/datastore/core/UnInitialized;

    .line 1878
    .line 1879
    if-eqz v5, :cond_5d

    .line 1880
    .line 1881
    goto :goto_35

    .line 1882
    :cond_5d
    instance-of v0, v6, Landroidx/datastore/core/Final;

    .line 1883
    .line 1884
    if-nez v0, :cond_5f

    .line 1885
    .line 1886
    instance-of v0, v6, Landroidx/datastore/core/NoValueDataState;

    .line 1887
    .line 1888
    if-eqz v0, :cond_5e

    .line 1889
    .line 1890
    const-string v0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 1891
    .line 1892
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1893
    .line 1894
    .line 1895
    goto :goto_34

    .line 1896
    :cond_5e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1897
    .line 1898
    .line 1899
    goto :goto_34

    .line 1900
    :cond_5f
    check-cast v6, Landroidx/datastore/core/Final;

    .line 1901
    .line 1902
    iget-object v0, v6, Landroidx/datastore/core/Final;->finalException:Ljava/lang/Throwable;

    .line 1903
    .line 1904
    throw v0

    .line 1905
    :cond_60
    :goto_35
    iget-object v5, v0, Landroidx/datastore/core/Message$Update;->lastState:Landroidx/datastore/core/State;

    .line 1906
    .line 1907
    if-ne v6, v5, :cond_62

    .line 1908
    .line 1909
    iput v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1910
    .line 1911
    invoke-static {v2, v1}, Landroidx/datastore/core/DataStoreImpl;->access$readAndInitOrPropagateAndThrowFailure(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v3

    .line 1915
    if-ne v3, v4, :cond_61

    .line 1916
    .line 1917
    goto :goto_37

    .line 1918
    :cond_61
    :goto_36
    iget-object v3, v0, Landroidx/datastore/core/Message$Update;->transform:Lkotlin/jvm/functions/Function2;

    .line 1919
    .line 1920
    iget-object v0, v0, Landroidx/datastore/core/Message$Update;->callerContext:Lkotlin/coroutines/CoroutineContext;

    .line 1921
    .line 1922
    const/4 v5, 0x3

    .line 1923
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1924
    .line 1925
    invoke-virtual {v2}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/SingleProcessCoordinator;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v5

    .line 1929
    new-instance v6, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 1930
    .line 1931
    const/4 v7, 0x0

    .line 1932
    invoke-direct {v6, v2, v0, v3, v7}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 1933
    .line 1934
    .line 1935
    invoke-virtual {v5, v6, v1}, Landroidx/datastore/core/SingleProcessCoordinator;->lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v0

    .line 1939
    if-ne v0, v4, :cond_5b

    .line 1940
    .line 1941
    :goto_37
    move-object/from16 v24, v4

    .line 1942
    .line 1943
    :goto_38
    return-object v24

    .line 1944
    :cond_62
    check-cast v6, Landroidx/datastore/core/ReadException;

    .line 1945
    .line 1946
    iget-object v0, v6, Landroidx/datastore/core/ReadException;->readException:Ljava/lang/Throwable;

    .line 1947
    .line 1948
    throw v0

    .line 1949
    :pswitch_16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1950
    .line 1951
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1952
    .line 1953
    if-eqz v2, :cond_64

    .line 1954
    .line 1955
    if-ne v2, v5, :cond_63

    .line 1956
    .line 1957
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1958
    .line 1959
    .line 1960
    goto :goto_39

    .line 1961
    :cond_63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1962
    .line 1963
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1964
    .line 1965
    .line 1966
    const/4 v6, 0x0

    .line 1967
    goto :goto_3a

    .line 1968
    :cond_64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1969
    .line 1970
    .line 1971
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 1972
    .line 1973
    check-cast v2, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;

    .line 1974
    .line 1975
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 1976
    .line 1977
    check-cast v3, Ljava/util/List;

    .line 1978
    .line 1979
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1980
    .line 1981
    invoke-static {v3, v2, v1}, Landroidx/room/util/DBUtil;->access$runMigrations(Ljava/util/List;Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v1

    .line 1985
    if-ne v1, v0, :cond_65

    .line 1986
    .line 1987
    move-object v6, v0

    .line 1988
    goto :goto_3a

    .line 1989
    :cond_65
    :goto_39
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1990
    .line 1991
    :goto_3a
    return-object v6

    .line 1992
    :pswitch_17
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1993
    .line 1994
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 1995
    .line 1996
    if-eqz v2, :cond_67

    .line 1997
    .line 1998
    if-ne v2, v5, :cond_66

    .line 1999
    .line 2000
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2001
    .line 2002
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 2003
    .line 2004
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2005
    .line 2006
    .line 2007
    goto :goto_3d

    .line 2008
    :cond_66
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2009
    .line 2010
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2011
    .line 2012
    .line 2013
    :goto_3b
    const/4 v6, 0x0

    .line 2014
    goto :goto_3e

    .line 2015
    :cond_67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2016
    .line 2017
    .line 2018
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2019
    .line 2020
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 2021
    .line 2022
    :cond_68
    :goto_3c
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 2023
    .line 2024
    .line 2025
    move-result v3

    .line 2026
    if-eqz v3, :cond_6d

    .line 2027
    .line 2028
    sget-object v3, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;

    .line 2029
    .line 2030
    iput-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2031
    .line 2032
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2033
    .line 2034
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v4

    .line 2038
    sget-object v6, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->$$INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 2039
    .line 2040
    invoke-interface {v4, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v4

    .line 2044
    if-nez v4, :cond_6c

    .line 2045
    .line 2046
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v4

    .line 2050
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v4

    .line 2054
    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/BroadcastFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v3

    .line 2058
    if-ne v3, v0, :cond_69

    .line 2059
    .line 2060
    move-object v6, v0

    .line 2061
    goto :goto_3e

    .line 2062
    :cond_69
    :goto_3d
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 2063
    .line 2064
    check-cast v3, Landroidx/compose/ui/window/PopupLayout;

    .line 2065
    .line 2066
    iget-object v4, v3, Landroidx/compose/ui/window/PopupLayout;->locationOnScreen:[I

    .line 2067
    .line 2068
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2069
    .line 2070
    .line 2071
    move-result v6

    .line 2072
    if-nez v6, :cond_6a

    .line 2073
    .line 2074
    goto :goto_3c

    .line 2075
    :cond_6a
    const/16 v23, 0x0

    .line 2076
    .line 2077
    aget v6, v4, v23

    .line 2078
    .line 2079
    aget v7, v4, v5

    .line 2080
    .line 2081
    iget-object v8, v3, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    .line 2082
    .line 2083
    invoke-virtual {v8, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2084
    .line 2085
    .line 2086
    aget v8, v4, v23

    .line 2087
    .line 2088
    if-ne v6, v8, :cond_6b

    .line 2089
    .line 2090
    aget v4, v4, v5

    .line 2091
    .line 2092
    if-eq v7, v4, :cond_68

    .line 2093
    .line 2094
    :cond_6b
    invoke-virtual {v3}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui()V

    .line 2095
    .line 2096
    .line 2097
    goto :goto_3c

    .line 2098
    :cond_6c
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 2099
    .line 2100
    .line 2101
    goto :goto_3b

    .line 2102
    :cond_6d
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2103
    .line 2104
    :goto_3e
    return-object v6

    .line 2105
    :pswitch_18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2106
    .line 2107
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2108
    .line 2109
    if-eqz v2, :cond_6f

    .line 2110
    .line 2111
    if-ne v2, v5, :cond_6e

    .line 2112
    .line 2113
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2114
    .line 2115
    .line 2116
    goto :goto_3f

    .line 2117
    :cond_6e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2118
    .line 2119
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2120
    .line 2121
    .line 2122
    const/4 v6, 0x0

    .line 2123
    goto :goto_40

    .line 2124
    :cond_6f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2125
    .line 2126
    .line 2127
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2128
    .line 2129
    check-cast v2, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 2130
    .line 2131
    new-instance v3, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 2132
    .line 2133
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 2134
    .line 2135
    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    .line 2136
    .line 2137
    const/16 v6, 0x10

    .line 2138
    .line 2139
    invoke-direct {v3, v6, v4}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 2140
    .line 2141
    .line 2142
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2143
    .line 2144
    invoke-static {v2, v3, v1}, Landroidx/work/Data$Companion;->bringIntoView(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v1

    .line 2148
    if-ne v1, v0, :cond_70

    .line 2149
    .line 2150
    move-object v6, v0

    .line 2151
    goto :goto_40

    .line 2152
    :cond_70
    :goto_3f
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2153
    .line 2154
    :goto_40
    return-object v6

    .line 2155
    :pswitch_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2156
    .line 2157
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2158
    .line 2159
    check-cast v2, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 2160
    .line 2161
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2162
    .line 2163
    iget v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2164
    .line 2165
    if-eqz v4, :cond_72

    .line 2166
    .line 2167
    if-ne v4, v5, :cond_71

    .line 2168
    .line 2169
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2170
    .line 2171
    .line 2172
    goto :goto_42

    .line 2173
    :cond_71
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2174
    .line 2175
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2176
    .line 2177
    .line 2178
    const/4 v6, 0x0

    .line 2179
    goto :goto_43

    .line 2180
    :cond_72
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2181
    .line 2182
    .line 2183
    iget-object v4, v2, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->scrollTracker:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 2184
    .line 2185
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2186
    .line 2187
    iget v5, v4, Landroidx/compose/ui/scrollcapture/RelativeScroller;->scrollAmount:F

    .line 2188
    .line 2189
    const/4 v6, 0x0

    .line 2190
    sub-float/2addr v6, v5

    .line 2191
    invoke-virtual {v4, v6, v1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->scrollBy(FLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v4

    .line 2195
    if-ne v4, v3, :cond_73

    .line 2196
    .line 2197
    goto :goto_41

    .line 2198
    :cond_73
    move-object v4, v0

    .line 2199
    :goto_41
    if-ne v4, v3, :cond_74

    .line 2200
    .line 2201
    move-object v6, v3

    .line 2202
    goto :goto_43

    .line 2203
    :cond_74
    :goto_42
    iget-object v2, v2, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->listener:Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 2204
    .line 2205
    iget-object v2, v2, Landroidx/compose/ui/scrollcapture/ScrollCapture;->scrollCaptureInProgress$delegate:Ljava/lang/Object;

    .line 2206
    .line 2207
    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2208
    .line 2209
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2210
    .line 2211
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 2212
    .line 2213
    .line 2214
    iget-object v1, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 2215
    .line 2216
    check-cast v1, Ljava/lang/Runnable;

    .line 2217
    .line 2218
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2219
    .line 2220
    .line 2221
    move-object v6, v0

    .line 2222
    :goto_43
    return-object v6

    .line 2223
    :pswitch_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2224
    .line 2225
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2226
    .line 2227
    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 2228
    .line 2229
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 2230
    .line 2231
    check-cast v4, Landroid/view/View;

    .line 2232
    .line 2233
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2234
    .line 2235
    iget v7, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2236
    .line 2237
    const v8, 0x7f090078

    .line 2238
    .line 2239
    .line 2240
    if-eqz v7, :cond_76

    .line 2241
    .line 2242
    if-ne v7, v5, :cond_75

    .line 2243
    .line 2244
    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 2245
    .line 2246
    .line 2247
    goto :goto_45

    .line 2248
    :catchall_6
    move-exception v0

    .line 2249
    goto :goto_47

    .line 2250
    :cond_75
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2251
    .line 2252
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2253
    .line 2254
    .line 2255
    const/4 v6, 0x0

    .line 2256
    goto :goto_46

    .line 2257
    :cond_76
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2258
    .line 2259
    .line 2260
    :try_start_a
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2261
    .line 2262
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2263
    .line 2264
    new-instance v7, Landroidx/compose/runtime/Recomposer$join$2;

    .line 2265
    .line 2266
    const/4 v9, 0x0

    .line 2267
    const/4 v10, 0x0

    .line 2268
    invoke-direct {v7, v3, v10, v9}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 2269
    .line 2270
    .line 2271
    invoke-static {v5, v7, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2275
    if-ne v1, v6, :cond_77

    .line 2276
    .line 2277
    goto :goto_44

    .line 2278
    :cond_77
    move-object v1, v0

    .line 2279
    :goto_44
    if-ne v1, v6, :cond_78

    .line 2280
    .line 2281
    goto :goto_46

    .line 2282
    :cond_78
    :goto_45
    invoke-static {v4}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    .line 2283
    .line 2284
    .line 2285
    move-result-object v1

    .line 2286
    if-ne v1, v2, :cond_79

    .line 2287
    .line 2288
    const/4 v7, 0x0

    .line 2289
    invoke-virtual {v4, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2290
    .line 2291
    .line 2292
    :cond_79
    move-object v6, v0

    .line 2293
    :goto_46
    return-object v6

    .line 2294
    :goto_47
    invoke-static {v4}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v1

    .line 2298
    if-ne v1, v2, :cond_7a

    .line 2299
    .line 2300
    const/4 v7, 0x0

    .line 2301
    invoke-virtual {v4, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2302
    .line 2303
    .line 2304
    :cond_7a
    throw v0

    .line 2305
    :pswitch_1b
    move-object v7, v6

    .line 2306
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2307
    .line 2308
    iget v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2309
    .line 2310
    if-eqz v2, :cond_7c

    .line 2311
    .line 2312
    if-eq v2, v5, :cond_7b

    .line 2313
    .line 2314
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2315
    .line 2316
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2317
    .line 2318
    .line 2319
    :goto_48
    move-object v6, v7

    .line 2320
    goto :goto_4a

    .line 2321
    :cond_7b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2322
    .line 2323
    .line 2324
    goto :goto_49

    .line 2325
    :cond_7c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2326
    .line 2327
    .line 2328
    iget-object v2, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2329
    .line 2330
    check-cast v2, Lkotlinx/coroutines/flow/StateFlow;

    .line 2331
    .line 2332
    new-instance v3, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 2333
    .line 2334
    iget-object v4, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 2335
    .line 2336
    check-cast v4, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    .line 2337
    .line 2338
    const/4 v6, 0x3

    .line 2339
    invoke-direct {v3, v6, v4}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 2340
    .line 2341
    .line 2342
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2343
    .line 2344
    invoke-interface {v2, v3, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v1

    .line 2348
    if-ne v1, v0, :cond_7d

    .line 2349
    .line 2350
    move-object v6, v0

    .line 2351
    goto :goto_4a

    .line 2352
    :cond_7d
    :goto_49
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 2353
    .line 2354
    .line 2355
    goto :goto_48

    .line 2356
    :goto_4a
    return-object v6

    .line 2357
    :pswitch_1c
    move-object v7, v6

    .line 2358
    iget-object v0, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->this$0:Ljava/lang/Object;

    .line 2359
    .line 2360
    check-cast v0, Lcom/eygraber/uri/Uri$Builder;

    .line 2361
    .line 2362
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2363
    .line 2364
    iget v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2365
    .line 2366
    if-eqz v3, :cond_7f

    .line 2367
    .line 2368
    if-ne v3, v5, :cond_7e

    .line 2369
    .line 2370
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2371
    .line 2372
    .line 2373
    goto :goto_4b

    .line 2374
    :cond_7e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2375
    .line 2376
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2377
    .line 2378
    .line 2379
    move-object v6, v7

    .line 2380
    goto :goto_4c

    .line 2381
    :cond_7f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2382
    .line 2383
    .line 2384
    iget-object v3, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->L$0:Ljava/lang/Object;

    .line 2385
    .line 2386
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 2387
    .line 2388
    new-instance v4, Landroidx/lifecycle/LiveDataScopeImpl;

    .line 2389
    .line 2390
    iget-object v6, v0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 2391
    .line 2392
    check-cast v6, Landroidx/lifecycle/CoroutineLiveData;

    .line 2393
    .line 2394
    invoke-interface {v3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v3

    .line 2398
    invoke-direct {v4, v6, v3}, Landroidx/lifecycle/LiveDataScopeImpl;-><init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/coroutines/CoroutineContext;)V

    .line 2399
    .line 2400
    .line 2401
    iget-object v3, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 2402
    .line 2403
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 2404
    .line 2405
    iput v5, v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;->label:I

    .line 2406
    .line 2407
    invoke-interface {v3, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v1

    .line 2411
    if-ne v1, v2, :cond_80

    .line 2412
    .line 2413
    move-object v6, v2

    .line 2414
    goto :goto_4c

    .line 2415
    :cond_80
    :goto_4b
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 2416
    .line 2417
    check-cast v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 2418
    .line 2419
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 2420
    .line 2421
    .line 2422
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2423
    .line 2424
    :goto_4c
    return-object v6

    .line 2425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
