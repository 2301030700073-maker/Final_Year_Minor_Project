.class public final Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->this$0:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;

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
    iget v0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->this$0:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;-><init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;-><init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;-><init>(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->this$0:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v2, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 19
    .line 20
    new-instance v0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/16 v4, 0x17

    .line 23
    .line 24
    invoke-direct {v0, v4, p0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    const-string v5, "ThundermailOAuthViewModel"

    .line 29
    .line 30
    invoke-static {p1, v5, v3, v0, v4}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 31
    .line 32
    .line 33
    instance-of p1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$LaunchOAuth;

    .line 38
    .line 39
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;

    .line 40
    .line 41
    iget-object p0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;->intent:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$LaunchOAuth;-><init>(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_0
    sget-object p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateBack;

    .line 52
    .line 53
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_14

    .line 58
    .line 59
    instance-of p1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;

    .line 60
    .line 61
    if-eqz p1, :cond_13

    .line 62
    .line 63
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;

    .line 64
    .line 65
    iget-object p1, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 66
    .line 67
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 68
    .line 69
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 74
    .line 75
    iget-object v4, v2, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->createAccountStateUseCase:Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;

    .line 76
    .line 77
    iget-object v10, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;->state:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 78
    .line 79
    iget-object p0, p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 80
    .line 81
    const-string v0, "Unexpected behaviour. NavigateNext called before AutoDiscoveryResult was received."

    .line 82
    .line 83
    if-eqz p0, :cond_12

    .line 84
    .line 85
    iget-object p1, p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 86
    .line 87
    if-eqz p1, :cond_11

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v0, v10, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;->value:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 97
    .line 98
    sget-object p1, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$AuthorizationStateMissing;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$AuthorizationStateMissing;

    .line 99
    .line 100
    invoke-direct {p0, p1, v3}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :cond_1
    :try_start_0
    invoke-static {v0}, Lnet/openid/appauth/AuthState;->jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthState;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v5, Lkotlin/Pair;

    .line 110
    .line 111
    invoke-direct {v5, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v5, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$InvalidAuthorizationState;

    .line 117
    .line 118
    invoke-direct {v5, v0}, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$InvalidAuthorizationState;-><init>(Lorg/json/JSONException;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lkotlin/Pair;

    .line 122
    .line 123
    invoke-direct {v0, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object v5, v0

    .line 127
    :goto_0
    iget-object v0, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lnet/openid/appauth/AuthState;

    .line 130
    .line 131
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v5, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$InvalidAuthorizationState;

    .line 134
    .line 135
    if-eqz v0, :cond_2

    .line 136
    .line 137
    invoke-virtual {v0}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-eqz v6, :cond_2

    .line 142
    .line 143
    :try_start_1
    invoke-static {v6}, Lnet/openid/appauth/IdToken;->from(Ljava/lang/String;)Lnet/openid/appauth/IdToken;

    .line 144
    .line 145
    .line 146
    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/openid/appauth/IdToken$IdTokenException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    goto :goto_1

    .line 148
    :catch_1
    :cond_2
    move-object v6, v3

    .line 149
    :goto_1
    if-eqz v6, :cond_3

    .line 150
    .line 151
    iget-object v7, v6, Lnet/openid/appauth/IdToken;->additionalClaims:Ljava/util/HashMap;

    .line 152
    .line 153
    const-string v8, "preferred_username"

    .line 154
    .line 155
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    if-nez v7, :cond_5

    .line 160
    .line 161
    :cond_3
    if-eqz v6, :cond_4

    .line 162
    .line 163
    iget-object v7, v6, Lnet/openid/appauth/IdToken;->additionalClaims:Ljava/util/HashMap;

    .line 164
    .line 165
    const-string v8, "email"

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    goto :goto_2

    .line 172
    :cond_4
    move-object v7, v3

    .line 173
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    goto :goto_3

    .line 180
    :cond_6
    move-object v7, v3

    .line 181
    :goto_3
    if-nez v0, :cond_7

    .line 182
    .line 183
    if-eqz v5, :cond_7

    .line 184
    .line 185
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 186
    .line 187
    invoke-direct {p0, v5, v3}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_7
    if-nez v6, :cond_8

    .line 192
    .line 193
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 194
    .line 195
    sget-object p1, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$IdTokenMissing;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$IdTokenMissing;

    .line 196
    .line 197
    invoke-direct {p0, p1, v3}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_8
    iget-object v0, v6, Lnet/openid/appauth/IdToken;->additionalClaims:Ljava/util/HashMap;

    .line 202
    .line 203
    if-eqz v7, :cond_d

    .line 204
    .line 205
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_9

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_9
    const-string v5, "name"

    .line 213
    .line 214
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    if-nez v5, :cond_a

    .line 219
    .line 220
    const-string v5, "given_name"

    .line 221
    .line 222
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    :cond_a
    if-eqz v5, :cond_b

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_4

    .line 233
    :cond_b
    move-object v0, v3

    .line 234
    :goto_4
    const/16 v5, 0x1df

    .line 235
    .line 236
    invoke-static {p0, v7, v3, v3, v5}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-static {p1, v7, v3, v3, v5}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    if-eqz v0, :cond_c

    .line 245
    .line 246
    new-instance p0, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 247
    .line 248
    invoke-direct {p0, v7, v0, v3}, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    move-object v11, p0

    .line 252
    goto :goto_5

    .line 253
    :cond_c
    move-object v11, v3

    .line 254
    :goto_5
    new-instance v5, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 255
    .line 256
    const/4 v6, 0x0

    .line 257
    const/16 v12, 0xa1

    .line 258
    .line 259
    invoke-direct/range {v5 .. v12}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;I)V

    .line 260
    .line 261
    .line 262
    iget-object p0, v4, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 263
    .line 264
    check-cast p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 265
    .line 266
    iput-object v5, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 267
    .line 268
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 269
    .line 270
    invoke-direct {p0, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_d
    :goto_6
    new-instance p0, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$MissingEmail;

    .line 275
    .line 276
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$MissingEmail;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 284
    .line 285
    invoke-direct {p1, p0, v3}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    move-object p0, p1

    .line 289
    :goto_7
    nop

    .line 290
    instance-of p1, p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 291
    .line 292
    if-eqz p1, :cond_e

    .line 293
    .line 294
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 295
    .line 296
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p0, Lkotlin/Unit;

    .line 299
    .line 300
    sget-object p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$NavigateToIncomingServerSettings;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$NavigateToIncomingServerSettings;

    .line 301
    .line 302
    invoke-virtual {v2, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_e
    instance-of p1, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 307
    .line 308
    if-eqz p1, :cond_10

    .line 309
    .line 310
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 311
    .line 312
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure;

    .line 315
    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    instance-of p1, p0, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$AuthorizationStateMissing;

    .line 320
    .line 321
    if-nez p1, :cond_14

    .line 322
    .line 323
    instance-of p1, p0, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$InvalidAuthorizationState;

    .line 324
    .line 325
    if-nez p1, :cond_14

    .line 326
    .line 327
    instance-of p1, p0, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$IdTokenMissing;

    .line 328
    .line 329
    if-nez p1, :cond_14

    .line 330
    .line 331
    instance-of p0, p0, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase$Failure$MissingEmail;

    .line 332
    .line 333
    if-eqz p0, :cond_f

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 337
    .line 338
    .line 339
    :goto_8
    move-object v1, v3

    .line 340
    goto :goto_9

    .line 341
    :cond_10
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 342
    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_11
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_12
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_8

    .line 353
    :cond_13
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_14
    :goto_9
    return-object v1

    .line 358
    :pswitch_0
    iget-object p0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->L$0:Ljava/lang/Object;

    .line 359
    .line 360
    move-object v0, p0

    .line 361
    check-cast v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 362
    .line 363
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    iget-object v4, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 367
    .line 368
    :cond_15
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    move-object p1, p0

    .line 373
    check-cast p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 374
    .line 375
    iget-object v2, v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

    .line 376
    .line 377
    sget-object v5, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 378
    .line 379
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_16

    .line 384
    .line 385
    sget-object v2, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$BrowserNotAvailable;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$BrowserNotAvailable;

    .line 386
    .line 387
    goto :goto_a

    .line 388
    :cond_16
    sget-object v5, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 389
    .line 390
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-eqz v5, :cond_17

    .line 395
    .line 396
    sget-object v2, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$Canceled;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$Canceled;

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_17
    instance-of v5, v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;

    .line 400
    .line 401
    if-eqz v5, :cond_18

    .line 402
    .line 403
    new-instance v5, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$Unknown;

    .line 404
    .line 405
    check-cast v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;

    .line 406
    .line 407
    iget-object v2, v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Unknown;->error:Ljava/lang/Exception;

    .line 408
    .line 409
    invoke-direct {v5, v2}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$Unknown;-><init>(Ljava/lang/Exception;)V

    .line 410
    .line 411
    .line 412
    move-object v2, v5

    .line 413
    goto :goto_a

    .line 414
    :cond_18
    move-object v2, v3

    .line 415
    :goto_a
    const/4 v5, 0x6

    .line 416
    invoke-static {p1, v3, v3, v2, v5}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->copy$default(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;I)Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-virtual {v4, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result p0

    .line 424
    if-eqz p0, :cond_15

    .line 425
    .line 426
    return-object v1

    .line 427
    :pswitch_1
    iget-object v0, v2, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->accountOAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 428
    .line 429
    iget-object p0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel$2;->L$0:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast p0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult;

    .line 432
    .line 433
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    instance-of p1, p0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 437
    .line 438
    if-eqz p1, :cond_1a

    .line 439
    .line 440
    check-cast p0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 441
    .line 442
    iget-object p1, p0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->incomingServerSettings:Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 443
    .line 444
    invoke-static {p1, v3}, Landroidx/core/util/DebugUtils;->toServerSettings(Lapp/k9mail/autodiscovery/api/ImapServerSettings;Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    new-instance v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 449
    .line 450
    iget-object v4, p1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 451
    .line 452
    const/16 v5, 0x3e

    .line 453
    .line 454
    invoke-direct {v1, v5, v4, v3}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->initState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;)V

    .line 458
    .line 459
    .line 460
    iget-object v1, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 461
    .line 462
    :cond_19
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    move-object v4, v2

    .line 467
    check-cast v4, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 468
    .line 469
    iget-object v5, p0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->outgoingServerSettings:Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 470
    .line 471
    invoke-static {v5, v3}, Landroidx/core/util/DebugUtils;->toServerSettings(Lapp/k9mail/autodiscovery/api/SmtpServerSettings;Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    const/16 v6, 0x9

    .line 476
    .line 477
    invoke-static {v4, p1, v5, v3, v6}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->copy$default(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;I)Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v1, v2, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-eqz v2, :cond_19

    .line 486
    .line 487
    :cond_1a
    iget-object p0, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 488
    .line 489
    return-object p0

    .line 490
    nop

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
