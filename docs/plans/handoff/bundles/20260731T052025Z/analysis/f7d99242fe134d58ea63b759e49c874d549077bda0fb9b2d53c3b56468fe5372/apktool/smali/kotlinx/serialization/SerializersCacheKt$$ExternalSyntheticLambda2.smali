.class public final synthetic Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;
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
    iput p1, p0, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;->$r8$classId:I

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
    .locals 13

    .line 1
    iget p0, p0, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const-class v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 4
    .line 5
    const-class v1, Lnet/thunderbird/core/logging/Logger;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 13
    .line 14
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p0, Lnet/thunderbird/core/logging/DefaultLogger;

    .line 23
    .line 24
    const-class p2, Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 25
    .line 26
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lnet/thunderbird/core/logging/LogSink;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lnet/thunderbird/core/logging/DefaultLogger;-><init>(Lnet/thunderbird/core/logging/LogSink;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_0
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 41
    .line 42
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 43
    .line 44
    const-class p0, Lnet/thunderbird/core/logging/LogLevelProvider;

    .line 45
    .line 46
    invoke-static {p1, p2, p0, v3, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lnet/thunderbird/core/logging/LogLevelProvider;

    .line 51
    .line 52
    const-class p2, Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-class v1, Lnet/thunderbird/core/logging/LogSink;

    .line 63
    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "<"

    .line 73
    .line 74
    const-string v4, ">"

    .line 75
    .line 76
    invoke-static {v0, v2, v1, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2, v3, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Ljava/util/List;

    .line 94
    .line 95
    invoke-static {p0, p1}, Lkotlin/text/CharsKt__CharKt;->CompositeLogSink$default(Lnet/thunderbird/core/logging/LogLevelProvider;Ljava/util/List;)Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_1
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 101
    .line 102
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance p0, Lnet/thunderbird/core/logging/console/AndroidConsoleLogSink;

    .line 111
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_2
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 117
    .line 118
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 127
    .line 128
    invoke-direct {p0}, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;-><init>()V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_3
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 133
    .line 134
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget-object p0, Lnet/thunderbird/core/logging/LogLevel;->INFO:Lnet/thunderbird/core/logging/LogLevel;

    .line 143
    .line 144
    return-object p0

    .line 145
    :pswitch_4
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 146
    .line 147
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance p0, Landroidx/collection/internal/Lock;

    .line 156
    .line 157
    const-class p2, Lnet/thunderbird/core/configstore/backend/DataStoreConfigBackendFactory;

    .line 158
    .line 159
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lnet/thunderbird/core/configstore/backend/DataStoreConfigBackendFactory;

    .line 168
    .line 169
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :pswitch_5
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
    new-instance p0, Lnet/thunderbird/core/configstore/backend/DataStoreConfigBackendFactory;

    .line 189
    .line 190
    const-class p2, Lnet/thunderbird/core/configstore/backend/AndroidConfigBackendFileManager;

    .line 191
    .line 192
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lnet/thunderbird/core/configstore/backend/AndroidConfigBackendFileManager;

    .line 201
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_6
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 207
    .line 208
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    new-instance p0, Lnet/thunderbird/core/configstore/backend/AndroidConfigBackendFileManager;

    .line 217
    .line 218
    const-class p2, Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Landroid/content/Context;

    .line 229
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_7
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 235
    .line 236
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    new-instance p0, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 245
    .line 246
    const-class p2, Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;

    .line 247
    .line 248
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;

    .line 257
    .line 258
    invoke-direct {p0, p1}, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;-><init>(Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;)V

    .line 259
    .line 260
    .line 261
    return-object p0

    .line 262
    :pswitch_8
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 263
    .line 264
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    new-instance p0, Lnet/thunderbird/app/common/appVersion/DefaultAppVersionProvider;

    .line 273
    .line 274
    invoke-static {p1}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {p1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Lnet/thunderbird/core/logging/Logger;

    .line 287
    .line 288
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/appVersion/DefaultAppVersionProvider;-><init>(Landroid/content/Context;Lnet/thunderbird/core/logging/Logger;)V

    .line 289
    .line 290
    .line 291
    return-object p0

    .line 292
    :pswitch_9
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 293
    .line 294
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {p1}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    new-instance p1, Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;

    .line 311
    .line 312
    invoke-direct {p1, p0}, Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;-><init>(Landroid/content/ContentResolver;)V

    .line 313
    .line 314
    .line 315
    return-object p1

    .line 316
    :pswitch_a
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 317
    .line 318
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    new-instance p0, Lnet/thunderbird/core/file/AndroidDirectoryProvider;

    .line 327
    .line 328
    invoke-static {p1}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-direct {p0, p1}, Lnet/thunderbird/core/file/AndroidDirectoryProvider;-><init>(Landroid/content/Context;)V

    .line 333
    .line 334
    .line 335
    return-object p0

    .line 336
    :pswitch_b
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 337
    .line 338
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    new-instance p0, Lnet/thunderbird/core/file/DefaultFileManager;

    .line 347
    .line 348
    const-class p2, Lnet/thunderbird/core/file/AndroidFileSystemManager;

    .line 349
    .line 350
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Lnet/thunderbird/core/file/AndroidFileSystemManager;

    .line 359
    .line 360
    invoke-direct {p0, p1}, Lnet/thunderbird/core/file/DefaultFileManager;-><init>(Lnet/thunderbird/core/file/AndroidFileSystemManager;)V

    .line 361
    .line 362
    .line 363
    return-object p0

    .line 364
    :pswitch_c
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 365
    .line 366
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    new-instance p0, Lnet/thunderbird/core/file/AndroidFileSystemManager;

    .line 375
    .line 376
    invoke-static {p1}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-direct {p0, p1}, Lnet/thunderbird/core/file/AndroidFileSystemManager;-><init>(Landroid/content/ContentResolver;)V

    .line 388
    .line 389
    .line 390
    return-object p0

    .line 391
    :pswitch_d
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 392
    .line 393
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 394
    .line 395
    const-class p0, Lnet/thunderbird/app/common/account/AccountColorPicker;

    .line 396
    .line 397
    invoke-static {p1, p2, p0, v3, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    move-object v5, p0

    .line 402
    check-cast v5, Lnet/thunderbird/app/common/account/AccountColorPicker;

    .line 403
    .line 404
    const-class p0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 405
    .line 406
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    invoke-virtual {p1, p0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    move-object v6, p0

    .line 415
    check-cast v6, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 416
    .line 417
    const-class p0, Lcom/fsck/k9/Preferences;

    .line 418
    .line 419
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {p1, p0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    move-object v7, p0

    .line 428
    check-cast v7, Lcom/fsck/k9/Preferences;

    .line 429
    .line 430
    invoke-static {p1}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    const-class p0, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 435
    .line 436
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    invoke-virtual {p1, p0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    move-object v10, p0

    .line 445
    check-cast v10, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 446
    .line 447
    const-class p0, Lcom/fsck/k9/controller/MessagingController;

    .line 448
    .line 449
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    invoke-virtual {p1, p0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    move-object v9, p0

    .line 458
    check-cast v9, Lcom/fsck/k9/controller/MessagingController;

    .line 459
    .line 460
    const-class p0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 461
    .line 462
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    invoke-virtual {p1, p0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object p0

    .line 470
    move-object v11, p0

    .line 471
    check-cast v11, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 472
    .line 473
    const-class p0, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 474
    .line 475
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    invoke-virtual {p1, p0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    move-object v12, p0

    .line 484
    check-cast v12, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 485
    .line 486
    new-instance v4, Lnet/thunderbird/app/common/account/AccountCreator;

    .line 487
    .line 488
    invoke-direct/range {v4 .. v12}, Lnet/thunderbird/app/common/account/AccountCreator;-><init>(Lnet/thunderbird/app/common/account/AccountColorPicker;Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;Lcom/fsck/k9/Preferences;Landroid/app/Application;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/account/DefaultDeletePolicyProvider;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;)V

    .line 489
    .line 490
    .line 491
    return-object v4

    .line 492
    :pswitch_e
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 493
    .line 494
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 495
    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    new-instance p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 503
    .line 504
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    check-cast p1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 513
    .line 514
    invoke-direct {p0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V

    .line 515
    .line 516
    .line 517
    return-object p0

    .line 518
    :pswitch_f
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 519
    .line 520
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 521
    .line 522
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    new-instance p0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 529
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    .line 532
    .line 533
    return-object p0

    .line 534
    :pswitch_10
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 535
    .line 536
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 537
    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    new-instance p0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    .line 545
    .line 546
    invoke-direct {p0}, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;-><init>()V

    .line 547
    .line 548
    .line 549
    return-object p0

    .line 550
    :pswitch_11
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 551
    .line 552
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 553
    .line 554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    new-instance p0, Lnet/thunderbird/app/common/account/AccountColorPicker;

    .line 561
    .line 562
    const-class p2, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 563
    .line 564
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 565
    .line 566
    .line 567
    move-result-object p2

    .line 568
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object p2

    .line 572
    check-cast p2, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 573
    .line 574
    new-instance v0, Lorg/koin/core/qualifier/StringQualifier;

    .line 575
    .line 576
    const-string v1, "AccountColors"

    .line 577
    .line 578
    invoke-direct {v0, v1}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    const-class v1, Lkotlinx/collections/immutable/ImmutableList;

    .line 582
    .line 583
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-virtual {p1, v1, v3, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    check-cast p1, Lkotlinx/collections/immutable/ImmutableList;

    .line 592
    .line 593
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/account/AccountColorPicker;-><init>(Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 594
    .line 595
    .line 596
    return-object p0

    .line 597
    :pswitch_12
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 598
    .line 599
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 600
    .line 601
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    invoke-static {p1}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 608
    .line 609
    .line 610
    move-result-object p0

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 612
    .line 613
    .line 614
    move-result-object p0

    .line 615
    const/high16 p1, 0x7f030000

    .line 616
    .line 617
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 618
    .line 619
    .line 620
    move-result-object p0

    .line 621
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([I)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object p0

    .line 628
    invoke-static {p0}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 629
    .line 630
    .line 631
    move-result-object p0

    .line 632
    return-object p0

    .line 633
    :pswitch_13
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 634
    .line 635
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 636
    .line 637
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    new-instance p0, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;

    .line 644
    .line 645
    const-class p2, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 646
    .line 647
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 648
    .line 649
    .line 650
    move-result-object p2

    .line 651
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object p2

    .line 655
    check-cast p2, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 656
    .line 657
    const-class v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 658
    .line 659
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {p1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    check-cast p1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 668
    .line 669
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;-><init>(Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;)V

    .line 670
    .line 671
    .line 672
    return-object p0

    .line 673
    :pswitch_14
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 674
    .line 675
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 676
    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    new-instance p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 684
    .line 685
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 686
    .line 687
    .line 688
    move-result-object p2

    .line 689
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object p2

    .line 693
    check-cast p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 694
    .line 695
    const-class v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;

    .line 696
    .line 697
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {p1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    check-cast p1, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;

    .line 706
    .line 707
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;)V

    .line 708
    .line 709
    .line 710
    return-object p0

    .line 711
    :pswitch_15
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 712
    .line 713
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 714
    .line 715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    .line 720
    .line 721
    new-instance p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 722
    .line 723
    const-class p2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 724
    .line 725
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 726
    .line 727
    .line 728
    move-result-object p2

    .line 729
    invoke-virtual {p1, p2, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object p2

    .line 733
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 734
    .line 735
    const-class v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 736
    .line 737
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-virtual {p1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    check-cast p1, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 746
    .line 747
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;)V

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
    new-instance p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;

    .line 762
    .line 763
    invoke-static {p1}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 764
    .line 765
    .line 766
    move-result-object p2

    .line 767
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    invoke-virtual {p1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    check-cast p1, Lnet/thunderbird/core/logging/Logger;

    .line 776
    .line 777
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;-><init>(Landroid/app/Application;Lnet/thunderbird/core/logging/Logger;)V

    .line 778
    .line 779
    .line 780
    return-object p0

    .line 781
    :pswitch_17
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 782
    .line 783
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 784
    .line 785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    new-instance p0, Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 792
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    .line 795
    .line 796
    return-object p0

    .line 797
    :pswitch_18
    check-cast p1, Lkotlin/reflect/KClass;

    .line 798
    .line 799
    check-cast p2, Ljava/util/List;

    .line 800
    .line 801
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    sget-object p0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 808
    .line 809
    invoke-static {p0, p2, v2}, Lkotlin/io/ByteStreamsKt;->serializersForParameters(Lkotlinx/serialization/modules/SerialModuleImpl;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 810
    .line 811
    .line 812
    move-result-object p0

    .line 813
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    new-instance v0, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 817
    .line 818
    const/4 v1, 0x5

    .line 819
    invoke-direct {v0, v1, p2}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 820
    .line 821
    .line 822
    invoke-static {p1, p0, v0}, Lkotlin/io/ByteStreamsKt;->parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    .line 823
    .line 824
    .line 825
    move-result-object p0

    .line 826
    if-eqz p0, :cond_0

    .line 827
    .line 828
    invoke-static {p0}, Lokhttp3/CacheControl$Companion;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    :cond_0
    return-object v3

    .line 833
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    .line 834
    .line 835
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 836
    .line 837
    instance-of p0, p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 838
    .line 839
    if-eqz p0, :cond_1

    .line 840
    .line 841
    check-cast p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 842
    .line 843
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    .line 844
    .line 845
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ThreadLocalElement;->updateThreadContext()Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object p0

    .line 849
    iget-object v0, p1, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    .line 850
    .line 851
    iget v1, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 852
    .line 853
    aput-object p0, v0, v1

    .line 854
    .line 855
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 856
    .line 857
    add-int/lit8 v0, v1, 0x1

    .line 858
    .line 859
    iput v0, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 860
    .line 861
    aput-object p2, p0, v1

    .line 862
    .line 863
    :cond_1
    return-object p1

    .line 864
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 865
    .line 866
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 867
    .line 868
    if-eqz p1, :cond_2

    .line 869
    .line 870
    move-object v3, p1

    .line 871
    goto :goto_0

    .line 872
    :cond_2
    instance-of p0, p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 873
    .line 874
    if-eqz p0, :cond_3

    .line 875
    .line 876
    move-object v3, p2

    .line 877
    check-cast v3, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 878
    .line 879
    :cond_3
    :goto_0
    return-object v3

    .line 880
    :pswitch_1b
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 881
    .line 882
    instance-of p0, p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 883
    .line 884
    if-eqz p0, :cond_7

    .line 885
    .line 886
    instance-of p0, p1, Ljava/lang/Integer;

    .line 887
    .line 888
    if-eqz p0, :cond_4

    .line 889
    .line 890
    move-object v3, p1

    .line 891
    check-cast v3, Ljava/lang/Integer;

    .line 892
    .line 893
    :cond_4
    if-eqz v3, :cond_5

    .line 894
    .line 895
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 896
    .line 897
    .line 898
    move-result p0

    .line 899
    goto :goto_1

    .line 900
    :cond_5
    move p0, v2

    .line 901
    :goto_1
    if-nez p0, :cond_6

    .line 902
    .line 903
    move-object p1, p2

    .line 904
    goto :goto_2

    .line 905
    :cond_6
    add-int/2addr p0, v2

    .line 906
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    :cond_7
    :goto_2
    return-object p1

    .line 911
    :pswitch_1c
    check-cast p1, Lkotlin/reflect/KClass;

    .line 912
    .line 913
    check-cast p2, Ljava/util/List;

    .line 914
    .line 915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    .line 920
    .line 921
    sget-object p0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 922
    .line 923
    invoke-static {p0, p2, v2}, Lkotlin/io/ByteStreamsKt;->serializersForParameters(Lkotlinx/serialization/modules/SerialModuleImpl;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 924
    .line 925
    .line 926
    move-result-object p0

    .line 927
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    new-instance v0, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 931
    .line 932
    const/4 v1, 0x4

    .line 933
    invoke-direct {v0, v1, p2}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 934
    .line 935
    .line 936
    invoke-static {p1, p0, v0}, Lkotlin/io/ByteStreamsKt;->parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    .line 937
    .line 938
    .line 939
    move-result-object p0

    .line 940
    return-object p0

    .line 941
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
