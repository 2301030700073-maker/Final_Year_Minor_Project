.class public final synthetic Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 6
    .line 7
    const-class v2, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;

    .line 8
    .line 9
    const-class v3, Landroid/content/Context;

    .line 10
    .line 11
    const-class v4, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 12
    .line 13
    const-class v5, Ljava/lang/String;

    .line 14
    .line 15
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object/from16 v0, p1

    .line 25
    .line 26
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 27
    .line 28
    move-object/from16 v1, p2

    .line 29
    .line 30
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v10, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    new-instance v3, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveOutgoingServerSettingsViewModel;

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;

    .line 59
    .line 60
    new-instance v2, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 61
    .line 62
    invoke-direct {v2}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, v1, v10, v0, v2}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;-><init>(Ljava/lang/String;ZLapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;)V

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :pswitch_0
    move-object/from16 v0, p1

    .line 73
    .line 74
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 75
    .line 76
    move-object/from16 v1, p2

    .line 77
    .line 78
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v10, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    new-instance v3, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveIncomingServerSettingsViewModel;

    .line 97
    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;

    .line 107
    .line 108
    new-instance v2, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 109
    .line 110
    invoke-direct {v2}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v1, v8, v0, v2}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;-><init>(Ljava/lang/String;ZLapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;)V

    .line 117
    .line 118
    .line 119
    return-object v3

    .line 120
    :pswitch_1
    move-object/from16 v0, p1

    .line 121
    .line 122
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 123
    .line 124
    move-object/from16 v2, p2

    .line 125
    .line 126
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v10, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/lang/String;

    .line 143
    .line 144
    new-instance v3, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;

    .line 145
    .line 146
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 155
    .line 156
    const-class v5, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 157
    .line 158
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v0, v5, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 167
    .line 168
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v0, v4, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 177
    .line 178
    invoke-direct {v3, v2, v1, v5, v0}, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;-><init>(Ljava/lang/String;Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 179
    .line 180
    .line 181
    return-object v3

    .line 182
    :pswitch_2
    move-object/from16 v0, p1

    .line 183
    .line 184
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 185
    .line 186
    move-object/from16 v2, p2

    .line 187
    .line 188
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v2, v10, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/lang/String;

    .line 205
    .line 206
    new-instance v3, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;

    .line 207
    .line 208
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 217
    .line 218
    const-class v5, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 219
    .line 220
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v0, v5, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 229
    .line 230
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v0, v4, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 239
    .line 240
    invoke-direct {v3, v2, v1, v5, v0}, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;-><init>(Ljava/lang/String;Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 241
    .line 242
    .line 243
    return-object v3

    .line 244
    :pswitch_3
    move-object/from16 v0, p1

    .line 245
    .line 246
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 247
    .line 248
    move-object/from16 v1, p2

    .line 249
    .line 250
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    new-instance v1, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;

    .line 259
    .line 260
    const-class v2, Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;

    .line 261
    .line 262
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;

    .line 271
    .line 272
    const-class v3, Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 273
    .line 274
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v0, v3, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 283
    .line 284
    invoke-direct {v1, v2, v0}, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;-><init>(Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;Lcom/fsck/k9/account/AccountServerSettingsUpdater;)V

    .line 285
    .line 286
    .line 287
    return-object v1

    .line 288
    :pswitch_4
    move-object/from16 v0, p1

    .line 289
    .line 290
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 291
    .line 292
    move-object/from16 v1, p2

    .line 293
    .line 294
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    new-instance v1, Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;

    .line 303
    .line 304
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 313
    .line 314
    invoke-direct {v1, v0}, Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;-><init>(Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 315
    .line 316
    .line 317
    return-object v1

    .line 318
    :pswitch_5
    move-object/from16 v0, p1

    .line 319
    .line 320
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 321
    .line 322
    move-object/from16 v1, p2

    .line 323
    .line 324
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    new-instance v1, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 333
    .line 334
    const-class v2, Lcom/fsck/k9/account/AccountStateLoader;

    .line 335
    .line 336
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Lcom/fsck/k9/account/AccountStateLoader;

    .line 345
    .line 346
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v0, v3, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 355
    .line 356
    invoke-direct {v1, v2, v0}, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;-><init>(Lcom/fsck/k9/account/AccountStateLoader;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 357
    .line 358
    .line 359
    return-object v1

    .line 360
    :pswitch_6
    move-object/from16 v0, p1

    .line 361
    .line 362
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 363
    .line 364
    move-object/from16 v1, p2

    .line 365
    .line 366
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    new-instance v0, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 375
    .line 376
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 377
    .line 378
    .line 379
    return-object v0

    .line 380
    :pswitch_7
    move-object/from16 v0, p1

    .line 381
    .line 382
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 383
    .line 384
    move-object/from16 v1, p2

    .line 385
    .line 386
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    new-instance v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 395
    .line 396
    new-instance v1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 397
    .line 398
    const/4 v7, 0x0

    .line 399
    const/16 v8, 0xff

    .line 400
    .line 401
    const/4 v2, 0x0

    .line 402
    const/4 v3, 0x0

    .line 403
    const/4 v4, 0x0

    .line 404
    const/4 v5, 0x0

    .line 405
    const/4 v6, 0x0

    .line 406
    invoke-direct/range {v1 .. v8}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;I)V

    .line 407
    .line 408
    .line 409
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 410
    .line 411
    .line 412
    iput-object v1, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 413
    .line 414
    return-object v0

    .line 415
    :pswitch_8
    move-object/from16 v0, p1

    .line 416
    .line 417
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 418
    .line 419
    move-object/from16 v1, p2

    .line 420
    .line 421
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    new-instance v1, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 430
    .line 431
    const-class v2, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 432
    .line 433
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 442
    .line 443
    const-string v2, "."

    .line 444
    .line 445
    const-string v3, "-"

    .line 446
    .line 447
    const-string v4, "com.fsck.k9"

    .line 448
    .line 449
    invoke-static {v4, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-direct {v1, v0, v2}, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;-><init>(Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    return-object v1

    .line 457
    :pswitch_9
    move-object/from16 v0, p1

    .line 458
    .line 459
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 460
    .line 461
    move-object/from16 v1, p2

    .line 462
    .line 463
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    .line 472
    .line 473
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 474
    .line 475
    .line 476
    return-object v0

    .line 477
    :pswitch_a
    move-object/from16 v0, p1

    .line 478
    .line 479
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 480
    .line 481
    move-object/from16 v1, p2

    .line 482
    .line 483
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    new-instance v0, Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;

    .line 492
    .line 493
    invoke-direct {v0}, Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;-><init>()V

    .line 494
    .line 495
    .line 496
    return-object v0

    .line 497
    :pswitch_b
    move-object/from16 v0, p1

    .line 498
    .line 499
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 500
    .line 501
    move-object/from16 v1, p2

    .line 502
    .line 503
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 512
    .line 513
    return-object v0

    .line 514
    :pswitch_c
    move-object/from16 v0, p1

    .line 515
    .line 516
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 517
    .line 518
    move-object/from16 v1, p2

    .line 519
    .line 520
    check-cast v1, Ljava/lang/Integer;

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    and-int/lit8 v2, v1, 0x3

    .line 527
    .line 528
    if-eq v2, v7, :cond_0

    .line 529
    .line 530
    move v10, v8

    .line 531
    :cond_0
    and-int/2addr v1, v8

    .line 532
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 533
    .line 534
    invoke-virtual {v0, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-eqz v1, :cond_1

    .line 539
    .line 540
    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 542
    .line 543
    .line 544
    :goto_0
    return-object v6

    .line 545
    :pswitch_d
    move-object/from16 v0, p1

    .line 546
    .line 547
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 548
    .line 549
    move-object/from16 v1, p2

    .line 550
    .line 551
    check-cast v1, Ljava/lang/Integer;

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    and-int/lit8 v2, v1, 0x3

    .line 558
    .line 559
    if-eq v2, v7, :cond_2

    .line 560
    .line 561
    move v10, v8

    .line 562
    :cond_2
    and-int/2addr v1, v8

    .line 563
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 564
    .line 565
    invoke-virtual {v0, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-eqz v1, :cond_3

    .line 570
    .line 571
    goto :goto_1

    .line 572
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 573
    .line 574
    .line 575
    :goto_1
    return-object v6

    .line 576
    :pswitch_e
    move-object/from16 v0, p1

    .line 577
    .line 578
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 579
    .line 580
    move-object/from16 v1, p2

    .line 581
    .line 582
    check-cast v1, Ljava/lang/Integer;

    .line 583
    .line 584
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    and-int/lit8 v2, v1, 0x3

    .line 589
    .line 590
    if-eq v2, v7, :cond_4

    .line 591
    .line 592
    move v10, v8

    .line 593
    :cond_4
    and-int/2addr v1, v8

    .line 594
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 595
    .line 596
    invoke-virtual {v0, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_5

    .line 601
    .line 602
    goto :goto_2

    .line 603
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 604
    .line 605
    .line 606
    :goto_2
    return-object v6

    .line 607
    :pswitch_f
    move-object/from16 v0, p1

    .line 608
    .line 609
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 610
    .line 611
    move-object/from16 v1, p2

    .line 612
    .line 613
    check-cast v1, Ljava/lang/Integer;

    .line 614
    .line 615
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    and-int/lit8 v2, v1, 0x3

    .line 620
    .line 621
    if-eq v2, v7, :cond_6

    .line 622
    .line 623
    move v10, v8

    .line 624
    :cond_6
    and-int/2addr v1, v8

    .line 625
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 626
    .line 627
    invoke-virtual {v0, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    if-eqz v1, :cond_7

    .line 632
    .line 633
    goto :goto_3

    .line 634
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 635
    .line 636
    .line 637
    :goto_3
    return-object v6

    .line 638
    :pswitch_10
    move-object/from16 v0, p1

    .line 639
    .line 640
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 641
    .line 642
    move-object/from16 v1, p2

    .line 643
    .line 644
    check-cast v1, Ljava/lang/Integer;

    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    and-int/lit8 v2, v1, 0x3

    .line 651
    .line 652
    if-eq v2, v7, :cond_8

    .line 653
    .line 654
    move v10, v8

    .line 655
    :cond_8
    and-int/2addr v1, v8

    .line 656
    move-object v14, v0

    .line 657
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 658
    .line 659
    invoke-virtual {v14, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-eqz v0, :cond_9

    .line 664
    .line 665
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Report:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 666
    .line 667
    const/4 v15, 0x0

    .line 668
    const/16 v16, 0xe

    .line 669
    .line 670
    const/4 v12, 0x0

    .line 671
    const/4 v13, 0x0

    .line 672
    invoke-static/range {v11 .. v16}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 673
    .line 674
    .line 675
    goto :goto_4

    .line 676
    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 677
    .line 678
    .line 679
    :goto_4
    return-object v6

    .line 680
    :pswitch_11
    move-object/from16 v0, p1

    .line 681
    .line 682
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 683
    .line 684
    move-object/from16 v1, p2

    .line 685
    .line 686
    check-cast v1, Ljava/lang/Integer;

    .line 687
    .line 688
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    and-int/lit8 v2, v1, 0x3

    .line 693
    .line 694
    if-eq v2, v7, :cond_a

    .line 695
    .line 696
    move v10, v8

    .line 697
    :cond_a
    and-int/2addr v1, v8

    .line 698
    move-object v14, v0

    .line 699
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 700
    .line 701
    invoke-virtual {v14, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_b

    .line 706
    .line 707
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Warning:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 708
    .line 709
    const/4 v15, 0x0

    .line 710
    const/16 v16, 0xe

    .line 711
    .line 712
    const/4 v12, 0x0

    .line 713
    const/4 v13, 0x0

    .line 714
    invoke-static/range {v11 .. v16}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 715
    .line 716
    .line 717
    goto :goto_5

    .line 718
    :cond_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 719
    .line 720
    .line 721
    :goto_5
    return-object v6

    .line 722
    :pswitch_12
    move-object/from16 v0, p1

    .line 723
    .line 724
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 725
    .line 726
    move-object/from16 v1, p2

    .line 727
    .line 728
    check-cast v1, Ljava/lang/Integer;

    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    and-int/lit8 v2, v1, 0x3

    .line 735
    .line 736
    if-eq v2, v7, :cond_c

    .line 737
    .line 738
    move v10, v8

    .line 739
    :cond_c
    and-int/2addr v1, v8

    .line 740
    move-object v14, v0

    .line 741
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 742
    .line 743
    invoke-virtual {v14, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    if-eqz v0, :cond_d

    .line 748
    .line 749
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Info:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 750
    .line 751
    const/4 v15, 0x0

    .line 752
    const/16 v16, 0xe

    .line 753
    .line 754
    const/4 v12, 0x0

    .line 755
    const/4 v13, 0x0

    .line 756
    invoke-static/range {v11 .. v16}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 757
    .line 758
    .line 759
    goto :goto_6

    .line 760
    :cond_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 761
    .line 762
    .line 763
    :goto_6
    return-object v6

    .line 764
    :pswitch_13
    move-object/from16 v0, p1

    .line 765
    .line 766
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 767
    .line 768
    move-object/from16 v1, p2

    .line 769
    .line 770
    check-cast v1, Ljava/lang/Integer;

    .line 771
    .line 772
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    and-int/lit8 v2, v1, 0x3

    .line 777
    .line 778
    if-eq v2, v7, :cond_e

    .line 779
    .line 780
    move v10, v8

    .line 781
    :cond_e
    and-int/2addr v1, v8

    .line 782
    move-object v14, v0

    .line 783
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 784
    .line 785
    invoke-virtual {v14, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    if-eqz v0, :cond_f

    .line 790
    .line 791
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Report:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 792
    .line 793
    const/4 v15, 0x0

    .line 794
    const/16 v16, 0xe

    .line 795
    .line 796
    const/4 v12, 0x0

    .line 797
    const/4 v13, 0x0

    .line 798
    invoke-static/range {v11 .. v16}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 799
    .line 800
    .line 801
    goto :goto_7

    .line 802
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 803
    .line 804
    .line 805
    :goto_7
    return-object v6

    .line 806
    :pswitch_14
    move-object/from16 v0, p1

    .line 807
    .line 808
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 809
    .line 810
    move-object/from16 v1, p2

    .line 811
    .line 812
    check-cast v1, Ljava/lang/Integer;

    .line 813
    .line 814
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    and-int/lit8 v2, v1, 0x3

    .line 819
    .line 820
    if-eq v2, v7, :cond_10

    .line 821
    .line 822
    move v10, v8

    .line 823
    :cond_10
    and-int/2addr v1, v8

    .line 824
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 825
    .line 826
    invoke-virtual {v0, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-eqz v1, :cond_11

    .line 831
    .line 832
    goto :goto_8

    .line 833
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 834
    .line 835
    .line 836
    :goto_8
    return-object v6

    .line 837
    :pswitch_15
    move-object/from16 v0, p1

    .line 838
    .line 839
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 840
    .line 841
    move-object/from16 v1, p2

    .line 842
    .line 843
    check-cast v1, Ljava/lang/Integer;

    .line 844
    .line 845
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 846
    .line 847
    .line 848
    move-result v1

    .line 849
    and-int/lit8 v2, v1, 0x3

    .line 850
    .line 851
    if-eq v2, v7, :cond_12

    .line 852
    .line 853
    move v10, v8

    .line 854
    :cond_12
    and-int/2addr v1, v8

    .line 855
    move-object v14, v0

    .line 856
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 857
    .line 858
    invoke-virtual {v14, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-eqz v0, :cond_13

    .line 863
    .line 864
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ExpandMore:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 865
    .line 866
    const/4 v15, 0x0

    .line 867
    const/16 v16, 0xe

    .line 868
    .line 869
    const/4 v12, 0x0

    .line 870
    const/4 v13, 0x0

    .line 871
    invoke-static/range {v11 .. v16}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 872
    .line 873
    .line 874
    goto :goto_9

    .line 875
    :cond_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 876
    .line 877
    .line 878
    :goto_9
    return-object v6

    .line 879
    :pswitch_16
    move-object/from16 v0, p1

    .line 880
    .line 881
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 882
    .line 883
    move-object/from16 v1, p2

    .line 884
    .line 885
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 886
    .line 887
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    new-instance v1, Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;

    .line 894
    .line 895
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    check-cast v0, Landroid/content/Context;

    .line 904
    .line 905
    invoke-direct {v1, v0}, Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;-><init>(Landroid/content/Context;)V

    .line 906
    .line 907
    .line 908
    return-object v1

    .line 909
    :pswitch_17
    move-object/from16 v0, p1

    .line 910
    .line 911
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 912
    .line 913
    move-object/from16 v1, p2

    .line 914
    .line 915
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 916
    .line 917
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    .line 922
    .line 923
    new-instance v1, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 924
    .line 925
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    check-cast v0, Landroid/content/Context;

    .line 934
    .line 935
    invoke-direct {v1, v0}, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;-><init>(Landroid/content/Context;)V

    .line 936
    .line 937
    .line 938
    return-object v1

    .line 939
    :pswitch_18
    move-object/from16 v0, p1

    .line 940
    .line 941
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 942
    .line 943
    move-object/from16 v1, p2

    .line 944
    .line 945
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 946
    .line 947
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 951
    .line 952
    .line 953
    new-instance v1, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 954
    .line 955
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 956
    .line 957
    const-string v3, "ContactCache"

    .line 958
    .line 959
    invoke-direct {v2, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    const-class v3, Lnet/thunderbird/core/common/cache/Cache;

    .line 963
    .line 964
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-virtual {v0, v3, v9, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v2

    .line 972
    check-cast v2, Lnet/thunderbird/core/common/cache/Cache;

    .line 973
    .line 974
    const-class v3, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;

    .line 975
    .line 976
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 977
    .line 978
    .line 979
    move-result-object v3

    .line 980
    invoke-virtual {v0, v3, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    check-cast v0, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;

    .line 985
    .line 986
    invoke-direct {v1, v2, v0}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;-><init>(Lnet/thunderbird/core/common/cache/Cache;Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;)V

    .line 987
    .line 988
    .line 989
    return-object v1

    .line 990
    :pswitch_19
    move-object/from16 v0, p1

    .line 991
    .line 992
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 993
    .line 994
    move-object/from16 v1, p2

    .line 995
    .line 996
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    .line 1003
    .line 1004
    new-instance v1, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;

    .line 1005
    .line 1006
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    check-cast v2, Landroid/content/Context;

    .line 1015
    .line 1016
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    const-class v3, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 1024
    .line 1025
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    invoke-virtual {v0, v3, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    check-cast v0, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 1034
    .line 1035
    invoke-direct {v1, v2, v0}, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;-><init>(Landroid/content/ContentResolver;Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;)V

    .line 1036
    .line 1037
    .line 1038
    return-object v1

    .line 1039
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1040
    .line 1041
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1042
    .line 1043
    move-object/from16 v1, p2

    .line 1044
    .line 1045
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1046
    .line 1047
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1051
    .line 1052
    .line 1053
    new-instance v1, Lnet/thunderbird/core/common/cache/InMemoryCache;

    .line 1054
    .line 1055
    new-instance v2, Lnet/thunderbird/core/common/cache/ExpiringCache;

    .line 1056
    .line 1057
    const-class v3, Lkotlin/time/Clock;

    .line 1058
    .line 1059
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    invoke-virtual {v0, v3, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    check-cast v0, Lkotlin/time/Clock;

    .line 1068
    .line 1069
    invoke-direct {v2, v0}, Lnet/thunderbird/core/common/cache/ExpiringCache;-><init>(Lkotlin/time/Clock;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-direct {v1, v2}, Lnet/thunderbird/core/common/cache/InMemoryCache;-><init>(Lnet/thunderbird/core/common/cache/ExpiringCache;)V

    .line 1073
    .line 1074
    .line 1075
    return-object v1

    .line 1076
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1077
    .line 1078
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1079
    .line 1080
    move-object/from16 v1, p2

    .line 1081
    .line 1082
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1083
    .line 1084
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    .line 1089
    .line 1090
    new-instance v1, Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 1091
    .line 1092
    const-class v2, Lapp/k9mail/core/android/common/camera/io/CaptureImageFileWriter;

    .line 1093
    .line 1094
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    invoke-virtual {v0, v2, v9, v9}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    check-cast v0, Lapp/k9mail/core/android/common/camera/io/CaptureImageFileWriter;

    .line 1103
    .line 1104
    invoke-direct {v1, v0}, Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;-><init>(Lapp/k9mail/core/android/common/camera/io/CaptureImageFileWriter;)V

    .line 1105
    .line 1106
    .line 1107
    return-object v1

    .line 1108
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1109
    .line 1110
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1111
    .line 1112
    move-object/from16 v1, p2

    .line 1113
    .line 1114
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1115
    .line 1116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 1123
    .line 1124
    return-object v0

    .line 1125
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
