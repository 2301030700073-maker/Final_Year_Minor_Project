.class public Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

.field public final validator:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 5
    .line 6
    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->validator:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 7
    .line 8
    iput-object p4, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 26

    .line 1
    move-object/from16 v8, p1

    .line 2
    .line 3
    check-cast v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event;

    .line 4
    .line 5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$LoadAccountState;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$LoadAccountState;

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
    const/4 v7, 0x6

    .line 20
    const/4 v1, 0x0

    .line 21
    const-class v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

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
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ProtocolTypeChanged;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    check-cast v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ProtocolTypeChanged;

    .line 43
    .line 44
    iget-object v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ProtocolTypeChanged;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 45
    .line 46
    new-instance v1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/16 v3, 0x17

    .line 49
    .line 50
    invoke-direct {v1, v3, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ServerChanged;

    .line 58
    .line 59
    iget-object v1, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v9, v0

    .line 68
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 74
    .line 75
    move-object v3, v8

    .line 76
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ServerChanged;

    .line 77
    .line 78
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ServerChanged;->server:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    const/16 v21, 0x0

    .line 88
    .line 89
    const/16 v22, 0xffd

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/16 v17, 0x0

    .line 99
    .line 100
    const/16 v18, 0x0

    .line 101
    .line 102
    const/16 v19, 0x0

    .line 103
    .line 104
    const/16 v20, 0x0

    .line 105
    .line 106
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    goto/16 :goto_b

    .line 117
    .line 118
    :cond_3
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$SecurityChanged;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    check-cast v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$SecurityChanged;

    .line 123
    .line 124
    iget-object v12, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$SecurityChanged;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 125
    .line 126
    :cond_4
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    move-object v9, v0

    .line 131
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 132
    .line 133
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 137
    .line 138
    iget-object v3, v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 139
    .line 140
    invoke-static {v3, v12}, Landroidx/sqlite/SQLite;->toDefaultPort(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/NumberInputField;->updateValue(Ljava/lang/Long;)Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    const/16 v21, 0x0

    .line 156
    .line 157
    const/16 v22, 0xff3

    .line 158
    .line 159
    const/4 v10, 0x0

    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v14, 0x0

    .line 162
    const/4 v15, 0x0

    .line 163
    const/16 v16, 0x0

    .line 164
    .line 165
    const/16 v17, 0x0

    .line 166
    .line 167
    const/16 v18, 0x0

    .line 168
    .line 169
    const/16 v19, 0x0

    .line 170
    .line 171
    const/16 v20, 0x0

    .line 172
    .line 173
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_4

    .line 182
    .line 183
    goto/16 :goto_b

    .line 184
    .line 185
    :cond_5
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PortChanged;

    .line 186
    .line 187
    if-eqz v0, :cond_7

    .line 188
    .line 189
    :cond_6
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object v9, v0

    .line 194
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 200
    .line 201
    move-object v3, v8

    .line 202
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PortChanged;

    .line 203
    .line 204
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PortChanged;->port:Ljava/lang/Long;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/NumberInputField;->updateValue(Ljava/lang/Long;)Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    const/16 v21, 0x0

    .line 214
    .line 215
    const/16 v22, 0xff7

    .line 216
    .line 217
    const/4 v10, 0x0

    .line 218
    const/4 v11, 0x0

    .line 219
    const/4 v12, 0x0

    .line 220
    const/4 v14, 0x0

    .line 221
    const/4 v15, 0x0

    .line 222
    const/16 v16, 0x0

    .line 223
    .line 224
    const/16 v17, 0x0

    .line 225
    .line 226
    const/16 v18, 0x0

    .line 227
    .line 228
    const/16 v19, 0x0

    .line 229
    .line 230
    const/16 v20, 0x0

    .line 231
    .line 232
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_6

    .line 241
    .line 242
    goto/16 :goto_b

    .line 243
    .line 244
    :cond_7
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$AuthenticationTypeChanged;

    .line 245
    .line 246
    if-eqz v0, :cond_9

    .line 247
    .line 248
    :cond_8
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    move-object v9, v0

    .line 253
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 254
    .line 255
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    move-object v2, v8

    .line 259
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$AuthenticationTypeChanged;

    .line 260
    .line 261
    iget-object v14, v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$AuthenticationTypeChanged;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 262
    .line 263
    const/16 v21, 0x0

    .line 264
    .line 265
    const/16 v22, 0xfef

    .line 266
    .line 267
    const/4 v10, 0x0

    .line 268
    const/4 v11, 0x0

    .line 269
    const/4 v12, 0x0

    .line 270
    const/4 v13, 0x0

    .line 271
    const/4 v15, 0x0

    .line 272
    const/16 v16, 0x0

    .line 273
    .line 274
    const/16 v17, 0x0

    .line 275
    .line 276
    const/16 v18, 0x0

    .line 277
    .line 278
    const/16 v19, 0x0

    .line 279
    .line 280
    const/16 v20, 0x0

    .line 281
    .line 282
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_8

    .line 291
    .line 292
    goto/16 :goto_b

    .line 293
    .line 294
    :cond_9
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$UsernameChanged;

    .line 295
    .line 296
    if-eqz v0, :cond_b

    .line 297
    .line 298
    :cond_a
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    move-object v9, v0

    .line 303
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 304
    .line 305
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 309
    .line 310
    move-object v3, v8

    .line 311
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$UsernameChanged;

    .line 312
    .line 313
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$UsernameChanged;->username:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    const/16 v21, 0x0

    .line 323
    .line 324
    const/16 v22, 0xfdf

    .line 325
    .line 326
    const/4 v10, 0x0

    .line 327
    const/4 v11, 0x0

    .line 328
    const/4 v12, 0x0

    .line 329
    const/4 v13, 0x0

    .line 330
    const/4 v14, 0x0

    .line 331
    const/16 v16, 0x0

    .line 332
    .line 333
    const/16 v17, 0x0

    .line 334
    .line 335
    const/16 v18, 0x0

    .line 336
    .line 337
    const/16 v19, 0x0

    .line 338
    .line 339
    const/16 v20, 0x0

    .line 340
    .line 341
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_a

    .line 350
    .line 351
    goto/16 :goto_b

    .line 352
    .line 353
    :cond_b
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PasswordChanged;

    .line 354
    .line 355
    if-eqz v0, :cond_d

    .line 356
    .line 357
    :cond_c
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    move-object v9, v0

    .line 362
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 363
    .line 364
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 368
    .line 369
    move-object v3, v8

    .line 370
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PasswordChanged;

    .line 371
    .line 372
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$PasswordChanged;->password:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 378
    .line 379
    .line 380
    move-result-object v16

    .line 381
    const/16 v21, 0x0

    .line 382
    .line 383
    const/16 v22, 0xfbf

    .line 384
    .line 385
    const/4 v10, 0x0

    .line 386
    const/4 v11, 0x0

    .line 387
    const/4 v12, 0x0

    .line 388
    const/4 v13, 0x0

    .line 389
    const/4 v14, 0x0

    .line 390
    const/4 v15, 0x0

    .line 391
    const/16 v17, 0x0

    .line 392
    .line 393
    const/16 v18, 0x0

    .line 394
    .line 395
    const/16 v19, 0x0

    .line 396
    .line 397
    const/16 v20, 0x0

    .line 398
    .line 399
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_c

    .line 408
    .line 409
    goto/16 :goto_b

    .line 410
    .line 411
    :cond_d
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ClientCertificateChanged;

    .line 412
    .line 413
    if-eqz v0, :cond_f

    .line 414
    .line 415
    :cond_e
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    move-object v9, v0

    .line 420
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 421
    .line 422
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    move-object v2, v8

    .line 426
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ClientCertificateChanged;

    .line 427
    .line 428
    iget-object v2, v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ClientCertificateChanged;->clientCertificateAlias:Ljava/lang/String;

    .line 429
    .line 430
    const/16 v21, 0x0

    .line 431
    .line 432
    const/16 v22, 0xf7f

    .line 433
    .line 434
    const/4 v10, 0x0

    .line 435
    const/4 v11, 0x0

    .line 436
    const/4 v12, 0x0

    .line 437
    const/4 v13, 0x0

    .line 438
    const/4 v14, 0x0

    .line 439
    const/4 v15, 0x0

    .line 440
    const/16 v16, 0x0

    .line 441
    .line 442
    const/16 v18, 0x0

    .line 443
    .line 444
    const/16 v19, 0x0

    .line 445
    .line 446
    const/16 v20, 0x0

    .line 447
    .line 448
    move-object/from16 v17, v2

    .line 449
    .line 450
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-eqz v0, :cond_e

    .line 459
    .line 460
    goto/16 :goto_b

    .line 461
    .line 462
    :cond_f
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapAutoDetectNamespaceChanged;

    .line 463
    .line 464
    if-eqz v0, :cond_11

    .line 465
    .line 466
    :cond_10
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    move-object v9, v0

    .line 471
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 472
    .line 473
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    move-object v2, v8

    .line 477
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapAutoDetectNamespaceChanged;

    .line 478
    .line 479
    iget-boolean v2, v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapAutoDetectNamespaceChanged;->enabled:Z

    .line 480
    .line 481
    const/16 v21, 0x0

    .line 482
    .line 483
    const/16 v22, 0xeff

    .line 484
    .line 485
    const/4 v10, 0x0

    .line 486
    const/4 v11, 0x0

    .line 487
    const/4 v12, 0x0

    .line 488
    const/4 v13, 0x0

    .line 489
    const/4 v14, 0x0

    .line 490
    const/4 v15, 0x0

    .line 491
    const/16 v16, 0x0

    .line 492
    .line 493
    const/16 v17, 0x0

    .line 494
    .line 495
    const/16 v19, 0x0

    .line 496
    .line 497
    const/16 v20, 0x0

    .line 498
    .line 499
    move/from16 v18, v2

    .line 500
    .line 501
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-eqz v0, :cond_10

    .line 510
    .line 511
    goto/16 :goto_b

    .line 512
    .line 513
    :cond_11
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapPrefixChanged;

    .line 514
    .line 515
    if-eqz v0, :cond_13

    .line 516
    .line 517
    :cond_12
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    move-object v9, v0

    .line 522
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 523
    .line 524
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    iget-object v2, v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 528
    .line 529
    move-object v3, v8

    .line 530
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapPrefixChanged;

    .line 531
    .line 532
    iget-object v3, v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapPrefixChanged;->imapPrefix:Ljava/lang/String;

    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    invoke-static {v3}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 538
    .line 539
    .line 540
    move-result-object v19

    .line 541
    const/16 v21, 0x0

    .line 542
    .line 543
    const/16 v22, 0xdff

    .line 544
    .line 545
    const/4 v10, 0x0

    .line 546
    const/4 v11, 0x0

    .line 547
    const/4 v12, 0x0

    .line 548
    const/4 v13, 0x0

    .line 549
    const/4 v14, 0x0

    .line 550
    const/4 v15, 0x0

    .line 551
    const/16 v16, 0x0

    .line 552
    .line 553
    const/16 v17, 0x0

    .line 554
    .line 555
    const/16 v18, 0x0

    .line 556
    .line 557
    const/16 v20, 0x0

    .line 558
    .line 559
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_12

    .line 568
    .line 569
    goto/16 :goto_b

    .line 570
    .line 571
    :cond_13
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapUseCompressionChanged;

    .line 572
    .line 573
    if-eqz v0, :cond_15

    .line 574
    .line 575
    :cond_14
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    move-object v9, v0

    .line 580
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 581
    .line 582
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    move-object v2, v8

    .line 586
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapUseCompressionChanged;

    .line 587
    .line 588
    iget-boolean v2, v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapUseCompressionChanged;->useCompression:Z

    .line 589
    .line 590
    const/16 v21, 0x0

    .line 591
    .line 592
    const/16 v22, 0xbff

    .line 593
    .line 594
    const/4 v10, 0x0

    .line 595
    const/4 v11, 0x0

    .line 596
    const/4 v12, 0x0

    .line 597
    const/4 v13, 0x0

    .line 598
    const/4 v14, 0x0

    .line 599
    const/4 v15, 0x0

    .line 600
    const/16 v16, 0x0

    .line 601
    .line 602
    const/16 v17, 0x0

    .line 603
    .line 604
    const/16 v18, 0x0

    .line 605
    .line 606
    const/16 v19, 0x0

    .line 607
    .line 608
    move/from16 v20, v2

    .line 609
    .line 610
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_14

    .line 619
    .line 620
    goto/16 :goto_b

    .line 621
    .line 622
    :cond_15
    instance-of v0, v8, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapSendClientInfoChanged;

    .line 623
    .line 624
    if-eqz v0, :cond_17

    .line 625
    .line 626
    :cond_16
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    move-object v9, v0

    .line 631
    check-cast v9, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 632
    .line 633
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    move-object v2, v8

    .line 637
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapSendClientInfoChanged;

    .line 638
    .line 639
    iget-boolean v2, v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$ImapSendClientInfoChanged;->sendClientInfo:Z

    .line 640
    .line 641
    const/16 v22, 0x7ff

    .line 642
    .line 643
    const/4 v10, 0x0

    .line 644
    const/4 v11, 0x0

    .line 645
    const/4 v12, 0x0

    .line 646
    const/4 v13, 0x0

    .line 647
    const/4 v14, 0x0

    .line 648
    const/4 v15, 0x0

    .line 649
    const/16 v16, 0x0

    .line 650
    .line 651
    const/16 v17, 0x0

    .line 652
    .line 653
    const/16 v18, 0x0

    .line 654
    .line 655
    const/16 v19, 0x0

    .line 656
    .line 657
    const/16 v20, 0x0

    .line 658
    .line 659
    move/from16 v21, v2

    .line 660
    .line 661
    invoke-static/range {v9 .. v22}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-eqz v0, :cond_16

    .line 670
    .line 671
    goto/16 :goto_b

    .line 672
    .line 673
    :cond_17
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$OnNextClicked;

    .line 674
    .line 675
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-eqz v0, :cond_23

    .line 680
    .line 681
    iget-object v0, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 682
    .line 683
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 684
    .line 685
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    check-cast v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 690
    .line 691
    iget-object v3, v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 692
    .line 693
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 694
    .line 695
    iget-object v4, v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->validator:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 696
    .line 697
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    invoke-static {v3}, Lcom/jcraft/jzlib/Adler32;->execute(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;

    .line 704
    .line 705
    .line 706
    move-result-object v6

    .line 707
    iget-object v3, v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 708
    .line 709
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/NumberInputField;->value:Ljava/lang/Long;

    .line 710
    .line 711
    invoke-static {v3}, Lokio/AsyncTimeout$Companion;->execute(Ljava/lang/Long;)Lnet/thunderbird/core/outcome/Outcome;

    .line 712
    .line 713
    .line 714
    move-result-object v7

    .line 715
    iget-object v3, v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 716
    .line 717
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 723
    .line 724
    .line 725
    move-result v3

    .line 726
    const/4 v4, 0x0

    .line 727
    if-eqz v3, :cond_18

    .line 728
    .line 729
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 730
    .line 731
    sget-object v5, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateUsername$ValidateUsernameError$EmptyUsername;->INSTANCE:Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateUsername$ValidateUsernameError$EmptyUsername;

    .line 732
    .line 733
    invoke-direct {v3, v5, v4}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    :goto_0
    move-object v8, v3

    .line 737
    goto :goto_1

    .line 738
    :cond_18
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    goto :goto_0

    .line 743
    :goto_1
    iget-object v3, v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 744
    .line 745
    iget-boolean v3, v3, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->isPasswordRequired:Z

    .line 746
    .line 747
    if-eqz v3, :cond_19

    .line 748
    .line 749
    iget-object v3, v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 750
    .line 751
    iget-object v3, v3, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 752
    .line 753
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    .line 755
    .line 756
    invoke-static {v3}, Landroidx/collection/internal/Lock;->execute(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    :goto_2
    move-object v9, v3

    .line 761
    goto :goto_3

    .line 762
    :cond_19
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    goto :goto_2

    .line 767
    :goto_3
    iget-object v1, v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 768
    .line 769
    iget-object v1, v1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 779
    .line 780
    if-nez v3, :cond_1a

    .line 781
    .line 782
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 783
    .line 784
    invoke-direct {v1, v5}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    :goto_4
    move-object v10, v1

    .line 788
    goto :goto_5

    .line 789
    :cond_1a
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    if-eqz v1, :cond_1b

    .line 794
    .line 795
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 796
    .line 797
    sget-object v3, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix;->INSTANCE:Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix;

    .line 798
    .line 799
    invoke-direct {v1, v3, v4}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    goto :goto_4

    .line 803
    :cond_1b
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 804
    .line 805
    invoke-direct {v1, v5}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 806
    .line 807
    .line 808
    goto :goto_4

    .line 809
    :goto_5
    const/4 v1, 0x5

    .line 810
    new-array v1, v1, [Lnet/thunderbird/core/outcome/Outcome;

    .line 811
    .line 812
    const/4 v3, 0x0

    .line 813
    aput-object v6, v1, v3

    .line 814
    .line 815
    const/4 v12, 0x1

    .line 816
    aput-object v7, v1, v12

    .line 817
    .line 818
    const/4 v13, 0x2

    .line 819
    aput-object v8, v1, v13

    .line 820
    .line 821
    const/4 v14, 0x3

    .line 822
    aput-object v9, v1, v14

    .line 823
    .line 824
    const/4 v15, 0x4

    .line 825
    aput-object v10, v1, v15

    .line 826
    .line 827
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 832
    .line 833
    .line 834
    move-result v5

    .line 835
    if-eqz v5, :cond_1d

    .line 836
    .line 837
    :cond_1c
    move v1, v3

    .line 838
    goto :goto_6

    .line 839
    :cond_1d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 844
    .line 845
    .line 846
    move-result v5

    .line 847
    if-eqz v5, :cond_1c

    .line 848
    .line 849
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    check-cast v5, Lnet/thunderbird/core/outcome/Outcome;

    .line 854
    .line 855
    instance-of v5, v5, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 856
    .line 857
    if-eqz v5, :cond_1e

    .line 858
    .line 859
    move v1, v12

    .line 860
    :goto_6
    new-instance v5, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 861
    .line 862
    const/4 v11, 0x6

    .line 863
    invoke-direct/range {v5 .. v11}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v2, v5}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 867
    .line 868
    .line 869
    if-nez v1, :cond_22

    .line 870
    .line 871
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 872
    .line 873
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 878
    .line 879
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    new-instance v16, Lcom/fsck/k9/mail/ServerSettings;

    .line 883
    .line 884
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 885
    .line 886
    iget-object v5, v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->defaultName:Ljava/lang/String;

    .line 887
    .line 888
    iget-object v6, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 889
    .line 890
    iget-object v6, v6, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 891
    .line 892
    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 893
    .line 894
    .line 895
    move-result-object v6

    .line 896
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v18

    .line 900
    iget-object v6, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 901
    .line 902
    iget-object v6, v6, Lnet/thunderbird/core/validation/input/NumberInputField;->value:Ljava/lang/Long;

    .line 903
    .line 904
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 908
    .line 909
    .line 910
    move-result-wide v6

    .line 911
    long-to-int v6, v6

    .line 912
    iget-object v7, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 913
    .line 914
    invoke-static {v7}, Lorg/jsoup/helper/Validate;->toMailConnectionSecurity(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 915
    .line 916
    .line 917
    move-result-object v20

    .line 918
    iget-object v7, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 919
    .line 920
    invoke-static {v7}, Landroidx/compose/ui/unit/IntRectKt;->toAuthType(Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;)Lcom/fsck/k9/mail/AuthType;

    .line 921
    .line 922
    .line 923
    move-result-object v21

    .line 924
    iget-object v8, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 925
    .line 926
    iget-object v8, v8, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 927
    .line 928
    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 929
    .line 930
    .line 931
    move-result-object v8

    .line 932
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v22

    .line 936
    iget-boolean v7, v7, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->isPasswordRequired:Z

    .line 937
    .line 938
    if-eqz v7, :cond_1f

    .line 939
    .line 940
    iget-object v7, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 941
    .line 942
    iget-object v7, v7, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 943
    .line 944
    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 945
    .line 946
    .line 947
    move-result-object v7

    .line 948
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v7

    .line 952
    move-object/from16 v23, v7

    .line 953
    .line 954
    goto :goto_7

    .line 955
    :cond_1f
    move-object/from16 v23, v4

    .line 956
    .line 957
    :goto_7
    iget-object v7, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 958
    .line 959
    sget-object v8, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->IMAP:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 960
    .line 961
    if-ne v1, v8, :cond_21

    .line 962
    .line 963
    iget-boolean v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 964
    .line 965
    if-eqz v1, :cond_20

    .line 966
    .line 967
    goto :goto_8

    .line 968
    :cond_20
    iget-object v4, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 969
    .line 970
    iget-object v4, v4, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 971
    .line 972
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v4

    .line 980
    :goto_8
    iget-boolean v8, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 981
    .line 982
    iget-boolean v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    .line 983
    .line 984
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    new-instance v9, Lkotlin/Pair;

    .line 989
    .line 990
    const-string v10, "autoDetectNamespace"

    .line 991
    .line 992
    invoke-direct {v9, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 993
    .line 994
    .line 995
    new-instance v1, Lkotlin/Pair;

    .line 996
    .line 997
    const-string v10, "pathPrefix"

    .line 998
    .line 999
    invoke-direct {v1, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1000
    .line 1001
    .line 1002
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    new-instance v8, Lkotlin/Pair;

    .line 1007
    .line 1008
    const-string/jumbo v10, "useCompression"

    .line 1009
    .line 1010
    .line 1011
    invoke-direct {v8, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    new-instance v4, Lkotlin/Pair;

    .line 1019
    .line 1020
    const-string v10, "sendClientInfo"

    .line 1021
    .line 1022
    invoke-direct {v4, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    new-array v0, v15, [Lkotlin/Pair;

    .line 1026
    .line 1027
    aput-object v9, v0, v3

    .line 1028
    .line 1029
    aput-object v1, v0, v12

    .line 1030
    .line 1031
    aput-object v8, v0, v13

    .line 1032
    .line 1033
    aput-object v4, v0, v14

    .line 1034
    .line 1035
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    :goto_9
    move-object/from16 v25, v0

    .line 1040
    .line 1041
    move-object/from16 v17, v5

    .line 1042
    .line 1043
    move/from16 v19, v6

    .line 1044
    .line 1045
    move-object/from16 v24, v7

    .line 1046
    .line 1047
    goto :goto_a

    .line 1048
    :cond_21
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 1049
    .line 1050
    goto :goto_9

    .line 1051
    :goto_a
    invoke-direct/range {v16 .. v25}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v0, v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 1055
    .line 1056
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 1057
    .line 1058
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1059
    .line 1060
    .line 1061
    iget-object v1, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 1062
    .line 1063
    const/16 v22, 0x0

    .line 1064
    .line 1065
    const/16 v23, 0xfb

    .line 1066
    .line 1067
    const/16 v18, 0x0

    .line 1068
    .line 1069
    const/16 v19, 0x0

    .line 1070
    .line 1071
    const/16 v20, 0x0

    .line 1072
    .line 1073
    const/16 v21, 0x0

    .line 1074
    .line 1075
    move-object/from16 v17, v16

    .line 1076
    .line 1077
    move-object/from16 v16, v1

    .line 1078
    .line 1079
    invoke-static/range {v16 .. v23}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    iput-object v1, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 1084
    .line 1085
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Effect$NavigateNext;

    .line 1086
    .line 1087
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 1088
    .line 1089
    .line 1090
    :cond_22
    :goto_b
    return-void

    .line 1091
    :cond_23
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Event$OnBackClicked;

    .line 1092
    .line 1093
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-eqz v0, :cond_24

    .line 1098
    .line 1099
    sget-object v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$Effect$NavigateBack;

    .line 1100
    .line 1101
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 1102
    .line 1103
    .line 1104
    return-void

    .line 1105
    :cond_24
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1106
    .line 1107
    .line 1108
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
    check-cast v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 14
    .line 15
    check-cast v2, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 16
    .line 17
    iget-object v2, v2, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/work/Data$Companion;->toIncomingServerSettingsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

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
