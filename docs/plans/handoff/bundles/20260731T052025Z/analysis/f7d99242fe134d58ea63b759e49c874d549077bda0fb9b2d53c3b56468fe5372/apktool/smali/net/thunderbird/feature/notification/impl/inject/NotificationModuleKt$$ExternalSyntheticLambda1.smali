.class public final synthetic Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 6
    .line 7
    const-class v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 8
    .line 9
    const-class v3, Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;

    .line 10
    .line 11
    const-class v4, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;

    .line 12
    .line 13
    const-class v5, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 14
    .line 15
    const-class v6, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;

    .line 16
    .line 17
    const-class v7, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 18
    .line 19
    const-class v8, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 20
    .line 21
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    const-class v10, Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 24
    .line 25
    const-class v11, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 26
    .line 27
    const/4 v12, 0x2

    .line 28
    const/4 v14, 0x3

    .line 29
    const/4 v15, 0x1

    .line 30
    const-class v16, Lnet/thunderbird/core/logging/Logger;

    .line 31
    .line 32
    const/16 p0, 0x0

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    move-object/from16 v0, p1

    .line 39
    .line 40
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;

    .line 53
    .line 54
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 63
    .line 64
    invoke-static {v0}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 77
    .line 78
    new-instance v5, Lorg/koin/core/qualifier/StringQualifier;

    .line 79
    .line 80
    const-string v6, "System"

    .line 81
    .line 82
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-class v6, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;

    .line 95
    .line 96
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v0, v6, v13, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;

    .line 105
    .line 106
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;-><init>(Lnet/thunderbird/core/logging/Logger;Landroid/app/Application;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;)V

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :pswitch_0
    move-object/from16 v0, p1

    .line 111
    .line 112
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 113
    .line 114
    move-object/from16 v1, p2

    .line 115
    .line 116
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance v1, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;

    .line 125
    .line 126
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 135
    .line 136
    new-instance v3, Lorg/koin/core/qualifier/TypeQualifier;

    .line 137
    .line 138
    const-class v4, Landroidx/work/Operation$State;

    .line 139
    .line 140
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-direct {v3, v4}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 145
    .line 146
    .line 147
    const-class v4, Ljava/util/List;

    .line 148
    .line 149
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v0, v4, v13, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/util/List;

    .line 158
    .line 159
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;-><init>(Lnet/thunderbird/core/logging/Logger;Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :pswitch_1
    move-object/from16 v0, p1

    .line 164
    .line 165
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 166
    .line 167
    move-object/from16 v1, p2

    .line 168
    .line 169
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance v1, Lnet/thunderbird/feature/notification/impl/intent/action/AlarmPermissionMissingNotificationTapActionIntentCreator;

    .line 178
    .line 179
    invoke-static {v0}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 180
    .line 181
    .line 182
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    new-instance v2, Lnet/thunderbird/feature/notification/impl/intent/action/UpdateServerSettingsNotificationActionIntentCreator;

    .line 196
    .line 197
    invoke-static {v0}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Lnet/thunderbird/core/logging/Logger;

    .line 210
    .line 211
    invoke-direct {v2, v3, v4}, Lnet/thunderbird/feature/notification/impl/intent/action/UpdateServerSettingsNotificationActionIntentCreator;-><init>(Landroid/app/Application;Lnet/thunderbird/core/logging/Logger;)V

    .line 212
    .line 213
    .line 214
    new-instance v3, Lnet/thunderbird/feature/notification/impl/intent/action/DefaultNotificationActionIntentCreator;

    .line 215
    .line 216
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Lnet/thunderbird/core/logging/Logger;

    .line 225
    .line 226
    invoke-static {v0}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-direct {v3, v0, v4}, Lnet/thunderbird/feature/notification/impl/intent/action/DefaultNotificationActionIntentCreator;-><init>(Landroid/app/Application;Lnet/thunderbird/core/logging/Logger;)V

    .line 231
    .line 232
    .line 233
    new-array v0, v14, [Lnet/thunderbird/feature/notification/impl/intent/action/NotificationActionIntentCreator;

    .line 234
    .line 235
    aput-object v1, v0, p0

    .line 236
    .line 237
    aput-object v2, v0, v15

    .line 238
    .line 239
    aput-object v3, v0, v12

    .line 240
    .line 241
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    return-object v0

    .line 246
    :pswitch_2
    move-object/from16 v0, p1

    .line 247
    .line 248
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 249
    .line 250
    move-object/from16 v1, p2

    .line 251
    .line 252
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    new-instance v1, Lcom/jcraft/jzlib/Adler32;

    .line 261
    .line 262
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 271
    .line 272
    invoke-direct {v1, v0}, Lcom/jcraft/jzlib/Adler32;-><init>(Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;)V

    .line 273
    .line 274
    .line 275
    return-object v1

    .line 276
    :pswitch_3
    move-object/from16 v0, p1

    .line 277
    .line 278
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 279
    .line 280
    move-object/from16 v1, p2

    .line 281
    .line 282
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    new-instance v1, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 291
    .line 292
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 301
    .line 302
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;-><init>(Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;)V

    .line 303
    .line 304
    .line 305
    return-object v1

    .line 306
    :pswitch_4
    move-object/from16 v0, p1

    .line 307
    .line 308
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 309
    .line 310
    move-object/from16 v1, p2

    .line 311
    .line 312
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    new-instance v1, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;

    .line 321
    .line 322
    const-class v2, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 323
    .line 324
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    check-cast v2, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 333
    .line 334
    const-class v3, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 335
    .line 336
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 345
    .line 346
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;-><init>(Lnet/thunderbird/feature/notification/api/sender/NotificationSender;Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;)V

    .line 347
    .line 348
    .line 349
    return-object v1

    .line 350
    :pswitch_5
    move-object/from16 v0, p1

    .line 351
    .line 352
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 353
    .line 354
    move-object/from16 v1, p2

    .line 355
    .line 356
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    new-instance v17, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;

    .line 365
    .line 366
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    move-object/from16 v18, v1

    .line 375
    .line 376
    check-cast v18, Lnet/thunderbird/core/logging/Logger;

    .line 377
    .line 378
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    move-object/from16 v19, v1

    .line 387
    .line 388
    check-cast v19, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 389
    .line 390
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    move-object/from16 v20, v1

    .line 399
    .line 400
    check-cast v20, Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 401
    .line 402
    new-instance v1, Lorg/koin/core/qualifier/TypeQualifier;

    .line 403
    .line 404
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v0, v2, v13, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    move-object/from16 v21, v1

    .line 420
    .line 421
    check-cast v21, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 422
    .line 423
    new-instance v1, Lorg/koin/core/qualifier/TypeQualifier;

    .line 424
    .line 425
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 430
    .line 431
    .line 432
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v0, v2, v13, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    move-object/from16 v22, v0

    .line 441
    .line 442
    check-cast v22, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 443
    .line 444
    invoke-direct/range {v17 .. v22}, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 445
    .line 446
    .line 447
    return-object v17

    .line 448
    :pswitch_6
    move-object/from16 v0, p1

    .line 449
    .line 450
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 451
    .line 452
    move-object/from16 v1, p2

    .line 453
    .line 454
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    new-instance v1, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;

    .line 463
    .line 464
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 473
    .line 474
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    check-cast v3, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 483
    .line 484
    new-instance v7, Lorg/koin/core/qualifier/TypeQualifier;

    .line 485
    .line 486
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    invoke-direct {v7, v6}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 491
    .line 492
    .line 493
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    invoke-virtual {v0, v6, v13, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    check-cast v6, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 502
    .line 503
    new-instance v7, Lorg/koin/core/qualifier/TypeQualifier;

    .line 504
    .line 505
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-direct {v7, v4}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 510
    .line 511
    .line 512
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-virtual {v0, v4, v13, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 521
    .line 522
    invoke-direct {v1, v2, v3, v6, v0}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 523
    .line 524
    .line 525
    return-object v1

    .line 526
    :pswitch_7
    move-object/from16 v0, p1

    .line 527
    .line 528
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 529
    .line 530
    move-object/from16 v1, p2

    .line 531
    .line 532
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    new-instance v1, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;

    .line 541
    .line 542
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 551
    .line 552
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 561
    .line 562
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/notification/api/NotificationRegistry;)V

    .line 563
    .line 564
    .line 565
    return-object v1

    .line 566
    :pswitch_8
    move-object/from16 v0, p1

    .line 567
    .line 568
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 569
    .line 570
    move-object/from16 v1, p2

    .line 571
    .line 572
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    iget-object v0, v1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 581
    .line 582
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iget-object v2, v1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 591
    .line 592
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    iget-object v3, v1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 601
    .line 602
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    iget-object v1, v1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->accumulatedContentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 611
    .line 612
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    const/4 v4, 0x4

    .line 621
    new-array v4, v4, [Ljava/lang/Float;

    .line 622
    .line 623
    aput-object v0, v4, p0

    .line 624
    .line 625
    aput-object v2, v4, v15

    .line 626
    .line 627
    aput-object v3, v4, v12

    .line 628
    .line 629
    aput-object v1, v4, v14

    .line 630
    .line 631
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    return-object v0

    .line 636
    :pswitch_9
    move-object/from16 v0, p1

    .line 637
    .line 638
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 639
    .line 640
    move-object/from16 v1, p2

    .line 641
    .line 642
    check-cast v1, Ljava/lang/Integer;

    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    and-int/lit8 v2, v1, 0x3

    .line 649
    .line 650
    if-eq v2, v12, :cond_0

    .line 651
    .line 652
    move v13, v15

    .line 653
    goto :goto_0

    .line 654
    :cond_0
    move/from16 v13, p0

    .line 655
    .line 656
    :goto_0
    and-int/2addr v1, v15

    .line 657
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 658
    .line 659
    invoke-virtual {v0, v1, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    if-eqz v1, :cond_1

    .line 664
    .line 665
    goto :goto_1

    .line 666
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 667
    .line 668
    .line 669
    :goto_1
    return-object v9

    .line 670
    :pswitch_a
    move-object/from16 v0, p1

    .line 671
    .line 672
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 673
    .line 674
    move-object/from16 v1, p2

    .line 675
    .line 676
    check-cast v1, Ljava/lang/Integer;

    .line 677
    .line 678
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    and-int/lit8 v2, v1, 0x3

    .line 683
    .line 684
    if-eq v2, v12, :cond_2

    .line 685
    .line 686
    move v13, v15

    .line 687
    goto :goto_2

    .line 688
    :cond_2
    move/from16 v13, p0

    .line 689
    .line 690
    :goto_2
    and-int/2addr v1, v15

    .line 691
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 692
    .line 693
    invoke-virtual {v0, v1, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_3

    .line 698
    .line 699
    goto :goto_3

    .line 700
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 701
    .line 702
    .line 703
    :goto_3
    return-object v9

    .line 704
    :pswitch_b
    move-object/from16 v0, p1

    .line 705
    .line 706
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 707
    .line 708
    move-object/from16 v1, p2

    .line 709
    .line 710
    check-cast v1, Ljava/lang/Integer;

    .line 711
    .line 712
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    and-int/lit8 v2, v1, 0x3

    .line 717
    .line 718
    if-eq v2, v12, :cond_4

    .line 719
    .line 720
    move v13, v15

    .line 721
    goto :goto_4

    .line 722
    :cond_4
    move/from16 v13, p0

    .line 723
    .line 724
    :goto_4
    and-int/2addr v1, v15

    .line 725
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 726
    .line 727
    invoke-virtual {v0, v1, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    if-eqz v1, :cond_5

    .line 732
    .line 733
    goto :goto_5

    .line 734
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 735
    .line 736
    .line 737
    :goto_5
    return-object v9

    .line 738
    :pswitch_c
    move-object/from16 v0, p1

    .line 739
    .line 740
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 741
    .line 742
    move-object/from16 v1, p2

    .line 743
    .line 744
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 745
    .line 746
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 753
    .line 754
    const-class v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;

    .line 755
    .line 756
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    move-object v3, v1

    .line 765
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;

    .line 766
    .line 767
    const-class v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 768
    .line 769
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    move-object v4, v1

    .line 778
    check-cast v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 779
    .line 780
    const-class v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;

    .line 781
    .line 782
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    move-object v5, v1

    .line 791
    check-cast v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;

    .line 792
    .line 793
    const-class v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;

    .line 794
    .line 795
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    move-object v6, v1

    .line 804
    check-cast v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;

    .line 805
    .line 806
    const-class v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;

    .line 807
    .line 808
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    move-object v7, v1

    .line 817
    check-cast v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;

    .line 818
    .line 819
    const-class v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;

    .line 820
    .line 821
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    move-object v8, v0

    .line 830
    check-cast v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;

    .line 831
    .line 832
    invoke-direct/range {v2 .. v8}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;)V

    .line 833
    .line 834
    .line 835
    return-object v2

    .line 836
    :pswitch_d
    move-object/from16 v0, p1

    .line 837
    .line 838
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 839
    .line 840
    move-object/from16 v1, p2

    .line 841
    .line 842
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 843
    .line 844
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    .line 849
    .line 850
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;

    .line 851
    .line 852
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;

    .line 861
    .line 862
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;-><init>(Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;)V

    .line 863
    .line 864
    .line 865
    return-object v1

    .line 866
    :pswitch_e
    move-object/from16 v0, p1

    .line 867
    .line 868
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 869
    .line 870
    move-object/from16 v1, p2

    .line 871
    .line 872
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 873
    .line 874
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;

    .line 881
    .line 882
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 891
    .line 892
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;

    .line 901
    .line 902
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;)V

    .line 903
    .line 904
    .line 905
    return-object v1

    .line 906
    :pswitch_f
    move-object/from16 v0, p1

    .line 907
    .line 908
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 909
    .line 910
    move-object/from16 v1, p2

    .line 911
    .line 912
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 913
    .line 914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 918
    .line 919
    .line 920
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;

    .line 921
    .line 922
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 931
    .line 932
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;-><init>(Lnet/thunderbird/core/logging/Logger;)V

    .line 933
    .line 934
    .line 935
    return-object v1

    .line 936
    :pswitch_10
    move-object/from16 v0, p1

    .line 937
    .line 938
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 939
    .line 940
    move-object/from16 v1, p2

    .line 941
    .line 942
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 943
    .line 944
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 948
    .line 949
    .line 950
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;

    .line 951
    .line 952
    const-class v2, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 953
    .line 954
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    check-cast v2, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 963
    .line 964
    const-class v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;

    .line 965
    .line 966
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;

    .line 975
    .line 976
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;-><init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;)V

    .line 977
    .line 978
    .line 979
    return-object v1

    .line 980
    :pswitch_11
    move-object/from16 v0, p1

    .line 981
    .line 982
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 983
    .line 984
    move-object/from16 v3, p2

    .line 985
    .line 986
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 987
    .line 988
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    .line 990
    .line 991
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    new-instance v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 995
    .line 996
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    move-object v5, v2

    .line 1005
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1006
    .line 1007
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    move-object v6, v1

    .line 1016
    check-cast v6, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 1017
    .line 1018
    const-class v1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 1019
    .line 1020
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    move-object v7, v1

    .line 1029
    check-cast v7, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 1030
    .line 1031
    const-class v1, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 1032
    .line 1033
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    move-object v8, v1

    .line 1042
    check-cast v8, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 1043
    .line 1044
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    move-object v9, v1

    .line 1053
    check-cast v9, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 1054
    .line 1055
    const-class v1, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 1056
    .line 1057
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    move-object v10, v0

    .line 1066
    check-cast v10, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 1067
    .line 1068
    invoke-direct/range {v4 .. v10}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/controller/DefaultMessageCountsProvider;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;)V

    .line 1069
    .line 1070
    .line 1071
    return-object v4

    .line 1072
    :pswitch_12
    move-object/from16 v0, p1

    .line 1073
    .line 1074
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1075
    .line 1076
    move-object/from16 v1, p2

    .line 1077
    .line 1078
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1079
    .line 1080
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    .line 1085
    .line 1086
    new-instance v1, Lokio/AsyncTimeout$Companion;

    .line 1087
    .line 1088
    const-class v2, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigWriter;

    .line 1089
    .line 1090
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v2

    .line 1094
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    check-cast v0, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigWriter;

    .line 1099
    .line 1100
    invoke-direct {v1, v15}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 1101
    .line 1102
    .line 1103
    return-object v1

    .line 1104
    :pswitch_13
    move-object/from16 v0, p1

    .line 1105
    .line 1106
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1107
    .line 1108
    move-object/from16 v1, p2

    .line 1109
    .line 1110
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1111
    .line 1112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;

    .line 1119
    .line 1120
    const-class v2, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigLoader;

    .line 1121
    .line 1122
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    check-cast v0, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigLoader;

    .line 1131
    .line 1132
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;-><init>(Lnet/thunderbird/app/common/feature/NavigationDrawerConfigLoader;)V

    .line 1133
    .line 1134
    .line 1135
    return-object v1

    .line 1136
    :pswitch_14
    move-object/from16 v0, p1

    .line 1137
    .line 1138
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1139
    .line 1140
    move-object/from16 v2, p2

    .line 1141
    .line 1142
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1143
    .line 1144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1148
    .line 1149
    .line 1150
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;

    .line 1151
    .line 1152
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v1

    .line 1156
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    check-cast v0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 1161
    .line 1162
    invoke-direct {v2, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;-><init>(Lcom/fsck/k9/controller/DefaultMessageCountsProvider;)V

    .line 1163
    .line 1164
    .line 1165
    return-object v2

    .line 1166
    :pswitch_15
    move-object/from16 v0, p1

    .line 1167
    .line 1168
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1169
    .line 1170
    move-object/from16 v1, p2

    .line 1171
    .line 1172
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1173
    .line 1174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/ui/MessageReaderViewModel;

    .line 1181
    .line 1182
    const-class v2, Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 1183
    .line 1184
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v2

    .line 1188
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 1193
    .line 1194
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/reader/impl/ui/MessageReaderViewModel;-><init>(Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;)V

    .line 1195
    .line 1196
    .line 1197
    return-object v1

    .line 1198
    :pswitch_16
    move-object/from16 v0, p1

    .line 1199
    .line 1200
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1201
    .line 1202
    move-object/from16 v1, p2

    .line 1203
    .line 1204
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1205
    .line 1206
    const-class v2, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultPlainTextMessagePreElementCssStyleProvider$Factory;

    .line 1207
    .line 1208
    invoke-static {v0, v1, v2, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;

    .line 1213
    .line 1214
    return-object v0

    .line 1215
    :pswitch_17
    move-object/from16 v0, p1

    .line 1216
    .line 1217
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1218
    .line 1219
    move-object/from16 v1, p2

    .line 1220
    .line 1221
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1222
    .line 1223
    const-class v2, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultSignatureCssStyleProvider$Factory;

    .line 1224
    .line 1225
    invoke-static {v0, v1, v2, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v0

    .line 1229
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;

    .line 1230
    .line 1231
    return-object v0

    .line 1232
    :pswitch_18
    move-object/from16 v0, p1

    .line 1233
    .line 1234
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1235
    .line 1236
    move-object/from16 v1, p2

    .line 1237
    .line 1238
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1239
    .line 1240
    const-class v2, Lnet/thunderbird/feature/mail/message/reader/api/css/GlobalCssStyleProvider$Factory;

    .line 1241
    .line 1242
    invoke-static {v0, v1, v2, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;

    .line 1247
    .line 1248
    return-object v0

    .line 1249
    :pswitch_19
    move-object/from16 v0, p1

    .line 1250
    .line 1251
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1252
    .line 1253
    move-object/from16 v1, p2

    .line 1254
    .line 1255
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1256
    .line 1257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1261
    .line 1262
    .line 1263
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultPlainTextMessagePreElementCssStyleProvider$Factory;

    .line 1264
    .line 1265
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    check-cast v0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 1274
    .line 1275
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultPlainTextMessagePreElementCssStyleProvider$Factory;-><init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;)V

    .line 1276
    .line 1277
    .line 1278
    return-object v1

    .line 1279
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1280
    .line 1281
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1282
    .line 1283
    move-object/from16 v1, p2

    .line 1284
    .line 1285
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1286
    .line 1287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1291
    .line 1292
    .line 1293
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultSignatureCssStyleProvider$Factory;

    .line 1294
    .line 1295
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v2

    .line 1299
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    check-cast v0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 1304
    .line 1305
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultSignatureCssStyleProvider$Factory;-><init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;)V

    .line 1306
    .line 1307
    .line 1308
    return-object v1

    .line 1309
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1310
    .line 1311
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1312
    .line 1313
    move-object/from16 v1, p2

    .line 1314
    .line 1315
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1316
    .line 1317
    invoke-static {v0, v1, v11, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v1

    .line 1321
    check-cast v1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 1322
    .line 1323
    const-string/jumbo v2, "use_new_message_reader_css_styles"

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v1, v2}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    invoke-interface {v1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 1331
    .line 1332
    .line 1333
    move-result v1

    .line 1334
    if-eqz v1, :cond_6

    .line 1335
    .line 1336
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultGlobalCssStyleProvider$Factory;

    .line 1337
    .line 1338
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v2

    .line 1342
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    check-cast v2, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 1347
    .line 1348
    const-class v3, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;

    .line 1349
    .line 1350
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v0

    .line 1358
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;

    .line 1359
    .line 1360
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultGlobalCssStyleProvider$Factory;-><init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;)V

    .line 1361
    .line 1362
    .line 1363
    goto :goto_6

    .line 1364
    :cond_6
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/css/LegacyGlobalCssStyleProvider$Factory;

    .line 1365
    .line 1366
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1367
    .line 1368
    .line 1369
    :goto_6
    return-object v1

    .line 1370
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1371
    .line 1372
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1373
    .line 1374
    move-object/from16 v1, p2

    .line 1375
    .line 1376
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1377
    .line 1378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1382
    .line 1383
    .line 1384
    new-instance v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 1385
    .line 1386
    invoke-direct {v0}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;-><init>()V

    .line 1387
    .line 1388
    .line 1389
    return-object v0

    .line 1390
    nop

    .line 1391
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
