.class public Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

.field public final validator:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 5
    .line 6
    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->validator:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 7
    .line 8
    iput-object p4, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 19

    .line 1
    move-object/from16 v8, p1

    .line 2
    .line 3
    check-cast v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event;

    .line 4
    .line 5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$LoadAccountState;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$LoadAccountState;

    .line 9
    .line 10
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x7

    .line 20
    const/4 v1, 0x0

    .line 21
    const-class v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 22
    .line 23
    const-string v4, "loadAccountState"

    .line 24
    .line 25
    const-string v5, "loadAccountState()V"

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v8, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->handleOneTimeEvent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    move-object/from16 v2, p0

    .line 37
    .line 38
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ServerChanged;

    .line 39
    .line 40
    iget-object v1, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v9, v0

    .line 49
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 55
    .line 56
    move-object v3, v8

    .line 57
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ServerChanged;

    .line 58
    .line 59
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ServerChanged;->server:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    const/16 v17, 0x7e

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v12, 0x0

    .line 74
    const/4 v13, 0x0

    .line 75
    const/4 v14, 0x0

    .line 76
    const/4 v15, 0x0

    .line 77
    invoke-static/range {v9 .. v17}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_2
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$SecurityChanged;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    check-cast v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$SecurityChanged;

    .line 94
    .line 95
    iget-object v11, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$SecurityChanged;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 96
    .line 97
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v9, v0

    .line 102
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 108
    .line 109
    invoke-static {v11}, Lorg/jsoup/helper/Validate;->toSmtpDefaultPort(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/NumberInputField;->updateValue(Ljava/lang/Long;)Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    const/16 v17, 0x79

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    const/4 v13, 0x0

    .line 130
    const/4 v14, 0x0

    .line 131
    const/4 v15, 0x0

    .line 132
    invoke-static/range {v9 .. v17}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_4
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PortChanged;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    move-object v9, v0

    .line 153
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 154
    .line 155
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 159
    .line 160
    move-object v3, v8

    .line 161
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PortChanged;

    .line 162
    .line 163
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PortChanged;->port:Ljava/lang/Long;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/NumberInputField;->updateValue(Ljava/lang/Long;)Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    const/16 v16, 0x0

    .line 173
    .line 174
    const/16 v17, 0x7b

    .line 175
    .line 176
    const/4 v10, 0x0

    .line 177
    const/4 v11, 0x0

    .line 178
    const/4 v13, 0x0

    .line 179
    const/4 v14, 0x0

    .line 180
    const/4 v15, 0x0

    .line 181
    invoke-static/range {v9 .. v17}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    goto/16 :goto_5

    .line 192
    .line 193
    :cond_6
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$AuthenticationTypeChanged;

    .line 194
    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    :cond_7
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move-object v9, v0

    .line 202
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    move-object v2, v8

    .line 208
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$AuthenticationTypeChanged;

    .line 209
    .line 210
    iget-object v13, v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$AuthenticationTypeChanged;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 211
    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    const/16 v17, 0x77

    .line 215
    .line 216
    const/4 v10, 0x0

    .line 217
    const/4 v11, 0x0

    .line 218
    const/4 v12, 0x0

    .line 219
    const/4 v14, 0x0

    .line 220
    const/4 v15, 0x0

    .line 221
    invoke-static/range {v9 .. v17}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_7

    .line 230
    .line 231
    goto/16 :goto_5

    .line 232
    .line 233
    :cond_8
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$UsernameChanged;

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    :cond_9
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object v9, v0

    .line 242
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 243
    .line 244
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 248
    .line 249
    move-object v3, v8

    .line 250
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$UsernameChanged;

    .line 251
    .line 252
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$UsernameChanged;->username:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    const/16 v16, 0x0

    .line 262
    .line 263
    const/16 v17, 0x6f

    .line 264
    .line 265
    const/4 v10, 0x0

    .line 266
    const/4 v11, 0x0

    .line 267
    const/4 v12, 0x0

    .line 268
    const/4 v13, 0x0

    .line 269
    const/4 v15, 0x0

    .line 270
    invoke-static/range {v9 .. v17}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_9

    .line 279
    .line 280
    goto/16 :goto_5

    .line 281
    .line 282
    :cond_a
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PasswordChanged;

    .line 283
    .line 284
    if-eqz v0, :cond_c

    .line 285
    .line 286
    :cond_b
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    move-object v9, v0

    .line 291
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 297
    .line 298
    move-object v3, v8

    .line 299
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PasswordChanged;

    .line 300
    .line 301
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$PasswordChanged;->password:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    const/16 v16, 0x0

    .line 311
    .line 312
    const/16 v17, 0x5f

    .line 313
    .line 314
    const/4 v10, 0x0

    .line 315
    const/4 v11, 0x0

    .line 316
    const/4 v12, 0x0

    .line 317
    const/4 v13, 0x0

    .line 318
    const/4 v14, 0x0

    .line 319
    invoke-static/range {v9 .. v17}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_b

    .line 328
    .line 329
    goto/16 :goto_5

    .line 330
    .line 331
    :cond_c
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ClientCertificateChanged;

    .line 332
    .line 333
    if-eqz v0, :cond_e

    .line 334
    .line 335
    :cond_d
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    move-object v9, v0

    .line 340
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 341
    .line 342
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    move-object v2, v8

    .line 346
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ClientCertificateChanged;

    .line 347
    .line 348
    iget-object v2, v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$ClientCertificateChanged;->clientCertificateAlias:Ljava/lang/String;

    .line 349
    .line 350
    const/16 v17, 0x3f

    .line 351
    .line 352
    const/4 v10, 0x0

    .line 353
    const/4 v11, 0x0

    .line 354
    const/4 v12, 0x0

    .line 355
    const/4 v13, 0x0

    .line 356
    const/4 v14, 0x0

    .line 357
    const/4 v15, 0x0

    .line 358
    move-object/from16 v16, v2

    .line 359
    .line 360
    invoke-static/range {v9 .. v17}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_d

    .line 369
    .line 370
    goto/16 :goto_5

    .line 371
    .line 372
    :cond_e
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$OnNextClicked;

    .line 373
    .line 374
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-eqz v0, :cond_17

    .line 379
    .line 380
    iget-object v0, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 381
    .line 382
    iget-object v3, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 383
    .line 384
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 389
    .line 390
    iget-object v4, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 391
    .line 392
    iget-object v4, v4, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 393
    .line 394
    iget-object v5, v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->validator:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 395
    .line 396
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {v4}, Lcom/jcraft/jzlib/Adler32;->execute(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    iget-object v5, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 407
    .line 408
    iget-object v5, v5, Lnet/thunderbird/core/validation/input/NumberInputField;->value:Ljava/lang/Long;

    .line 409
    .line 410
    invoke-static {v5}, Lokio/AsyncTimeout$Companion;->execute(Ljava/lang/Long;)Lnet/thunderbird/core/outcome/Outcome;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    iget-object v6, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 415
    .line 416
    iget-object v6, v6, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    const/4 v7, 0x0

    .line 426
    if-eqz v6, :cond_f

    .line 427
    .line 428
    new-instance v6, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 429
    .line 430
    sget-object v8, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateUsername$ValidateUsernameError$EmptyUsername;->INSTANCE:Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateUsername$ValidateUsernameError$EmptyUsername;

    .line 431
    .line 432
    invoke-direct {v6, v8, v7}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto :goto_0

    .line 436
    :cond_f
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    :goto_0
    iget-object v8, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 441
    .line 442
    iget-boolean v8, v8, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->isPasswordRequired:Z

    .line 443
    .line 444
    if-eqz v8, :cond_10

    .line 445
    .line 446
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 447
    .line 448
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    invoke-static {v3}, Landroidx/collection/internal/Lock;->execute(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    goto :goto_1

    .line 458
    :cond_10
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 459
    .line 460
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 461
    .line 462
    invoke-direct {v3, v8}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    :goto_1
    const/4 v8, 0x4

    .line 466
    new-array v8, v8, [Lnet/thunderbird/core/outcome/Outcome;

    .line 467
    .line 468
    const/4 v9, 0x0

    .line 469
    aput-object v4, v8, v9

    .line 470
    .line 471
    const/4 v10, 0x1

    .line 472
    aput-object v5, v8, v10

    .line 473
    .line 474
    const/4 v11, 0x2

    .line 475
    aput-object v6, v8, v11

    .line 476
    .line 477
    const/4 v11, 0x3

    .line 478
    aput-object v3, v8, v11

    .line 479
    .line 480
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v11

    .line 488
    if-eqz v11, :cond_11

    .line 489
    .line 490
    goto :goto_2

    .line 491
    :cond_11
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v8

    .line 495
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v11

    .line 499
    if-eqz v11, :cond_13

    .line 500
    .line 501
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v11

    .line 505
    check-cast v11, Lnet/thunderbird/core/outcome/Outcome;

    .line 506
    .line 507
    instance-of v11, v11, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 508
    .line 509
    if-eqz v11, :cond_12

    .line 510
    .line 511
    move v9, v10

    .line 512
    :cond_13
    :goto_2
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v8

    .line 516
    move-object v10, v8

    .line 517
    check-cast v10, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 518
    .line 519
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    iget-object v11, v10, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 523
    .line 524
    invoke-virtual {v11, v4}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 525
    .line 526
    .line 527
    move-result-object v11

    .line 528
    iget-object v12, v10, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 529
    .line 530
    invoke-virtual {v12, v5}, Lnet/thunderbird/core/validation/input/NumberInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 531
    .line 532
    .line 533
    move-result-object v13

    .line 534
    iget-object v12, v10, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 535
    .line 536
    invoke-virtual {v12, v6}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 537
    .line 538
    .line 539
    move-result-object v15

    .line 540
    iget-object v12, v10, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 541
    .line 542
    invoke-virtual {v12, v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 543
    .line 544
    .line 545
    move-result-object v16

    .line 546
    const/16 v17, 0x0

    .line 547
    .line 548
    const/16 v18, 0x4a

    .line 549
    .line 550
    const/4 v12, 0x0

    .line 551
    const/4 v14, 0x0

    .line 552
    invoke-static/range {v10 .. v18}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;I)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    invoke-virtual {v1, v8, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v8

    .line 560
    if-eqz v8, :cond_13

    .line 561
    .line 562
    if-nez v9, :cond_16

    .line 563
    .line 564
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 565
    .line 566
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    new-instance v8, Lcom/fsck/k9/mail/ServerSettings;

    .line 576
    .line 577
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 578
    .line 579
    iget-object v1, v1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 580
    .line 581
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v10

    .line 589
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 590
    .line 591
    iget-object v1, v1, Lnet/thunderbird/core/validation/input/NumberInputField;->value:Ljava/lang/Long;

    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 597
    .line 598
    .line 599
    move-result-wide v3

    .line 600
    long-to-int v11, v3

    .line 601
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 602
    .line 603
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->toMailConnectionSecurity(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 604
    .line 605
    .line 606
    move-result-object v12

    .line 607
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 608
    .line 609
    invoke-static {v1}, Landroidx/compose/ui/unit/IntRectKt;->toAuthType(Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;)Lcom/fsck/k9/mail/AuthType;

    .line 610
    .line 611
    .line 612
    move-result-object v13

    .line 613
    iget-boolean v3, v1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->isUsernameRequired:Z

    .line 614
    .line 615
    if-eqz v3, :cond_14

    .line 616
    .line 617
    iget-object v3, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 618
    .line 619
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 620
    .line 621
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    :goto_3
    move-object v14, v3

    .line 630
    goto :goto_4

    .line 631
    :cond_14
    const-string v3, ""

    .line 632
    .line 633
    goto :goto_3

    .line 634
    :goto_4
    iget-boolean v1, v1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->isPasswordRequired:Z

    .line 635
    .line 636
    if-eqz v1, :cond_15

    .line 637
    .line 638
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 639
    .line 640
    iget-object v1, v1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 641
    .line 642
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v7

    .line 650
    :cond_15
    move-object v15, v7

    .line 651
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 652
    .line 653
    sget-object v17, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 654
    .line 655
    const-string v9, "smtp"

    .line 656
    .line 657
    move-object/from16 v16, v0

    .line 658
    .line 659
    invoke-direct/range {v8 .. v17}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 663
    .line 664
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 665
    .line 666
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    .line 668
    .line 669
    move-object v10, v8

    .line 670
    iget-object v8, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 671
    .line 672
    const/4 v14, 0x0

    .line 673
    const/16 v15, 0xf7

    .line 674
    .line 675
    const/4 v9, 0x0

    .line 676
    const/4 v11, 0x0

    .line 677
    const/4 v12, 0x0

    .line 678
    const/4 v13, 0x0

    .line 679
    invoke-static/range {v8 .. v15}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    iput-object v1, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 684
    .line 685
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateNext;

    .line 686
    .line 687
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    :cond_16
    :goto_5
    return-void

    .line 691
    :cond_17
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Event$OnBackClicked;

    .line 692
    .line 693
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_18

    .line 698
    .line 699
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateBack;

    .line 700
    .line 701
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    return-void

    .line 705
    :cond_18
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 706
    .line 707
    .line 708
    return-void
.end method

.method public loadAccountState()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 14
    .line 15
    check-cast v2, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 16
    .line 17
    iget-object v2, v2, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/work/OperationKt;->toOutgoingServerSettingsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void
.end method
