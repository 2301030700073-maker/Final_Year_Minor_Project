.class public final synthetic Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 6
    .line 7
    const-class v2, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 8
    .line 9
    const-class v3, Landroidx/work/WorkerParameters;

    .line 10
    .line 11
    const-class v4, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 12
    .line 13
    const-class v5, Lcom/fsck/k9/backend/BackendManager;

    .line 14
    .line 15
    const-class v6, Landroidx/work/impl/WorkManagerImpl;

    .line 16
    .line 17
    const-string v7, "syncDebug"

    .line 18
    .line 19
    const-class v9, Lcom/fsck/k9/Preferences;

    .line 20
    .line 21
    const-class v10, Lcom/fsck/k9/controller/MessagingController;

    .line 22
    .line 23
    const-class v11, Lnet/thunderbird/core/logging/Logger;

    .line 24
    .line 25
    const-class v12, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 26
    .line 27
    const-class v13, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 28
    .line 29
    const-class v14, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 30
    .line 31
    const-class v15, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 32
    .line 33
    const-class v8, Landroid/content/Context;

    .line 34
    .line 35
    move/from16 v16, v0

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    packed-switch v16, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 44
    .line 45
    move-object/from16 v2, p2

    .line 46
    .line 47
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 56
    .line 57
    const-class v3, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 58
    .line 59
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 68
    .line 69
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 78
    .line 79
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v1, v5, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 88
    .line 89
    invoke-direct {v2, v3, v4, v0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :pswitch_0
    move-object/from16 v0, p1

    .line 94
    .line 95
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 96
    .line 97
    move-object/from16 v1, p2

    .line 98
    .line 99
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :pswitch_1
    move-object/from16 v0, p1

    .line 114
    .line 115
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 116
    .line 117
    move-object/from16 v1, p2

    .line 118
    .line 119
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewTextExtractor;

    .line 128
    .line 129
    new-instance v0, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :pswitch_2
    move-object/from16 v1, p1

    .line 136
    .line 137
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 138
    .line 139
    move-object/from16 v2, p2

    .line 140
    .line 141
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v2, Lcom/fsck/k9/mailstore/MessageRepository;

    .line 150
    .line 151
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 160
    .line 161
    invoke-direct {v2, v0}, Lcom/fsck/k9/mailstore/MessageRepository;-><init>(Lapp/k9mail/legacy/mailstore/MessageStoreManager;)V

    .line 162
    .line 163
    .line 164
    return-object v2

    .line 165
    :pswitch_3
    move-object/from16 v1, p1

    .line 166
    .line 167
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 168
    .line 169
    move-object/from16 v2, p2

    .line 170
    .line 171
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    new-instance v2, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 180
    .line 181
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 190
    .line 191
    const-class v4, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;

    .line 192
    .line 193
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;

    .line 202
    .line 203
    invoke-direct {v2, v3, v0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;)V

    .line 204
    .line 205
    .line 206
    return-object v2

    .line 207
    :pswitch_4
    move-object/from16 v1, p1

    .line 208
    .line 209
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 210
    .line 211
    move-object/from16 v2, p2

    .line 212
    .line 213
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    new-instance v2, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 222
    .line 223
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    check-cast v3, Lcom/fsck/k9/Preferences;

    .line 232
    .line 233
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 242
    .line 243
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {v1, v5, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 252
    .line 253
    invoke-direct {v2, v3, v4, v0}, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;-><init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V

    .line 254
    .line 255
    .line 256
    return-object v2

    .line 257
    :pswitch_5
    move-object/from16 v1, p1

    .line 258
    .line 259
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 260
    .line 261
    move-object/from16 v2, p2

    .line 262
    .line 263
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    const/4 v4, 0x0

    .line 276
    invoke-virtual {v2, v4, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    move-object/from16 v20, v2

    .line 281
    .line 282
    check-cast v20, Landroidx/work/WorkerParameters;

    .line 283
    .line 284
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    move-object/from16 v16, v2

    .line 293
    .line 294
    check-cast v16, Landroid/content/Context;

    .line 295
    .line 296
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    move-object/from16 v17, v2

    .line 305
    .line 306
    check-cast v17, Lnet/thunderbird/core/logging/Logger;

    .line 307
    .line 308
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 309
    .line 310
    invoke-direct {v2, v7}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-class v3, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 314
    .line 315
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v1, v3, v0, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    move-object/from16 v18, v2

    .line 324
    .line 325
    check-cast v18, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 326
    .line 327
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 328
    .line 329
    invoke-direct {v2, v7}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-class v3, Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 333
    .line 334
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v1, v3, v0, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    move-object/from16 v19, v2

    .line 343
    .line 344
    check-cast v19, Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 345
    .line 346
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    move-object/from16 v21, v0

    .line 355
    .line 356
    check-cast v21, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 357
    .line 358
    new-instance v15, Lcom/fsck/k9/job/SyncDebugWorker;

    .line 359
    .line 360
    invoke-direct/range {v15 .. v21}, Lcom/fsck/k9/job/SyncDebugWorker;-><init>(Landroid/content/Context;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/logging/file/FileLogSink;Lnet/thunderbird/core/logging/composite/CompositeLogSink;Landroidx/work/WorkerParameters;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 361
    .line 362
    .line 363
    return-object v15

    .line 364
    :pswitch_6
    move-object/from16 v1, p1

    .line 365
    .line 366
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 367
    .line 368
    move-object/from16 v2, p2

    .line 369
    .line 370
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    new-instance v2, Lcom/fsck/k9/job/FileLogLimitWorkManager;

    .line 379
    .line 380
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 389
    .line 390
    invoke-direct {v2, v0}, Lcom/fsck/k9/job/FileLogLimitWorkManager;-><init>(Landroidx/work/impl/WorkManagerImpl;)V

    .line 391
    .line 392
    .line 393
    return-object v2

    .line 394
    :pswitch_7
    move-object/from16 v1, p1

    .line 395
    .line 396
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 397
    .line 398
    move-object/from16 v2, p2

    .line 399
    .line 400
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    const/4 v4, 0x0

    .line 413
    invoke-virtual {v2, v4, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    move-object/from16 v20, v2

    .line 418
    .line 419
    check-cast v20, Landroidx/work/WorkerParameters;

    .line 420
    .line 421
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    move-object/from16 v16, v2

    .line 430
    .line 431
    check-cast v16, Lcom/fsck/k9/controller/MessagingController;

    .line 432
    .line 433
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    move-object/from16 v17, v2

    .line 442
    .line 443
    check-cast v17, Lcom/fsck/k9/Preferences;

    .line 444
    .line 445
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    move-object/from16 v19, v2

    .line 454
    .line 455
    check-cast v19, Landroid/content/Context;

    .line 456
    .line 457
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    move-object/from16 v18, v0

    .line 466
    .line 467
    check-cast v18, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 468
    .line 469
    new-instance v15, Lcom/fsck/k9/job/MailSyncWorker;

    .line 470
    .line 471
    invoke-direct/range {v15 .. v20}, Lcom/fsck/k9/job/MailSyncWorker;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Preferences;Lnet/thunderbird/core/preference/GeneralSettingsManager;Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 472
    .line 473
    .line 474
    return-object v15

    .line 475
    :pswitch_8
    move-object/from16 v1, p1

    .line 476
    .line 477
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 478
    .line 479
    move-object/from16 v2, p2

    .line 480
    .line 481
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    new-instance v2, Lcom/fsck/k9/job/MailSyncWorkerManager;

    .line 490
    .line 491
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    check-cast v3, Landroidx/work/impl/WorkManagerImpl;

    .line 500
    .line 501
    const-class v4, Lkotlin/time/Clock;

    .line 502
    .line 503
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    check-cast v4, Lkotlin/time/Clock;

    .line 512
    .line 513
    new-instance v5, Lorg/koin/core/qualifier/StringQualifier;

    .line 514
    .line 515
    invoke-direct {v5, v7}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 519
    .line 520
    .line 521
    move-result-object v6

    .line 522
    invoke-virtual {v1, v6, v0, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    check-cast v5, Lnet/thunderbird/core/logging/Logger;

    .line 527
    .line 528
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    invoke-virtual {v1, v6, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 537
    .line 538
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/fsck/k9/job/MailSyncWorkerManager;-><init>(Landroidx/work/impl/WorkManagerImpl;Lkotlin/time/Clock;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 539
    .line 540
    .line 541
    return-object v2

    .line 542
    :pswitch_9
    move-object/from16 v1, p1

    .line 543
    .line 544
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 545
    .line 546
    move-object/from16 v2, p2

    .line 547
    .line 548
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 549
    .line 550
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    new-instance v2, Lcom/fsck/k9/job/K9JobManager;

    .line 557
    .line 558
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    check-cast v3, Landroidx/work/impl/WorkManagerImpl;

    .line 567
    .line 568
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 577
    .line 578
    const-class v5, Lcom/fsck/k9/job/MailSyncWorkerManager;

    .line 579
    .line 580
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    invoke-virtual {v1, v5, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    check-cast v5, Lcom/fsck/k9/job/MailSyncWorkerManager;

    .line 589
    .line 590
    const-class v6, Lcom/fsck/k9/job/FileLogLimitWorkManager;

    .line 591
    .line 592
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-virtual {v1, v6, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    check-cast v0, Lcom/fsck/k9/job/FileLogLimitWorkManager;

    .line 601
    .line 602
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/fsck/k9/job/K9JobManager;-><init>(Landroidx/work/impl/WorkManagerImpl;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/job/MailSyncWorkerManager;Lcom/fsck/k9/job/FileLogLimitWorkManager;)V

    .line 603
    .line 604
    .line 605
    return-object v2

    .line 606
    :pswitch_a
    move-object/from16 v1, p1

    .line 607
    .line 608
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 609
    .line 610
    move-object/from16 v2, p2

    .line 611
    .line 612
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 613
    .line 614
    invoke-static {v1, v2, v8, v0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    check-cast v0, Landroid/content/Context;

    .line 619
    .line 620
    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    return-object v0

    .line 628
    :pswitch_b
    move-object/from16 v0, p1

    .line 629
    .line 630
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 631
    .line 632
    move-object/from16 v1, p2

    .line 633
    .line 634
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    new-instance v0, Lcom/fsck/k9/job/K9WorkerFactory;

    .line 643
    .line 644
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 645
    .line 646
    .line 647
    return-object v0

    .line 648
    :pswitch_c
    move-object/from16 v1, p1

    .line 649
    .line 650
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 651
    .line 652
    move-object/from16 v3, p2

    .line 653
    .line 654
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    new-instance v3, Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 663
    .line 664
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    check-cast v0, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 673
    .line 674
    invoke-direct {v3, v0}, Lcom/fsck/k9/helper/RealContactNameProvider;-><init>(Lapp/k9mail/core/android/common/contact/ContactRepository;)V

    .line 675
    .line 676
    .line 677
    return-object v3

    .line 678
    :pswitch_d
    move-object/from16 v1, p1

    .line 679
    .line 680
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 681
    .line 682
    move-object/from16 v2, p2

    .line 683
    .line 684
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 685
    .line 686
    invoke-static {v1, v2, v8, v0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Landroid/content/Context;

    .line 691
    .line 692
    const-string v1, "alarm"

    .line 693
    .line 694
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    check-cast v0, Landroid/app/AlarmManager;

    .line 702
    .line 703
    return-object v0

    .line 704
    :pswitch_e
    move-object/from16 v1, p1

    .line 705
    .line 706
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 707
    .line 708
    move-object/from16 v2, p2

    .line 709
    .line 710
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 711
    .line 712
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    new-instance v2, Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;

    .line 719
    .line 720
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    check-cast v0, Landroid/content/Context;

    .line 729
    .line 730
    invoke-direct {v2, v0}, Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;-><init>(Landroid/content/Context;)V

    .line 731
    .line 732
    .line 733
    return-object v2

    .line 734
    :pswitch_f
    move-object/from16 v1, p1

    .line 735
    .line 736
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 737
    .line 738
    move-object/from16 v3, p2

    .line 739
    .line 740
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 741
    .line 742
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    new-instance v3, Lcom/fsck/k9/helper/MessageHelper;

    .line 749
    .line 750
    const-class v4, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 751
    .line 752
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    check-cast v4, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 761
    .line 762
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    check-cast v2, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 771
    .line 772
    const-class v5, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 773
    .line 774
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    invoke-virtual {v1, v5, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 783
    .line 784
    invoke-direct {v3, v4, v2, v0}, Lcom/fsck/k9/helper/MessageHelper;-><init>(Lcom/fsck/k9/resources/K9CoreResourceProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;)V

    .line 785
    .line 786
    .line 787
    return-object v3

    .line 788
    :pswitch_10
    move-object/from16 v1, p1

    .line 789
    .line 790
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 791
    .line 792
    move-object/from16 v2, p2

    .line 793
    .line 794
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 795
    .line 796
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    new-instance v2, Lcom/fsck/k9/helper/ClipboardManager;

    .line 803
    .line 804
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    check-cast v0, Landroid/content/Context;

    .line 813
    .line 814
    invoke-direct {v2, v0}, Lcom/fsck/k9/helper/ClipboardManager;-><init>(Landroid/content/Context;)V

    .line 815
    .line 816
    .line 817
    return-object v2

    .line 818
    :pswitch_11
    move-object/from16 v1, p1

    .line 819
    .line 820
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 821
    .line 822
    move-object/from16 v2, p2

    .line 823
    .line 824
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 825
    .line 826
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    const-class v3, Landroidx/lifecycle/LifecycleOwner;

    .line 833
    .line 834
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    const/4 v4, 0x0

    .line 839
    invoke-virtual {v2, v4, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 844
    .line 845
    new-instance v3, Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 846
    .line 847
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    check-cast v0, Landroid/content/Context;

    .line 856
    .line 857
    invoke-direct {v3, v0, v2}, Lorg/openintents/openpgp/OpenPgpApiManager;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V

    .line 858
    .line 859
    .line 860
    return-object v3

    .line 861
    :pswitch_12
    move-object/from16 v1, p1

    .line 862
    .line 863
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 864
    .line 865
    move-object/from16 v2, p2

    .line 866
    .line 867
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 868
    .line 869
    invoke-static {v1, v2, v8, v0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    check-cast v2, Landroid/content/Context;

    .line 874
    .line 875
    const-class v3, Landroid/app/AlarmManager;

    .line 876
    .line 877
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    check-cast v0, Landroid/app/AlarmManager;

    .line 886
    .line 887
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 888
    .line 889
    const/16 v3, 0x1f

    .line 890
    .line 891
    if-lt v1, v3, :cond_0

    .line 892
    .line 893
    new-instance v1, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;

    .line 894
    .line 895
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 896
    .line 897
    .line 898
    goto :goto_0

    .line 899
    :cond_0
    new-instance v1, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi21;

    .line 900
    .line 901
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 902
    .line 903
    .line 904
    :goto_0
    return-object v1

    .line 905
    :pswitch_13
    move-object/from16 v2, p1

    .line 906
    .line 907
    check-cast v2, Lorg/koin/core/scope/Scope;

    .line 908
    .line 909
    move-object/from16 v3, p2

    .line 910
    .line 911
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 912
    .line 913
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    new-instance v16, Lcom/fsck/k9/controller/push/PushController;

    .line 920
    .line 921
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v3

    .line 929
    move-object/from16 v17, v3

    .line 930
    .line 931
    check-cast v17, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 932
    .line 933
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    move-object/from16 v18, v3

    .line 942
    .line 943
    check-cast v18, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 944
    .line 945
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v3

    .line 953
    move-object/from16 v19, v3

    .line 954
    .line 955
    check-cast v19, Lcom/fsck/k9/backend/BackendManager;

    .line 956
    .line 957
    const-class v3, Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 958
    .line 959
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 960
    .line 961
    .line 962
    move-result-object v3

    .line 963
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v3

    .line 967
    move-object/from16 v20, v3

    .line 968
    .line 969
    check-cast v20, Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 970
    .line 971
    const-class v3, Lcom/fsck/k9/controller/push/BootCompleteManager;

    .line 972
    .line 973
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    move-object/from16 v21, v3

    .line 982
    .line 983
    check-cast v21, Lcom/fsck/k9/controller/push/BootCompleteManager;

    .line 984
    .line 985
    const-class v3, Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 986
    .line 987
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    move-object/from16 v22, v3

    .line 996
    .line 997
    check-cast v22, Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 998
    .line 999
    const-class v3, Lcom/fsck/k9/controller/push/AlarmPermissionManager;

    .line 1000
    .line 1001
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v3

    .line 1005
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    move-object/from16 v23, v3

    .line 1010
    .line 1011
    check-cast v23, Lcom/fsck/k9/controller/push/AlarmPermissionManager;

    .line 1012
    .line 1013
    const-class v3, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 1014
    .line 1015
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v3

    .line 1023
    move-object/from16 v24, v3

    .line 1024
    .line 1025
    check-cast v24, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 1026
    .line 1027
    const-class v3, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 1028
    .line 1029
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    move-object/from16 v25, v3

    .line 1038
    .line 1039
    check-cast v25, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 1040
    .line 1041
    const-class v3, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;

    .line 1042
    .line 1043
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v3

    .line 1047
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    move-object/from16 v26, v3

    .line 1052
    .line 1053
    check-cast v26, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;

    .line 1054
    .line 1055
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    invoke-virtual {v2, v1, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    move-object/from16 v27, v0

    .line 1064
    .line 1065
    check-cast v27, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 1066
    .line 1067
    invoke-direct/range {v16 .. v27}, Lcom/fsck/k9/controller/push/PushController;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/controller/push/PushServiceManager;Lcom/fsck/k9/controller/push/BootCompleteManager;Lcom/fsck/k9/controller/push/AutoSyncManager;Lcom/fsck/k9/controller/push/AlarmPermissionManager;Lcom/fsck/k9/notification/PushNotificationManager;Lnet/thunderbird/core/android/network/ConnectivityManagerBase;Lcom/fsck/k9/controller/push/AccountPushControllerFactory;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;)V

    .line 1068
    .line 1069
    .line 1070
    return-object v16

    .line 1071
    :pswitch_14
    move-object/from16 v2, p1

    .line 1072
    .line 1073
    check-cast v2, Lorg/koin/core/scope/Scope;

    .line 1074
    .line 1075
    move-object/from16 v3, p2

    .line 1076
    .line 1077
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 1078
    .line 1079
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1083
    .line 1084
    .line 1085
    new-instance v16, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;

    .line 1086
    .line 1087
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v3

    .line 1091
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v3

    .line 1095
    move-object/from16 v17, v3

    .line 1096
    .line 1097
    check-cast v17, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1098
    .line 1099
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v3

    .line 1103
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    move-object/from16 v18, v3

    .line 1108
    .line 1109
    check-cast v18, Lcom/fsck/k9/backend/BackendManager;

    .line 1110
    .line 1111
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    invoke-virtual {v2, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v3

    .line 1119
    move-object/from16 v19, v3

    .line 1120
    .line 1121
    check-cast v19, Lcom/fsck/k9/controller/MessagingController;

    .line 1122
    .line 1123
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-virtual {v2, v1, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    move-object/from16 v20, v1

    .line 1132
    .line 1133
    check-cast v20, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 1134
    .line 1135
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    invoke-virtual {v2, v1, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    move-object/from16 v21, v0

    .line 1144
    .line 1145
    check-cast v21, Lnet/thunderbird/core/logging/Logger;

    .line 1146
    .line 1147
    invoke-direct/range {v16 .. v21}, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/controller/MessagingController;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/core/logging/Logger;)V

    .line 1148
    .line 1149
    .line 1150
    return-object v16

    .line 1151
    :pswitch_15
    move-object/from16 v1, p1

    .line 1152
    .line 1153
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1154
    .line 1155
    move-object/from16 v2, p2

    .line 1156
    .line 1157
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1158
    .line 1159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1163
    .line 1164
    .line 1165
    new-instance v2, Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 1166
    .line 1167
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v3

    .line 1171
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v3

    .line 1175
    check-cast v3, Landroid/content/Context;

    .line 1176
    .line 1177
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v4

    .line 1181
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1186
    .line 1187
    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/controller/push/AutoSyncManager;-><init>(Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 1188
    .line 1189
    .line 1190
    return-object v2

    .line 1191
    :pswitch_16
    move-object/from16 v1, p1

    .line 1192
    .line 1193
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1194
    .line 1195
    move-object/from16 v2, p2

    .line 1196
    .line 1197
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1198
    .line 1199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1203
    .line 1204
    .line 1205
    new-instance v2, Lcom/fsck/k9/controller/push/BootCompleteManager;

    .line 1206
    .line 1207
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v3

    .line 1211
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    check-cast v0, Landroid/content/Context;

    .line 1216
    .line 1217
    invoke-direct {v2, v0}, Lcom/fsck/k9/controller/push/BootCompleteManager;-><init>(Landroid/content/Context;)V

    .line 1218
    .line 1219
    .line 1220
    return-object v2

    .line 1221
    :pswitch_17
    move-object/from16 v1, p1

    .line 1222
    .line 1223
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1224
    .line 1225
    move-object/from16 v2, p2

    .line 1226
    .line 1227
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1228
    .line 1229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1233
    .line 1234
    .line 1235
    new-instance v2, Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 1236
    .line 1237
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v3

    .line 1241
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    check-cast v0, Landroid/content/Context;

    .line 1246
    .line 1247
    invoke-direct {v2, v0}, Lcom/fsck/k9/controller/push/PushServiceManager;-><init>(Landroid/content/Context;)V

    .line 1248
    .line 1249
    .line 1250
    return-object v2

    .line 1251
    :pswitch_18
    move-object/from16 v1, p1

    .line 1252
    .line 1253
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1254
    .line 1255
    move-object/from16 v2, p2

    .line 1256
    .line 1257
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1258
    .line 1259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1263
    .line 1264
    .line 1265
    new-instance v2, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 1266
    .line 1267
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v3

    .line 1271
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v3

    .line 1275
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1276
    .line 1277
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v4

    .line 1281
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v4

    .line 1285
    check-cast v4, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 1286
    .line 1287
    const-class v5, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 1288
    .line 1289
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v5

    .line 1293
    invoke-virtual {v1, v5, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v5

    .line 1297
    check-cast v5, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 1298
    .line 1299
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v6

    .line 1303
    invoke-virtual {v1, v6, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    check-cast v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 1308
    .line 1309
    invoke-direct {v2, v4, v5, v0, v3}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;-><init>(Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V

    .line 1310
    .line 1311
    .line 1312
    return-object v2

    .line 1313
    :pswitch_19
    move-object/from16 v1, p1

    .line 1314
    .line 1315
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1316
    .line 1317
    move-object/from16 v2, p2

    .line 1318
    .line 1319
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1320
    .line 1321
    invoke-static {v1, v2, v10, v0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 1326
    .line 1327
    return-object v0

    .line 1328
    :pswitch_1a
    move-object/from16 v1, p1

    .line 1329
    .line 1330
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1331
    .line 1332
    move-object/from16 v2, p2

    .line 1333
    .line 1334
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1335
    .line 1336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    new-instance v2, Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 1343
    .line 1344
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v3

    .line 1348
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    check-cast v3, Lcom/fsck/k9/controller/MessagingController;

    .line 1353
    .line 1354
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v4

    .line 1358
    invoke-virtual {v1, v4, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1363
    .line 1364
    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V

    .line 1365
    .line 1366
    .line 1367
    return-object v2

    .line 1368
    :pswitch_1b
    move-object/from16 v1, p1

    .line 1369
    .line 1370
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1371
    .line 1372
    move-object/from16 v2, p2

    .line 1373
    .line 1374
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1375
    .line 1376
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1380
    .line 1381
    .line 1382
    new-instance v14, Lcom/fsck/k9/controller/MessagingController;

    .line 1383
    .line 1384
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v2

    .line 1392
    move-object v15, v2

    .line 1393
    check-cast v15, Landroid/content/Context;

    .line 1394
    .line 1395
    const-class v2, Lcom/fsck/k9/notification/NotificationController;

    .line 1396
    .line 1397
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v2

    .line 1401
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    move-object/from16 v16, v2

    .line 1406
    .line 1407
    check-cast v16, Lcom/fsck/k9/notification/NotificationController;

    .line 1408
    .line 1409
    const-class v2, Lcom/fsck/k9/notification/K9NotificationStrategy;

    .line 1410
    .line 1411
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v2

    .line 1419
    move-object/from16 v17, v2

    .line 1420
    .line 1421
    check-cast v17, Lcom/fsck/k9/notification/K9NotificationStrategy;

    .line 1422
    .line 1423
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v2

    .line 1427
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    move-object/from16 v18, v2

    .line 1432
    .line 1433
    check-cast v18, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 1434
    .line 1435
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v2

    .line 1439
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v2

    .line 1443
    move-object/from16 v19, v2

    .line 1444
    .line 1445
    check-cast v19, Lcom/fsck/k9/backend/BackendManager;

    .line 1446
    .line 1447
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    move-object/from16 v20, v2

    .line 1456
    .line 1457
    check-cast v20, Lcom/fsck/k9/Preferences;

    .line 1458
    .line 1459
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v2

    .line 1463
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v2

    .line 1467
    move-object/from16 v21, v2

    .line 1468
    .line 1469
    check-cast v21, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 1470
    .line 1471
    const-class v2, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 1472
    .line 1473
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v2

    .line 1477
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    move-object/from16 v22, v2

    .line 1482
    .line 1483
    check-cast v22, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 1484
    .line 1485
    const-class v2, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 1486
    .line 1487
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v2

    .line 1491
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v2

    .line 1495
    check-cast v2, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 1496
    .line 1497
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;

    .line 1498
    .line 1499
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v2

    .line 1503
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v2

    .line 1507
    move-object/from16 v23, v2

    .line 1508
    .line 1509
    check-cast v23, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;

    .line 1510
    .line 1511
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 1512
    .line 1513
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v2

    .line 1517
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v2

    .line 1521
    move-object/from16 v24, v2

    .line 1522
    .line 1523
    check-cast v24, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 1524
    .line 1525
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 1526
    .line 1527
    const-string v3, "controllerExtensions"

    .line 1528
    .line 1529
    invoke-direct {v2, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    const-class v3, Ljava/util/List;

    .line 1533
    .line 1534
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v3

    .line 1538
    invoke-virtual {v1, v3, v0, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v2

    .line 1542
    move-object/from16 v25, v2

    .line 1543
    .line 1544
    check-cast v25, Ljava/util/List;

    .line 1545
    .line 1546
    const-class v2, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 1547
    .line 1548
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v2

    .line 1552
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v2

    .line 1556
    move-object/from16 v26, v2

    .line 1557
    .line 1558
    check-cast v26, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 1559
    .line 1560
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 1561
    .line 1562
    invoke-direct {v2, v7}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1563
    .line 1564
    .line 1565
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v3

    .line 1569
    invoke-virtual {v1, v3, v0, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v2

    .line 1573
    move-object/from16 v27, v2

    .line 1574
    .line 1575
    check-cast v27, Lnet/thunderbird/core/logging/Logger;

    .line 1576
    .line 1577
    const-class v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;

    .line 1578
    .line 1579
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v2

    .line 1583
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v2

    .line 1587
    move-object/from16 v28, v2

    .line 1588
    .line 1589
    check-cast v28, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;

    .line 1590
    .line 1591
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v2

    .line 1595
    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v0

    .line 1599
    move-object/from16 v29, v0

    .line 1600
    .line 1601
    check-cast v29, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 1602
    .line 1603
    invoke-direct/range {v14 .. v29}, Lcom/fsck/k9/controller/MessagingController;-><init>(Landroid/content/Context;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/K9NotificationStrategy;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/Preferences;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/mailstore/SaveMessageDataCreator;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;Ljava/util/List;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V

    .line 1604
    .line 1605
    .line 1606
    return-object v14

    .line 1607
    :pswitch_1c
    move-object/from16 v1, p1

    .line 1608
    .line 1609
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 1610
    .line 1611
    move-object/from16 v2, p2

    .line 1612
    .line 1613
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1614
    .line 1615
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1619
    .line 1620
    .line 1621
    new-instance v2, Lcom/fsck/k9/job/WorkManagerConfigurationProvider;

    .line 1622
    .line 1623
    const-class v3, Landroidx/work/WorkerFactory;

    .line 1624
    .line 1625
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v3

    .line 1629
    invoke-virtual {v1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v0

    .line 1633
    check-cast v0, Landroidx/work/WorkerFactory;

    .line 1634
    .line 1635
    invoke-direct {v2, v0}, Lcom/fsck/k9/job/WorkManagerConfigurationProvider;-><init>(Landroidx/work/WorkerFactory;)V

    .line 1636
    .line 1637
    .line 1638
    return-object v2

    .line 1639
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
