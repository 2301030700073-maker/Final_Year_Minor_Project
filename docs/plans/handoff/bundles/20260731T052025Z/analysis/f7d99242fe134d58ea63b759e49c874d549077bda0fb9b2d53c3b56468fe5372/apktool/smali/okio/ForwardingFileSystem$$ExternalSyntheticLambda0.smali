.class public final synthetic Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v0, v0, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lapp/k9mail/K9App;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Lorg/koin/core/module/Module;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v11, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/16 v3, 0xa

    .line 29
    .line 30
    invoke-direct {v11, v3, v0}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 34
    .line 35
    const-class v0, Landroid/app/Application;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    sget-object v8, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    sget-object v12, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 45
    .line 46
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 50
    .line 51
    invoke-direct {v0, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 55
    .line 56
    .line 57
    const-class v3, Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v4, v7, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iput-object v4, v7, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v3, 0x3a

    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v1, v1, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-object v6

    .line 107
    :pswitch_0
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 108
    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    check-cast v1, [B

    .line 112
    .line 113
    new-instance v2, Lorg/jetbrains/compose/resources/ImageCache$Vector;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    new-instance v4, Lorg/xml/sax/InputSource;

    .line 130
    .line 131
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 132
    .line 133
    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v3, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 151
    .line 152
    invoke-direct {v3, v1}, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;-><init>(Lorg/w3c/dom/Element;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 159
    .line 160
    const/16 v4, 0xd

    .line 161
    .line 162
    invoke-direct {v1, v4}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 163
    .line 164
    .line 165
    new-instance v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 166
    .line 167
    const-string/jumbo v4, "width"

    .line 168
    .line 169
    .line 170
    invoke-static {v3, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v4, v0}, Lorg/minidns/util/Hex;->parseDp(Ljava/lang/String;Landroidx/compose/ui/unit/Density;)F

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    const-string v4, "height"

    .line 179
    .line 180
    invoke-static {v3, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4, v0}, Lorg/minidns/util/Hex;->parseDp(Ljava/lang/String;Landroidx/compose/ui/unit/Density;)F

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    const-string/jumbo v0, "viewportWidth"

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const/4 v4, 0x0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    .line 198
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    move v9, v0

    .line 203
    goto :goto_0

    .line 204
    :cond_0
    move v9, v4

    .line 205
    :goto_0
    const-string/jumbo v0, "viewportHeight"

    .line 206
    .line 207
    .line 208
    invoke-static {v3, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    .line 214
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    :cond_1
    move v10, v4

    .line 219
    const-string v0, "autoMirrored"

    .line 220
    .line 221
    invoke-static {v3, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string v4, "true"

    .line 226
    .line 227
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    const/16 v15, 0x61

    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    const-wide/16 v11, 0x0

    .line 235
    .line 236
    const/4 v13, 0x0

    .line 237
    invoke-direct/range {v5 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v5, v1}, Lkotlin/text/StringsKt__IndentKt;->parseVectorNodes(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Lokhttp3/Headers$Builder;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-direct {v2, v0}, Lorg/jetbrains/compose/resources/ImageCache$Vector;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    .line 248
    .line 249
    .line 250
    return-object v2

    .line 251
    :pswitch_1
    check-cast v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;

    .line 252
    .line 253
    move-object/from16 v1, p1

    .line 254
    .line 255
    check-cast v1, Landroidx/activity/result/ActivityResult;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    new-instance v2, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$OnOAuthResult;

    .line 261
    .line 262
    iget v3, v1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 263
    .line 264
    iget-object v1, v1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 265
    .line 266
    invoke-direct {v2, v1, v3}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$OnOAuthResult;-><init>(Landroid/content/Intent;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->event(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    return-object v6

    .line 273
    :pswitch_2
    check-cast v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 274
    .line 275
    move-object/from16 v1, p1

    .line 276
    .line 277
    check-cast v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;

    .line 283
    .line 284
    if-eqz v2, :cond_3

    .line 285
    .line 286
    check-cast v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;

    .line 287
    .line 288
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;->accountId:Ljava/lang/String;

    .line 289
    .line 290
    if-eqz v1, :cond_2

    .line 291
    .line 292
    new-instance v2, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions;

    .line 293
    .line 294
    invoke-direct {v2, v1}, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v2}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_2
    const-string v0, "Account ID must not be null when navigating to AccountSetupRoute.AccountSetup"

    .line 302
    .line 303
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_3
    sget-object v2, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailScanQrCode;->INSTANCE:Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailScanQrCode;

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_4

    .line 314
    .line 315
    sget-object v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_4
    sget-object v2, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailSignIn;->INSTANCE:Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailSignIn;

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_5

    .line 328
    .line 329
    sget-object v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    :goto_1
    move-object v3, v6

    .line 335
    goto :goto_2

    .line 336
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 337
    .line 338
    .line 339
    :goto_2
    return-object v3

    .line 340
    :pswitch_3
    check-cast v0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;

    .line 341
    .line 342
    move-object/from16 v1, p1

    .line 343
    .line 344
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v4, v4}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 350
    .line 351
    .line 352
    iget-object v0, v0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->listener:Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

    .line 353
    .line 354
    if-eqz v0, :cond_6

    .line 355
    .line 356
    invoke-interface {v0, v1}, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;->onNotificationActionClick(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V

    .line 357
    .line 358
    .line 359
    :cond_6
    return-object v6

    .line 360
    :pswitch_4
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SortCriteriaLoaded;

    .line 361
    .line 362
    move-object/from16 v1, p1

    .line 363
    .line 364
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SortCriteriaLoaded;->sortCriteriaPerAccount:Ljava/util/Map;

    .line 370
    .line 371
    invoke-static {v0}, Lokio/Okio;->toImmutableMap(Ljava/util/Map;)Lkotlinx/collections/immutable/PersistentMap;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    const/4 v8, 0x0

    .line 376
    const/16 v9, 0x7fb

    .line 377
    .line 378
    const/4 v2, 0x0

    .line 379
    const/4 v3, 0x0

    .line 380
    const/4 v5, 0x0

    .line 381
    const/4 v6, 0x0

    .line 382
    const/4 v7, 0x0

    .line 383
    invoke-static/range {v1 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    return-object v0

    .line 388
    :pswitch_5
    move-object v2, v0

    .line 389
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 390
    .line 391
    move-object/from16 v1, p1

    .line 392
    .line 393
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    iget-object v0, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 399
    .line 400
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 401
    .line 402
    sget-object v3, Lnet/thunderbird/feature/account/UnifiedAccountIdKt;->UnifiedAccountId:Lnet/thunderbird/feature/account/AccountId;

    .line 403
    .line 404
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    const/16 v9, 0x5fe

    .line 409
    .line 410
    const/4 v3, 0x0

    .line 411
    const/4 v4, 0x0

    .line 412
    const/4 v5, 0x0

    .line 413
    const/4 v6, 0x0

    .line 414
    const/4 v7, 0x0

    .line 415
    invoke-static/range {v1 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    return-object v0

    .line 420
    :pswitch_6
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusEnter;

    .line 421
    .line 422
    move-object/from16 v1, p1

    .line 423
    .line 424
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    iget-object v6, v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusEnter;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 430
    .line 431
    const/4 v8, 0x0

    .line 432
    const/16 v9, 0x7df

    .line 433
    .line 434
    const/4 v2, 0x0

    .line 435
    const/4 v3, 0x0

    .line 436
    const/4 v4, 0x0

    .line 437
    const/4 v5, 0x0

    .line 438
    const/4 v7, 0x0

    .line 439
    invoke-static/range {v1 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    return-object v0

    .line 444
    :pswitch_7
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;

    .line 445
    .line 446
    move-object/from16 v1, p1

    .line 447
    .line 448
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 454
    .line 455
    return-object v0

    .line 456
    :pswitch_8
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateFooter;

    .line 457
    .line 458
    move-object/from16 v6, p1

    .line 459
    .line 460
    check-cast v6, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 461
    .line 462
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateFooter;->footer:Ljava/lang/String;

    .line 466
    .line 467
    if-eqz v1, :cond_7

    .line 468
    .line 469
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    xor-int/2addr v1, v5

    .line 474
    if-ne v1, v5, :cond_7

    .line 475
    .line 476
    move v4, v5

    .line 477
    :cond_7
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateFooter;->footer:Ljava/lang/String;

    .line 478
    .line 479
    if-nez v0, :cond_8

    .line 480
    .line 481
    goto :goto_3

    .line 482
    :cond_8
    move-object v2, v0

    .line 483
    :goto_3
    new-instance v12, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 484
    .line 485
    invoke-direct {v12, v2, v4}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;-><init>(Ljava/lang/String;Z)V

    .line 486
    .line 487
    .line 488
    const/4 v13, 0x0

    .line 489
    const/16 v14, 0x6ff

    .line 490
    .line 491
    const/4 v7, 0x0

    .line 492
    const/4 v8, 0x0

    .line 493
    const/4 v9, 0x0

    .line 494
    const/4 v10, 0x0

    .line 495
    const/4 v11, 0x0

    .line 496
    invoke-static/range {v6 .. v14}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    return-object v0

    .line 501
    :pswitch_9
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 502
    .line 503
    move-object/from16 v1, p1

    .line 504
    .line 505
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 511
    .line 512
    const/4 v3, 0x3

    .line 513
    invoke-direct {v2, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 514
    .line 515
    .line 516
    move-object v3, v0

    .line 517
    check-cast v3, Lkotlin/collections/AbstractCollection;

    .line 518
    .line 519
    invoke-virtual {v3}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    new-instance v7, Landroidx/compose/runtime/Latch$await$2$2;

    .line 524
    .line 525
    const/16 v8, 0x9

    .line 526
    .line 527
    invoke-direct {v7, v8, v2, v0}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 531
    .line 532
    invoke-direct {v2, v4, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 533
    .line 534
    .line 535
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$4;

    .line 536
    .line 537
    invoke-direct {v4, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 541
    .line 542
    const v8, 0x2fd4df92

    .line 543
    .line 544
    .line 545
    invoke-direct {v0, v8, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v3, v7, v2, v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 549
    .line 550
    .line 551
    return-object v6

    .line 552
    :pswitch_a
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 553
    .line 554
    move-object/from16 v1, p1

    .line 555
    .line 556
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 557
    .line 558
    iget-object v2, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 559
    .line 560
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 565
    .line 566
    .line 567
    move-result v7

    .line 568
    const v8, 0x46bd26c

    .line 569
    .line 570
    .line 571
    if-eq v7, v8, :cond_a

    .line 572
    .line 573
    const v4, 0x70477df5

    .line 574
    .line 575
    .line 576
    if-eq v7, v4, :cond_9

    .line 577
    .line 578
    const v4, 0x7342860f

    .line 579
    .line 580
    .line 581
    if-ne v7, v4, :cond_c

    .line 582
    .line 583
    const-string v4, "ALWAYS"

    .line 584
    .line 585
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-eqz v2, :cond_c

    .line 590
    .line 591
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 592
    .line 593
    new-instance v7, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;

    .line 594
    .line 595
    invoke-direct {v7, v0, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;I)V

    .line 596
    .line 597
    .line 598
    invoke-direct {v2, v4, v7}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 599
    .line 600
    .line 601
    goto :goto_4

    .line 602
    :cond_9
    const-string v4, "ONLY_FROM_CONTACTS"

    .line 603
    .line 604
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    if-eqz v2, :cond_c

    .line 609
    .line 610
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 611
    .line 612
    new-instance v7, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;

    .line 613
    .line 614
    const/4 v8, 0x2

    .line 615
    invoke-direct {v7, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;I)V

    .line 616
    .line 617
    .line 618
    invoke-direct {v2, v4, v7}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 619
    .line 620
    .line 621
    goto :goto_4

    .line 622
    :cond_a
    const-string v7, "NEVER"

    .line 623
    .line 624
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    if-eqz v2, :cond_c

    .line 629
    .line 630
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 631
    .line 632
    new-instance v8, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;

    .line 633
    .line 634
    invoke-direct {v8, v0, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;I)V

    .line 635
    .line 636
    .line 637
    invoke-direct {v2, v7, v8}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 638
    .line 639
    .line 640
    :goto_4
    iget-object v0, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 641
    .line 642
    :cond_b
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    move-object v7, v4

    .line 647
    check-cast v7, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 648
    .line 649
    iget-boolean v8, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    .line 650
    .line 651
    invoke-static {v7, v3, v2, v8, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZI)Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 652
    .line 653
    .line 654
    move-result-object v7

    .line 655
    invoke-virtual {v0, v4, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    if-eqz v4, :cond_b

    .line 660
    .line 661
    move-object v3, v6

    .line 662
    goto :goto_5

    .line 663
    :cond_c
    iget-object v0, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    const-string v1, "Invalid showPictures value: "

    .line 670
    .line 671
    invoke-static {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :goto_5
    return-object v3

    .line 675
    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 676
    .line 677
    move-object/from16 v1, p1

    .line 678
    .line 679
    check-cast v1, Ljava/lang/Integer;

    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 686
    .line 687
    .line 688
    return-object v6

    .line 689
    :pswitch_c
    move-object v8, v0

    .line 690
    check-cast v8, Landroidx/compose/ui/graphics/SolidColor;

    .line 691
    .line 692
    move-object/from16 v7, p1

    .line 693
    .line 694
    check-cast v7, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 695
    .line 696
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    const/high16 v0, 0x40400000    # 3.0f

    .line 700
    .line 701
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    int-to-long v1, v1

    .line 706
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    int-to-long v3, v0

    .line 711
    const/16 v0, 0x20

    .line 712
    .line 713
    shl-long v0, v1, v0

    .line 714
    .line 715
    const-wide v9, 0xffffffffL

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    and-long/2addr v3, v9

    .line 721
    or-long v13, v0, v3

    .line 722
    .line 723
    const/4 v15, 0x0

    .line 724
    const/16 v16, 0xf6

    .line 725
    .line 726
    const-wide/16 v9, 0x0

    .line 727
    .line 728
    const-wide/16 v11, 0x0

    .line 729
    .line 730
    invoke-static/range {v7 .. v16}, Landroidx/compose/ui/Modifier$-CC;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 731
    .line 732
    .line 733
    return-object v6

    .line 734
    :pswitch_d
    check-cast v0, Lkotlinx/serialization/ContextualSerializer;

    .line 735
    .line 736
    move-object/from16 v1, p1

    .line 737
    .line 738
    check-cast v1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 739
    .line 740
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 741
    .line 742
    .line 743
    iget-object v2, v0, Lkotlinx/serialization/ContextualSerializer;->serializableClass:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 746
    .line 747
    invoke-interface {v2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    const-string v3, "first"

    .line 752
    .line 753
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 754
    .line 755
    .line 756
    iget-object v2, v0, Lkotlinx/serialization/ContextualSerializer;->fallbackSerializer:Lkotlinx/serialization/KSerializer;

    .line 757
    .line 758
    invoke-interface {v2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    const-string v3, "second"

    .line 763
    .line 764
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 765
    .line 766
    .line 767
    iget-object v0, v0, Lkotlinx/serialization/ContextualSerializer;->typeArgumentsSerializers:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 770
    .line 771
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    const-string v2, "third"

    .line 776
    .line 777
    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 778
    .line 779
    .line 780
    return-object v6

    .line 781
    :pswitch_e
    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 782
    .line 783
    move-object/from16 v1, p1

    .line 784
    .line 785
    check-cast v1, Ljava/lang/Integer;

    .line 786
    .line 787
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    .line 792
    .line 793
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .line 795
    .line 796
    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    const-string v3, ": "

    .line 804
    .line 805
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    return-object v0

    .line 824
    :pswitch_f
    check-cast v0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 825
    .line 826
    move-object/from16 v1, p1

    .line 827
    .line 828
    check-cast v1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 829
    .line 830
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    iget-object v0, v0, Lkotlinx/serialization/internal/ObjectSerializer;->_annotations:Ljava/util/List;

    .line 834
    .line 835
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    iput-object v0, v1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 839
    .line 840
    return-object v6

    .line 841
    :pswitch_10
    check-cast v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 842
    .line 843
    move-object/from16 v1, p1

    .line 844
    .line 845
    check-cast v1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 846
    .line 847
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    .line 849
    .line 850
    const-string v2, "type"

    .line 851
    .line 852
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 853
    .line 854
    invoke-virtual {v1, v2, v3}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 855
    .line 856
    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    const-string v3, "kotlinx.serialization.Polymorphic<"

    .line 860
    .line 861
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    iget-object v3, v0, Lkotlinx/serialization/PolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    .line 865
    .line 866
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 867
    .line 868
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    const/16 v3, 0x3e

    .line 876
    .line 877
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    sget-object v3, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    .line 885
    .line 886
    new-array v4, v4, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 887
    .line 888
    invoke-static {v2, v3, v4}, Lokhttp3/Handshake$Companion;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlin/ranges/RangesKt;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    const-string/jumbo v3, "value"

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 896
    .line 897
    .line 898
    iget-object v0, v0, Lkotlinx/serialization/PolymorphicSerializer;->_annotations:Ljava/util/List;

    .line 899
    .line 900
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    .line 902
    .line 903
    iput-object v0, v1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 904
    .line 905
    return-object v6

    .line 906
    :pswitch_11
    check-cast v0, Lokio/ForwardingFileSystem;

    .line 907
    .line 908
    move-object/from16 v1, p1

    .line 909
    .line 910
    check-cast v1, Lokio/Path;

    .line 911
    .line 912
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 913
    .line 914
    .line 915
    const-string v2, "listRecursively"

    .line 916
    .line 917
    invoke-virtual {v0, v1, v2}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    return-object v0

    .line 922
    nop

    .line 923
    :pswitch_data_0
    .packed-switch 0x0
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
