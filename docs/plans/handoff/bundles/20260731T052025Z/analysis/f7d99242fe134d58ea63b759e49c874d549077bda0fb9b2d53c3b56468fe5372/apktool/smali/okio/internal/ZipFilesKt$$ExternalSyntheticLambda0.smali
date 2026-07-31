.class public final synthetic Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v0, p1

    .line 15
    .line 16
    check-cast v0, Lkotlin/reflect/KClass;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_0
    move-object/from16 v0, p1

    .line 27
    .line 28
    check-cast v0, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lorg/w3c/dom/Node;

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v1, "item"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :pswitch_1
    move-object/from16 v0, p1

    .line 56
    .line 57
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceItem;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_2
    move-object/from16 v0, p1

    .line 66
    .line 67
    check-cast v0, [B

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v1, "Android platform doesn\'t support SVG format."

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :pswitch_3
    move-object/from16 v0, p1

    .line 81
    .line 82
    check-cast v0, Lokio/internal/ZipEntry;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v1, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 88
    .line 89
    iget-object v0, v0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->access$keepPath(Lokio/Path;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    :pswitch_4
    move-object/from16 v0, p1

    .line 101
    .line 102
    check-cast v0, Lorg/koin/core/module/Module;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance v9, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/4 v1, 0x2

    .line 110
    invoke-direct {v9, v1, v4}, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(IB)V

    .line 111
    .line 112
    .line 113
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 114
    .line 115
    const-class v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    sget-object v11, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    sget-object v15, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 125
    .line 126
    move-object v6, v11

    .line 127
    move-object v10, v15

    .line 128
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 132
    .line 133
    invoke-direct {v1, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 137
    .line 138
    .line 139
    new-instance v14, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    const/4 v1, 0x3

    .line 142
    invoke-direct {v14, v1, v4}, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(IB)V

    .line 143
    .line 144
    .line 145
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 146
    .line 147
    const-class v1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;

    .line 148
    .line 149
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    const/4 v13, 0x0

    .line 154
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 158
    .line 159
    invoke-direct {v1, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 163
    .line 164
    .line 165
    new-instance v14, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    const/4 v1, 0x4

    .line 168
    invoke-direct {v14, v1, v4}, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(IB)V

    .line 169
    .line 170
    .line 171
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 172
    .line 173
    const-class v1, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;

    .line 174
    .line 175
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 180
    .line 181
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 185
    .line 186
    invoke-direct {v1, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 190
    .line 191
    .line 192
    new-instance v14, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 193
    .line 194
    const/4 v1, 0x5

    .line 195
    invoke-direct {v14, v1, v4}, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(IB)V

    .line 196
    .line 197
    .line 198
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 199
    .line 200
    const-class v1, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 201
    .line 202
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v10, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 210
    .line 211
    .line 212
    return-object v3

    .line 213
    :pswitch_5
    move-object/from16 v0, p1

    .line 214
    .line 215
    check-cast v0, Lkotlinx/serialization/json/JsonBuilder;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance v5, Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v6, Ljava/util/HashMap;

    .line 226
    .line 227
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 228
    .line 229
    .line 230
    new-instance v7, Ljava/util/HashMap;

    .line 231
    .line 232
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 233
    .line 234
    .line 235
    new-instance v8, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance v9, Ljava/util/HashMap;

    .line 241
    .line 242
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 243
    .line 244
    .line 245
    const-class v1, Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 246
    .line 247
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    sget-object v2, Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;->INSTANCE:Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;

    .line 252
    .line 253
    new-instance v2, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 254
    .line 255
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Lkotlinx/serialization/modules/ContextualProvider;

    .line 263
    .line 264
    if-eqz v4, :cond_1

    .line 265
    .line 266
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_0

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Lkotlin/time/InstantFormatException;

    .line 274
    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v3, "Contextual serializer or serializer provider for "

    .line 278
    .line 279
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v1, " already registered in this module"

    .line 286
    .line 287
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :cond_1
    :goto_0
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-static {v1}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    new-instance v4, Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 310
    .line 311
    invoke-direct/range {v4 .. v10}, Lkotlinx/serialization/modules/SerialModuleImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 312
    .line 313
    .line 314
    iput-object v4, v0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 315
    .line 316
    return-object v3

    .line 317
    :pswitch_6
    move-object/from16 v0, p1

    .line 318
    .line 319
    check-cast v0, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-static {v0}, Lorg/jsoup/nodes/NodeUtils;->from(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    return-object v0

    .line 329
    :pswitch_7
    move-object/from16 v0, p1

    .line 330
    .line 331
    check-cast v0, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-interface {v0}, Lnet/thunderbird/feature/notification/api/content/InAppNotification;->getInAppNotificationStyle()Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    instance-of v0, v0, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerInlineNotification;

    .line 341
    .line 342
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    return-object v0

    .line 347
    :pswitch_8
    move-object/from16 v0, p1

    .line 348
    .line 349
    check-cast v0, Lorg/koin/core/module/Module;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    new-instance v8, Lorg/koin/core/qualifier/TypeQualifier;

    .line 355
    .line 356
    const-class v5, Landroidx/work/Operation$State;

    .line 357
    .line 358
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-direct {v8, v5}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 363
    .line 364
    .line 365
    new-instance v9, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 366
    .line 367
    const/16 v5, 0x1b

    .line 368
    .line 369
    invoke-direct {v9, v5}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 370
    .line 371
    .line 372
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 373
    .line 374
    const-class v6, Ljava/util/List;

    .line 375
    .line 376
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    sget-object v11, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 381
    .line 382
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 383
    .line 384
    move-object v6, v11

    .line 385
    move-object v10, v15

    .line 386
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 387
    .line 388
    .line 389
    new-instance v6, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 390
    .line 391
    invoke-direct {v6, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v6}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 395
    .line 396
    .line 397
    new-instance v13, Lorg/koin/core/qualifier/StringQualifier;

    .line 398
    .line 399
    const-string v5, "System"

    .line 400
    .line 401
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 402
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-direct {v13, v5}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    new-instance v14, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 414
    .line 415
    const/16 v5, 0x1c

    .line 416
    .line 417
    invoke-direct {v14, v5}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 418
    .line 419
    .line 420
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 421
    .line 422
    const-class v5, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;

    .line 423
    .line 424
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 425
    .line 426
    .line 427
    move-result-object v12

    .line 428
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 429
    .line 430
    .line 431
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 432
    .line 433
    invoke-direct {v5, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 437
    .line 438
    .line 439
    new-instance v13, Lorg/koin/core/qualifier/TypeQualifier;

    .line 440
    .line 441
    const-class v5, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;

    .line 442
    .line 443
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-direct {v13, v5}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 448
    .line 449
    .line 450
    new-instance v14, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 451
    .line 452
    const/16 v5, 0x1d

    .line 453
    .line 454
    invoke-direct {v14, v5}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 455
    .line 456
    .line 457
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 458
    .line 459
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 460
    .line 461
    .line 462
    move-result-object v12

    .line 463
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 464
    .line 465
    .line 466
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 467
    .line 468
    invoke-direct {v1, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 472
    .line 473
    .line 474
    new-instance v14, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 475
    .line 476
    invoke-direct {v14, v2, v4}, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(IB)V

    .line 477
    .line 478
    .line 479
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 480
    .line 481
    const-class v1, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$Factory;

    .line 482
    .line 483
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 484
    .line 485
    .line 486
    move-result-object v12

    .line 487
    const/4 v13, 0x0

    .line 488
    sget-object v15, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 489
    .line 490
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 491
    .line 492
    .line 493
    invoke-static {v10, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 494
    .line 495
    .line 496
    return-object v3

    .line 497
    :pswitch_9
    move-object/from16 v0, p1

    .line 498
    .line 499
    check-cast v0, Lorg/koin/core/module/Module;

    .line 500
    .line 501
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    new-array v5, v2, [Lorg/koin/core/module/Module;

    .line 505
    .line 506
    sget-object v6, Lnet/thunderbird/feature/notification/impl/inject/NotificationModule_androidKt;->platformFeatureNotificationModule:Lorg/koin/core/module/Module;

    .line 507
    .line 508
    aput-object v6, v5, v4

    .line 509
    .line 510
    iget-object v6, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    new-instance v11, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 516
    .line 517
    invoke-direct {v11, v4}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 518
    .line 519
    .line 520
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 521
    .line 522
    const-class v5, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 523
    .line 524
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    sget-object v13, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 529
    .line 530
    const/4 v10, 0x0

    .line 531
    sget-object v17, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 532
    .line 533
    move-object v8, v13

    .line 534
    move-object/from16 v12, v17

    .line 535
    .line 536
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 537
    .line 538
    .line 539
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 540
    .line 541
    invoke-direct {v5, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 545
    .line 546
    .line 547
    new-instance v6, Lorg/koin/core/definition/KoinDefinition;

    .line 548
    .line 549
    invoke-direct {v6, v0, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 550
    .line 551
    .line 552
    const-class v5, Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 553
    .line 554
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    new-array v2, v2, [Lkotlin/reflect/KClass;

    .line 559
    .line 560
    aput-object v5, v2, v4

    .line 561
    .line 562
    invoke-static {v6, v2}, Lkotlin/io/ByteStreamsKt;->binds(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)V

    .line 563
    .line 564
    .line 565
    new-instance v15, Lorg/koin/core/qualifier/TypeQualifier;

    .line 566
    .line 567
    const-class v2, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;

    .line 568
    .line 569
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-direct {v15, v2}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 574
    .line 575
    .line 576
    new-instance v2, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 577
    .line 578
    const/16 v4, 0x15

    .line 579
    .line 580
    invoke-direct {v2, v4}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 581
    .line 582
    .line 583
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 584
    .line 585
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 586
    .line 587
    .line 588
    move-result-object v14

    .line 589
    move-object/from16 v16, v2

    .line 590
    .line 591
    invoke-direct/range {v12 .. v17}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 592
    .line 593
    .line 594
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 595
    .line 596
    invoke-direct {v1, v12}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 600
    .line 601
    .line 602
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 603
    .line 604
    const/16 v2, 0x16

    .line 605
    .line 606
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 607
    .line 608
    .line 609
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 610
    .line 611
    const-class v2, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 612
    .line 613
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 614
    .line 615
    .line 616
    move-result-object v14

    .line 617
    const/4 v15, 0x0

    .line 618
    move-object/from16 v16, v1

    .line 619
    .line 620
    invoke-direct/range {v12 .. v17}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 621
    .line 622
    .line 623
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 624
    .line 625
    invoke-direct {v1, v12}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 629
    .line 630
    .line 631
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 632
    .line 633
    const/16 v2, 0x17

    .line 634
    .line 635
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 636
    .line 637
    .line 638
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 639
    .line 640
    const-class v2, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 641
    .line 642
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 643
    .line 644
    .line 645
    move-result-object v14

    .line 646
    move-object/from16 v16, v1

    .line 647
    .line 648
    invoke-direct/range {v12 .. v17}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 649
    .line 650
    .line 651
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 652
    .line 653
    invoke-direct {v1, v12}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 657
    .line 658
    .line 659
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 660
    .line 661
    const/16 v2, 0x18

    .line 662
    .line 663
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 664
    .line 665
    .line 666
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 667
    .line 668
    const-class v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;

    .line 669
    .line 670
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 671
    .line 672
    .line 673
    move-result-object v14

    .line 674
    move-object/from16 v16, v1

    .line 675
    .line 676
    invoke-direct/range {v12 .. v17}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 677
    .line 678
    .line 679
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 680
    .line 681
    invoke-direct {v1, v12}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 685
    .line 686
    .line 687
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 688
    .line 689
    const/16 v2, 0x19

    .line 690
    .line 691
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 692
    .line 693
    .line 694
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 695
    .line 696
    const-class v2, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 697
    .line 698
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 699
    .line 700
    .line 701
    move-result-object v14

    .line 702
    move-object/from16 v16, v1

    .line 703
    .line 704
    invoke-direct/range {v12 .. v17}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 705
    .line 706
    .line 707
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 708
    .line 709
    invoke-direct {v1, v12}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 713
    .line 714
    .line 715
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 716
    .line 717
    const/16 v2, 0x1a

    .line 718
    .line 719
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 720
    .line 721
    .line 722
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 723
    .line 724
    const-class v2, Lcom/jcraft/jzlib/Adler32;

    .line 725
    .line 726
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 727
    .line 728
    .line 729
    move-result-object v14

    .line 730
    move-object/from16 v16, v1

    .line 731
    .line 732
    invoke-direct/range {v12 .. v17}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 733
    .line 734
    .line 735
    invoke-static {v12, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 736
    .line 737
    .line 738
    return-object v3

    .line 739
    :pswitch_a
    move-object/from16 v0, p1

    .line 740
    .line 741
    check-cast v0, Lokio/internal/ZipEntry;

    .line 742
    .line 743
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    .line 745
    .line 746
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 747
    .line 748
    return-object v0

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
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
