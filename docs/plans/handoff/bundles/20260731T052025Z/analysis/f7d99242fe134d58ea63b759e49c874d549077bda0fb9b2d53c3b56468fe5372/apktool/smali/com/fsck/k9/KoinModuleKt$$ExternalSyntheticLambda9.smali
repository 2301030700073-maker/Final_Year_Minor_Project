.class public final synthetic Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;
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
    iput p1, p0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;->$r8$classId:I

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 6
    .line 7
    const-class v2, Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    const-class v3, Ljava/lang/String;

    .line 10
    .line 11
    const-class v4, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 12
    .line 13
    const-class v5, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 14
    .line 15
    const-class v6, Lcom/fsck/k9/Preferences;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const-class v8, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 19
    .line 20
    const-class v9, Landroid/content/Context;

    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object/from16 v0, p1

    .line 27
    .line 28
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 29
    .line 30
    move-object/from16 v1, p2

    .line 31
    .line 32
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/fsck/k9/contacts/ContactImageBitmapDecoderFactory;

    .line 41
    .line 42
    const-class v2, Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoderFactory;-><init>(Lcom/fsck/k9/contacts/ContactPhotoLoader;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_0
    move-object/from16 v0, p1

    .line 59
    .line 60
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 61
    .line 62
    move-object/from16 v1, p2

    .line 63
    .line 64
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 73
    .line 74
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/content/Context;

    .line 83
    .line 84
    const-class v3, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 85
    .line 86
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 95
    .line 96
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/contacts/ContactPictureLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :pswitch_1
    move-object/from16 v0, p1

    .line 101
    .line 102
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 103
    .line 104
    move-object/from16 v1, p2

    .line 105
    .line 106
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 115
    .line 116
    const-class v2, Landroid/content/ContentResolver;

    .line 117
    .line 118
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Landroid/content/ContentResolver;

    .line 127
    .line 128
    const-class v3, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 129
    .line 130
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 139
    .line 140
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/contacts/ContactPhotoLoader;-><init>(Landroid/content/ContentResolver;Lapp/k9mail/core/android/common/contact/ContactRepository;)V

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :pswitch_2
    move-object/from16 v0, p1

    .line 145
    .line 146
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 147
    .line 148
    move-object/from16 v1, p2

    .line 149
    .line 150
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 159
    .line 160
    const-class v2, Lcom/fsck/k9/contacts/ContactLetterExtractor;

    .line 161
    .line 162
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Lcom/fsck/k9/contacts/ContactLetterExtractor;

    .line 171
    .line 172
    const-class v3, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;

    .line 173
    .line 174
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;

    .line 183
    .line 184
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;-><init>(Lcom/fsck/k9/contacts/ContactLetterExtractor;Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;)V

    .line 185
    .line 186
    .line 187
    return-object v1

    .line 188
    :pswitch_3
    move-object/from16 v0, p1

    .line 189
    .line 190
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 191
    .line 192
    move-object/from16 v1, p2

    .line 193
    .line 194
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    new-instance v1, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;

    .line 203
    .line 204
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Landroid/content/Context;

    .line 213
    .line 214
    const-class v3, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 215
    .line 216
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 225
    .line 226
    const-class v4, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 227
    .line 228
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 237
    .line 238
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;-><init>(Landroid/content/Context;Lnet/thunderbird/core/ui/theme/manager/ThemeManager;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;)V

    .line 239
    .line 240
    .line 241
    return-object v1

    .line 242
    :pswitch_4
    move-object/from16 v0, p1

    .line 243
    .line 244
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 245
    .line 246
    move-object/from16 v1, p2

    .line 247
    .line 248
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/fsck/k9/contacts/ContactLetterExtractor;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 259
    .line 260
    .line 261
    return-object v0

    .line 262
    :pswitch_5
    move-object/from16 v0, p1

    .line 263
    .line 264
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 265
    .line 266
    move-object/from16 v1, p2

    .line 267
    .line 268
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    new-instance v1, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 277
    .line 278
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Landroid/content/Context;

    .line 287
    .line 288
    invoke-direct {v1, v0}, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    return-object v1

    .line 292
    :pswitch_6
    move-object/from16 v0, p1

    .line 293
    .line 294
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 295
    .line 296
    move-object/from16 v1, p2

    .line 297
    .line 298
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    new-instance v1, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;

    .line 307
    .line 308
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 317
    .line 318
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 327
    .line 328
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 337
    .line 338
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;)V

    .line 339
    .line 340
    .line 341
    return-object v1

    .line 342
    :pswitch_7
    move-object/from16 v0, p1

    .line 343
    .line 344
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 345
    .line 346
    move-object/from16 v1, p2

    .line 347
    .line 348
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    new-instance v1, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 357
    .line 358
    const-class v2, Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 359
    .line 360
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 369
    .line 370
    invoke-direct {v1, v0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;-><init>(Lcom/fsck/k9/backends/AndroidAlarmManager;)V

    .line 371
    .line 372
    .line 373
    return-object v1

    .line 374
    :pswitch_8
    move-object/from16 v0, p1

    .line 375
    .line 376
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 377
    .line 378
    move-object/from16 v1, p2

    .line 379
    .line 380
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    new-instance v1, Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 389
    .line 390
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    check-cast v2, Landroid/content/Context;

    .line 399
    .line 400
    const-class v3, Landroid/app/AlarmManager;

    .line 401
    .line 402
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Landroid/app/AlarmManager;

    .line 411
    .line 412
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/backends/AndroidAlarmManager;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 413
    .line 414
    .line 415
    return-object v1

    .line 416
    :pswitch_9
    move-object/from16 v0, p1

    .line 417
    .line 418
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 419
    .line 420
    move-object/from16 v1, p2

    .line 421
    .line 422
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    new-instance v11, Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 431
    .line 432
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    move-object v12, v1

    .line 441
    check-cast v12, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 442
    .line 443
    const-class v1, Lcom/fsck/k9/power/AndroidPowerManager;

    .line 444
    .line 445
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    move-object v13, v1

    .line 454
    check-cast v13, Lcom/fsck/k9/power/AndroidPowerManager;

    .line 455
    .line 456
    const-class v1, Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 457
    .line 458
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    move-object v14, v1

    .line 467
    check-cast v14, Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 468
    .line 469
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    move-object v15, v1

    .line 478
    check-cast v15, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 479
    .line 480
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    move-object/from16 v16, v1

    .line 489
    .line 490
    check-cast v16, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 491
    .line 492
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    move-object/from16 v17, v1

    .line 501
    .line 502
    check-cast v17, Landroid/content/Context;

    .line 503
    .line 504
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 505
    .line 506
    const-string v2, "ClientInfoAppName"

    .line 507
    .line 508
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {v0, v2, v10, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    move-object/from16 v18, v1

    .line 520
    .line 521
    check-cast v18, Ljava/lang/String;

    .line 522
    .line 523
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 524
    .line 525
    const-string v2, "ClientInfoAppVersion"

    .line 526
    .line 527
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v0, v2, v10, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    move-object/from16 v19, v0

    .line 539
    .line 540
    check-cast v19, Ljava/lang/String;

    .line 541
    .line 542
    invoke-direct/range {v11 .. v19}, Lcom/fsck/k9/backends/DefaultImapBackendFactory;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    return-object v11

    .line 546
    :pswitch_a
    move-object/from16 v0, p1

    .line 547
    .line 548
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 549
    .line 550
    move-object/from16 v1, p2

    .line 551
    .line 552
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 561
    .line 562
    const-string v2, "developmentBackends"

    .line 563
    .line 564
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    const-class v2, Ljava/util/Map;

    .line 568
    .line 569
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-virtual {v0, v2, v10, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    check-cast v1, Ljava/util/Map;

    .line 578
    .line 579
    new-instance v2, Lcom/fsck/k9/backend/BackendManager;

    .line 580
    .line 581
    const-class v3, Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 582
    .line 583
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    new-instance v4, Lkotlin/Pair;

    .line 592
    .line 593
    const-string v5, "imap"

    .line 594
    .line 595
    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    const-class v3, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;

    .line 599
    .line 600
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    new-instance v5, Lkotlin/Pair;

    .line 609
    .line 610
    const-string v6, "pop3"

    .line 611
    .line 612
    invoke-direct {v5, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    const/4 v3, 0x2

    .line 616
    new-array v3, v3, [Lkotlin/Pair;

    .line 617
    .line 618
    aput-object v4, v3, v7

    .line 619
    .line 620
    const/4 v4, 0x1

    .line 621
    aput-object v5, v3, v4

    .line 622
    .line 623
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-static {v3, v1}, Lkotlin/collections/MapsKt__MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 640
    .line 641
    invoke-direct {v2, v1, v0}, Lcom/fsck/k9/backend/BackendManager;-><init>(Ljava/util/LinkedHashMap;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V

    .line 642
    .line 643
    .line 644
    return-object v2

    .line 645
    :pswitch_b
    move-object/from16 v0, p1

    .line 646
    .line 647
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 648
    .line 649
    move-object/from16 v1, p2

    .line 650
    .line 651
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    new-instance v0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeaderParser;

    .line 660
    .line 661
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 662
    .line 663
    .line 664
    return-object v0

    .line 665
    :pswitch_c
    move-object/from16 v0, p1

    .line 666
    .line 667
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 668
    .line 669
    move-object/from16 v1, p2

    .line 670
    .line 671
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    new-instance v1, Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;

    .line 680
    .line 681
    const-class v2, Lcom/fsck/k9/resources/K9AutocryptStringProvider;

    .line 682
    .line 683
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    check-cast v2, Lcom/fsck/k9/resources/K9AutocryptStringProvider;

    .line 692
    .line 693
    const-class v3, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 694
    .line 695
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 704
    .line 705
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;-><init>(Lcom/fsck/k9/resources/K9AutocryptStringProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 706
    .line 707
    .line 708
    return-object v1

    .line 709
    :pswitch_d
    move-object/from16 v0, p1

    .line 710
    .line 711
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 712
    .line 713
    move-object/from16 v1, p2

    .line 714
    .line 715
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    invoke-virtual {v1, v7, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    check-cast v1, Ljava/lang/String;

    .line 732
    .line 733
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    check-cast v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 742
    .line 743
    const-class v3, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 744
    .line 745
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    check-cast v3, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 754
    .line 755
    const-class v4, Lcom/fsck/k9/EmailAddressValidator;

    .line 756
    .line 757
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    check-cast v0, Lcom/fsck/k9/EmailAddressValidator;

    .line 766
    .line 767
    new-instance v4, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 768
    .line 769
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/core/common/resources/StringsResourceManager;Lcom/fsck/k9/EmailAddressValidator;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    return-object v4

    .line 773
    :pswitch_e
    move-object/from16 v0, p1

    .line 774
    .line 775
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 776
    .line 777
    move-object/from16 v1, p2

    .line 778
    .line 779
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 780
    .line 781
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    new-instance v1, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;

    .line 788
    .line 789
    const-class v2, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;

    .line 790
    .line 791
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    check-cast v2, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;

    .line 800
    .line 801
    const-class v3, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 802
    .line 803
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    check-cast v3, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 812
    .line 813
    const-class v4, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 814
    .line 815
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    check-cast v0, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 824
    .line 825
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;-><init>(Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;)V

    .line 826
    .line 827
    .line 828
    return-object v1

    .line 829
    :pswitch_f
    move-object/from16 v0, p1

    .line 830
    .line 831
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 832
    .line 833
    move-object/from16 v1, p2

    .line 834
    .line 835
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    new-instance v1, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 844
    .line 845
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    check-cast v0, Landroid/content/Context;

    .line 854
    .line 855
    invoke-direct {v1, v0}, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;-><init>(Landroid/content/Context;)V

    .line 856
    .line 857
    .line 858
    return-object v1

    .line 859
    :pswitch_10
    move-object/from16 v0, p1

    .line 860
    .line 861
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 862
    .line 863
    move-object/from16 v1, p2

    .line 864
    .line 865
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 866
    .line 867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    .line 872
    .line 873
    const-class v2, Landroidx/work/WorkerParameters;

    .line 874
    .line 875
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    invoke-virtual {v1, v7, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    check-cast v1, Landroidx/work/WorkerParameters;

    .line 884
    .line 885
    new-instance v2, Lcom/fsck/k9/account/AccountRemoverWorker;

    .line 886
    .line 887
    const-class v3, Lcom/fsck/k9/account/AccountRemover;

    .line 888
    .line 889
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v3

    .line 897
    check-cast v3, Lcom/fsck/k9/account/AccountRemover;

    .line 898
    .line 899
    const-class v4, Lcom/fsck/k9/notification/BackgroundWorkNotificationController;

    .line 900
    .line 901
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    check-cast v4, Lcom/fsck/k9/notification/BackgroundWorkNotificationController;

    .line 910
    .line 911
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    check-cast v0, Landroid/content/Context;

    .line 920
    .line 921
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/fsck/k9/account/AccountRemoverWorker;-><init>(Lcom/fsck/k9/account/AccountRemover;Lcom/fsck/k9/notification/BackgroundWorkNotificationController;Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 922
    .line 923
    .line 924
    return-object v2

    .line 925
    :pswitch_11
    move-object/from16 v0, p1

    .line 926
    .line 927
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 928
    .line 929
    move-object/from16 v1, p2

    .line 930
    .line 931
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 932
    .line 933
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    .line 938
    .line 939
    new-instance v11, Lcom/fsck/k9/account/AccountRemover;

    .line 940
    .line 941
    const-class v1, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 942
    .line 943
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    move-object v12, v1

    .line 952
    check-cast v12, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 953
    .line 954
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    move-object v13, v1

    .line 963
    check-cast v13, Lcom/fsck/k9/controller/MessagingController;

    .line 964
    .line 965
    const-class v1, Lcom/fsck/k9/backend/BackendManager;

    .line 966
    .line 967
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    move-object v14, v1

    .line 976
    check-cast v14, Lcom/fsck/k9/backend/BackendManager;

    .line 977
    .line 978
    const-class v1, Lcom/fsck/k9/LocalKeyStoreManager;

    .line 979
    .line 980
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    move-object v15, v1

    .line 989
    check-cast v15, Lcom/fsck/k9/LocalKeyStoreManager;

    .line 990
    .line 991
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    move-object/from16 v16, v1

    .line 1000
    .line 1001
    check-cast v16, Lcom/fsck/k9/Preferences;

    .line 1002
    .line 1003
    const-class v1, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 1004
    .line 1005
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v1

    .line 1013
    move-object/from16 v17, v1

    .line 1014
    .line 1015
    check-cast v17, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 1016
    .line 1017
    const-class v1, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 1018
    .line 1019
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v1

    .line 1023
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    move-object/from16 v18, v0

    .line 1028
    .line 1029
    check-cast v18, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 1030
    .line 1031
    invoke-direct/range {v11 .. v18}, Lcom/fsck/k9/account/AccountRemover;-><init>(Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/LocalKeyStoreManager;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;)V

    .line 1032
    .line 1033
    .line 1034
    return-object v11

    .line 1035
    :pswitch_12
    move-object/from16 v0, p1

    .line 1036
    .line 1037
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1038
    .line 1039
    move-object/from16 v1, p2

    .line 1040
    .line 1041
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1042
    .line 1043
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    .line 1048
    .line 1049
    new-instance v0, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 1050
    .line 1051
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1052
    .line 1053
    .line 1054
    return-object v0

    .line 1055
    :pswitch_13
    move-object/from16 v0, p1

    .line 1056
    .line 1057
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1058
    .line 1059
    move-object/from16 v1, p2

    .line 1060
    .line 1061
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1062
    .line 1063
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    .line 1068
    .line 1069
    new-instance v1, Lcom/fsck/k9/account/AccountActivator;

    .line 1070
    .line 1071
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v3

    .line 1079
    check-cast v3, Landroid/content/Context;

    .line 1080
    .line 1081
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v4

    .line 1089
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1090
    .line 1091
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 1100
    .line 1101
    invoke-direct {v1, v3, v4, v0}, Lcom/fsck/k9/account/AccountActivator;-><init>(Landroid/content/Context;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/controller/MessagingController;)V

    .line 1102
    .line 1103
    .line 1104
    return-object v1

    .line 1105
    :pswitch_14
    move-object/from16 v0, p1

    .line 1106
    .line 1107
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1108
    .line 1109
    move-object/from16 v2, p2

    .line 1110
    .line 1111
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1112
    .line 1113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1117
    .line 1118
    .line 1119
    new-instance v2, Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 1120
    .line 1121
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1130
    .line 1131
    invoke-direct {v2, v0}, Lcom/fsck/k9/account/AccountServerSettingsUpdater;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V

    .line 1132
    .line 1133
    .line 1134
    return-object v2

    .line 1135
    :pswitch_15
    move-object/from16 v0, p1

    .line 1136
    .line 1137
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1138
    .line 1139
    move-object/from16 v2, p2

    .line 1140
    .line 1141
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1142
    .line 1143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1147
    .line 1148
    .line 1149
    new-instance v2, Lcom/fsck/k9/account/AccountStateLoader;

    .line 1150
    .line 1151
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1160
    .line 1161
    invoke-direct {v2, v0}, Lcom/fsck/k9/account/AccountStateLoader;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V

    .line 1162
    .line 1163
    .line 1164
    return-object v2

    .line 1165
    :pswitch_16
    move-object/from16 v0, p1

    .line 1166
    .line 1167
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1168
    .line 1169
    move-object/from16 v1, p2

    .line 1170
    .line 1171
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1172
    .line 1173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    .line 1178
    .line 1179
    new-instance v1, Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 1180
    .line 1181
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v2

    .line 1185
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 1190
    .line 1191
    invoke-direct {v1, v0}, Lcom/fsck/k9/account/AccountOwnerNameProvider;-><init>(Lcom/fsck/k9/Preferences;)V

    .line 1192
    .line 1193
    .line 1194
    return-object v1

    .line 1195
    :pswitch_17
    move-object/from16 v0, p1

    .line 1196
    .line 1197
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1198
    .line 1199
    move-object/from16 v1, p2

    .line 1200
    .line 1201
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1202
    .line 1203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1207
    .line 1208
    .line 1209
    new-instance v1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 1210
    .line 1211
    const-class v2, Lapp/k9mail/featureflag/K9FeatureFlagFactory;

    .line 1212
    .line 1213
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v2

    .line 1217
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v2

    .line 1221
    check-cast v2, Lapp/k9mail/featureflag/K9FeatureFlagFactory;

    .line 1222
    .line 1223
    const-class v3, Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;

    .line 1224
    .line 1225
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v3

    .line 1229
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    check-cast v0, Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;

    .line 1234
    .line 1235
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;-><init>(Lapp/k9mail/featureflag/K9FeatureFlagFactory;Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;)V

    .line 1236
    .line 1237
    .line 1238
    return-object v1

    .line 1239
    :pswitch_18
    move-object/from16 v0, p1

    .line 1240
    .line 1241
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1242
    .line 1243
    move-object/from16 v1, p2

    .line 1244
    .line 1245
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1246
    .line 1247
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1251
    .line 1252
    .line 1253
    new-instance v1, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1254
    .line 1255
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v2

    .line 1263
    check-cast v2, Landroid/content/Context;

    .line 1264
    .line 1265
    const-class v3, Lnet/thunderbird/core/logging/Logger;

    .line 1266
    .line 1267
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v3

    .line 1271
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 1276
    .line 1277
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/preferences/K9StoragePersister;-><init>(Landroid/content/Context;Lnet/thunderbird/core/logging/Logger;)V

    .line 1278
    .line 1279
    .line 1280
    return-object v1

    .line 1281
    :pswitch_19
    move-object/from16 v0, p1

    .line 1282
    .line 1283
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1284
    .line 1285
    move-object/from16 v1, p2

    .line 1286
    .line 1287
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1288
    .line 1289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    new-instance v0, Lcom/fsck/k9/crypto/openpgp/OpenPgpEncryptionExtractor;

    .line 1296
    .line 1297
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1298
    .line 1299
    .line 1300
    return-object v0

    .line 1301
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1302
    .line 1303
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1304
    .line 1305
    move-object/from16 v1, p2

    .line 1306
    .line 1307
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1308
    .line 1309
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1313
    .line 1314
    .line 1315
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1316
    .line 1317
    return-object v0

    .line 1318
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1319
    .line 1320
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1321
    .line 1322
    move-object/from16 v1, p2

    .line 1323
    .line 1324
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1325
    .line 1326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1330
    .line 1331
    .line 1332
    new-instance v1, Lcom/fsck/k9/DefaultMessagingListenerProvider;

    .line 1333
    .line 1334
    const-class v2, Lcom/fsck/k9/controller/MessagingController$8;

    .line 1335
    .line 1336
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v2

    .line 1340
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    invoke-direct {v1, v0}, Lcom/fsck/k9/DefaultMessagingListenerProvider;-><init>(Ljava/util/List;)V

    .line 1349
    .line 1350
    .line 1351
    return-object v1

    .line 1352
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1353
    .line 1354
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1355
    .line 1356
    move-object/from16 v1, p2

    .line 1357
    .line 1358
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1359
    .line 1360
    invoke-static {v0, v1, v9, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    check-cast v0, Landroid/content/Context;

    .line 1365
    .line 1366
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    return-object v0

    .line 1371
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
