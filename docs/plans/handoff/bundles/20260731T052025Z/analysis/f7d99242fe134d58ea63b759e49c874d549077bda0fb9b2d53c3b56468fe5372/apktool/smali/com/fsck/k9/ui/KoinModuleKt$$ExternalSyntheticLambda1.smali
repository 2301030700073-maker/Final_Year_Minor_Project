.class public final synthetic Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 6
    .line 7
    const-class v2, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 8
    .line 9
    const-class v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 10
    .line 11
    const-class v4, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 12
    .line 13
    const-class v5, Lkotlinx/coroutines/CoroutineScope;

    .line 14
    .line 15
    const-string v6, "AppCoroutineScope"

    .line 16
    .line 17
    const-class v7, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 18
    .line 19
    const-class v8, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 20
    .line 21
    const-class v9, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 22
    .line 23
    const-class v11, Landroid/content/Context;

    .line 24
    .line 25
    const-class v12, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 26
    .line 27
    const-class v13, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 28
    .line 29
    const-class v14, Lcom/fsck/k9/Preferences;

    .line 30
    .line 31
    const-class v15, Lnet/thunderbird/core/logging/Logger;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    packed-switch v0, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    move-object/from16 v0, p1

    .line 38
    .line 39
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 40
    .line 41
    move-object/from16 v1, p2

    .line 42
    .line 43
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v1, Lnet/thunderbird/core/ui/account/AccountFallbackImageProvider;

    .line 52
    .line 53
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/content/Context;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :pswitch_0
    move-object/from16 v0, p1

    .line 68
    .line 69
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 70
    .line 71
    move-object/from16 v1, p2

    .line 72
    .line 73
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 74
    .line 75
    const-class v2, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 76
    .line 77
    invoke-static {v0, v1, v2, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 82
    .line 83
    const-string v1, "enable_message_list_new_state"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    sget-object v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->Factory:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;->INSTANCE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 99
    .line 100
    :goto_0
    return-object v0

    .line 101
    :pswitch_1
    move-object/from16 v0, p1

    .line 102
    .line 103
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 104
    .line 105
    move-object/from16 v1, p2

    .line 106
    .line 107
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const-class v2, Landroid/app/Activity;

    .line 116
    .line 117
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v1, v3, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/app/Activity;

    .line 127
    .line 128
    new-instance v2, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 129
    .line 130
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

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
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 139
    .line 140
    invoke-direct {v2, v1, v0}, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;-><init>(Landroid/app/Activity;Lnet/thunderbird/core/logging/Logger;)V

    .line 141
    .line 142
    .line 143
    return-object v2

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
    new-instance v1, Lcom/fsck/k9/ui/messageview/LinkTextHandler;

    .line 159
    .line 160
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/content/Context;

    .line 169
    .line 170
    const-class v3, Lcom/fsck/k9/helper/ClipboardManager;

    .line 171
    .line 172
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/fsck/k9/helper/ClipboardManager;

    .line 181
    .line 182
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/messageview/LinkTextHandler;-><init>(Landroid/content/Context;Lcom/fsck/k9/helper/ClipboardManager;)V

    .line 183
    .line 184
    .line 185
    return-object v1

    .line 186
    :pswitch_3
    move-object/from16 v0, p1

    .line 187
    .line 188
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 189
    .line 190
    move-object/from16 v1, p2

    .line 191
    .line 192
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/fsck/k9/ui/share/ShareIntentBuilder;

    .line 201
    .line 202
    const-class v2, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 203
    .line 204
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

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
    check-cast v2, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 213
    .line 214
    const-class v3, Lcom/fsck/k9/message/extractors/TextPartFinder;

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
    check-cast v3, Lcom/fsck/k9/message/extractors/TextPartFinder;

    .line 225
    .line 226
    const-class v4, Lcom/fsck/k9/message/quote/QuoteDateFormatter;

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
    check-cast v0, Lcom/fsck/k9/message/quote/QuoteDateFormatter;

    .line 237
    .line 238
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/ui/share/ShareIntentBuilder;-><init>(Lcom/fsck/k9/resources/K9CoreResourceProvider;Lcom/fsck/k9/message/extractors/TextPartFinder;Lcom/fsck/k9/message/quote/QuoteDateFormatter;)V

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
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const/4 v3, 0x0

    .line 261
    invoke-virtual {v1, v3, v0}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Landroid/content/Context;

    .line 266
    .line 267
    new-instance v1, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-direct {v1, v0}, Lcom/fsck/k9/ui/helper/SizeFormatter;-><init>(Landroid/content/res/Resources;)V

    .line 277
    .line 278
    .line 279
    return-object v1

    .line 280
    :pswitch_5
    move-object/from16 v0, p1

    .line 281
    .line 282
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 283
    .line 284
    move-object/from16 v1, p2

    .line 285
    .line 286
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 287
    .line 288
    const-class v2, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;

    .line 289
    .line 290
    invoke-static {v0, v1, v2, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;

    .line 295
    .line 296
    new-instance v1, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 297
    .line 298
    iget-object v2, v0, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;->messageReaderHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 299
    .line 300
    invoke-virtual {v2}, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;->create()Lnet/thunderbird/core/common/mail/html/HtmlSettings;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    iget-object v3, v0, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;->cssStyleProviders:Ljava/util/List;

    .line 307
    .line 308
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/message/html/DisplayHtml;-><init>(Lnet/thunderbird/core/common/mail/html/HtmlSettings;Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Ljava/util/List;)V

    .line 309
    .line 310
    .line 311
    return-object v1

    .line 312
    :pswitch_6
    move-object/from16 v0, p1

    .line 313
    .line 314
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 315
    .line 316
    move-object/from16 v1, p2

    .line 317
    .line 318
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    new-instance v1, Lcom/fsck/k9/ui/settings/AboutViewModel;

    .line 327
    .line 328
    const-class v2, Lnet/thunderbird/app/common/appVersion/DefaultAppVersionProvider;

    .line 329
    .line 330
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    move-object v2, v0

    .line 339
    check-cast v2, Lnet/thunderbird/app/common/appVersion/DefaultAppVersionProvider;

    .line 340
    .line 341
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutContract$State;

    .line 342
    .line 343
    const-string v4, "?"

    .line 344
    .line 345
    iget-object v0, v2, Lnet/thunderbird/app/common/appVersion/DefaultAppVersionProvider;->context:Landroid/content/Context;

    .line 346
    .line 347
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    const/4 v6, 0x0

    .line 356
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .line 362
    if-nez v0, :cond_1

    .line 363
    .line 364
    goto :goto_1

    .line 365
    :cond_1
    move-object v4, v0

    .line 366
    goto :goto_1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    iget-object v2, v2, Lnet/thunderbird/app/common/appVersion/DefaultAppVersionProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 369
    .line 370
    new-instance v5, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 371
    .line 372
    const/16 v6, 0x1c

    .line 373
    .line 374
    invoke-direct {v5, v6}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 375
    .line 376
    .line 377
    const-string v6, "DefaultAppVersionProvider"

    .line 378
    .line 379
    invoke-interface {v2, v6, v0, v5}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 380
    .line 381
    .line 382
    :goto_1
    sget-object v0, Lcom/fsck/k9/ui/settings/AboutViewModelKt;->USED_LIBRARIES:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 383
    .line 384
    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/ui/settings/AboutContract$State;-><init>(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 385
    .line 386
    .line 387
    invoke-direct {v1, v3}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    return-object v1

    .line 391
    :pswitch_7
    move-object/from16 v0, p1

    .line 392
    .line 393
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 394
    .line 395
    move-object/from16 v1, p2

    .line 396
    .line 397
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 398
    .line 399
    const-class v2, Lcom/fsck/k9/controller/MessagingController;

    .line 400
    .line 401
    invoke-static {v0, v1, v2, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;

    .line 406
    .line 407
    return-object v0

    .line 408
    :pswitch_8
    move-object/from16 v0, p1

    .line 409
    .line 410
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 411
    .line 412
    move-object/from16 v1, p2

    .line 413
    .line 414
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    new-instance v1, Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;

    .line 423
    .line 424
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 433
    .line 434
    invoke-direct {v1, v0}, Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;-><init>(Lcom/fsck/k9/mailstore/LocalStoreProvider;)V

    .line 435
    .line 436
    .line 437
    return-object v1

    .line 438
    :pswitch_9
    move-object/from16 v0, p1

    .line 439
    .line 440
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 441
    .line 442
    move-object/from16 v1, p2

    .line 443
    .line 444
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    new-instance v11, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;

    .line 453
    .line 454
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    move-object v12, v1

    .line 463
    check-cast v12, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 464
    .line 465
    const-class v1, Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;

    .line 466
    .line 467
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    move-object v13, v1

    .line 476
    check-cast v13, Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;

    .line 477
    .line 478
    const-class v1, Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;

    .line 479
    .line 480
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

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
    move-object v14, v1

    .line 489
    check-cast v14, Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;

    .line 490
    .line 491
    const-class v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 492
    .line 493
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    move-object v15, v1

    .line 502
    check-cast v15, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 503
    .line 504
    const-class v1, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 505
    .line 506
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    move-object/from16 v16, v0

    .line 515
    .line 516
    check-cast v16, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 517
    .line 518
    invoke-direct/range {v11 .. v16}, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;-><init>(Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 519
    .line 520
    .line 521
    return-object v11

    .line 522
    :pswitch_a
    move-object/from16 v0, p1

    .line 523
    .line 524
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 525
    .line 526
    move-object/from16 v1, p2

    .line 527
    .line 528
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    new-instance v0, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 537
    .line 538
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 539
    .line 540
    .line 541
    return-object v0

    .line 542
    :pswitch_b
    move-object/from16 v0, p1

    .line 543
    .line 544
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 545
    .line 546
    move-object/from16 v1, p2

    .line 547
    .line 548
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    new-instance v1, Lcom/fsck/k9/resources/K9AutocryptStringProvider;

    .line 557
    .line 558
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Landroid/content/Context;

    .line 567
    .line 568
    invoke-direct {v1, v0}, Lcom/fsck/k9/resources/K9AutocryptStringProvider;-><init>(Landroid/content/Context;)V

    .line 569
    .line 570
    .line 571
    return-object v1

    .line 572
    :pswitch_c
    move-object/from16 v0, p1

    .line 573
    .line 574
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 575
    .line 576
    move-object/from16 v1, p2

    .line 577
    .line 578
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    new-instance v1, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 587
    .line 588
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    check-cast v0, Landroid/content/Context;

    .line 597
    .line 598
    invoke-direct {v1, v0}, Lcom/fsck/k9/resources/K9CoreResourceProvider;-><init>(Landroid/content/Context;)V

    .line 599
    .line 600
    .line 601
    return-object v1

    .line 602
    :pswitch_d
    move-object/from16 v0, p1

    .line 603
    .line 604
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 605
    .line 606
    move-object/from16 v1, p2

    .line 607
    .line 608
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    new-instance v1, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;

    .line 617
    .line 618
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 619
    .line 620
    invoke-direct {v2, v6}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-virtual {v0, v3, v10, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 632
    .line 633
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    check-cast v3, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 642
    .line 643
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 652
    .line 653
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;-><init>(Lkotlinx/coroutines/CoroutineScope;Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;)V

    .line 654
    .line 655
    .line 656
    return-object v1

    .line 657
    :pswitch_e
    move-object/from16 v0, p1

    .line 658
    .line 659
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 660
    .line 661
    move-object/from16 v7, p2

    .line 662
    .line 663
    check-cast v7, Lorg/koin/core/parameter/ParametersHolder;

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    new-instance v16, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 672
    .line 673
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 674
    .line 675
    .line 676
    move-result-object v7

    .line 677
    invoke-virtual {v0, v7, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v7

    .line 681
    move-object/from16 v17, v7

    .line 682
    .line 683
    check-cast v17, Lcom/fsck/k9/Preferences;

    .line 684
    .line 685
    new-instance v7, Lorg/koin/core/qualifier/StringQualifier;

    .line 686
    .line 687
    invoke-direct {v7, v6}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 691
    .line 692
    .line 693
    move-result-object v5

    .line 694
    invoke-virtual {v0, v5, v10, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v5

    .line 698
    move-object/from16 v18, v5

    .line 699
    .line 700
    check-cast v18, Lkotlinx/coroutines/CoroutineScope;

    .line 701
    .line 702
    const-class v5, Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 703
    .line 704
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    move-object/from16 v19, v5

    .line 713
    .line 714
    check-cast v19, Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 715
    .line 716
    const-class v5, Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;

    .line 717
    .line 718
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 719
    .line 720
    .line 721
    move-result-object v5

    .line 722
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    move-object/from16 v20, v5

    .line 727
    .line 728
    check-cast v20, Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;

    .line 729
    .line 730
    const-class v5, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 731
    .line 732
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    move-object/from16 v21, v5

    .line 741
    .line 742
    check-cast v21, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 743
    .line 744
    const-class v5, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 745
    .line 746
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    move-object/from16 v22, v5

    .line 755
    .line 756
    check-cast v22, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 757
    .line 758
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 759
    .line 760
    .line 761
    move-result-object v4

    .line 762
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    move-object/from16 v23, v4

    .line 767
    .line 768
    check-cast v23, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 769
    .line 770
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 771
    .line 772
    .line 773
    move-result-object v4

    .line 774
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    move-object/from16 v24, v4

    .line 779
    .line 780
    check-cast v24, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 781
    .line 782
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    move-object/from16 v25, v4

    .line 791
    .line 792
    check-cast v25, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 793
    .line 794
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v3

    .line 802
    move-object/from16 v26, v3

    .line 803
    .line 804
    check-cast v26, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 805
    .line 806
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    move-object/from16 v27, v2

    .line 815
    .line 816
    check-cast v27, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 817
    .line 818
    const-class v2, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;

    .line 819
    .line 820
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    move-object/from16 v28, v2

    .line 829
    .line 830
    check-cast v28, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;

    .line 831
    .line 832
    const-class v2, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 833
    .line 834
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    move-object/from16 v29, v2

    .line 843
    .line 844
    check-cast v29, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 845
    .line 846
    const-class v2, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 847
    .line 848
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    move-object/from16 v30, v2

    .line 857
    .line 858
    check-cast v30, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 859
    .line 860
    const-class v2, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

    .line 861
    .line 862
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    move-object/from16 v31, v2

    .line 871
    .line 872
    check-cast v31, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

    .line 873
    .line 874
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    move-object/from16 v32, v1

    .line 883
    .line 884
    check-cast v32, Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 885
    .line 886
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    move-object/from16 v33, v0

    .line 895
    .line 896
    check-cast v33, Lnet/thunderbird/core/logging/Logger;

    .line 897
    .line 898
    invoke-direct/range {v16 .. v33}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;-><init>(Lcom/fsck/k9/Preferences;Lkotlinx/coroutines/CoroutineScope;Lnet/thunderbird/core/preference/PreferenceChangePublisher;Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;Lnet/thunderbird/core/logging/config/DebugLogConfigurator;Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/logging/Logger;)V

    .line 899
    .line 900
    .line 901
    return-object v16

    .line 902
    :pswitch_f
    move-object/from16 v0, p1

    .line 903
    .line 904
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 905
    .line 906
    move-object/from16 v1, p2

    .line 907
    .line 908
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 909
    .line 910
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    .line 915
    .line 916
    new-instance v1, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

    .line 917
    .line 918
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 919
    .line 920
    const-string v3, "syncDebug"

    .line 921
    .line 922
    invoke-direct {v2, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    const-class v4, Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 926
    .line 927
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 928
    .line 929
    .line 930
    move-result-object v4

    .line 931
    invoke-virtual {v0, v4, v10, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    check-cast v2, Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 936
    .line 937
    new-instance v4, Lorg/koin/core/qualifier/StringQualifier;

    .line 938
    .line 939
    invoke-direct {v4, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    const-class v3, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 943
    .line 944
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    invoke-virtual {v0, v3, v10, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    check-cast v3, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 953
    .line 954
    const-class v4, Lnet/thunderbird/core/logging/config/PlatformInitializer;

    .line 955
    .line 956
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 957
    .line 958
    .line 959
    move-result-object v4

    .line 960
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    check-cast v0, Lnet/thunderbird/core/logging/config/PlatformInitializer;

    .line 965
    .line 966
    invoke-direct {v1, v2, v3, v0}, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;-><init>(Lnet/thunderbird/core/logging/composite/CompositeLogSink;Lnet/thunderbird/core/logging/file/FileLogSink;Lnet/thunderbird/core/logging/config/PlatformInitializer;)V

    .line 967
    .line 968
    .line 969
    return-object v1

    .line 970
    :pswitch_10
    move-object/from16 v0, p1

    .line 971
    .line 972
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 973
    .line 974
    move-object/from16 v1, p2

    .line 975
    .line 976
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 977
    .line 978
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 982
    .line 983
    .line 984
    new-instance v0, Lnet/thunderbird/core/logging/config/PlatformInitializer;

    .line 985
    .line 986
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 987
    .line 988
    .line 989
    return-object v0

    .line 990
    :pswitch_11
    move-object/from16 v0, p1

    .line 991
    .line 992
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 993
    .line 994
    move-object/from16 v2, p2

    .line 995
    .line 996
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    .line 1003
    .line 1004
    new-instance v3, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 1005
    .line 1006
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    move-object v4, v2

    .line 1015
    check-cast v4, Lnet/thunderbird/core/logging/Logger;

    .line 1016
    .line 1017
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    move-object v5, v2

    .line 1026
    check-cast v5, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1027
    .line 1028
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 1037
    .line 1038
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v6

    .line 1042
    const-class v2, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 1043
    .line 1044
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    move-object v7, v2

    .line 1053
    check-cast v7, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 1054
    .line 1055
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    move-object v8, v1

    .line 1064
    check-cast v8, Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 1065
    .line 1066
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    move-object v9, v0

    .line 1075
    check-cast v9, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1076
    .line 1077
    invoke-direct/range {v3 .. v9}, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1078
    .line 1079
    .line 1080
    return-object v3

    .line 1081
    :pswitch_12
    move-object/from16 v0, p1

    .line 1082
    .line 1083
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1084
    .line 1085
    move-object/from16 v1, p2

    .line 1086
    .line 1087
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1088
    .line 1089
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    new-instance v1, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;

    .line 1096
    .line 1097
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1106
    .line 1107
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v3

    .line 1111
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    check-cast v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1116
    .line 1117
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v4

    .line 1121
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v4

    .line 1125
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1126
    .line 1127
    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v4

    .line 1131
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v5

    .line 1135
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1140
    .line 1141
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1142
    .line 1143
    .line 1144
    return-object v1

    .line 1145
    :pswitch_13
    move-object/from16 v0, p1

    .line 1146
    .line 1147
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1148
    .line 1149
    move-object/from16 v1, p2

    .line 1150
    .line 1151
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1152
    .line 1153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1157
    .line 1158
    .line 1159
    new-instance v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 1160
    .line 1161
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v2

    .line 1165
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v2

    .line 1169
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1170
    .line 1171
    const-class v3, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 1172
    .line 1173
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v3

    .line 1177
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v3

    .line 1181
    check-cast v3, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 1182
    .line 1183
    const-class v4, Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1184
    .line 1185
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v4

    .line 1193
    check-cast v4, Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1194
    .line 1195
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v5

    .line 1199
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1204
    .line 1205
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1206
    .line 1207
    .line 1208
    return-object v1

    .line 1209
    :pswitch_14
    move-object/from16 v0, p1

    .line 1210
    .line 1211
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1212
    .line 1213
    move-object/from16 v1, p2

    .line 1214
    .line 1215
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1216
    .line 1217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1221
    .line 1222
    .line 1223
    new-instance v1, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 1224
    .line 1225
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1234
    .line 1235
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v3

    .line 1239
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v3

    .line 1243
    check-cast v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1244
    .line 1245
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v4

    .line 1249
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v4

    .line 1253
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1254
    .line 1255
    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v4

    .line 1259
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v5

    .line 1263
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v0

    .line 1267
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1268
    .line 1269
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1270
    .line 1271
    .line 1272
    return-object v1

    .line 1273
    :pswitch_15
    move-object/from16 v0, p1

    .line 1274
    .line 1275
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1276
    .line 1277
    move-object/from16 v1, p2

    .line 1278
    .line 1279
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1280
    .line 1281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1285
    .line 1286
    .line 1287
    new-instance v1, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 1288
    .line 1289
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v2

    .line 1297
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1298
    .line 1299
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v3

    .line 1303
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v3

    .line 1307
    check-cast v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1308
    .line 1309
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v4

    .line 1313
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v4

    .line 1317
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1318
    .line 1319
    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v4

    .line 1323
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v5

    .line 1327
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1332
    .line 1333
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1334
    .line 1335
    .line 1336
    return-object v1

    .line 1337
    :pswitch_16
    move-object/from16 v0, p1

    .line 1338
    .line 1339
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1340
    .line 1341
    move-object/from16 v1, p2

    .line 1342
    .line 1343
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1344
    .line 1345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1349
    .line 1350
    .line 1351
    new-instance v16, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 1352
    .line 1353
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v1

    .line 1357
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v1

    .line 1361
    move-object/from16 v17, v1

    .line 1362
    .line 1363
    check-cast v17, Lnet/thunderbird/core/logging/Logger;

    .line 1364
    .line 1365
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v1

    .line 1373
    move-object/from16 v18, v1

    .line 1374
    .line 1375
    check-cast v18, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 1376
    .line 1377
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v1

    .line 1381
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v1

    .line 1385
    move-object/from16 v19, v1

    .line 1386
    .line 1387
    check-cast v19, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 1388
    .line 1389
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v1

    .line 1393
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v1

    .line 1397
    move-object/from16 v20, v1

    .line 1398
    .line 1399
    check-cast v20, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 1400
    .line 1401
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v1

    .line 1405
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    move-object/from16 v21, v0

    .line 1410
    .line 1411
    check-cast v21, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 1412
    .line 1413
    invoke-direct/range {v16 .. v21}, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;)V

    .line 1414
    .line 1415
    .line 1416
    return-object v16

    .line 1417
    :pswitch_17
    move-object/from16 v0, p1

    .line 1418
    .line 1419
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1420
    .line 1421
    move-object/from16 v1, p2

    .line 1422
    .line 1423
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1424
    .line 1425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1429
    .line 1430
    .line 1431
    new-instance v4, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 1432
    .line 1433
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v1

    .line 1437
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v1

    .line 1441
    move-object v5, v1

    .line 1442
    check-cast v5, Lnet/thunderbird/core/logging/Logger;

    .line 1443
    .line 1444
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v1

    .line 1448
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v1

    .line 1452
    move-object v6, v1

    .line 1453
    check-cast v6, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1454
    .line 1455
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v1

    .line 1459
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v1

    .line 1463
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 1464
    .line 1465
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v7

    .line 1469
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v1

    .line 1473
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v1

    .line 1477
    move-object v8, v1

    .line 1478
    check-cast v8, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 1479
    .line 1480
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v1

    .line 1484
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v0

    .line 1488
    move-object v9, v0

    .line 1489
    check-cast v9, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1490
    .line 1491
    invoke-direct/range {v4 .. v9}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1492
    .line 1493
    .line 1494
    return-object v4

    .line 1495
    :pswitch_18
    move-object/from16 v0, p1

    .line 1496
    .line 1497
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1498
    .line 1499
    move-object/from16 v1, p2

    .line 1500
    .line 1501
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1502
    .line 1503
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1507
    .line 1508
    .line 1509
    new-instance v1, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 1510
    .line 1511
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v2

    .line 1515
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v2

    .line 1519
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1520
    .line 1521
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v3

    .line 1525
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v3

    .line 1529
    check-cast v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1530
    .line 1531
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v4

    .line 1535
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v4

    .line 1539
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1540
    .line 1541
    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v4

    .line 1545
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v5

    .line 1549
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1554
    .line 1555
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1556
    .line 1557
    .line 1558
    return-object v1

    .line 1559
    :pswitch_19
    move-object/from16 v0, p1

    .line 1560
    .line 1561
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1562
    .line 1563
    move-object/from16 v1, p2

    .line 1564
    .line 1565
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1566
    .line 1567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1571
    .line 1572
    .line 1573
    new-instance v1, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 1574
    .line 1575
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v2

    .line 1579
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v2

    .line 1583
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1584
    .line 1585
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v3

    .line 1589
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v3

    .line 1593
    check-cast v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1594
    .line 1595
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v4

    .line 1599
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v4

    .line 1603
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1604
    .line 1605
    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v4

    .line 1609
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v5

    .line 1613
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v0

    .line 1617
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1618
    .line 1619
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1620
    .line 1621
    .line 1622
    return-object v1

    .line 1623
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1624
    .line 1625
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1626
    .line 1627
    move-object/from16 v1, p2

    .line 1628
    .line 1629
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1630
    .line 1631
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1635
    .line 1636
    .line 1637
    new-instance v1, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 1638
    .line 1639
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v2

    .line 1643
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v2

    .line 1647
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1648
    .line 1649
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v3

    .line 1653
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v3

    .line 1657
    check-cast v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1658
    .line 1659
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v4

    .line 1663
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v4

    .line 1667
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1668
    .line 1669
    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v4

    .line 1673
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v5

    .line 1677
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v0

    .line 1681
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1682
    .line 1683
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1684
    .line 1685
    .line 1686
    return-object v1

    .line 1687
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1688
    .line 1689
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1690
    .line 1691
    move-object/from16 v1, p2

    .line 1692
    .line 1693
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1694
    .line 1695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1699
    .line 1700
    .line 1701
    new-instance v1, Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;

    .line 1702
    .line 1703
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v2

    .line 1707
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v2

    .line 1711
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 1712
    .line 1713
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v3

    .line 1717
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v3

    .line 1721
    check-cast v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 1722
    .line 1723
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v4

    .line 1727
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v4

    .line 1731
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 1732
    .line 1733
    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v4

    .line 1737
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v5

    .line 1741
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v0

    .line 1745
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1746
    .line 1747
    invoke-direct {v1, v2, v3, v4, v0}, Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;-><init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V

    .line 1748
    .line 1749
    .line 1750
    return-object v1

    .line 1751
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1752
    .line 1753
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1754
    .line 1755
    move-object/from16 v1, p2

    .line 1756
    .line 1757
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1758
    .line 1759
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1763
    .line 1764
    .line 1765
    new-instance v1, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;

    .line 1766
    .line 1767
    const-class v2, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 1768
    .line 1769
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v2

    .line 1773
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v2

    .line 1777
    check-cast v2, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 1778
    .line 1779
    const-class v3, Ljava/util/List;

    .line 1780
    .line 1781
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v4

    .line 1785
    invoke-virtual {v4}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v4

    .line 1789
    const-class v5, Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;

    .line 1790
    .line 1791
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v5

    .line 1795
    invoke-virtual {v5}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v5

    .line 1799
    const-string v6, "<"

    .line 1800
    .line 1801
    const-string v7, ">"

    .line 1802
    .line 1803
    invoke-static {v4, v6, v5, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v4

    .line 1807
    new-instance v5, Lorg/koin/core/qualifier/StringQualifier;

    .line 1808
    .line 1809
    invoke-direct {v5, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1810
    .line 1811
    .line 1812
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v3

    .line 1816
    invoke-virtual {v0, v3, v10, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v3

    .line 1820
    check-cast v3, Ljava/util/List;

    .line 1821
    .line 1822
    const-class v4, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 1823
    .line 1824
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v4

    .line 1828
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v4

    .line 1832
    check-cast v4, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 1833
    .line 1834
    const-class v5, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 1835
    .line 1836
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v5

    .line 1840
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v0

    .line 1844
    check-cast v0, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 1845
    .line 1846
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;-><init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Ljava/util/List;Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;)V

    .line 1847
    .line 1848
    .line 1849
    return-object v1

    .line 1850
    nop

    .line 1851
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
