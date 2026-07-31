.class public final synthetic Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 8

    .line 1
    iget p0, p0, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-class v0, Lcom/fsck/k9/preferences/DrawerConfigManager;

    .line 4
    .line 5
    const-class v1, Lnet/thunderbird/core/file/DefaultFileManager;

    .line 6
    .line 7
    const-class v2, Lnet/thunderbird/core/logging/Logger;

    .line 8
    .line 9
    const-class v3, Landroid/content/Context;

    .line 10
    .line 11
    const-string v4, "syncDebug"

    .line 12
    .line 13
    const-class v5, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 14
    .line 15
    const-class v6, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    check-cast p2, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_1
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 52
    .line 53
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance p0, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 62
    .line 63
    const-class p2, Lapp/k9mail/auth/K9OAuthConfigurationFactory;

    .line 64
    .line 65
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lapp/k9mail/auth/K9OAuthConfigurationFactory;

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;-><init>(Lapp/k9mail/auth/K9OAuthConfigurationFactory;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_2
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 80
    .line 81
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 82
    .line 83
    const-class p0, Landroid/net/ConnectivityManager;

    .line 84
    .line 85
    invoke-static {p1, p2, p0, v7, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 90
    .line 91
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    const/16 p2, 0x18

    .line 94
    .line 95
    if-lt p1, p2, :cond_0

    .line 96
    .line 97
    new-instance p1, Lnet/thunderbird/core/android/network/ConnectivityManagerApi24;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerApi24;-><init>(Landroid/net/ConnectivityManager;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;

    .line 104
    .line 105
    invoke-direct {p1, p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;-><init>(Landroid/net/ConnectivityManager;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-object p1

    .line 109
    :pswitch_3
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 110
    .line 111
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 112
    .line 113
    invoke-static {p1, p2, v3, v7, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Landroid/content/Context;

    .line 118
    .line 119
    const-string p1, "connectivity"

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_4
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 132
    .line 133
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance p0, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

    .line 142
    .line 143
    const-class p2, Landroid/content/ContentResolver;

    .line 144
    .line 145
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Landroid/content/ContentResolver;

    .line 154
    .line 155
    const-class v0, Lnet/thunderbird/core/android/logging/RealProcessExecutor;

    .line 156
    .line 157
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lnet/thunderbird/core/android/logging/RealProcessExecutor;

    .line 166
    .line 167
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;-><init>(Landroid/content/ContentResolver;Lnet/thunderbird/core/android/logging/RealProcessExecutor;)V

    .line 168
    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_5
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 172
    .line 173
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    new-instance p0, Lnet/thunderbird/core/android/logging/RealProcessExecutor;

    .line 182
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :pswitch_6
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 188
    .line 189
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 190
    .line 191
    invoke-static {p1, p2, v5, v7, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    check-cast p0, Lnet/thunderbird/core/common/resources/PluralsResourceManager;

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_7
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 199
    .line 200
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 201
    .line 202
    invoke-static {p1, p2, v5, v7, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    check-cast p0, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 207
    .line 208
    return-object p0

    .line 209
    :pswitch_8
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 210
    .line 211
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 212
    .line 213
    invoke-static {p1, p2, v5, v7, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Lnet/thunderbird/core/common/resources/ResourceManager;

    .line 218
    .line 219
    return-object p0

    .line 220
    :pswitch_9
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 221
    .line 222
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    new-instance p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 231
    .line 232
    invoke-static {p1}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-direct {p0, p1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;-><init>(Landroid/app/Application;)V

    .line 237
    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_a
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 241
    .line 242
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    new-instance p0, Lnet/thunderbird/app/common/startup/DefaultStartupRouter;

    .line 251
    .line 252
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    check-cast p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 261
    .line 262
    const-class v0, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 263
    .line 264
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {p1, v0, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 273
    .line 274
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/startup/DefaultStartupRouter;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;)V

    .line 275
    .line 276
    .line 277
    return-object p0

    .line 278
    :pswitch_b
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 279
    .line 280
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    new-instance p0, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 289
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    .line 292
    .line 293
    return-object p0

    .line 294
    :pswitch_c
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 295
    .line 296
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    new-instance p0, Lcom/fsck/k9/mailstore/DefaultAttachmentViewInfoMapper;

    .line 305
    .line 306
    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 307
    .line 308
    new-instance v2, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 309
    .line 310
    invoke-static {p1}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-direct {v2, p1}, Lcom/fsck/k9/ui/helper/SizeFormatter;-><init>(Landroid/content/res/Resources;)V

    .line 322
    .line 323
    .line 324
    const/4 v6, 0x0

    .line 325
    const/16 v7, 0x15

    .line 326
    .line 327
    const/4 v1, 0x1

    .line 328
    const-class v3, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 329
    .line 330
    const-string v4, "formatSize"

    .line 331
    .line 332
    const-string v5, "formatSize(J)Ljava/lang/String;"

    .line 333
    .line 334
    invoke-direct/range {v0 .. v7}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, v0}, Lcom/fsck/k9/mailstore/DefaultAttachmentViewInfoMapper;-><init>(Landroidx/room/InvalidationTracker$implementation$1;)V

    .line 338
    .line 339
    .line 340
    return-object p0

    .line 341
    :pswitch_d
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 342
    .line 343
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    new-instance p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 352
    .line 353
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    check-cast p2, Lnet/thunderbird/core/logging/Logger;

    .line 362
    .line 363
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p1, v0, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    check-cast p1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 372
    .line 373
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V

    .line 374
    .line 375
    .line 376
    return-object p0

    .line 377
    :pswitch_e
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 378
    .line 379
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 380
    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    sget-object p0, Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;->INSTANCE:Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;

    .line 388
    .line 389
    return-object p0

    .line 390
    :pswitch_f
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 391
    .line 392
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 393
    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    new-instance p0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;

    .line 401
    .line 402
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    check-cast p1, Lnet/thunderbird/core/file/DefaultFileManager;

    .line 411
    .line 412
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;-><init>(Lnet/thunderbird/core/file/DefaultFileManager;)V

    .line 413
    .line 414
    .line 415
    return-object p0

    .line 416
    :pswitch_10
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 417
    .line 418
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 419
    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    new-instance p0, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;

    .line 427
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    .line 430
    .line 431
    return-object p0

    .line 432
    :pswitch_11
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 433
    .line 434
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    new-instance p0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;

    .line 443
    .line 444
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 445
    .line 446
    .line 447
    move-result-object p2

    .line 448
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    check-cast p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 453
    .line 454
    const-class v0, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;

    .line 455
    .line 456
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {p1, v0, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    check-cast p1, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;

    .line 465
    .line 466
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;)V

    .line 467
    .line 468
    .line 469
    return-object p0

    .line 470
    :pswitch_12
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 471
    .line 472
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 473
    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    new-instance p0, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;

    .line 481
    .line 482
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    check-cast p2, Lnet/thunderbird/core/logging/Logger;

    .line 491
    .line 492
    const-class v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 493
    .line 494
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {p1, v0, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    check-cast p1, Lnet/thunderbird/backend/api/BackendFactory;

    .line 503
    .line 504
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/backend/api/BackendFactory;)V

    .line 505
    .line 506
    .line 507
    return-object p0

    .line 508
    :pswitch_13
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 509
    .line 510
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 511
    .line 512
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    new-instance p0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 519
    .line 520
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    check-cast p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 529
    .line 530
    const-class v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 531
    .line 532
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {p1, v0, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 541
    .line 542
    const-class v1, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 543
    .line 544
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {p1, v1, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    check-cast v1, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 553
    .line 554
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 555
    .line 556
    const-string v3, "AppCoroutineScope"

    .line 557
    .line 558
    invoke-direct {v2, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const-class v3, Lkotlinx/coroutines/CoroutineScope;

    .line 562
    .line 563
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-virtual {p1, v3, v7, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 572
    .line 573
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;Lkotlinx/coroutines/CoroutineScope;)V

    .line 574
    .line 575
    .line 576
    return-object p0

    .line 577
    :pswitch_14
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 578
    .line 579
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 580
    .line 581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    new-instance p0, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigWriter;

    .line 588
    .line 589
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 590
    .line 591
    .line 592
    move-result-object p2

    .line 593
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    check-cast p1, Lcom/fsck/k9/preferences/DrawerConfigManager;

    .line 598
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    .line 601
    .line 602
    return-object p0

    .line 603
    :pswitch_15
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 604
    .line 605
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 606
    .line 607
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    new-instance p0, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigLoader;

    .line 614
    .line 615
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 616
    .line 617
    .line 618
    move-result-object p2

    .line 619
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    check-cast p1, Lcom/fsck/k9/preferences/DrawerConfigManager;

    .line 624
    .line 625
    invoke-direct {p0, p1}, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigLoader;-><init>(Lcom/fsck/k9/preferences/DrawerConfigManager;)V

    .line 626
    .line 627
    .line 628
    return-object p0

    .line 629
    :pswitch_16
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 630
    .line 631
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 632
    .line 633
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    new-instance p0, Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 640
    .line 641
    invoke-static {p1}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    invoke-direct {p0, p1}, Lnet/thunderbird/app/common/feature/MessageListLauncher;-><init>(Landroid/content/Context;)V

    .line 646
    .line 647
    .line 648
    return-object p0

    .line 649
    :pswitch_17
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 650
    .line 651
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 652
    .line 653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    new-instance p0, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 660
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    .line 663
    .line 664
    return-object p0

    .line 665
    :pswitch_18
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 666
    .line 667
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 668
    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    new-instance p0, Lnet/thunderbird/core/logging/DefaultLogger;

    .line 676
    .line 677
    new-instance p2, Lorg/koin/core/qualifier/StringQualifier;

    .line 678
    .line 679
    invoke-direct {p2, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    const-class v0, Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 683
    .line 684
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {p1, v0, v7, p2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    check-cast p1, Lnet/thunderbird/core/logging/LogSink;

    .line 693
    .line 694
    invoke-direct {p0, p1}, Lnet/thunderbird/core/logging/DefaultLogger;-><init>(Lnet/thunderbird/core/logging/LogSink;)V

    .line 695
    .line 696
    .line 697
    return-object p0

    .line 698
    :pswitch_19
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 699
    .line 700
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 701
    .line 702
    invoke-static {p1, p2, v3, v7, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object p0

    .line 706
    check-cast p0, Landroid/content/Context;

    .line 707
    .line 708
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 709
    .line 710
    .line 711
    move-result-object p0

    .line 712
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object p0

    .line 716
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 720
    .line 721
    .line 722
    move-result-object p2

    .line 723
    invoke-virtual {p1, p2, v7, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    check-cast p1, Lnet/thunderbird/core/file/DefaultFileManager;

    .line 728
    .line 729
    new-instance p2, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 730
    .line 731
    invoke-direct {p2, p0, p1}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;-><init>(Ljava/lang/String;Lnet/thunderbird/core/file/DefaultFileManager;)V

    .line 732
    .line 733
    .line 734
    return-object p2

    .line 735
    :pswitch_1a
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 736
    .line 737
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 738
    .line 739
    const-class p0, Lnet/thunderbird/core/logging/LogLevelProvider;

    .line 740
    .line 741
    invoke-static {p1, p2, p0, v7, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object p0

    .line 745
    check-cast p0, Lnet/thunderbird/core/logging/LogLevelProvider;

    .line 746
    .line 747
    new-instance p2, Lorg/koin/core/qualifier/StringQualifier;

    .line 748
    .line 749
    invoke-direct {p2, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    const-class v0, Ljava/util/List;

    .line 753
    .line 754
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-virtual {p1, v0, v7, p2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    check-cast p1, Ljava/util/List;

    .line 763
    .line 764
    invoke-static {p0, p1}, Lkotlin/text/CharsKt__CharKt;->CompositeLogSink$default(Lnet/thunderbird/core/logging/LogLevelProvider;Ljava/util/List;)Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;

    .line 765
    .line 766
    .line 767
    move-result-object p0

    .line 768
    return-object p0

    .line 769
    :pswitch_1b
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 770
    .line 771
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 772
    .line 773
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    new-instance p0, Lorg/koin/core/qualifier/StringQualifier;

    .line 780
    .line 781
    invoke-direct {p0, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    const-class p2, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 785
    .line 786
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 787
    .line 788
    .line 789
    move-result-object p2

    .line 790
    invoke-virtual {p1, p2, v7, p0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object p0

    .line 794
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 795
    .line 796
    .line 797
    move-result-object p0

    .line 798
    return-object p0

    .line 799
    :pswitch_1c
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 800
    .line 801
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 802
    .line 803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 804
    .line 805
    .line 806
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    sget-object p0, Lkotlin/time/Clock$System;->INSTANCE:Lkotlin/time/Clock$System;

    .line 810
    .line 811
    return-object p0

    .line 812
    nop

    .line 813
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
