.class public final synthetic Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 8
    .line 9
    const-class v3, Lcom/fsck/k9/controller/MessagingController;

    .line 10
    .line 11
    const-class v4, Lcom/fsck/k9/Preferences;

    .line 12
    .line 13
    const-class v5, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 14
    .line 15
    const-class v6, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 16
    .line 17
    const-class v7, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 18
    .line 19
    const-class v8, Lcom/fsck/k9/mailstore/MessageRepository;

    .line 20
    .line 21
    const v9, 0x7f120467

    .line 22
    .line 23
    .line 24
    const-class v10, Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 25
    .line 26
    const-class v11, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 27
    .line 28
    const-class v12, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 29
    .line 30
    const-class v13, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 31
    .line 32
    const-class v14, Landroid/content/res/Resources;

    .line 33
    .line 34
    const/4 v15, 0x0

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
    new-instance v1, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 53
    .line 54
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/settings/SettingsViewModel;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_0
    move-object/from16 v0, p1

    .line 69
    .line 70
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 71
    .line 72
    move-object/from16 v1, p2

    .line 73
    .line 74
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 75
    .line 76
    invoke-static {v0, v1, v10, v15, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v3, v1

    .line 81
    check-cast v3, Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 82
    .line 83
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/content/res/Resources;

    .line 92
    .line 93
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 102
    .line 103
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 108
    .line 109
    new-instance v2, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;

    .line 110
    .line 111
    iget-boolean v4, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 112
    .line 113
    iget-boolean v5, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 114
    .line 115
    iget-boolean v6, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 116
    .line 117
    if-eqz v6, :cond_0

    .line 118
    .line 119
    iget v0, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 120
    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    :cond_0
    move-object v6, v15

    .line 126
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;-><init>(Lcom/fsck/k9/helper/RealContactNameProvider;ZZLjava/lang/Integer;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v2

    .line 137
    :pswitch_1
    move-object/from16 v0, p1

    .line 138
    .line 139
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 140
    .line 141
    move-object/from16 v1, p2

    .line 142
    .line 143
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v1, Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;

    .line 152
    .line 153
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/fsck/k9/mailstore/MessageRepository;

    .line 162
    .line 163
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;-><init>(Lcom/fsck/k9/mailstore/MessageRepository;)V

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :pswitch_2
    move-object/from16 v0, p1

    .line 168
    .line 169
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 170
    .line 171
    move-object/from16 v1, p2

    .line 172
    .line 173
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/fsck/k9/ui/messagelist/SortTypeToastProvider;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    return-object v0

    .line 187
    :pswitch_3
    move-object/from16 v0, p1

    .line 188
    .line 189
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 190
    .line 191
    move-object/from16 v1, p2

    .line 192
    .line 193
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/bumptech/glide/load/Option$1;

    .line 202
    .line 203
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 212
    .line 213
    const-class v2, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 214
    .line 215
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 224
    .line 225
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 226
    .line 227
    .line 228
    return-object v1

    .line 229
    :pswitch_4
    move-object/from16 v0, p1

    .line 230
    .line 231
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 232
    .line 233
    move-object/from16 v1, p2

    .line 234
    .line 235
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;

    .line 244
    .line 245
    const-class v2, Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 246
    .line 247
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 256
    .line 257
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 266
    .line 267
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v0, v4, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 276
    .line 277
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLoader;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;)V

    .line 278
    .line 279
    .line 280
    return-object v1

    .line 281
    :pswitch_5
    move-object/from16 v0, p1

    .line 282
    .line 283
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 284
    .line 285
    move-object/from16 v1, p2

    .line 286
    .line 287
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    new-instance v16, Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 296
    .line 297
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    move-object/from16 v17, v1

    .line 306
    .line 307
    check-cast v17, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 308
    .line 309
    const-class v1, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 310
    .line 311
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    move-object/from16 v18, v1

    .line 320
    .line 321
    check-cast v18, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 322
    .line 323
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    move-object/from16 v19, v1

    .line 332
    .line 333
    check-cast v19, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 334
    .line 335
    const-class v1, Lcom/fsck/k9/helper/MessageHelper;

    .line 336
    .line 337
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    move-object/from16 v20, v1

    .line 346
    .line 347
    check-cast v20, Lcom/fsck/k9/helper/MessageHelper;

    .line 348
    .line 349
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    move-object/from16 v21, v1

    .line 358
    .line 359
    check-cast v21, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 360
    .line 361
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    move-object/from16 v22, v1

    .line 370
    .line 371
    check-cast v22, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 372
    .line 373
    const-class v1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 374
    .line 375
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    move-object/from16 v23, v1

    .line 384
    .line 385
    check-cast v23, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 386
    .line 387
    const-class v1, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 388
    .line 389
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    move-object/from16 v24, v0

    .line 398
    .line 399
    check-cast v24, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 400
    .line 401
    invoke-direct/range {v16 .. v24}, Lcom/fsck/k9/ui/messagelist/MessageListLoader;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lcom/fsck/k9/helper/MessageHelper;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;)V

    .line 402
    .line 403
    .line 404
    return-object v16

    .line 405
    :pswitch_6
    move-object/from16 v0, p1

    .line 406
    .line 407
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 408
    .line 409
    move-object/from16 v1, p2

    .line 410
    .line 411
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    new-instance v1, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 420
    .line 421
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    check-cast v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 430
    .line 431
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;-><init>(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V

    .line 432
    .line 433
    .line 434
    return-object v1

    .line 435
    :pswitch_7
    move-object/from16 v0, p1

    .line 436
    .line 437
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 438
    .line 439
    move-object/from16 v1, p2

    .line 440
    .line 441
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 450
    .line 451
    const-class v2, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;

    .line 452
    .line 453
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;

    .line 462
    .line 463
    const-class v3, Lnet/thunderbird/core/logging/Logger;

    .line 464
    .line 465
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 474
    .line 475
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;Lnet/thunderbird/core/logging/Logger;)V

    .line 476
    .line 477
    .line 478
    return-object v1

    .line 479
    :pswitch_8
    move-object/from16 v0, p1

    .line 480
    .line 481
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 482
    .line 483
    move-object/from16 v1, p2

    .line 484
    .line 485
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 486
    .line 487
    invoke-static {v0, v1, v10, v15, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    check-cast v1, Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 492
    .line 493
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    check-cast v2, Landroid/content/res/Resources;

    .line 502
    .line 503
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 512
    .line 513
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 518
    .line 519
    new-instance v3, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;

    .line 520
    .line 521
    iget-boolean v4, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 522
    .line 523
    iget-boolean v5, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 524
    .line 525
    if-eqz v5, :cond_1

    .line 526
    .line 527
    iget v0, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 528
    .line 529
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object v15

    .line 533
    :cond_1
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    invoke-direct {v3, v1, v4, v15, v0}, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;-><init>(Lcom/fsck/k9/helper/RealContactNameProvider;ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    return-object v3

    .line 544
    :pswitch_9
    move-object/from16 v0, p1

    .line 545
    .line 546
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 547
    .line 548
    move-object/from16 v1, p2

    .line 549
    .line 550
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/ShowContactLauncher;

    .line 559
    .line 560
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 561
    .line 562
    .line 563
    return-object v0

    .line 564
    :pswitch_a
    move-object/from16 v0, p1

    .line 565
    .line 566
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 567
    .line 568
    move-object/from16 v1, p2

    .line 569
    .line 570
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/AddToContactsLauncher;

    .line 579
    .line 580
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 581
    .line 582
    .line 583
    return-object v0

    .line 584
    :pswitch_b
    move-object/from16 v0, p1

    .line 585
    .line 586
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 587
    .line 588
    move-object/from16 v1, p2

    .line 589
    .line 590
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 591
    .line 592
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    new-instance v1, Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;

    .line 599
    .line 600
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 609
    .line 610
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;)V

    .line 611
    .line 612
    .line 613
    return-object v1

    .line 614
    :pswitch_c
    move-object/from16 v0, p1

    .line 615
    .line 616
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 617
    .line 618
    move-object/from16 v1, p2

    .line 619
    .line 620
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    new-instance v16, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 629
    .line 630
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    move-object/from16 v17, v1

    .line 639
    .line 640
    check-cast v17, Landroid/content/res/Resources;

    .line 641
    .line 642
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    move-object/from16 v18, v1

    .line 651
    .line 652
    check-cast v18, Lcom/fsck/k9/mailstore/MessageRepository;

    .line 653
    .line 654
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    move-object/from16 v19, v1

    .line 663
    .line 664
    check-cast v19, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 665
    .line 666
    const-class v1, Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;

    .line 667
    .line 668
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    move-object/from16 v20, v1

    .line 677
    .line 678
    check-cast v20, Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;

    .line 679
    .line 680
    const-class v1, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 681
    .line 682
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    move-object/from16 v21, v1

    .line 691
    .line 692
    check-cast v21, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 693
    .line 694
    const-class v1, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 695
    .line 696
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    move-object/from16 v22, v1

    .line 705
    .line 706
    check-cast v22, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 707
    .line 708
    const-class v1, Lcom/fsck/k9/helper/ClipboardManager;

    .line 709
    .line 710
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    move-object/from16 v23, v1

    .line 719
    .line 720
    check-cast v23, Lcom/fsck/k9/helper/ClipboardManager;

    .line 721
    .line 722
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    move-object/from16 v24, v1

    .line 731
    .line 732
    check-cast v24, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 733
    .line 734
    const-class v1, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;

    .line 735
    .line 736
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    move-object/from16 v25, v1

    .line 745
    .line 746
    check-cast v25, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;

    .line 747
    .line 748
    const-class v1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 749
    .line 750
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    move-object/from16 v26, v0

    .line 759
    .line 760
    check-cast v26, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 761
    .line 762
    invoke-direct/range {v16 .. v26}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;-><init>(Landroid/content/res/Resources;Lcom/fsck/k9/mailstore/MessageRepository;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;Lcom/fsck/k9/helper/ClipboardManager;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;)V

    .line 763
    .line 764
    .line 765
    return-object v16

    .line 766
    :pswitch_d
    move-object/from16 v0, p1

    .line 767
    .line 768
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 769
    .line 770
    move-object/from16 v1, p2

    .line 771
    .line 772
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    new-instance v1, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 781
    .line 782
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 791
    .line 792
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-virtual {v0, v4, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    check-cast v4, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 801
    .line 802
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 811
    .line 812
    invoke-direct {v1, v2, v4, v0}, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;-><init>(Lcom/fsck/k9/Preferences;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/controller/MessagingController;)V

    .line 813
    .line 814
    .line 815
    return-object v1

    .line 816
    :pswitch_e
    move-object/from16 v0, p1

    .line 817
    .line 818
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 819
    .line 820
    move-object/from16 v1, p2

    .line 821
    .line 822
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 823
    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    new-instance v1, Lcom/fsck/k9/ui/managefolders/ManageFoldersViewModel;

    .line 831
    .line 832
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    check-cast v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 841
    .line 842
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/managefolders/ManageFoldersViewModel;-><init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;)V

    .line 843
    .line 844
    .line 845
    return-object v1

    .line 846
    :pswitch_f
    move-object/from16 v0, p1

    .line 847
    .line 848
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 849
    .line 850
    move-object/from16 v1, p2

    .line 851
    .line 852
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 853
    .line 854
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    .line 859
    .line 860
    new-instance v0, Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 861
    .line 862
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 863
    .line 864
    .line 865
    return-object v0

    .line 866
    :pswitch_10
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
    new-instance v0, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;

    .line 881
    .line 882
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 883
    .line 884
    .line 885
    return-object v0

    .line 886
    :pswitch_11
    move-object/from16 v0, p1

    .line 887
    .line 888
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 889
    .line 890
    move-object/from16 v1, p2

    .line 891
    .line 892
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 893
    .line 894
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 898
    .line 899
    .line 900
    new-instance v1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 901
    .line 902
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    check-cast v0, Landroid/content/res/Resources;

    .line 911
    .line 912
    invoke-direct {v1, v0}, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;-><init>(Landroid/content/res/Resources;)V

    .line 913
    .line 914
    .line 915
    return-object v1

    .line 916
    :pswitch_12
    move-object/from16 v0, p1

    .line 917
    .line 918
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 919
    .line 920
    move-object/from16 v1, p2

    .line 921
    .line 922
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 923
    .line 924
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    new-instance v1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 931
    .line 932
    const-class v2, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 933
    .line 934
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    check-cast v2, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 943
    .line 944
    const-class v3, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 945
    .line 946
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 947
    .line 948
    .line 949
    move-result-object v3

    .line 950
    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    check-cast v0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 955
    .line 956
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;-><init>(Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;)V

    .line 957
    .line 958
    .line 959
    return-object v1

    .line 960
    :pswitch_13
    move-object/from16 v0, p1

    .line 961
    .line 962
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 963
    .line 964
    move-object/from16 v1, p2

    .line 965
    .line 966
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 967
    .line 968
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    .line 973
    .line 974
    const-class v2, Landroidx/lifecycle/LifecycleOwner;

    .line 975
    .line 976
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    const/4 v3, 0x0

    .line 981
    invoke-virtual {v1, v3, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    move-object v6, v2

    .line 986
    check-cast v6, Landroidx/lifecycle/LifecycleOwner;

    .line 987
    .line 988
    const-class v2, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 989
    .line 990
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    const/4 v5, 0x1

    .line 995
    invoke-virtual {v1, v5, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    move-object v10, v1

    .line 1000
    check-cast v10, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 1001
    .line 1002
    new-instance v1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 1003
    .line 1004
    const-class v2, Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 1005
    .line 1006
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    new-array v5, v5, [Ljava/lang/Object;

    .line 1011
    .line 1012
    aput-object v6, v5, v3

    .line 1013
    .line 1014
    invoke-static {v5}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    invoke-virtual {v0, v2, v3, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    move-object v7, v2

    .line 1023
    check-cast v7, Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 1024
    .line 1025
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    move-object v8, v2

    .line 1034
    check-cast v8, Lcom/fsck/k9/Preferences;

    .line 1035
    .line 1036
    const-class v2, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 1037
    .line 1038
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v2

    .line 1042
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    move-object v9, v0

    .line 1047
    check-cast v9, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 1048
    .line 1049
    move-object v5, v1

    .line 1050
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/openintents/openpgp/OpenPgpApiManager;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;)V

    .line 1051
    .line 1052
    .line 1053
    return-object v5

    .line 1054
    :pswitch_14
    move-object/from16 v0, p1

    .line 1055
    .line 1056
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1057
    .line 1058
    move-object/from16 v1, p2

    .line 1059
    .line 1060
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1061
    .line 1062
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1066
    .line 1067
    .line 1068
    new-instance v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 1069
    .line 1070
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v2

    .line 1074
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 1079
    .line 1080
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;-><init>(Lcom/fsck/k9/controller/MessagingController;)V

    .line 1081
    .line 1082
    .line 1083
    return-object v1

    .line 1084
    :pswitch_15
    move-object/from16 v0, p1

    .line 1085
    .line 1086
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1087
    .line 1088
    move-object/from16 v1, p2

    .line 1089
    .line 1090
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    new-instance v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 1099
    .line 1100
    const-class v2, Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;

    .line 1101
    .line 1102
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v2

    .line 1106
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    check-cast v0, Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;

    .line 1111
    .line 1112
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;-><init>(Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;)V

    .line 1113
    .line 1114
    .line 1115
    return-object v1

    .line 1116
    :pswitch_16
    move-object/from16 v0, p1

    .line 1117
    .line 1118
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1119
    .line 1120
    move-object/from16 v1, p2

    .line 1121
    .line 1122
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1123
    .line 1124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1128
    .line 1129
    .line 1130
    new-instance v0, Lcom/fsck/k9/ui/compose/IntentDataMapper;

    .line 1131
    .line 1132
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    return-object v0

    .line 1136
    :pswitch_17
    move-object/from16 v0, p1

    .line 1137
    .line 1138
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1139
    .line 1140
    move-object/from16 v1, p2

    .line 1141
    .line 1142
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1143
    .line 1144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1148
    .line 1149
    .line 1150
    new-instance v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 1151
    .line 1152
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    check-cast v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 1161
    .line 1162
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;-><init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;)V

    .line 1163
    .line 1164
    .line 1165
    return-object v1

    .line 1166
    :pswitch_18
    move-object/from16 v0, p1

    .line 1167
    .line 1168
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1169
    .line 1170
    move-object/from16 v2, p2

    .line 1171
    .line 1172
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1173
    .line 1174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    new-instance v2, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;

    .line 1181
    .line 1182
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    check-cast v0, Landroid/content/Context;

    .line 1191
    .line 1192
    invoke-direct {v2, v0}, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;-><init>(Landroid/content/Context;)V

    .line 1193
    .line 1194
    .line 1195
    return-object v2

    .line 1196
    :pswitch_19
    move-object/from16 v0, p1

    .line 1197
    .line 1198
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1199
    .line 1200
    move-object/from16 v1, p2

    .line 1201
    .line 1202
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1203
    .line 1204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1208
    .line 1209
    .line 1210
    new-instance v1, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 1211
    .line 1212
    const-class v2, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;

    .line 1213
    .line 1214
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v2

    .line 1218
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v2

    .line 1222
    check-cast v2, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;

    .line 1223
    .line 1224
    const-class v3, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 1225
    .line 1226
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    check-cast v0, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 1235
    .line 1236
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/base/AppLanguageManager;-><init>(Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;)V

    .line 1237
    .line 1238
    .line 1239
    return-object v1

    .line 1240
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1241
    .line 1242
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1243
    .line 1244
    move-object/from16 v1, p2

    .line 1245
    .line 1246
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1247
    .line 1248
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    .line 1253
    .line 1254
    new-instance v1, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;

    .line 1255
    .line 1256
    const-class v2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 1257
    .line 1258
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 1267
    .line 1268
    invoke-direct {v1, v0}, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;)V

    .line 1269
    .line 1270
    .line 1271
    return-object v1

    .line 1272
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1273
    .line 1274
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1275
    .line 1276
    move-object/from16 v1, p2

    .line 1277
    .line 1278
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1279
    .line 1280
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1284
    .line 1285
    .line 1286
    new-instance v1, Lcom/fsck/k9/ui/account/AccountImageModelLoaderFactory;

    .line 1287
    .line 1288
    const-class v2, Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 1289
    .line 1290
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v2

    .line 1294
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v2

    .line 1298
    check-cast v2, Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 1299
    .line 1300
    const-class v2, Lnet/thunderbird/core/ui/account/AccountFallbackImageProvider;

    .line 1301
    .line 1302
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v2

    .line 1306
    invoke-virtual {v0, v2, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    check-cast v0, Lnet/thunderbird/core/ui/account/AccountFallbackImageProvider;

    .line 1311
    .line 1312
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    return-object v1

    .line 1316
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1317
    .line 1318
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1319
    .line 1320
    move-object/from16 v2, p2

    .line 1321
    .line 1322
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1323
    .line 1324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1328
    .line 1329
    .line 1330
    new-instance v2, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 1331
    .line 1332
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    check-cast v1, Landroid/content/Context;

    .line 1341
    .line 1342
    const-class v3, Lapp/k9mail/provider/K9ThemeProvider;

    .line 1343
    .line 1344
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v3

    .line 1348
    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    check-cast v3, Lapp/k9mail/provider/K9ThemeProvider;

    .line 1353
    .line 1354
    const-class v4, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1355
    .line 1356
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v4

    .line 1360
    invoke-virtual {v0, v4, v15, v15}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v4

    .line 1364
    check-cast v4, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1365
    .line 1366
    new-instance v5, Lorg/koin/core/qualifier/StringQualifier;

    .line 1367
    .line 1368
    const-string v6, "AppCoroutineScope"

    .line 1369
    .line 1370
    invoke-direct {v5, v6}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    const-class v6, Lkotlinx/coroutines/CoroutineScope;

    .line 1374
    .line 1375
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v6

    .line 1379
    invoke-virtual {v0, v6, v15, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v0

    .line 1383
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1384
    .line 1385
    invoke-direct {v2, v1, v3, v4, v0}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;-><init>(Landroid/content/Context;Lapp/k9mail/provider/K9ThemeProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lkotlinx/coroutines/CoroutineScope;)V

    .line 1386
    .line 1387
    .line 1388
    return-object v2

    .line 1389
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
