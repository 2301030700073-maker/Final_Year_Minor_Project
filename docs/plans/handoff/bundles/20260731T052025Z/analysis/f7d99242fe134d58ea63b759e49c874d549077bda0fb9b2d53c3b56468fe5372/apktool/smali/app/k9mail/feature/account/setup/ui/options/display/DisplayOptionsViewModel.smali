.class public final Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountOwnerNameProvider:Lcom/fsck/k9/account/AccountOwnerNameProvider;

.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final validator:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lcom/fsck/k9/account/AccountOwnerNameProvider;)V
    .locals 1

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 3
    .line 4
    iget-object v0, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 5
    .line 6
    invoke-static {v0}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->toDisplayOptionsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;->validator:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;

    .line 14
    .line 15
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 16
    .line 17
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;->accountOwnerNameProvider:Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$LoadAccountState;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$LoadAccountState;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/16 v8, 0xa

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-class v4, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 21
    .line 22
    const-string v5, "loadAccountState"

    .line 23
    .line 24
    const-string v6, "loadAccountState()V"

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    invoke-direct/range {v1 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->handleOneTimeEvent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    move-object v3, p0

    .line 35
    instance-of p0, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnAccountNameChanged;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iget-object v1, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    move-object v2, p0

    .line 47
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v3, v2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 53
    .line 54
    move-object v4, p1

    .line 55
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnAccountNameChanged;

    .line 56
    .line 57
    iget-object v4, v4, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnAccountNameChanged;->accountName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x6

    .line 67
    invoke-static {v2, v3, v0, v0, v4}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, p0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_2
    instance-of p0, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnDisplayNameChanged;

    .line 80
    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    move-object v2, p0

    .line 88
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object v3, v2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 94
    .line 95
    move-object v4, p1

    .line 96
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnDisplayNameChanged;

    .line 97
    .line 98
    iget-object v4, v4, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnDisplayNameChanged;->displayName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v4}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v4, 0x5

    .line 108
    invoke-static {v2, v0, v3, v0, v4}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, p0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_3

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_4
    instance-of p0, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnEmailSignatureChanged;

    .line 121
    .line 122
    const/4 v2, 0x3

    .line 123
    if-eqz p0, :cond_6

    .line 124
    .line 125
    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    move-object v3, p0

    .line 130
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object v4, v3, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 136
    .line 137
    move-object v5, p1

    .line 138
    check-cast v5, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnEmailSignatureChanged;

    .line 139
    .line 140
    iget-object v5, v5, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnEmailSignatureChanged;->emailSignature:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {v5}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v3, v0, v0, v4, v2}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v1, p0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_6
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnNextClicked;

    .line 162
    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-eqz p0, :cond_11

    .line 168
    .line 169
    iget-object p0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 170
    .line 171
    iget-object p1, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 172
    .line 173
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 178
    .line 179
    iget-object v4, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 180
    .line 181
    iget-object v4, v4, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v5, v3, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;->validator:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_7

    .line 196
    .line 197
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    goto :goto_0

    .line 202
    :cond_7
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_8

    .line 207
    .line 208
    new-instance v4, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 209
    .line 210
    sget-object v5, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateAccountName$ValidateAccountNameError$BlankAccountName;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateAccountName$ValidateAccountNameError$BlankAccountName;

    .line 211
    .line 212
    invoke-direct {v4, v5, v0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_8
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    :goto_0
    iget-object v5, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 221
    .line 222
    iget-object v5, v5, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_9

    .line 232
    .line 233
    new-instance v5, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 234
    .line 235
    sget-object v6, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName;

    .line 236
    .line 237
    invoke-direct {v5, v6, v0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_9
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    :goto_1
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 246
    .line 247
    iget-object p1, p1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-nez v6, :cond_a

    .line 257
    .line 258
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    :goto_2
    move-object v6, p1

    .line 263
    goto :goto_3

    .line 264
    :cond_a
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_b

    .line 269
    .line 270
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 271
    .line 272
    sget-object v6, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature;

    .line 273
    .line 274
    invoke-direct {p1, v6, v0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_b
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    goto :goto_2

    .line 283
    :goto_3
    new-array p1, v2, [Lnet/thunderbird/core/outcome/Outcome;

    .line 284
    .line 285
    const/4 v2, 0x0

    .line 286
    aput-object v4, p1, v2

    .line 287
    .line 288
    const/4 v7, 0x1

    .line 289
    aput-object v5, p1, v7

    .line 290
    .line 291
    const/4 v8, 0x2

    .line 292
    aput-object v6, p1, v8

    .line 293
    .line 294
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-eqz v8, :cond_c

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v8

    .line 313
    if-eqz v8, :cond_e

    .line 314
    .line 315
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    check-cast v8, Lnet/thunderbird/core/outcome/Outcome;

    .line 320
    .line 321
    instance-of v8, v8, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 322
    .line 323
    if-eqz v8, :cond_d

    .line 324
    .line 325
    move v2, v7

    .line 326
    :cond_e
    :goto_4
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    move-object v7, p1

    .line 331
    check-cast v7, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 332
    .line 333
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    iget-object v8, v7, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 337
    .line 338
    invoke-virtual {v8, v4}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    iget-object v9, v7, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 343
    .line 344
    invoke-virtual {v9, v5}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    iget-object v7, v7, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 349
    .line 350
    invoke-virtual {v7, v6}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    new-instance v10, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 355
    .line 356
    invoke-direct {v10, v8, v9, v7}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, p1, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_e

    .line 364
    .line 365
    if-nez v2, :cond_10

    .line 366
    .line 367
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 368
    .line 369
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 374
    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 379
    .line 380
    iget-object p1, p1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 381
    .line 382
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 383
    .line 384
    iget-object v1, v1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 385
    .line 386
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 387
    .line 388
    iget-object p0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-lez v2, :cond_f

    .line 395
    .line 396
    move-object v0, p0

    .line 397
    :cond_f
    new-instance v9, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 398
    .line 399
    invoke-direct {v9, p1, v1, v0}, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object p0, v3, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 403
    .line 404
    check-cast p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 405
    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    iget-object v4, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 410
    .line 411
    const/4 v10, 0x0

    .line 412
    const/16 v11, 0xbf

    .line 413
    .line 414
    const/4 v5, 0x0

    .line 415
    const/4 v6, 0x0

    .line 416
    const/4 v7, 0x0

    .line 417
    const/4 v8, 0x0

    .line 418
    invoke-static/range {v4 .. v11}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    iput-object p1, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 423
    .line 424
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateNext;

    .line 425
    .line 426
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    :cond_10
    :goto_5
    return-void

    .line 430
    :cond_11
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Event$OnBackClicked;

    .line 431
    .line 432
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result p0

    .line 436
    if-eqz p0, :cond_12

    .line 437
    .line 438
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateBack;

    .line 439
    .line 440
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :cond_12
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 445
    .line 446
    .line 447
    return-void
.end method
