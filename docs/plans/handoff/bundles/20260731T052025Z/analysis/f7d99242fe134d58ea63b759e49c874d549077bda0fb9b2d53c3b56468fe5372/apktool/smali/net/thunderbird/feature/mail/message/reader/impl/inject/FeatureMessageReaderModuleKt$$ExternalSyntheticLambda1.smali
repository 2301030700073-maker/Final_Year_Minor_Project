.class public final synthetic Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-string v1, "Required value was null."

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x3

    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    const/16 v5, 0x27

    .line 12
    .line 13
    const-string v6, "No value found for type \'"

    .line 14
    .line 15
    const-class v7, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x1

    .line 19
    const-class v10, Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object/from16 v0, p1

    .line 26
    .line 27
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 28
    .line 29
    move-object/from16 v1, p2

    .line 30
    .line 31
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;

    .line 40
    .line 41
    const-class v2, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 42
    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;-><init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :pswitch_0
    move-object/from16 v0, p1

    .line 58
    .line 59
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 60
    .line 61
    move-object/from16 v1, p2

    .line 62
    .line 63
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;

    .line 72
    .line 73
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 82
    .line 83
    invoke-direct {v1, v0, v3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;I)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_1
    move-object/from16 v0, p1

    .line 88
    .line 89
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 90
    .line 91
    move-object/from16 v1, p2

    .line 92
    .line 93
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;

    .line 102
    .line 103
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0, v2, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 112
    .line 113
    invoke-direct {v1, v0, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;I)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :pswitch_2
    move-object/from16 v0, p1

    .line 118
    .line 119
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 120
    .line 121
    move-object/from16 v1, p2

    .line 122
    .line 123
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    .line 140
    .line 141
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;

    .line 142
    .line 143
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;

    .line 144
    .line 145
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v0, v4, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 154
    .line 155
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;->legacyMessageListBridge:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 156
    .line 157
    invoke-direct {v2, v0, v1, v3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    return-object v2

    .line 161
    :cond_0
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 162
    .line 163
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :pswitch_3
    move-object/from16 v0, p1

    .line 191
    .line 192
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 193
    .line 194
    move-object/from16 v1, p2

    .line 195
    .line 196
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;

    .line 205
    .line 206
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v2, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 215
    .line 216
    invoke-direct {v1, v0, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;I)V

    .line 217
    .line 218
    .line 219
    return-object v1

    .line 220
    :pswitch_4
    move-object/from16 v0, p1

    .line 221
    .line 222
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 223
    .line 224
    move-object/from16 v1, p2

    .line 225
    .line 226
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-eqz v1, :cond_1

    .line 243
    .line 244
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;

    .line 245
    .line 246
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;

    .line 247
    .line 248
    iget-object v3, v1, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;->accountIds:Ljava/util/Set;

    .line 249
    .line 250
    iget-object v4, v1, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;->folderId:Ljava/lang/Long;

    .line 251
    .line 252
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    move-object v5, v1

    .line 261
    check-cast v5, Lnet/thunderbird/core/logging/Logger;

    .line 262
    .line 263
    const-class v1, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 264
    .line 265
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v0, v1, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    move-object v6, v1

    .line 274
    check-cast v6, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 275
    .line 276
    const-class v1, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 277
    .line 278
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v0, v1, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    move-object v7, v0

    .line 287
    check-cast v7, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 288
    .line 289
    invoke-direct/range {v2 .. v7}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;-><init>(Ljava/util/Set;Ljava/lang/Long;Lnet/thunderbird/core/logging/Logger;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V

    .line 290
    .line 291
    .line 292
    return-object v2

    .line 293
    :cond_1
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 294
    .line 295
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :pswitch_5
    move-object/from16 v0, p1

    .line 323
    .line 324
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 325
    .line 326
    move-object/from16 v1, p2

    .line 327
    .line 328
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;

    .line 337
    .line 338
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v0, v2, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 347
    .line 348
    const-class v3, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 349
    .line 350
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v0, v3, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 359
    .line 360
    invoke-direct {v1, v2, v0, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    return-object v1

    .line 364
    :pswitch_6
    move-object/from16 v0, p1

    .line 365
    .line 366
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 367
    .line 368
    move-object/from16 v1, p2

    .line 369
    .line 370
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    if-eqz v1, :cond_2

    .line 387
    .line 388
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;

    .line 389
    .line 390
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;

    .line 391
    .line 392
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel$Args;->accountIds:Ljava/util/Set;

    .line 393
    .line 394
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v0, v3, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Lnet/thunderbird/core/logging/Logger;

    .line 403
    .line 404
    const-class v4, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 405
    .line 406
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v0, v4, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 415
    .line 416
    invoke-direct {v2, v1, v3, v0}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;-><init>(Ljava/util/Set;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;)V

    .line 417
    .line 418
    .line 419
    return-object v2

    .line 420
    :cond_2
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 421
    .line 422
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :pswitch_7
    move-object/from16 v0, p1

    .line 450
    .line 451
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 452
    .line 453
    move-object/from16 v1, p2

    .line 454
    .line 455
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;

    .line 464
    .line 465
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-virtual {v0, v3, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    check-cast v3, Lnet/thunderbird/core/logging/Logger;

    .line 474
    .line 475
    const-class v4, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 476
    .line 477
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v0, v4, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 486
    .line 487
    invoke-direct {v1, v3, v0, v2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V

    .line 488
    .line 489
    .line 490
    return-object v1

    .line 491
    :pswitch_8
    move-object/from16 v0, p1

    .line 492
    .line 493
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 494
    .line 495
    move-object/from16 v1, p2

    .line 496
    .line 497
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;

    .line 506
    .line 507
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v0, v2, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 516
    .line 517
    const-class v3, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 518
    .line 519
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {v0, v3, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 528
    .line 529
    invoke-direct {v1, v2, v0, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V

    .line 530
    .line 531
    .line 532
    return-object v1

    .line 533
    :pswitch_9
    move-object/from16 v0, p1

    .line 534
    .line 535
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 536
    .line 537
    move-object/from16 v1, p2

    .line 538
    .line 539
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 540
    .line 541
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;

    .line 548
    .line 549
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    invoke-virtual {v0, v3, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 558
    .line 559
    invoke-direct {v1, v0, v2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ui/OpenMessageSideEffect$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;I)V

    .line 560
    .line 561
    .line 562
    return-object v1

    .line 563
    :pswitch_a
    move-object/from16 v0, p1

    .line 564
    .line 565
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 566
    .line 567
    move-object/from16 v2, p2

    .line 568
    .line 569
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$AllConfigsReady;

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 578
    .line 579
    iget-object v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 580
    .line 581
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 582
    .line 583
    if-eqz v0, :cond_3

    .line 584
    .line 585
    sget-object v1, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 586
    .line 587
    const/4 v4, 0x0

    .line 588
    invoke-direct {v2, v4, v3, v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;-><init>(FLnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 589
    .line 590
    .line 591
    move-object v11, v2

    .line 592
    goto :goto_0

    .line 593
    :cond_3
    invoke-static {v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    :goto_0
    return-object v11

    .line 597
    :pswitch_b
    move-object/from16 v0, p1

    .line 598
    .line 599
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 600
    .line 601
    move-object/from16 v1, p2

    .line 602
    .line 603
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$AllConfigsReady;

    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->isReady()Z

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    return-object v0

    .line 620
    :pswitch_c
    move-object/from16 v0, p1

    .line 621
    .line 622
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 623
    .line 624
    move-object/from16 v1, p2

    .line 625
    .line 626
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SortCriteriaLoaded;

    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    new-instance v2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 635
    .line 636
    const/16 v3, 0xd

    .line 637
    .line 638
    invoke-direct {v2, v3, v1}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    invoke-static {v0, v2}, Lkotlinx/io/Sink$-CC;->$default$withMetadata(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    return-object v0

    .line 646
    :pswitch_d
    move-object/from16 v0, p1

    .line 647
    .line 648
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 649
    .line 650
    move-object/from16 v1, p2

    .line 651
    .line 652
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;

    .line 653
    .line 654
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 661
    .line 662
    const/4 v2, 0x5

    .line 663
    invoke-static {v0, v11, v1, v11, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    return-object v0

    .line 668
    :pswitch_e
    move-object/from16 v0, p1

    .line 669
    .line 670
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SearchingMessages;

    .line 671
    .line 672
    if-nez p2, :cond_4

    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    throw v11

    .line 678
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 679
    .line 680
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 681
    .line 682
    .line 683
    throw v0

    .line 684
    :pswitch_f
    move-object/from16 v0, p1

    .line 685
    .line 686
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SearchingMessages;

    .line 687
    .line 688
    if-nez p2, :cond_5

    .line 689
    .line 690
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    throw v11

    .line 694
    :cond_5
    new-instance v0, Ljava/lang/ClassCastException;

    .line 695
    .line 696
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 697
    .line 698
    .line 699
    throw v0

    .line 700
    :pswitch_10
    move-object/from16 v0, p1

    .line 701
    .line 702
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SearchingMessages;

    .line 703
    .line 704
    if-nez p2, :cond_6

    .line 705
    .line 706
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    .line 708
    .line 709
    throw v11

    .line 710
    :cond_6
    new-instance v0, Ljava/lang/ClassCastException;

    .line 711
    .line 712
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 713
    .line 714
    .line 715
    throw v0

    .line 716
    :pswitch_11
    move-object/from16 v0, p1

    .line 717
    .line 718
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 719
    .line 720
    move-object/from16 v1, p2

    .line 721
    .line 722
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$MessagesLoaded;

    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    .line 729
    .line 730
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 731
    .line 732
    iget-object v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 733
    .line 734
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 735
    .line 736
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$MessagesLoaded;->messages:Ljava/util/List;

    .line 737
    .line 738
    invoke-static {v1}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-direct {v2, v3, v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 743
    .line 744
    .line 745
    return-object v2

    .line 746
    :pswitch_12
    move-object/from16 v0, p1

    .line 747
    .line 748
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 749
    .line 750
    move-object/from16 v1, p2

    .line 751
    .line 752
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$MessagesLoaded;

    .line 753
    .line 754
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    iget v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->progress:F

    .line 761
    .line 762
    const/high16 v1, 0x3f800000    # 1.0f

    .line 763
    .line 764
    cmpg-float v0, v0, v1

    .line 765
    .line 766
    if-nez v0, :cond_7

    .line 767
    .line 768
    move v8, v9

    .line 769
    :cond_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    return-object v0

    .line 774
    :pswitch_13
    move-object/from16 v0, p1

    .line 775
    .line 776
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 777
    .line 778
    move-object/from16 v1, p2

    .line 779
    .line 780
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;

    .line 789
    .line 790
    invoke-direct {v2, v1, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->mapMessages(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;

    .line 798
    .line 799
    invoke-direct {v2, v1, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;I)V

    .line 800
    .line 801
    .line 802
    invoke-static {v0, v2}, Lkotlinx/io/Sink$-CC;->$default$withMetadata(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    return-object v0

    .line 807
    :pswitch_14
    move-object/from16 v0, p1

    .line 808
    .line 809
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 810
    .line 811
    move-object/from16 v1, p2

    .line 812
    .line 813
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;

    .line 814
    .line 815
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;

    .line 822
    .line 823
    invoke-direct {v2, v1, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;I)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->mapMessages(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;

    .line 831
    .line 832
    invoke-direct {v2, v1, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;I)V

    .line 833
    .line 834
    .line 835
    invoke-static {v0, v2}, Lkotlinx/io/Sink$-CC;->$default$withMetadata(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    return-object v0

    .line 840
    :pswitch_15
    move-object/from16 v0, p1

    .line 841
    .line 842
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 843
    .line 844
    if-nez p2, :cond_8

    .line 845
    .line 846
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 847
    .line 848
    .line 849
    throw v11

    .line 850
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    .line 851
    .line 852
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 853
    .line 854
    .line 855
    throw v0

    .line 856
    :pswitch_16
    move-object/from16 v0, p1

    .line 857
    .line 858
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 859
    .line 860
    if-nez p2, :cond_9

    .line 861
    .line 862
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    throw v11

    .line 866
    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    .line 867
    .line 868
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 869
    .line 870
    .line 871
    throw v0

    .line 872
    :pswitch_17
    move-object/from16 v0, p1

    .line 873
    .line 874
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 875
    .line 876
    move-object/from16 v1, p2

    .line 877
    .line 878
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 879
    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    iget-object v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 887
    .line 888
    iget-object v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 889
    .line 890
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 891
    .line 892
    new-instance v5, Ljava/util/ArrayList;

    .line 893
    .line 894
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 899
    .line 900
    .line 901
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 906
    .line 907
    .line 908
    move-result v4

    .line 909
    if-eqz v4, :cond_b

    .line 910
    .line 911
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    move-object v10, v4

    .line 916
    check-cast v10, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 917
    .line 918
    iget-object v4, v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;->messages:Ljava/util/List;

    .line 919
    .line 920
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    move-result v4

    .line 924
    if-eqz v4, :cond_a

    .line 925
    .line 926
    iget-boolean v4, v10, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 927
    .line 928
    xor-int/lit8 v13, v4, 0x1

    .line 929
    .line 930
    const/4 v14, 0x0

    .line 931
    const v15, 0xdfff

    .line 932
    .line 933
    .line 934
    const/4 v11, 0x0

    .line 935
    const/4 v12, 0x0

    .line 936
    invoke-static/range {v10 .. v15}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 937
    .line 938
    .line 939
    move-result-object v10

    .line 940
    :cond_a
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    goto :goto_1

    .line 944
    :cond_b
    invoke-static {v5}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 949
    .line 950
    invoke-direct {v1, v2, v3, v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 951
    .line 952
    .line 953
    return-object v1

    .line 954
    :pswitch_18
    move-object/from16 v0, p1

    .line 955
    .line 956
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 957
    .line 958
    move-object/from16 v1, p2

    .line 959
    .line 960
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateFooter;

    .line 961
    .line 962
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 966
    .line 967
    .line 968
    new-instance v2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 969
    .line 970
    const/16 v3, 0x9

    .line 971
    .line 972
    invoke-direct {v2, v3, v1}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    invoke-interface {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->withMetadata(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    return-object v0

    .line 980
    :pswitch_19
    move-object/from16 v0, p1

    .line 981
    .line 982
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 983
    .line 984
    move-object/from16 v1, p2

    .line 985
    .line 986
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusExit;

    .line 987
    .line 988
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    .line 990
    .line 991
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    new-instance v1, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 995
    .line 996
    invoke-direct {v1, v4}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 997
    .line 998
    .line 999
    invoke-interface {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->withMetadata(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    return-object v0

    .line 1004
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1005
    .line 1006
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 1007
    .line 1008
    move-object/from16 v1, p2

    .line 1009
    .line 1010
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusEnter;

    .line 1011
    .line 1012
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1016
    .line 1017
    .line 1018
    new-instance v2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 1019
    .line 1020
    const/16 v3, 0xb

    .line 1021
    .line 1022
    invoke-direct {v2, v3, v1}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-interface {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->withMetadata(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    return-object v0

    .line 1030
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1031
    .line 1032
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 1033
    .line 1034
    move-object/from16 v2, p2

    .line 1035
    .line 1036
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$DeselectAll;

    .line 1037
    .line 1038
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    .line 1043
    .line 1044
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getPreferences()Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v3

    .line 1052
    if-eqz v3, :cond_d

    .line 1053
    .line 1054
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    new-instance v1, Ljava/util/ArrayList;

    .line 1059
    .line 1060
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1061
    .line 1062
    .line 1063
    move-result v4

    .line 1064
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1065
    .line 1066
    .line 1067
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1072
    .line 1073
    .line 1074
    move-result v4

    .line 1075
    if-eqz v4, :cond_c

    .line 1076
    .line 1077
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    move-object v5, v4

    .line 1082
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 1083
    .line 1084
    const/4 v9, 0x0

    .line 1085
    const v10, 0xdfff

    .line 1086
    .line 1087
    .line 1088
    const/4 v6, 0x0

    .line 1089
    const/4 v7, 0x0

    .line 1090
    const/4 v8, 0x0

    .line 1091
    invoke-static/range {v5 .. v10}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v4

    .line 1095
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    goto :goto_2

    .line 1099
    :cond_c
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    new-instance v11, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 1104
    .line 1105
    invoke-direct {v11, v2, v3, v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 1106
    .line 1107
    .line 1108
    goto :goto_3

    .line 1109
    :cond_d
    invoke-static {v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    :goto_3
    return-object v11

    .line 1113
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1114
    .line 1115
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1116
    .line 1117
    move-object/from16 v1, p2

    .line 1118
    .line 1119
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1120
    .line 1121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1125
    .line 1126
    .line 1127
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 1128
    .line 1129
    const-class v2, Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 1130
    .line 1131
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v2

    .line 1135
    invoke-virtual {v0, v2, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v2

    .line 1139
    check-cast v2, Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 1140
    .line 1141
    const-class v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 1142
    .line 1143
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v3

    .line 1147
    invoke-virtual {v0, v3, v11, v11}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 1152
    .line 1153
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;-><init>(Lnet/thunderbird/core/ui/theme/api/ThemeManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;)V

    .line 1154
    .line 1155
    .line 1156
    return-object v1

    .line 1157
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
