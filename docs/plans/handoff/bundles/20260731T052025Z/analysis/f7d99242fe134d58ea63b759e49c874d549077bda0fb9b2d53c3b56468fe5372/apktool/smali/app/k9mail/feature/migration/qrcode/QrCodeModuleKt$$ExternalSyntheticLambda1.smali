.class public final synthetic Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 10

    .line 1
    iget p0, p0, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const-class v4, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 15
    .line 16
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 25
    .line 26
    invoke-static {p1}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-class v0, Lnet/thunderbird/core/logging/Logger;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lnet/thunderbird/core/logging/Logger;

    .line 41
    .line 42
    invoke-direct {p0, p2, p1}, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;-><init>(Landroid/content/Context;Lnet/thunderbird/core/logging/Logger;)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_0
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 47
    .line 48
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 57
    .line 58
    const-class p2, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;-><init>(Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_1
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 75
    .line 76
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance p0, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;

    .line 85
    .line 86
    const-class p2, Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;

    .line 87
    .line 88
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;

    .line 97
    .line 98
    invoke-direct {p0, p1}, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;-><init>(Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_2
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 103
    .line 104
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance p0, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 113
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_3
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 119
    .line 120
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    new-instance p0, Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 129
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_4
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 135
    .line 136
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;

    .line 145
    .line 146
    const-class p2, Lapp/k9mail/feature/migration/qrcode/settings/DefaultUuidGenerator;

    .line 147
    .line 148
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/settings/DefaultUuidGenerator;

    .line 157
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_5
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 163
    .line 164
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/settings/DefaultUuidGenerator;

    .line 173
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :pswitch_6
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 179
    .line 180
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;

    .line 189
    .line 190
    const-class p2, Landroid/content/Context;

    .line 191
    .line 192
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    check-cast p2, Landroid/content/Context;

    .line 201
    .line 202
    const-class v0, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;

    .line 203
    .line 204
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;

    .line 213
    .line 214
    invoke-direct {p0, p2, p1}, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;-><init>(Landroid/content/Context;Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;)V

    .line 215
    .line 216
    .line 217
    return-object p0

    .line 218
    :pswitch_7
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 219
    .line 220
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;

    .line 229
    .line 230
    const-class p2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;

    .line 231
    .line 232
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;

    .line 241
    .line 242
    const-class v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadMapper;

    .line 243
    .line 244
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadMapper;

    .line 253
    .line 254
    invoke-direct {p0, p2, p1}, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;-><init>(Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadMapper;)V

    .line 255
    .line 256
    .line 257
    return-object p0

    .line 258
    :pswitch_8
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 259
    .line 260
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadMapper;

    .line 269
    .line 270
    const-class p2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;

    .line 271
    .line 272
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    check-cast p2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;

    .line 281
    .line 282
    const-class p2, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 283
    .line 284
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 293
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    .line 296
    .line 297
    return-object p0

    .line 298
    :pswitch_9
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 299
    .line 300
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;

    .line 309
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    .line 312
    .line 313
    return-object p0

    .line 314
    :pswitch_a
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 315
    .line 316
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;

    .line 325
    .line 326
    const-class p2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadAdapter;

    .line 327
    .line 328
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadAdapter;

    .line 337
    .line 338
    invoke-direct {p0, p1}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;-><init>(Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadAdapter;)V

    .line 339
    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_b
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 343
    .line 344
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 345
    .line 346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadAdapter;

    .line 353
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    .line 356
    .line 357
    return-object p0

    .line 358
    :pswitch_c
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 359
    .line 360
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    new-instance p0, Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 369
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    .line 372
    .line 373
    return-object p0

    .line 374
    :pswitch_d
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 375
    .line 376
    check-cast p2, Ljava/lang/Integer;

    .line 377
    .line 378
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 379
    .line 380
    .line 381
    move-result p0

    .line 382
    and-int/lit8 p2, p0, 0x3

    .line 383
    .line 384
    if-eq p2, v1, :cond_0

    .line 385
    .line 386
    move p2, v2

    .line 387
    goto :goto_0

    .line 388
    :cond_0
    move p2, v3

    .line 389
    :goto_0
    and-int/2addr p0, v2

    .line 390
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 391
    .line 392
    invoke-virtual {p1, p0, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 393
    .line 394
    .line 395
    move-result p0

    .line 396
    if-eqz p0, :cond_2

    .line 397
    .line 398
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 403
    .line 404
    if-ne p0, p2, :cond_1

    .line 405
    .line 406
    new-instance p0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 407
    .line 408
    const/16 p2, 0xb

    .line 409
    .line 410
    invoke-direct {p0, p2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 417
    .line 418
    new-instance p2, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 419
    .line 420
    invoke-direct {p2, p0, v3}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 421
    .line 422
    .line 423
    invoke-static {p2, v5, p1, v3}, Landroidx/work/OperationKt;->FeatureLauncherApp(Landroidx/compose/ui/Modifier;Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;Landroidx/compose/runtime/Composer;I)V

    .line 424
    .line 425
    .line 426
    goto :goto_1

    .line 427
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 428
    .line 429
    .line 430
    :goto_1
    return-object v0

    .line 431
    :pswitch_e
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 432
    .line 433
    check-cast p2, Ljava/lang/Integer;

    .line 434
    .line 435
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 436
    .line 437
    .line 438
    move-result p0

    .line 439
    and-int/lit8 p2, p0, 0x3

    .line 440
    .line 441
    if-eq p2, v1, :cond_3

    .line 442
    .line 443
    move v3, v2

    .line 444
    :cond_3
    and-int/2addr p0, v2

    .line 445
    move-object v7, p1

    .line 446
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 447
    .line 448
    invoke-virtual {v7, p0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 449
    .line 450
    .line 451
    move-result p0

    .line 452
    if-eqz p0, :cond_4

    .line 453
    .line 454
    const p0, 0x7f1201ba

    .line 455
    .line 456
    .line 457
    invoke-static {v7, p0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 462
    .line 463
    const/4 v8, 0x6

    .line 464
    const/4 v9, 0x4

    .line 465
    const/4 v6, 0x0

    .line 466
    invoke-static/range {v4 .. v9}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 467
    .line 468
    .line 469
    goto :goto_2

    .line 470
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 471
    .line 472
    .line 473
    :goto_2
    return-object v0

    .line 474
    :pswitch_f
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 475
    .line 476
    check-cast p2, Ljava/lang/Integer;

    .line 477
    .line 478
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 479
    .line 480
    .line 481
    move-result p0

    .line 482
    and-int/lit8 p2, p0, 0x3

    .line 483
    .line 484
    if-eq p2, v1, :cond_5

    .line 485
    .line 486
    move v3, v2

    .line 487
    :cond_5
    and-int/2addr p0, v2

    .line 488
    move-object v7, p1

    .line 489
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 490
    .line 491
    invoke-virtual {v7, p0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 492
    .line 493
    .line 494
    move-result p0

    .line 495
    if-eqz p0, :cond_6

    .line 496
    .line 497
    const p0, 0x7f12017d

    .line 498
    .line 499
    .line 500
    invoke-static {v7, p0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    const/4 v8, 0x0

    .line 505
    const/4 v9, 0x5

    .line 506
    const/4 v4, 0x0

    .line 507
    const/4 v6, 0x0

    .line 508
    invoke-static/range {v4 .. v9}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 509
    .line 510
    .line 511
    goto :goto_3

    .line 512
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 513
    .line 514
    .line 515
    :goto_3
    return-object v0

    .line 516
    :pswitch_10
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 517
    .line 518
    check-cast p2, Ljava/lang/Integer;

    .line 519
    .line 520
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 521
    .line 522
    .line 523
    move-result p0

    .line 524
    and-int/lit8 p2, p0, 0x3

    .line 525
    .line 526
    if-eq p2, v1, :cond_7

    .line 527
    .line 528
    move v3, v2

    .line 529
    :cond_7
    and-int/2addr p0, v2

    .line 530
    move-object v7, p1

    .line 531
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 532
    .line 533
    invoke-virtual {v7, p0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 534
    .line 535
    .line 536
    move-result p0

    .line 537
    if-eqz p0, :cond_8

    .line 538
    .line 539
    const p0, 0x7f12016b

    .line 540
    .line 541
    .line 542
    invoke-static {v7, p0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 547
    .line 548
    const/4 v8, 0x6

    .line 549
    const/4 v9, 0x4

    .line 550
    const/4 v6, 0x0

    .line 551
    invoke-static/range {v4 .. v9}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 552
    .line 553
    .line 554
    goto :goto_4

    .line 555
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 556
    .line 557
    .line 558
    :goto_4
    return-object v0

    .line 559
    :pswitch_11
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 560
    .line 561
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 562
    .line 563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    new-instance p0, Lokhttp3/OkHttpClient;

    .line 570
    .line 571
    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 572
    .line 573
    .line 574
    return-object p0

    .line 575
    :pswitch_12
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 576
    .line 577
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 578
    .line 579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 586
    .line 587
    const-class p2, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;

    .line 588
    .line 589
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 590
    .line 591
    .line 592
    move-result-object p2

    .line 593
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object p2

    .line 597
    check-cast p2, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;

    .line 598
    .line 599
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    check-cast p1, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 608
    .line 609
    invoke-direct {p0, p2, p1}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;-><init>(Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 610
    .line 611
    .line 612
    return-object p0

    .line 613
    :pswitch_13
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 614
    .line 615
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 616
    .line 617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;

    .line 624
    .line 625
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 626
    .line 627
    .line 628
    move-result-object p2

    .line 629
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    check-cast p1, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 634
    .line 635
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;-><init>(Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 636
    .line 637
    .line 638
    return-object p0

    .line 639
    :pswitch_14
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 640
    .line 641
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 642
    .line 643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 650
    .line 651
    const-class p2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;

    .line 652
    .line 653
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 654
    .line 655
    .line 656
    move-result-object p2

    .line 657
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object p2

    .line 661
    check-cast p2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;

    .line 662
    .line 663
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 672
    .line 673
    const-class v1, Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 674
    .line 675
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    invoke-virtual {p1, v1, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    check-cast p1, Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 684
    .line 685
    invoke-direct {p0, p2, v0, p1}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;-><init>(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lcom/fsck/k9/account/AccountOwnerNameProvider;)V

    .line 686
    .line 687
    .line 688
    return-object p0

    .line 689
    :pswitch_15
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 690
    .line 691
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 692
    .line 693
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 700
    .line 701
    const-class p2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;

    .line 702
    .line 703
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 704
    .line 705
    .line 706
    move-result-object p2

    .line 707
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object p2

    .line 711
    check-cast p2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;

    .line 712
    .line 713
    const-class v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 714
    .line 715
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    check-cast v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 724
    .line 725
    const-class v1, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;

    .line 726
    .line 727
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-virtual {p1, v1, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    check-cast v1, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;

    .line 736
    .line 737
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-virtual {p1, v2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    check-cast p1, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 746
    .line 747
    invoke-direct {p0, p2, v0, v1, p1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 748
    .line 749
    .line 750
    return-object p0

    .line 751
    :pswitch_16
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 752
    .line 753
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 754
    .line 755
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;

    .line 762
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    .line 765
    .line 766
    return-object p0

    .line 767
    :pswitch_17
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 768
    .line 769
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 770
    .line 771
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    new-instance p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;

    .line 778
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    .line 781
    .line 782
    return-object p0

    .line 783
    :pswitch_18
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 784
    .line 785
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 786
    .line 787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    .line 789
    .line 790
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    new-instance p0, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 794
    .line 795
    const-class p2, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;

    .line 796
    .line 797
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 798
    .line 799
    .line 800
    move-result-object p2

    .line 801
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object p2

    .line 805
    check-cast p2, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;

    .line 806
    .line 807
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 816
    .line 817
    const-class v1, Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 818
    .line 819
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    invoke-virtual {p1, v1, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object p1

    .line 827
    check-cast p1, Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 828
    .line 829
    invoke-direct {p0, p2, v0, p1}, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V

    .line 830
    .line 831
    .line 832
    return-object p0

    .line 833
    :pswitch_19
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 834
    .line 835
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 836
    .line 837
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    new-instance p0, Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 844
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    .line 847
    .line 848
    return-object p0

    .line 849
    :pswitch_1a
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 850
    .line 851
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 852
    .line 853
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    .line 855
    .line 856
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    new-instance p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;

    .line 860
    .line 861
    const-class p2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 862
    .line 863
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 864
    .line 865
    .line 866
    move-result-object p2

    .line 867
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object p2

    .line 871
    check-cast p2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 872
    .line 873
    const-class v0, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 874
    .line 875
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    check-cast v0, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 884
    .line 885
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 886
    .line 887
    const-string v2, "ClientInfoAppName"

    .line 888
    .line 889
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    const-class v2, Ljava/lang/String;

    .line 893
    .line 894
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    invoke-virtual {p1, v3, v5, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    check-cast v1, Ljava/lang/String;

    .line 903
    .line 904
    new-instance v3, Lorg/koin/core/qualifier/StringQualifier;

    .line 905
    .line 906
    const-string v4, "ClientInfoAppVersion"

    .line 907
    .line 908
    invoke-direct {v3, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    invoke-virtual {p1, v2, v5, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object p1

    .line 919
    check-cast p1, Ljava/lang/String;

    .line 920
    .line 921
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;-><init>(Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    return-object p0

    .line 925
    :pswitch_1b
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 926
    .line 927
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 928
    .line 929
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    .line 931
    .line 932
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    .line 934
    .line 935
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;

    .line 936
    .line 937
    const-class p2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;

    .line 938
    .line 939
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 940
    .line 941
    .line 942
    move-result-object p2

    .line 943
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object p2

    .line 947
    check-cast p2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;

    .line 948
    .line 949
    const-class v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 950
    .line 951
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    check-cast v0, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 960
    .line 961
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    invoke-virtual {p1, v1, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    check-cast v1, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 970
    .line 971
    const-class v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 972
    .line 973
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 974
    .line 975
    .line 976
    move-result-object v2

    .line 977
    invoke-virtual {p1, v2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object p1

    .line 981
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 982
    .line 983
    invoke-direct {p0, p2, v0, v1, p1}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;-><init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;)V

    .line 984
    .line 985
    .line 986
    return-object p0

    .line 987
    :pswitch_1c
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 988
    .line 989
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 990
    .line 991
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    .line 996
    .line 997
    new-instance p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 998
    .line 999
    const-class p2, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;

    .line 1000
    .line 1001
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p2

    .line 1005
    invoke-virtual {p1, p2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p2

    .line 1009
    check-cast p2, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;

    .line 1010
    .line 1011
    const-class v0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;

    .line 1012
    .line 1013
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-virtual {p1, v0, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object p1

    .line 1021
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;

    .line 1022
    .line 1023
    invoke-direct {p0, p2, p1}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;-><init>(Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;)V

    .line 1024
    .line 1025
    .line 1026
    return-object p0

    .line 1027
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
