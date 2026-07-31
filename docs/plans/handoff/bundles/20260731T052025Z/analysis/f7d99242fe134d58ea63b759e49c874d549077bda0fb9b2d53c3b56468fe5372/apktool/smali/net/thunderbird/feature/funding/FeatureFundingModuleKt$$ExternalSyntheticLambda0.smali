.class public final synthetic Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v1, v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const-class v2, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-class v4, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 11
    .line 12
    const-class v5, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 13
    .line 14
    const-class v6, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    const/4 v8, 0x1

    .line 18
    const/16 v9, 0xa

    .line 19
    .line 20
    const-class v10, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 21
    .line 22
    const-class v11, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 23
    .line 24
    const-class v12, Lnet/thunderbird/core/logging/Logger;

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 31
    .line 32
    move-object/from16 v1, p2

    .line 33
    .line 34
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SelectAll;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getPreferences()Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    move-object v5, v4

    .line 80
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    const v10, 0xdfff

    .line 84
    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x1

    .line 89
    invoke-static/range {v5 .. v10}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v3}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v13, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 102
    .line 103
    invoke-direct {v13, v1, v2, v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    const-string v0, "Required value was null."

    .line 108
    .line 109
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-object v13

    .line 113
    :pswitch_0
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 114
    .line 115
    move-object/from16 v1, p2

    .line 116
    .line 117
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/FolderEvent$FolderLoaded;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/event/FolderEvent$FolderLoaded;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 126
    .line 127
    new-instance v2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    const/16 v3, 0xc

    .line 130
    .line 131
    invoke-direct {v2, v3, v1}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->withMetadata(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    return-object v0

    .line 139
    :pswitch_1
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 140
    .line 141
    move-object/from16 v1, p2

    .line 142
    .line 143
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SwipeActionsLoaded;

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
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SwipeActionsLoaded;->swipeActions:Ljava/util/Map;

    .line 152
    .line 153
    new-instance v2, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    invoke-direct {v2, v8, v1}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->withMetadata(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :pswitch_2
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 164
    .line 165
    move-object/from16 v1, p2

    .line 166
    .line 167
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object v2, v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 176
    .line 177
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;->sortCriteria:Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 178
    .line 179
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_2

    .line 190
    .line 191
    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_2
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 200
    .line 201
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-object v1, v4

    .line 208
    :goto_2
    new-instance v2, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    invoke-direct {v2, v7, v1}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->withMetadata(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0

    .line 218
    :pswitch_3
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 219
    .line 220
    move-object/from16 v1, p2

    .line 221
    .line 222
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    new-instance v2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    invoke-direct {v2, v9, v1}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {v0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->withPreferences(Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    return-object v0

    .line 240
    :pswitch_4
    move-object/from16 v1, p2

    .line 241
    .line 242
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    instance-of v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 251
    .line 252
    if-eqz v1, :cond_3

    .line 253
    .line 254
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 255
    .line 256
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 257
    .line 258
    const-string v1, "id: "

    .line 259
    .line 260
    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    goto :goto_4

    .line 265
    :cond_3
    instance-of v1, v0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 266
    .line 267
    const-string v2, ")"

    .line 268
    .line 269
    if-eqz v1, :cond_4

    .line 270
    .line 271
    check-cast v0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 272
    .line 273
    iget-object v1, v0, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iget-object v0, v0, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const-string v3, "(l: "

    .line 286
    .line 287
    const-string v4, ", r: "

    .line 288
    .line 289
    :goto_3
    invoke-static {v3, v1, v4, v0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    goto :goto_4

    .line 294
    :cond_4
    instance-of v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 295
    .line 296
    if-eqz v1, :cond_5

    .line 297
    .line 298
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 299
    .line 300
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->id:Ljava/lang/String;

    .line 301
    .line 302
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->name:Ljava/lang/String;

    .line 303
    .line 304
    const-string v3, "(id: "

    .line 305
    .line 306
    const-string v4, ", name: "

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :goto_4
    return-object v0

    .line 314
    :pswitch_5
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
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;->Factory:Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$Factory;

    .line 327
    .line 328
    return-object v0

    .line 329
    :pswitch_6
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 330
    .line 331
    move-object/from16 v1, p2

    .line 332
    .line 333
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    new-instance v14, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 342
    .line 343
    const-class v2, Lnet/thunderbird/feature/account/AccountId;

    .line 344
    .line 345
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v1, v3}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-eqz v1, :cond_6

    .line 354
    .line 355
    move-object v15, v1

    .line 356
    check-cast v15, Lnet/thunderbird/feature/account/AccountId;

    .line 357
    .line 358
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    move-object/from16 v16, v1

    .line 367
    .line 368
    check-cast v16, Lnet/thunderbird/core/logging/Logger;

    .line 369
    .line 370
    const-class v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 371
    .line 372
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    move-object/from16 v17, v1

    .line 381
    .line 382
    check-cast v17, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 383
    .line 384
    const-class v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 385
    .line 386
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    move-object/from16 v18, v1

    .line 395
    .line 396
    check-cast v18, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 397
    .line 398
    const-class v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 399
    .line 400
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    move-object/from16 v19, v1

    .line 409
    .line 410
    check-cast v19, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 411
    .line 412
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    move-object/from16 v20, v1

    .line 421
    .line 422
    check-cast v20, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 423
    .line 424
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    move-object/from16 v21, v0

    .line 433
    .line 434
    check-cast v21, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 435
    .line 436
    invoke-direct/range {v14 .. v21}, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;Lnet/thunderbird/core/common/resources/StringsResourceManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 437
    .line 438
    .line 439
    return-object v14

    .line 440
    :cond_6
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 441
    .line 442
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v3, "No value found for type \'"

    .line 453
    .line 454
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const/16 v1, 0x27

    .line 461
    .line 462
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :pswitch_7
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 474
    .line 475
    move-object/from16 v1, p2

    .line 476
    .line 477
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 486
    .line 487
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 496
    .line 497
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 506
    .line 507
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V

    .line 508
    .line 509
    .line 510
    return-object v1

    .line 511
    :pswitch_8
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 512
    .line 513
    move-object/from16 v1, p2

    .line 514
    .line 515
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 524
    .line 525
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    check-cast v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 534
    .line 535
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    check-cast v3, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 544
    .line 545
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 554
    .line 555
    invoke-direct {v1, v2, v3, v0}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;)V

    .line 556
    .line 557
    .line 558
    return-object v1

    .line 559
    :pswitch_9
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 560
    .line 561
    move-object/from16 v1, p2

    .line 562
    .line 563
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 564
    .line 565
    invoke-static {v0, v1, v10, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    check-cast v1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 570
    .line 571
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    check-cast v2, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 580
    .line 581
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    check-cast v3, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 590
    .line 591
    const-class v4, Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;

    .line 592
    .line 593
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    check-cast v0, Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;

    .line 602
    .line 603
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 604
    .line 605
    invoke-direct {v4, v1, v2, v0, v3}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;)V

    .line 606
    .line 607
    .line 608
    return-object v4

    .line 609
    :pswitch_a
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 610
    .line 611
    move-object/from16 v1, p2

    .line 612
    .line 613
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenRenderer;

    .line 622
    .line 623
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 624
    .line 625
    .line 626
    return-object v0

    .line 627
    :pswitch_b
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 628
    .line 629
    move-object/from16 v1, p2

    .line 630
    .line 631
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 640
    .line 641
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 642
    .line 643
    .line 644
    return-object v0

    .line 645
    :pswitch_c
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 646
    .line 647
    move-object/from16 v1, p2

    .line 648
    .line 649
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 650
    .line 651
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;

    .line 658
    .line 659
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 660
    .line 661
    .line 662
    return-object v0

    .line 663
    :pswitch_d
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 664
    .line 665
    move-object/from16 v1, p2

    .line 666
    .line 667
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 668
    .line 669
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 676
    .line 677
    const-class v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 678
    .line 679
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 688
    .line 689
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;)V

    .line 690
    .line 691
    .line 692
    return-object v1

    .line 693
    :pswitch_e
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 694
    .line 695
    move-object/from16 v1, p2

    .line 696
    .line 697
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 706
    .line 707
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    check-cast v3, Lnet/thunderbird/core/logging/Logger;

    .line 716
    .line 717
    const-class v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;

    .line 718
    .line 719
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;

    .line 728
    .line 729
    const-class v5, Ljava/util/List;

    .line 730
    .line 731
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    invoke-virtual {v7}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    const-class v8, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;

    .line 740
    .line 741
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 742
    .line 743
    .line 744
    move-result-object v8

    .line 745
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v8

    .line 749
    const-string v9, "<"

    .line 750
    .line 751
    const-string v10, ">"

    .line 752
    .line 753
    invoke-static {v7, v9, v8, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v7

    .line 757
    new-instance v8, Lorg/koin/core/qualifier/StringQualifier;

    .line 758
    .line 759
    invoke-direct {v8, v7}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    invoke-virtual {v0, v5, v1, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    check-cast v1, Ljava/util/List;

    .line 771
    .line 772
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 773
    .line 774
    .line 775
    move-result-object v5

    .line 776
    invoke-virtual {v0, v5, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    check-cast v0, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 781
    .line 782
    invoke-direct {v2, v3, v4, v1, v0}, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;Ljava/util/List;Lnet/thunderbird/core/common/resources/StringsResourceManager;)V

    .line 783
    .line 784
    .line 785
    return-object v2

    .line 786
    :pswitch_f
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 787
    .line 788
    move-object/from16 v1, p2

    .line 789
    .line 790
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 791
    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;

    .line 799
    .line 800
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 809
    .line 810
    const-class v3, Lkotlin/time/Clock;

    .line 811
    .line 812
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    check-cast v3, Lkotlin/time/Clock;

    .line 821
    .line 822
    const-class v4, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 823
    .line 824
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    check-cast v0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 833
    .line 834
    invoke-direct {v1, v2, v3, v0}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/time/Clock;Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;)V

    .line 835
    .line 836
    .line 837
    return-object v1

    .line 838
    :pswitch_10
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
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 851
    .line 852
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    check-cast v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 861
    .line 862
    const-class v3, Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;

    .line 863
    .line 864
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 865
    .line 866
    .line 867
    move-result-object v3

    .line 868
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    check-cast v0, Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;

    .line 873
    .line 874
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;)V

    .line 875
    .line 876
    .line 877
    return-object v1

    .line 878
    :pswitch_11
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 879
    .line 880
    move-object/from16 v1, p2

    .line 881
    .line 882
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 883
    .line 884
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 891
    .line 892
    const-class v2, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 893
    .line 894
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    check-cast v2, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 903
    .line 904
    const-class v3, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 905
    .line 906
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 907
    .line 908
    .line 909
    move-result-object v3

    .line 910
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    check-cast v0, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 915
    .line 916
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;-><init>(Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;)V

    .line 917
    .line 918
    .line 919
    return-object v1

    .line 920
    :pswitch_12
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 921
    .line 922
    move-object/from16 v1, p2

    .line 923
    .line 924
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 925
    .line 926
    const-class v2, Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 927
    .line 928
    invoke-static {v0, v1, v2, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    check-cast v0, Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 933
    .line 934
    new-instance v1, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 935
    .line 936
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;-><init>(Lnet/thunderbird/core/ui/theme/api/ThemeManager;)V

    .line 937
    .line 938
    .line 939
    return-object v1

    .line 940
    :pswitch_13
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 941
    .line 942
    move-object/from16 v1, p2

    .line 943
    .line 944
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    .line 951
    .line 952
    sget-object v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;->Factory:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$Factory;

    .line 953
    .line 954
    return-object v0

    .line 955
    :pswitch_14
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 956
    .line 957
    move-object/from16 v1, p2

    .line 958
    .line 959
    check-cast v1, Ljava/lang/Integer;

    .line 960
    .line 961
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    and-int/lit8 v2, v1, 0x3

    .line 966
    .line 967
    if-eq v2, v7, :cond_7

    .line 968
    .line 969
    move v3, v8

    .line 970
    :cond_7
    and-int/2addr v1, v8

    .line 971
    move-object v7, v0

    .line 972
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 973
    .line 974
    invoke-virtual {v7, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    if-eqz v0, :cond_8

    .line 979
    .line 980
    sget-object v4, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Folder:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 981
    .line 982
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 983
    .line 984
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 989
    .line 990
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    const/4 v12, 0x0

    .line 994
    const/16 v13, 0xb

    .line 995
    .line 996
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 997
    .line 998
    const/4 v9, 0x0

    .line 999
    const/4 v10, 0x0

    .line 1000
    const/high16 v11, 0x40800000    # 4.0f

    .line 1001
    .line 1002
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v5

    .line 1006
    const/16 v8, 0x180

    .line 1007
    .line 1008
    const/16 v9, 0x8

    .line 1009
    .line 1010
    const/4 v6, 0x0

    .line 1011
    invoke-static/range {v4 .. v9}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 1012
    .line 1013
    .line 1014
    goto :goto_5

    .line 1015
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1016
    .line 1017
    .line 1018
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1019
    .line 1020
    return-object v0

    .line 1021
    :pswitch_15
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1022
    .line 1023
    move-object/from16 v1, p2

    .line 1024
    .line 1025
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1026
    .line 1027
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    .line 1032
    .line 1033
    new-instance v0, Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

    .line 1034
    .line 1035
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1036
    .line 1037
    .line 1038
    return-object v0

    .line 1039
    :pswitch_16
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1040
    .line 1041
    move-object/from16 v1, p2

    .line 1042
    .line 1043
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1044
    .line 1045
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    .line 1050
    .line 1051
    sget-object v0, Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;->INSTANCE:Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

    .line 1052
    .line 1053
    return-object v0

    .line 1054
    :pswitch_17
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1055
    .line 1056
    move-object/from16 v1, p2

    .line 1057
    .line 1058
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1059
    .line 1060
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 1067
    .line 1068
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    return-object v0

    .line 1072
    :pswitch_18
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1073
    .line 1074
    move-object/from16 v1, p2

    .line 1075
    .line 1076
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1077
    .line 1078
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1082
    .line 1083
    .line 1084
    new-instance v1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 1085
    .line 1086
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    check-cast v3, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1095
    .line 1096
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v2

    .line 1100
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 1105
    .line 1106
    invoke-direct {v1, v3, v0}, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;)V

    .line 1107
    .line 1108
    .line 1109
    return-object v1

    .line 1110
    :pswitch_19
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1111
    .line 1112
    move-object/from16 v1, p2

    .line 1113
    .line 1114
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1115
    .line 1116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    const-class v4, Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 1123
    .line 1124
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v4

    .line 1128
    invoke-virtual {v1, v3, v4}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    check-cast v1, Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 1133
    .line 1134
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 1135
    .line 1136
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v4

    .line 1140
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v4

    .line 1144
    check-cast v4, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1145
    .line 1146
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 1155
    .line 1156
    invoke-direct {v3, v4, v0, v1}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;)V

    .line 1157
    .line 1158
    .line 1159
    return-object v3

    .line 1160
    :pswitch_1a
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1161
    .line 1162
    move-object/from16 v1, p2

    .line 1163
    .line 1164
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1165
    .line 1166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1170
    .line 1171
    .line 1172
    new-instance v1, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 1173
    .line 1174
    const-class v2, Landroid/content/Context;

    .line 1175
    .line 1176
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v2

    .line 1184
    check-cast v2, Landroid/content/Context;

    .line 1185
    .line 1186
    new-instance v3, Lorg/koin/core/qualifier/StringQualifier;

    .line 1187
    .line 1188
    const-string v4, "AppCoroutineScope"

    .line 1189
    .line 1190
    invoke-direct {v3, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    const-class v4, Lkotlinx/coroutines/CoroutineScope;

    .line 1194
    .line 1195
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v4

    .line 1199
    invoke-virtual {v0, v4, v13, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1204
    .line 1205
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    .line 1206
    .line 1207
    .line 1208
    return-object v1

    .line 1209
    :pswitch_1b
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1210
    .line 1211
    move-object/from16 v1, p2

    .line 1212
    .line 1213
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1214
    .line 1215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    new-instance v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 1222
    .line 1223
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 1224
    .line 1225
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    check-cast v2, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 1234
    .line 1235
    const-class v3, Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 1236
    .line 1237
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v3

    .line 1241
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v3

    .line 1245
    check-cast v3, Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 1246
    .line 1247
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v4

    .line 1251
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 1256
    .line 1257
    invoke-direct {v1, v2, v3, v0}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;-><init>(Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;Lnet/thunderbird/core/logging/Logger;)V

    .line 1258
    .line 1259
    .line 1260
    return-object v1

    .line 1261
    :pswitch_1c
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1262
    .line 1263
    move-object/from16 v1, p2

    .line 1264
    .line 1265
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1266
    .line 1267
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1271
    .line 1272
    .line 1273
    new-instance v0, Lnet/thunderbird/feature/funding/noop/NoOpFundingManager;

    .line 1274
    .line 1275
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1276
    .line 1277
    .line 1278
    return-object v0

    .line 1279
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
