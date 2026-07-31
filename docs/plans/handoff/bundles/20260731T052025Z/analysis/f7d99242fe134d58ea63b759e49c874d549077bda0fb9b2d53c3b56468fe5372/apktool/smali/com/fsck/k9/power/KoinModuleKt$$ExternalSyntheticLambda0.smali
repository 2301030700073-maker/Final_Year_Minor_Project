.class public final synthetic Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 6
    .line 7
    const-class v2, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 8
    .line 9
    const-class v3, Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 10
    .line 11
    const-class v4, Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 12
    .line 13
    const-class v5, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 14
    .line 15
    const-class v6, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 16
    .line 17
    const-class v7, Lkotlin/time/Clock;

    .line 18
    .line 19
    const-class v8, Lcom/fsck/k9/notification/NotificationHelper;

    .line 20
    .line 21
    const-class v9, Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 22
    .line 23
    const-class v10, Lcom/fsck/k9/Preferences;

    .line 24
    .line 25
    const-class v11, Landroid/content/Context;

    .line 26
    .line 27
    const-class v12, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 28
    .line 29
    const/4 v13, 0x0

    .line 30
    packed-switch v0, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    move-object/from16 v0, p1

    .line 34
    .line 35
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 36
    .line 37
    move-object/from16 v1, p2

    .line 38
    .line 39
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v0, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 48
    .line 49
    invoke-direct {v0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;-><init>()V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_0
    move-object/from16 v0, p1

    .line 54
    .line 55
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 56
    .line 57
    move-object/from16 v1, p2

    .line 58
    .line 59
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 60
    .line 61
    invoke-static {v0, v1, v10, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_1
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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImporter;

    .line 83
    .line 84
    const-class v1, Lcom/fsck/k9/preferences/SettingsFileParser;

    .line 85
    .line 86
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v3, v1

    .line 95
    check-cast v3, Lcom/fsck/k9/preferences/SettingsFileParser;

    .line 96
    .line 97
    const-class v1, Lcom/fsck/k9/preferences/GeneralSettingsValidator;

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object v4, v1

    .line 108
    check-cast v4, Lcom/fsck/k9/preferences/GeneralSettingsValidator;

    .line 109
    .line 110
    const-class v1, Lcom/fsck/k9/preferences/AccountSettingsValidator;

    .line 111
    .line 112
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v5, v1

    .line 121
    check-cast v5, Lcom/fsck/k9/preferences/AccountSettingsValidator;

    .line 122
    .line 123
    const-class v1, Lcom/fsck/k9/preferences/GeneralSettingsUpgrader;

    .line 124
    .line 125
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    move-object v6, v1

    .line 134
    check-cast v6, Lcom/fsck/k9/preferences/GeneralSettingsUpgrader;

    .line 135
    .line 136
    const-class v1, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;

    .line 137
    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    move-object v7, v1

    .line 147
    check-cast v7, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;

    .line 148
    .line 149
    const-class v1, Lcom/fsck/k9/preferences/GeneralSettingsWriter;

    .line 150
    .line 151
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    move-object v8, v1

    .line 160
    check-cast v8, Lcom/fsck/k9/preferences/GeneralSettingsWriter;

    .line 161
    .line 162
    const-class v1, Lcom/fsck/k9/preferences/AccountSettingsWriter;

    .line 163
    .line 164
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    move-object v9, v1

    .line 173
    check-cast v9, Lcom/fsck/k9/preferences/AccountSettingsWriter;

    .line 174
    .line 175
    const-class v1, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 176
    .line 177
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    move-object v10, v0

    .line 186
    check-cast v10, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 187
    .line 188
    invoke-direct/range {v2 .. v10}, Lcom/fsck/k9/preferences/SettingsImporter;-><init>(Lcom/fsck/k9/preferences/SettingsFileParser;Lcom/fsck/k9/preferences/GeneralSettingsValidator;Lcom/fsck/k9/preferences/AccountSettingsValidator;Lcom/fsck/k9/preferences/GeneralSettingsUpgrader;Lcom/fsck/k9/preferences/AccountSettingsUpgrader;Lcom/fsck/k9/preferences/GeneralSettingsWriter;Lcom/fsck/k9/preferences/AccountSettingsWriter;Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;)V

    .line 189
    .line 190
    .line 191
    return-object v2

    .line 192
    :pswitch_2
    move-object/from16 v0, p1

    .line 193
    .line 194
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 195
    .line 196
    move-object/from16 v1, p2

    .line 197
    .line 198
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    new-instance v1, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 207
    .line 208
    const-class v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 209
    .line 210
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 219
    .line 220
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 229
    .line 230
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 231
    .line 232
    .line 233
    return-object v1

    .line 234
    :pswitch_3
    move-object/from16 v0, p1

    .line 235
    .line 236
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 237
    .line 238
    move-object/from16 v1, p2

    .line 239
    .line 240
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 241
    .line 242
    invoke-static {v0, v1, v10, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    move-object v15, v1

    .line 247
    check-cast v15, Lcom/fsck/k9/Preferences;

    .line 248
    .line 249
    const-class v1, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 250
    .line 251
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    move-object/from16 v16, v1

    .line 260
    .line 261
    check-cast v16, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 262
    .line 263
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    move-object/from16 v17, v1

    .line 272
    .line 273
    check-cast v17, Lkotlin/time/Clock;

    .line 274
    .line 275
    const-class v1, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 276
    .line 277
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    move-object/from16 v19, v1

    .line 286
    .line 287
    check-cast v19, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 288
    .line 289
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    move-object/from16 v20, v1

    .line 298
    .line 299
    check-cast v20, Landroid/content/Context;

    .line 300
    .line 301
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    move-object/from16 v18, v0

    .line 310
    .line 311
    check-cast v18, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 312
    .line 313
    new-instance v14, Lcom/fsck/k9/preferences/AccountSettingsWriter;

    .line 314
    .line 315
    invoke-direct/range {v14 .. v20}, Lcom/fsck/k9/preferences/AccountSettingsWriter;-><init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;Lkotlin/time/Clock;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;Landroid/content/Context;)V

    .line 316
    .line 317
    .line 318
    return-object v14

    .line 319
    :pswitch_4
    move-object/from16 v0, p1

    .line 320
    .line 321
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 322
    .line 323
    move-object/from16 v1, p2

    .line 324
    .line 325
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    new-instance v14, Lcom/fsck/k9/preferences/SettingsExporter;

    .line 334
    .line 335
    const-class v1, Landroid/content/ContentResolver;

    .line 336
    .line 337
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    move-object v15, v1

    .line 346
    check-cast v15, Landroid/content/ContentResolver;

    .line 347
    .line 348
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    move-object/from16 v16, v1

    .line 357
    .line 358
    check-cast v16, Lcom/fsck/k9/Preferences;

    .line 359
    .line 360
    const-class v1, Lcom/fsck/k9/preferences/FolderSettingsProvider;

    .line 361
    .line 362
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    move-object/from16 v17, v1

    .line 371
    .line 372
    check-cast v17, Lcom/fsck/k9/preferences/FolderSettingsProvider;

    .line 373
    .line 374
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    move-object/from16 v18, v1

    .line 383
    .line 384
    check-cast v18, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 385
    .line 386
    const-class v1, Lcom/fsck/k9/notification/NotificationSettingsUpdater;

    .line 387
    .line 388
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    move-object/from16 v19, v1

    .line 397
    .line 398
    check-cast v19, Lcom/fsck/k9/notification/NotificationSettingsUpdater;

    .line 399
    .line 400
    const-class v1, Lcom/fsck/k9/preferences/FilePrefixProvider;

    .line 401
    .line 402
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    move-object/from16 v20, v0

    .line 411
    .line 412
    check-cast v20, Lcom/fsck/k9/preferences/FilePrefixProvider;

    .line 413
    .line 414
    invoke-direct/range {v14 .. v20}, Lcom/fsck/k9/preferences/SettingsExporter;-><init>(Landroid/content/ContentResolver;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/preferences/FolderSettingsProvider;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/notification/NotificationSettingsUpdater;Lcom/fsck/k9/preferences/FilePrefixProvider;)V

    .line 415
    .line 416
    .line 417
    return-object v14

    .line 418
    :pswitch_5
    move-object/from16 v0, p1

    .line 419
    .line 420
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 421
    .line 422
    move-object/from16 v1, p2

    .line 423
    .line 424
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    new-instance v1, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;

    .line 433
    .line 434
    const-class v2, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;

    .line 435
    .line 436
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;

    .line 445
    .line 446
    const-class v3, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;

    .line 447
    .line 448
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    check-cast v3, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;

    .line 457
    .line 458
    const-class v4, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;

    .line 459
    .line 460
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    check-cast v4, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;

    .line 469
    .line 470
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v0, v5, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 479
    .line 480
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;-><init>(Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;Lcom/fsck/k9/preferences/FolderSettingsUpgrader;Lcom/fsck/k9/preferences/ServerSettingsUpgrader;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 481
    .line 482
    .line 483
    return-object v1

    .line 484
    :pswitch_6
    move-object/from16 v0, p1

    .line 485
    .line 486
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 487
    .line 488
    move-object/from16 v1, p2

    .line 489
    .line 490
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    new-instance v1, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;

    .line 499
    .line 500
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 509
    .line 510
    invoke-direct {v1, v0}, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 511
    .line 512
    .line 513
    return-object v1

    .line 514
    :pswitch_7
    move-object/from16 v0, p1

    .line 515
    .line 516
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 517
    .line 518
    move-object/from16 v1, p2

    .line 519
    .line 520
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    new-instance v1, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;

    .line 529
    .line 530
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 539
    .line 540
    invoke-direct {v1, v0}, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 541
    .line 542
    .line 543
    return-object v1

    .line 544
    :pswitch_8
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
    new-instance v1, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;

    .line 559
    .line 560
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 569
    .line 570
    invoke-direct {v1, v0}, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 571
    .line 572
    .line 573
    return-object v1

    .line 574
    :pswitch_9
    move-object/from16 v0, p1

    .line 575
    .line 576
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 577
    .line 578
    move-object/from16 v1, p2

    .line 579
    .line 580
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    .line 587
    .line 588
    new-instance v0, Lcom/fsck/k9/preferences/AccountSettingsValidator;

    .line 589
    .line 590
    invoke-direct {v0}, Lcom/fsck/k9/preferences/AccountSettingsValidator;-><init>()V

    .line 591
    .line 592
    .line 593
    return-object v0

    .line 594
    :pswitch_a
    move-object/from16 v0, p1

    .line 595
    .line 596
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 597
    .line 598
    move-object/from16 v1, p2

    .line 599
    .line 600
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    new-instance v1, Lcom/fsck/k9/preferences/GeneralSettingsWriter;

    .line 609
    .line 610
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 619
    .line 620
    const-class v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 621
    .line 622
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 631
    .line 632
    const-class v4, Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 633
    .line 634
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 643
    .line 644
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/preferences/GeneralSettingsWriter;-><init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;Lnet/thunderbird/core/preference/PreferenceChangePublisher;)V

    .line 645
    .line 646
    .line 647
    return-object v1

    .line 648
    :pswitch_b
    move-object/from16 v0, p1

    .line 649
    .line 650
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 651
    .line 652
    move-object/from16 v1, p2

    .line 653
    .line 654
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 655
    .line 656
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    new-instance v0, Lcom/fsck/k9/preferences/GeneralSettingsUpgrader;

    .line 663
    .line 664
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 665
    .line 666
    .line 667
    return-object v0

    .line 668
    :pswitch_c
    move-object/from16 v0, p1

    .line 669
    .line 670
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 671
    .line 672
    move-object/from16 v1, p2

    .line 673
    .line 674
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 675
    .line 676
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    new-instance v1, Lcom/fsck/k9/preferences/FolderSettingsProvider;

    .line 683
    .line 684
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 693
    .line 694
    invoke-direct {v1, v0}, Lcom/fsck/k9/preferences/FolderSettingsProvider;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;)V

    .line 695
    .line 696
    .line 697
    return-object v1

    .line 698
    :pswitch_d
    move-object/from16 v0, p1

    .line 699
    .line 700
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 701
    .line 702
    move-object/from16 v1, p2

    .line 703
    .line 704
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 705
    .line 706
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    new-instance v0, Lcom/fsck/k9/preferences/GeneralSettingsValidator;

    .line 713
    .line 714
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 715
    .line 716
    .line 717
    return-object v0

    .line 718
    :pswitch_e
    move-object/from16 v0, p1

    .line 719
    .line 720
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 721
    .line 722
    move-object/from16 v1, p2

    .line 723
    .line 724
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 725
    .line 726
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 730
    .line 731
    .line 732
    new-instance v0, Lcom/fsck/k9/preferences/SettingsFileParser;

    .line 733
    .line 734
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 735
    .line 736
    .line 737
    return-object v0

    .line 738
    :pswitch_f
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
    new-instance v1, Lcom/fsck/k9/power/AndroidPowerManager;

    .line 753
    .line 754
    const-class v2, Landroid/os/PowerManager;

    .line 755
    .line 756
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    check-cast v0, Landroid/os/PowerManager;

    .line 765
    .line 766
    invoke-direct {v1, v0}, Lcom/fsck/k9/power/AndroidPowerManager;-><init>(Landroid/os/PowerManager;)V

    .line 767
    .line 768
    .line 769
    return-object v1

    .line 770
    :pswitch_10
    move-object/from16 v0, p1

    .line 771
    .line 772
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 773
    .line 774
    move-object/from16 v1, p2

    .line 775
    .line 776
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    new-instance v1, Lcom/fsck/k9/notification/K9NotificationStrategy;

    .line 785
    .line 786
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    check-cast v2, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 795
    .line 796
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 805
    .line 806
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/notification/K9NotificationStrategy;-><init>(Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 807
    .line 808
    .line 809
    return-object v1

    .line 810
    :pswitch_11
    move-object/from16 v0, p1

    .line 811
    .line 812
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 813
    .line 814
    move-object/from16 v1, p2

    .line 815
    .line 816
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 817
    .line 818
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    .line 823
    .line 824
    new-instance v1, Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 825
    .line 826
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    check-cast v0, Landroid/content/Context;

    .line 835
    .line 836
    invoke-direct {v1, v0}, Lcom/fsck/k9/notification/K9NotificationResourceProvider;-><init>(Landroid/content/Context;)V

    .line 837
    .line 838
    .line 839
    return-object v1

    .line 840
    :pswitch_12
    move-object/from16 v0, p1

    .line 841
    .line 842
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 843
    .line 844
    move-object/from16 v1, p2

    .line 845
    .line 846
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 847
    .line 848
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    new-instance v1, Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 855
    .line 856
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    check-cast v2, Landroid/content/Context;

    .line 865
    .line 866
    const-class v3, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 867
    .line 868
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    check-cast v3, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 877
    .line 878
    const-class v4, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 879
    .line 880
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 881
    .line 882
    .line 883
    move-result-object v4

    .line 884
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v4

    .line 888
    check-cast v4, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 889
    .line 890
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    invoke-virtual {v0, v5, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 899
    .line 900
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fsck/k9/notification/K9NotificationActionCreator;-><init>(Landroid/content/Context;Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 901
    .line 902
    .line 903
    return-object v1

    .line 904
    :pswitch_13
    move-object/from16 v0, p1

    .line 905
    .line 906
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 907
    .line 908
    move-object/from16 v1, p2

    .line 909
    .line 910
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 911
    .line 912
    invoke-static {v0, v1, v11, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    move-object v3, v1

    .line 917
    check-cast v3, Landroid/content/Context;

    .line 918
    .line 919
    const-class v1, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 920
    .line 921
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    move-object v4, v1

    .line 930
    check-cast v4, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 931
    .line 932
    const-class v1, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 933
    .line 934
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    move-object v6, v1

    .line 943
    check-cast v6, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 944
    .line 945
    const-class v1, Landroidx/core/app/NotificationManagerCompat;

    .line 946
    .line 947
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    move-object v7, v1

    .line 956
    check-cast v7, Landroidx/core/app/NotificationManagerCompat;

    .line 957
    .line 958
    const-class v1, Lapp/k9mail/provider/K9AppNotificationIconProvider;

    .line 959
    .line 960
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    move-object v5, v1

    .line 969
    check-cast v5, Lapp/k9mail/provider/K9AppNotificationIconProvider;

    .line 970
    .line 971
    const-class v1, Lnet/thunderbird/core/logging/Logger;

    .line 972
    .line 973
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    move-object v8, v0

    .line 982
    check-cast v8, Lnet/thunderbird/core/logging/Logger;

    .line 983
    .line 984
    new-instance v2, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 985
    .line 986
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/notification/PushNotificationManager;-><init>(Landroid/content/Context;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lapp/k9mail/provider/K9AppNotificationIconProvider;Lcom/fsck/k9/notification/NotificationChannelManager;Landroidx/core/app/NotificationManagerCompat;Lnet/thunderbird/core/logging/Logger;)V

    .line 987
    .line 988
    .line 989
    return-object v2

    .line 990
    :pswitch_14
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
    new-instance v1, Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 1005
    .line 1006
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    check-cast v2, Lcom/fsck/k9/notification/NotificationHelper;

    .line 1015
    .line 1016
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v3

    .line 1020
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    check-cast v0, Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 1025
    .line 1026
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/notification/LockScreenNotificationCreator;-><init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationResourceProvider;)V

    .line 1027
    .line 1028
    .line 1029
    return-object v1

    .line 1030
    :pswitch_15
    move-object/from16 v0, p1

    .line 1031
    .line 1032
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1033
    .line 1034
    move-object/from16 v1, p2

    .line 1035
    .line 1036
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1037
    .line 1038
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    .line 1043
    .line 1044
    new-instance v14, Lcom/fsck/k9/notification/SummaryNotificationCreator;

    .line 1045
    .line 1046
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    move-object v15, v1

    .line 1055
    check-cast v15, Lcom/fsck/k9/notification/NotificationHelper;

    .line 1056
    .line 1057
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    move-object/from16 v16, v1

    .line 1066
    .line 1067
    check-cast v16, Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 1068
    .line 1069
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v1

    .line 1077
    move-object/from16 v17, v1

    .line 1078
    .line 1079
    check-cast v17, Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 1080
    .line 1081
    const-class v1, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 1082
    .line 1083
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    move-object/from16 v18, v1

    .line 1092
    .line 1093
    check-cast v18, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 1094
    .line 1095
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    move-object/from16 v19, v0

    .line 1104
    .line 1105
    check-cast v19, Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 1106
    .line 1107
    invoke-direct/range {v14 .. v19}, Lcom/fsck/k9/notification/SummaryNotificationCreator;-><init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationActionCreator;Lcom/fsck/k9/notification/LockScreenNotificationCreator;Lcom/fsck/k9/notification/SingleMessageNotificationCreator;Lcom/fsck/k9/notification/K9NotificationResourceProvider;)V

    .line 1108
    .line 1109
    .line 1110
    return-object v14

    .line 1111
    :pswitch_16
    move-object/from16 v0, p1

    .line 1112
    .line 1113
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1114
    .line 1115
    move-object/from16 v1, p2

    .line 1116
    .line 1117
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1118
    .line 1119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1123
    .line 1124
    .line 1125
    new-instance v14, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 1126
    .line 1127
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    move-object v15, v1

    .line 1136
    check-cast v15, Lcom/fsck/k9/notification/NotificationHelper;

    .line 1137
    .line 1138
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v1

    .line 1146
    move-object/from16 v16, v1

    .line 1147
    .line 1148
    check-cast v16, Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 1149
    .line 1150
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    move-object/from16 v17, v1

    .line 1159
    .line 1160
    check-cast v17, Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 1161
    .line 1162
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    move-object/from16 v18, v1

    .line 1171
    .line 1172
    check-cast v18, Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 1173
    .line 1174
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v1

    .line 1178
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    move-object/from16 v19, v1

    .line 1183
    .line 1184
    check-cast v19, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 1185
    .line 1186
    invoke-static {v0}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v20

    .line 1190
    invoke-direct/range {v14 .. v20}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;-><init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationActionCreator;Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lcom/fsck/k9/notification/LockScreenNotificationCreator;Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;Landroid/app/Application;)V

    .line 1191
    .line 1192
    .line 1193
    return-object v14

    .line 1194
    :pswitch_17
    move-object/from16 v0, p1

    .line 1195
    .line 1196
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1197
    .line 1198
    move-object/from16 v2, p2

    .line 1199
    .line 1200
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1201
    .line 1202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1206
    .line 1207
    .line 1208
    new-instance v2, Lcom/fsck/k9/notification/SummaryNotificationDataCreator;

    .line 1209
    .line 1210
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v1

    .line 1214
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v1

    .line 1218
    check-cast v1, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 1219
    .line 1220
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v3

    .line 1224
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1229
    .line 1230
    invoke-direct {v2, v1, v0}, Lcom/fsck/k9/notification/SummaryNotificationDataCreator;-><init>(Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 1231
    .line 1232
    .line 1233
    return-object v2

    .line 1234
    :pswitch_18
    move-object/from16 v0, p1

    .line 1235
    .line 1236
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1237
    .line 1238
    move-object/from16 v1, p2

    .line 1239
    .line 1240
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1241
    .line 1242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1246
    .line 1247
    .line 1248
    new-instance v1, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 1249
    .line 1250
    const-class v3, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 1251
    .line 1252
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v3

    .line 1256
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v3

    .line 1260
    check-cast v3, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 1261
    .line 1262
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v2

    .line 1266
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    check-cast v0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 1271
    .line 1272
    invoke-direct {v1, v3, v0}, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;-><init>(Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;)V

    .line 1273
    .line 1274
    .line 1275
    return-object v1

    .line 1276
    :pswitch_19
    move-object/from16 v0, p1

    .line 1277
    .line 1278
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1279
    .line 1280
    move-object/from16 v1, p2

    .line 1281
    .line 1282
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1283
    .line 1284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    .line 1289
    .line 1290
    new-instance v0, Lcom/fsck/k9/notification/BaseNotificationDataCreator;

    .line 1291
    .line 1292
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    return-object v0

    .line 1296
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1297
    .line 1298
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1299
    .line 1300
    move-object/from16 v1, p2

    .line 1301
    .line 1302
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1303
    .line 1304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1308
    .line 1309
    .line 1310
    new-instance v1, Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 1311
    .line 1312
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    check-cast v2, Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 1321
    .line 1322
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v3

    .line 1326
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v3

    .line 1330
    check-cast v3, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 1331
    .line 1332
    const-class v4, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 1333
    .line 1334
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v4

    .line 1338
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 1343
    .line 1344
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/notification/NotificationContentCreator;-><init>(Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;)V

    .line 1345
    .line 1346
    .line 1347
    return-object v1

    .line 1348
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1349
    .line 1350
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1351
    .line 1352
    move-object/from16 v2, p2

    .line 1353
    .line 1354
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1355
    .line 1356
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1360
    .line 1361
    .line 1362
    new-instance v14, Lcom/fsck/k9/notification/NewMailNotificationManager;

    .line 1363
    .line 1364
    const-class v2, Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 1365
    .line 1366
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v2

    .line 1370
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v2

    .line 1374
    move-object v15, v2

    .line 1375
    check-cast v15, Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 1376
    .line 1377
    const-class v2, Lcom/fsck/k9/notification/NotificationRepository;

    .line 1378
    .line 1379
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v2

    .line 1383
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    move-object/from16 v16, v2

    .line 1388
    .line 1389
    check-cast v16, Lcom/fsck/k9/notification/NotificationRepository;

    .line 1390
    .line 1391
    const-class v2, Lcom/fsck/k9/notification/BaseNotificationDataCreator;

    .line 1392
    .line 1393
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v2

    .line 1397
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v2

    .line 1401
    move-object/from16 v17, v2

    .line 1402
    .line 1403
    check-cast v17, Lcom/fsck/k9/notification/BaseNotificationDataCreator;

    .line 1404
    .line 1405
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v1

    .line 1413
    move-object/from16 v18, v1

    .line 1414
    .line 1415
    check-cast v18, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 1416
    .line 1417
    const-class v1, Lcom/fsck/k9/notification/SummaryNotificationDataCreator;

    .line 1418
    .line 1419
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v1

    .line 1423
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    move-object/from16 v19, v1

    .line 1428
    .line 1429
    check-cast v19, Lcom/fsck/k9/notification/SummaryNotificationDataCreator;

    .line 1430
    .line 1431
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v1

    .line 1435
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v0

    .line 1439
    move-object/from16 v20, v0

    .line 1440
    .line 1441
    check-cast v20, Lkotlin/time/Clock;

    .line 1442
    .line 1443
    invoke-direct/range {v14 .. v20}, Lcom/fsck/k9/notification/NewMailNotificationManager;-><init>(Lcom/fsck/k9/notification/NotificationContentCreator;Lcom/fsck/k9/notification/NotificationRepository;Lcom/fsck/k9/notification/BaseNotificationDataCreator;Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;Lcom/fsck/k9/notification/SummaryNotificationDataCreator;Lkotlin/time/Clock;)V

    .line 1444
    .line 1445
    .line 1446
    return-object v14

    .line 1447
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1448
    .line 1449
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1450
    .line 1451
    move-object/from16 v1, p2

    .line 1452
    .line 1453
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1454
    .line 1455
    invoke-static {v0, v1, v11, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v0

    .line 1459
    check-cast v0, Landroid/content/Context;

    .line 1460
    .line 1461
    const-string v1, "power"

    .line 1462
    .line 1463
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1468
    .line 1469
    .line 1470
    check-cast v0, Landroid/os/PowerManager;

    .line 1471
    .line 1472
    return-object v0

    .line 1473
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
