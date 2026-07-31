.class public final Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->this$0:Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

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
    iget p1, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->this$0:Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 14

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->this$0:Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    iget v7, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->label:I

    .line 19
    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    if-ne v7, v4, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    move-object v2, v6

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 38
    .line 39
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 40
    .line 41
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 46
    .line 47
    iget-object v7, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 48
    .line 49
    if-nez v7, :cond_2

    .line 50
    .line 51
    new-instance p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;

    .line 52
    .line 53
    const-string p1, "Server settings not set"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    move-object v2, v5

    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    move-object v8, p1

    .line 69
    check-cast v8, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 70
    .line 71
    const/4 v12, 0x1

    .line 72
    const/16 v13, 0x1f

    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    invoke-static/range {v8 .. v13}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->copy$default(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;ZI)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object p1, v3, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->validateServerSettings:Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 88
    .line 89
    iput v4, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->label:I

    .line 90
    .line 91
    iget-object v1, p1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 92
    .line 93
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 94
    .line 95
    const/16 v8, 0x12

    .line 96
    .line 97
    invoke-direct {v4, v7, p1, v6, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v2, :cond_3

    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_3
    :goto_2
    check-cast p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult;

    .line 109
    .line 110
    sget-object p0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;

    .line 111
    .line 112
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_5

    .line 117
    .line 118
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    move-object v7, p0

    .line 123
    check-cast v7, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    const/4 v11, 0x0

    .line 129
    const/16 v12, 0x17

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v9, 0x1

    .line 133
    const/4 v10, 0x0

    .line 134
    invoke-static/range {v7 .. v12}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->copy$default(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;ZI)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_4

    .line 143
    .line 144
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    new-instance p1, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;

    .line 149
    .line 150
    const/4 v0, 0x0

    .line 151
    invoke-direct {p1, v3, v6, v0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 152
    .line 153
    .line 154
    const/4 v0, 0x3

    .line 155
    invoke-static {p0, v6, v6, p1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    instance-of p0, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;

    .line 160
    .line 161
    if-eqz p0, :cond_6

    .line 162
    .line 163
    new-instance p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$AuthenticationError;

    .line 164
    .line 165
    check-cast p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;

    .line 166
    .line 167
    iget-object p1, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;->serverMessage:Ljava/lang/String;

    .line 168
    .line 169
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$AuthenticationError;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    instance-of p0, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;

    .line 177
    .line 178
    if-eqz p0, :cond_7

    .line 179
    .line 180
    new-instance p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$CertificateError;

    .line 181
    .line 182
    check-cast p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;

    .line 183
    .line 184
    iget-object p1, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;->certificateChain:Ljava/util/List;

    .line 185
    .line 186
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$CertificateError;-><init>(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_7
    sget-object p0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;

    .line 195
    .line 196
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-eqz p0, :cond_8

    .line 201
    .line 202
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateExpired;->INSTANCE:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateExpired;

    .line 203
    .line 204
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_8
    sget-object p0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;

    .line 210
    .line 211
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_9

    .line 216
    .line 217
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateRetrievalFailure;->INSTANCE:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ClientCertificateRetrievalFailure;

    .line 218
    .line 219
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_9
    instance-of p0, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 225
    .line 226
    if-eqz p0, :cond_a

    .line 227
    .line 228
    new-instance p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$NetworkError;

    .line 229
    .line 230
    check-cast p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 231
    .line 232
    iget-object p1, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;->exception:Ljava/io/IOException;

    .line 233
    .line 234
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :cond_a
    instance-of p0, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;

    .line 243
    .line 244
    if-eqz p0, :cond_b

    .line 245
    .line 246
    new-instance p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ServerError;

    .line 247
    .line 248
    check-cast p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;->serverMessage:Ljava/lang/String;

    .line 251
    .line 252
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$ServerError;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_b
    instance-of p0, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;

    .line 261
    .line 262
    if-eqz p0, :cond_c

    .line 263
    .line 264
    new-instance p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$MissingServerCapabilityError;

    .line 265
    .line 266
    check-cast p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;

    .line 267
    .line 268
    iget-object p1, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;->capabilityName:Ljava/lang/String;

    .line 269
    .line 270
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$MissingServerCapabilityError;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_c
    instance-of p0, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 279
    .line 280
    if-eqz p0, :cond_e

    .line 281
    .line 282
    new-instance p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;

    .line 283
    .line 284
    check-cast p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 285
    .line 286
    iget-object p1, p1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;->exception:Ljava/lang/Exception;

    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    if-nez p1, :cond_d

    .line 293
    .line 294
    const-string p1, "Unknown error"

    .line 295
    .line 296
    :cond_d
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :cond_e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :goto_3
    return-object v2

    .line 310
    :pswitch_0
    iget v0, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->label:I

    .line 311
    .line 312
    if-eqz v0, :cond_10

    .line 313
    .line 314
    if-ne v0, v4, :cond_f

    .line 315
    .line 316
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_f
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    move-object v2, v6

    .line 324
    goto :goto_5

    .line 325
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    iput v4, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;->label:I

    .line 329
    .line 330
    const-wide/16 v0, 0x1f4

    .line 331
    .line 332
    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    if-ne p0, v2, :cond_11

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_11
    :goto_4
    invoke-virtual {v3}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->navigateNext$3()V

    .line 340
    .line 341
    .line 342
    move-object v2, v5

    .line 343
    :goto_5
    return-object v2

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
