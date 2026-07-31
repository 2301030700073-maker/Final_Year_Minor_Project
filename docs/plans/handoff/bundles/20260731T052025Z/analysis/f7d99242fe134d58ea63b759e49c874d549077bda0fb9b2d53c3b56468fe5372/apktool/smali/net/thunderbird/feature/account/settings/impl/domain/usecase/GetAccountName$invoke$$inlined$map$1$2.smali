.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $accountId$inlined:Lnet/thunderbird/feature/account/AccountId;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/feature/account/AccountId;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;->$accountId$inlined:Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;->$accountId$inlined:Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    const/high16 v6, -0x80000000

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    instance-of v0, p2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;

    .line 26
    .line 27
    iget v9, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;->label:I

    .line 28
    .line 29
    and-int v10, v9, v6

    .line 30
    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    sub-int/2addr v9, v6

    .line 34
    iput v9, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;->label:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;->label:I

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    if-ne p2, v7, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v1, v8

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    check-cast p1, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-instance p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p2, "AccountProfile not found for accountId: "

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 92
    .line 93
    invoke-direct {p1, p0, v8}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object p0, p1

    .line 97
    :goto_1
    iput v7, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile$invoke$$inlined$map$1$2$1;->label:I

    .line 98
    .line 99
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v5, :cond_4

    .line 104
    .line 105
    move-object v1, v5

    .line 106
    :cond_4
    :goto_2
    return-object v1

    .line 107
    :pswitch_0
    instance-of v0, p2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    move-object v0, p2

    .line 112
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;

    .line 113
    .line 114
    iget v9, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;->label:I

    .line 115
    .line 116
    and-int v10, v9, v6

    .line 117
    .line 118
    if-eqz v10, :cond_5

    .line 119
    .line 120
    sub-int/2addr v9, v6

    .line 121
    iput v9, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;->label:I

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;

    .line 125
    .line 126
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    iget-object p0, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 130
    .line 131
    iget p2, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;->label:I

    .line 132
    .line 133
    if-eqz p2, :cond_7

    .line 134
    .line 135
    if-ne p2, v7, :cond_6

    .line 136
    .line 137
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object v1, v8

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    check-cast p1, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 150
    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    iget-object p0, p1, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 154
    .line 155
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 156
    .line 157
    invoke-direct {p1, p0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    new-instance p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string p2, "Account profile not found for accountId: "

    .line 166
    .line 167
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 181
    .line 182
    invoke-direct {p1, p0, v8}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :goto_4
    iput v7, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1$2$1;->label:I

    .line 186
    .line 187
    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    if-ne p0, v5, :cond_9

    .line 192
    .line 193
    move-object v1, v5

    .line 194
    :cond_9
    :goto_5
    return-object v1

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
