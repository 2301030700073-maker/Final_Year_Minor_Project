.class public final Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final getAutoDiscovery:Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

.field public final oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

.field public final validator:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;)V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x3ff

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->validator:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;

    .line 13
    .line 14
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->getAutoDiscovery:Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 15
    .line 16
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 17
    .line 18
    iput-object p4, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 19
    .line 20
    return-void
.end method

.method public static final access$updateError(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const/16 v11, 0x27f

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    move-object v8, p1

    .line 24
    invoke-static/range {v1 .. v11}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    move-object p1, v8

    .line 36
    goto :goto_0
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$EmailAddressChanged;

    .line 11
    .line 12
    iget-object v3, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$EmailAddressChanged;

    .line 17
    .line 18
    iget-object v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$EmailAddressChanged;->emailAddress:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 21
    .line 22
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v4, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/16 v11, 0xff

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-direct/range {v4 .. v11}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;I)V

    .line 38
    .line 39
    .line 40
    iput-object v4, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v1, v0

    .line 47
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 53
    .line 54
    new-instance v4, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 55
    .line 56
    const/4 v5, 0x6

    .line 57
    invoke-direct {v4, v2, v5}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    const/16 v5, 0x1fd

    .line 61
    .line 62
    invoke-direct {v1, v4, v5}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_1
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$PasswordChanged;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$PasswordChanged;

    .line 78
    .line 79
    iget-object v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$PasswordChanged;->password:Ljava/lang/String;

    .line 80
    .line 81
    :cond_2
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v4, v0

    .line 86
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v1, v4, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const/4 v13, 0x0

    .line 101
    const/16 v14, 0x3fb

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v9, 0x0

    .line 107
    const/4 v10, 0x0

    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v12, 0x0

    .line 110
    invoke-static/range {v4 .. v14}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v3, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_3
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$ResultApprovalChanged;

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v5, 0x0

    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$ResultApprovalChanged;

    .line 129
    .line 130
    iget-boolean v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$ResultApprovalChanged;->confirmed:Z

    .line 131
    .line 132
    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    move-object v6, v0

    .line 137
    check-cast v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object v1, v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 143
    .line 144
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v11, Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 152
    .line 153
    invoke-direct {v11, v7, v4, v5}, Lnet/thunderbird/core/validation/input/BooleanInputField;-><init>(Ljava/lang/Boolean;Lnet/thunderbird/core/validation/ValidationError;Z)V

    .line 154
    .line 155
    .line 156
    const/4 v15, 0x0

    .line 157
    const/16 v16, 0x3ef

    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v10, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    const/4 v13, 0x0

    .line 165
    const/4 v14, 0x0

    .line 166
    invoke-static/range {v6 .. v16}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v3, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_5
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnOAuthResult;

    .line 179
    .line 180
    const/4 v6, 0x1

    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnOAuthResult;

    .line 184
    .line 185
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnOAuthResult;->result:Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult;

    .line 186
    .line 187
    instance-of v2, v1, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;

    .line 188
    .line 189
    if-eqz v2, :cond_7

    .line 190
    .line 191
    :cond_6
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    move-object v7, v2

    .line 196
    check-cast v7, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    move-object v4, v1

    .line 202
    check-cast v4, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;

    .line 203
    .line 204
    iget-object v13, v4, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 205
    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    const/16 v17, 0x3df

    .line 209
    .line 210
    const/4 v8, 0x0

    .line 211
    const/4 v9, 0x0

    .line 212
    const/4 v10, 0x0

    .line 213
    const/4 v11, 0x0

    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v14, 0x0

    .line 216
    const/4 v15, 0x0

    .line 217
    invoke-static/range {v7 .. v17}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v3, v2, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_6

    .line 226
    .line 227
    invoke-virtual {v0, v6}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->navigateNext(Z)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_7
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    move-object v4, v0

    .line 236
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    const/4 v13, 0x0

    .line 242
    const/16 v14, 0x3df

    .line 243
    .line 244
    const/4 v5, 0x0

    .line 245
    const/4 v6, 0x0

    .line 246
    const/4 v7, 0x0

    .line 247
    const/4 v8, 0x0

    .line 248
    const/4 v9, 0x0

    .line 249
    const/4 v10, 0x0

    .line 250
    const/4 v11, 0x0

    .line 251
    const/4 v12, 0x0

    .line 252
    invoke-static/range {v4 .. v14}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v3, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_7

    .line 261
    .line 262
    goto/16 :goto_4

    .line 263
    .line 264
    :cond_8
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnNextClicked;

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    const/4 v7, 0x7

    .line 271
    const/4 v8, 0x3

    .line 272
    iget-object v9, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 273
    .line 274
    const/4 v10, 0x2

    .line 275
    if-eqz v2, :cond_17

    .line 276
    .line 277
    iget-object v1, v9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 278
    .line 279
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 284
    .line 285
    iget-object v2, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    iget-object v9, v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->validator:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;

    .line 292
    .line 293
    if-eqz v2, :cond_13

    .line 294
    .line 295
    if-eq v2, v6, :cond_1c

    .line 296
    .line 297
    if-eq v2, v10, :cond_a

    .line 298
    .line 299
    if-ne v2, v8, :cond_9

    .line 300
    .line 301
    invoke-virtual {v0, v5}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->navigateNext(Z)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_a
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 314
    .line 315
    iget-object v3, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 316
    .line 317
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v9, v3}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;->validateEmailAddress(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    iget-object v7, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 324
    .line 325
    iget-object v7, v7, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-static {v7}, Landroidx/collection/internal/Lock;->execute(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    iget-object v9, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 335
    .line 336
    iget-object v9, v9, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 337
    .line 338
    iget-object v2, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 339
    .line 340
    if-eqz v2, :cond_b

    .line 341
    .line 342
    iget-boolean v2, v2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->isTrusted:Z

    .line 343
    .line 344
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    goto :goto_0

    .line 349
    :cond_b
    move-object v2, v4

    .line 350
    :goto_0
    if-nez v9, :cond_c

    .line 351
    .line 352
    if-nez v2, :cond_c

    .line 353
    .line 354
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    goto :goto_1

    .line 359
    :cond_c
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 360
    .line 361
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_d

    .line 366
    .line 367
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    goto :goto_1

    .line 372
    :cond_d
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_e

    .line 377
    .line 378
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    goto :goto_1

    .line 383
    :cond_e
    new-instance v2, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 384
    .line 385
    sget-object v9, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;

    .line 386
    .line 387
    invoke-direct {v2, v9, v4}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    :goto_1
    new-array v4, v8, [Lnet/thunderbird/core/outcome/Outcome;

    .line 391
    .line 392
    aput-object v3, v4, v5

    .line 393
    .line 394
    aput-object v7, v4, v6

    .line 395
    .line 396
    aput-object v2, v4, v10

    .line 397
    .line 398
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    if-eqz v8, :cond_10

    .line 407
    .line 408
    :cond_f
    move v4, v5

    .line 409
    goto :goto_2

    .line 410
    :cond_10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    if-eqz v8, :cond_f

    .line 419
    .line 420
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    check-cast v8, Lnet/thunderbird/core/outcome/Outcome;

    .line 425
    .line 426
    instance-of v8, v8, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 427
    .line 428
    if-eqz v8, :cond_11

    .line 429
    .line 430
    move v4, v6

    .line 431
    :goto_2
    new-instance v8, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 432
    .line 433
    const/16 v9, 0x1a

    .line 434
    .line 435
    invoke-direct {v8, v3, v7, v2, v9}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v8}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 439
    .line 440
    .line 441
    if-nez v4, :cond_1c

    .line 442
    .line 443
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 448
    .line 449
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 450
    .line 451
    if-eqz v1, :cond_12

    .line 452
    .line 453
    move v5, v6

    .line 454
    :cond_12
    invoke-virtual {v0, v5}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->navigateNext(Z)V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :cond_13
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 463
    .line 464
    iget-object v2, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 465
    .line 466
    if-eqz v2, :cond_15

    .line 467
    .line 468
    :cond_14
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    move-object v4, v0

    .line 473
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 474
    .line 475
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    const/4 v13, 0x0

    .line 479
    const/16 v14, 0x37e

    .line 480
    .line 481
    sget-object v5, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->PASSWORD:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 482
    .line 483
    const/4 v6, 0x0

    .line 484
    const/4 v7, 0x0

    .line 485
    const/4 v8, 0x0

    .line 486
    const/4 v9, 0x0

    .line 487
    const/4 v10, 0x0

    .line 488
    const/4 v11, 0x0

    .line 489
    const/4 v12, 0x0

    .line 490
    invoke-static/range {v4 .. v14}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v3, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_14

    .line 499
    .line 500
    goto/16 :goto_4

    .line 501
    .line 502
    :cond_15
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 507
    .line 508
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 509
    .line 510
    iget-object v1, v1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v9, v1}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;->validateEmailAddress(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    instance-of v11, v2, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 517
    .line 518
    :cond_16
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    move-object v12, v1

    .line 523
    check-cast v12, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 524
    .line 525
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    iget-object v5, v12, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 529
    .line 530
    invoke-virtual {v5, v2}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 531
    .line 532
    .line 533
    move-result-object v14

    .line 534
    const/16 v21, 0x0

    .line 535
    .line 536
    const/16 v22, 0x3fd

    .line 537
    .line 538
    const/4 v13, 0x0

    .line 539
    const/4 v15, 0x0

    .line 540
    const/16 v16, 0x0

    .line 541
    .line 542
    const/16 v17, 0x0

    .line 543
    .line 544
    const/16 v18, 0x0

    .line 545
    .line 546
    const/16 v19, 0x0

    .line 547
    .line 548
    const/16 v20, 0x0

    .line 549
    .line 550
    invoke-static/range {v12 .. v22}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-virtual {v3, v1, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-eqz v1, :cond_16

    .line 559
    .line 560
    if-nez v11, :cond_1c

    .line 561
    .line 562
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    new-instance v2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 567
    .line 568
    invoke-direct {v2, v0, v4, v7}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 569
    .line 570
    .line 571
    invoke-static {v1, v4, v4, v2, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 572
    .line 573
    .line 574
    return-void

    .line 575
    :cond_17
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnBackClicked;

    .line 576
    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-eqz v2, :cond_1e

    .line 582
    .line 583
    iget-object v1, v9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 584
    .line 585
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 590
    .line 591
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-eqz v1, :cond_1a

    .line 598
    .line 599
    if-eq v1, v6, :cond_19

    .line 600
    .line 601
    if-eq v1, v10, :cond_19

    .line 602
    .line 603
    if-ne v1, v8, :cond_18

    .line 604
    .line 605
    goto :goto_3

    .line 606
    :cond_18
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 607
    .line 608
    .line 609
    return-void

    .line 610
    :cond_19
    :goto_3
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    move-object v8, v0

    .line 615
    check-cast v8, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 616
    .line 617
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    new-instance v11, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 621
    .line 622
    invoke-direct {v11, v4, v7}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 623
    .line 624
    .line 625
    const/16 v17, 0x1

    .line 626
    .line 627
    const/16 v18, 0x1fa

    .line 628
    .line 629
    sget-object v9, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->EMAIL_ADDRESS:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 630
    .line 631
    const/4 v10, 0x0

    .line 632
    const/4 v12, 0x0

    .line 633
    const/4 v13, 0x0

    .line 634
    const/4 v14, 0x0

    .line 635
    const/4 v15, 0x0

    .line 636
    const/16 v16, 0x0

    .line 637
    .line 638
    invoke-static/range {v8 .. v18}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {v3, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    if-eqz v0, :cond_19

    .line 647
    .line 648
    goto :goto_4

    .line 649
    :cond_1a
    iget-object v1, v9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 650
    .line 651
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 656
    .line 657
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 658
    .line 659
    if-eqz v1, :cond_1d

    .line 660
    .line 661
    :cond_1b
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    move-object v4, v0

    .line 666
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 667
    .line 668
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    const/4 v13, 0x0

    .line 672
    const/16 v14, 0x37f

    .line 673
    .line 674
    const/4 v5, 0x0

    .line 675
    const/4 v6, 0x0

    .line 676
    const/4 v7, 0x0

    .line 677
    const/4 v8, 0x0

    .line 678
    const/4 v9, 0x0

    .line 679
    const/4 v10, 0x0

    .line 680
    const/4 v11, 0x0

    .line 681
    const/4 v12, 0x0

    .line 682
    invoke-static/range {v4 .. v14}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v3, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-eqz v0, :cond_1b

    .line 691
    .line 692
    :cond_1c
    :goto_4
    return-void

    .line 693
    :cond_1d
    sget-object v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateBack;

    .line 694
    .line 695
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    return-void

    .line 699
    :cond_1e
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnRetryClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnRetryClicked;

    .line 700
    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    if-eqz v2, :cond_20

    .line 706
    .line 707
    :cond_1f
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    move-object v9, v1

    .line 712
    check-cast v9, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 713
    .line 714
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    const/16 v18, 0x0

    .line 718
    .line 719
    const/16 v19, 0x37f

    .line 720
    .line 721
    const/4 v10, 0x0

    .line 722
    const/4 v11, 0x0

    .line 723
    const/4 v12, 0x0

    .line 724
    const/4 v13, 0x0

    .line 725
    const/4 v14, 0x0

    .line 726
    const/4 v15, 0x0

    .line 727
    const/16 v16, 0x0

    .line 728
    .line 729
    const/16 v17, 0x0

    .line 730
    .line 731
    invoke-static/range {v9 .. v19}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    invoke-virtual {v3, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-eqz v1, :cond_1f

    .line 740
    .line 741
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    new-instance v2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 746
    .line 747
    invoke-direct {v2, v0, v4, v7}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 748
    .line 749
    .line 750
    invoke-static {v1, v4, v4, v2, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 751
    .line 752
    .line 753
    return-void

    .line 754
    :cond_20
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnEditConfigurationClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Event$OnEditConfigurationClicked;

    .line 755
    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    if-eqz v1, :cond_21

    .line 761
    .line 762
    invoke-virtual {v0, v5}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->navigateNext(Z)V

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :cond_21
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 767
    .line 768
    .line 769
    return-void
.end method

.method public final navigateNext(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 15
    .line 16
    new-instance v3, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 17
    .line 18
    iget-object v4, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    iget-object v5, v4, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    iget-object v6, v4, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->incomingServerSettings:Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    iget-object v7, v2, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v6, v7}, Landroidx/core/util/DebugUtils;->toServerSettings(Lapp/k9mail/autodiscovery/api/ImapServerSettings;Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v6, v11

    .line 39
    :goto_0
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-object v4, v4, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->outgoingServerSettings:Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    iget-object v2, v2, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v4, v2}, Landroidx/core/util/DebugUtils;->toServerSettings(Lapp/k9mail/autodiscovery/api/SmtpServerSettings;Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v7, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v7, v11

    .line 54
    :goto_1
    iget-object v8, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const/16 v10, 0x21

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct/range {v3 .. v10}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 64
    .line 65
    check-cast v1, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iput-object v3, v1, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 71
    .line 72
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateNext;

    .line 73
    .line 74
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 75
    .line 76
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 81
    .line 82
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object v0, v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->incomingServerSettings:Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move-object v0, v11

    .line 90
    :goto_2
    instance-of v0, v0, Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    sget-object v11, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->IMAP:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 95
    .line 96
    :cond_3
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;

    .line 97
    .line 98
    invoke-direct {v0, p1, v11}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;-><init>(ZLapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v0}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Effect$NavigateNext;-><init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
