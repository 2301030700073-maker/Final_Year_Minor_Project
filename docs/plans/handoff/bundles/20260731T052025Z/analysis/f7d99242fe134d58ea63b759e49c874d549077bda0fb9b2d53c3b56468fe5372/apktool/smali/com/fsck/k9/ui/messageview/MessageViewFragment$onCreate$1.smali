.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, " "

    .line 7
    .line 8
    const/16 v4, 0xa

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success;

    .line 21
    .line 22
    move-object/from16 v2, p2

    .line 23
    .line 24
    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->access$onCreateArchiveFolderSuccess(Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_0
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome;

    .line 38
    .line 39
    move-object/from16 v2, p2

    .line 40
    .line 41
    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :pswitch_1
    move-object/from16 v1, p1

    .line 53
    .line 54
    check-cast v1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 55
    .line 56
    move-object/from16 v2, p2

    .line 57
    .line 58
    check-cast v2, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_0

    .line 79
    .line 80
    invoke-interface {v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v5, v6

    .line 92
    :goto_0
    iput-boolean v5, v0, Lkotlinx/serialization/json/internal/JsonElementMarker;->isUnmarkedNull:Z

    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :pswitch_2
    move-object/from16 v1, p1

    .line 100
    .line 101
    check-cast v1, Ljava/util/List;

    .line 102
    .line 103
    move-object/from16 v2, p2

    .line 104
    .line 105
    check-cast v2, Ljava/lang/Number;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v3, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .line 125
    .line 126
    iput-object v3, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->actionOrder:Ljava/util/ArrayList;

    .line 127
    .line 128
    iput v2, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->cutoff:I

    .line 129
    .line 130
    iget-object v1, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 131
    .line 132
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 137
    .line 138
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    iget-object v10, v9, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 145
    .line 146
    iget-object v2, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->actionOrder:Ljava/util/ArrayList;

    .line 147
    .line 148
    new-instance v15, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_1

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 172
    .line 173
    iget-object v3, v3, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->token:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    iget v0, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->cutoff:I

    .line 180
    .line 181
    const/16 v19, 0x0

    .line 182
    .line 183
    const/16 v20, 0x3cf

    .line 184
    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v13, 0x0

    .line 188
    const/4 v14, 0x0

    .line 189
    const/16 v17, 0x0

    .line 190
    .line 191
    const/16 v18, 0x0

    .line 192
    .line 193
    move/from16 v16, v0

    .line 194
    .line 195
    invoke-static/range {v10 .. v20}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    const/4 v15, 0x0

    .line 200
    const/16 v16, 0x7b

    .line 201
    .line 202
    const/4 v10, 0x0

    .line 203
    const/4 v14, 0x0

    .line 204
    invoke-static/range {v9 .. v16}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v1, v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return-object v8

    .line 212
    :pswitch_3
    move-object/from16 v1, p1

    .line 213
    .line 214
    check-cast v1, Ljava/lang/Long;

    .line 215
    .line 216
    move-object/from16 v2, p2

    .line 217
    .line 218
    check-cast v2, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 226
    .line 227
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setTrashFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 228
    .line 229
    .line 230
    return-object v8

    .line 231
    :pswitch_4
    move-object/from16 v1, p1

    .line 232
    .line 233
    check-cast v1, Ljava/lang/Long;

    .line 234
    .line 235
    move-object/from16 v2, p2

    .line 236
    .line 237
    check-cast v2, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 245
    .line 246
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSpamFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 247
    .line 248
    .line 249
    return-object v8

    .line 250
    :pswitch_5
    move-object/from16 v1, p1

    .line 251
    .line 252
    check-cast v1, Ljava/lang/Long;

    .line 253
    .line 254
    move-object/from16 v2, p2

    .line 255
    .line 256
    check-cast v2, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSentFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 266
    .line 267
    .line 268
    return-object v8

    .line 269
    :pswitch_6
    move-object/from16 v1, p1

    .line 270
    .line 271
    check-cast v1, Ljava/lang/Long;

    .line 272
    .line 273
    move-object/from16 v2, p2

    .line 274
    .line 275
    check-cast v2, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 283
    .line 284
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDraftsFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 285
    .line 286
    .line 287
    return-object v8

    .line 288
    :pswitch_7
    move-object/from16 v1, p1

    .line 289
    .line 290
    check-cast v1, Ljava/lang/Long;

    .line 291
    .line 292
    move-object/from16 v2, p2

    .line 293
    .line 294
    check-cast v2, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 302
    .line 303
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setArchiveFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 304
    .line 305
    .line 306
    return-object v8

    .line 307
    :pswitch_8
    if-nez p1, :cond_2

    .line 308
    .line 309
    move-object/from16 v1, p2

    .line 310
    .line 311
    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 312
    .line 313
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 316
    .line 317
    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->access$onSnackbarInAppNotificationEvent(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lkotlin/coroutines/Continuation;)V

    .line 318
    .line 319
    .line 320
    throw v7

    .line 321
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    .line 322
    .line 323
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :pswitch_9
    move-object/from16 v1, p1

    .line 328
    .line 329
    check-cast v1, Lcom/fsck/k9/ui/managefolders/FolderListItem;

    .line 330
    .line 331
    move-object/from16 v2, p2

    .line 332
    .line 333
    check-cast v2, Ljava/lang/CharSequence;

    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    if-eqz v2, :cond_6

    .line 346
    .line 347
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_3

    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iget-object v1, v1, Lcom/fsck/k9/ui/managefolders/FolderListItem;->displayName:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    filled-new-array {v3}, [Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->splitToSequence$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Lkotlin/sequences/TakeWhileSequence;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    new-instance v3, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 379
    .line 380
    const/16 v4, 0x1d

    .line 381
    .line 382
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 383
    .line 384
    .line 385
    new-instance v4, Lkotlin/sequences/FilteringSequence;

    .line 386
    .line 387
    invoke-direct {v4, v2, v5, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_5

    .line 399
    .line 400
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    check-cast v3, Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    invoke-static {v1, v3, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-eqz v3, :cond_4

    .line 421
    .line 422
    goto :goto_2

    .line 423
    :cond_5
    move v5, v6

    .line 424
    :cond_6
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    return-object v0

    .line 429
    :pswitch_a
    move-object/from16 v1, p1

    .line 430
    .line 431
    check-cast v1, Lcom/fsck/k9/ui/choosefolder/FolderListItem;

    .line 432
    .line 433
    move-object/from16 v2, p2

    .line 434
    .line 435
    check-cast v2, Ljava/lang/CharSequence;

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 443
    .line 444
    sget v4, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    if-eqz v2, :cond_a

    .line 450
    .line 451
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-nez v0, :cond_7

    .line 456
    .line 457
    goto :goto_3

    .line 458
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    iget-object v1, v1, Lcom/fsck/k9/ui/choosefolder/FolderListItem;->displayName:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    filled-new-array {v3}, [Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->splitToSequence$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Lkotlin/sequences/TakeWhileSequence;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    new-instance v3, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 483
    .line 484
    const/16 v4, 0x1b

    .line 485
    .line 486
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 487
    .line 488
    .line 489
    new-instance v4, Lkotlin/sequences/FilteringSequence;

    .line 490
    .line 491
    invoke-direct {v4, v2, v5, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 492
    .line 493
    .line 494
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    if-eqz v3, :cond_9

    .line 503
    .line 504
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    check-cast v3, Ljava/lang/String;

    .line 509
    .line 510
    sget v4, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 511
    .line 512
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-static {v1, v3, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-eqz v3, :cond_8

    .line 527
    .line 528
    goto :goto_3

    .line 529
    :cond_9
    move v5, v6

    .line 530
    :cond_a
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    return-object v0

    .line 535
    :pswitch_b
    if-nez p1, :cond_b

    .line 536
    .line 537
    move-object/from16 v1, p2

    .line 538
    .line 539
    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 540
    .line 541
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 544
    .line 545
    invoke-static {v0, v1}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->access$onSnackbarInAppNotificationEvent(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;Lkotlin/coroutines/Continuation;)V

    .line 546
    .line 547
    .line 548
    move-object v7, v8

    .line 549
    goto :goto_4

    .line 550
    :cond_b
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 551
    .line 552
    .line 553
    :goto_4
    return-object v7

    .line 554
    :pswitch_c
    move-object/from16 v1, p1

    .line 555
    .line 556
    check-cast v1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 557
    .line 558
    move-object/from16 v2, p2

    .line 559
    .line 560
    check-cast v2, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 561
    .line 562
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    .line 565
    .line 566
    iget-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 567
    .line 568
    if-nez v3, :cond_c

    .line 569
    .line 570
    goto :goto_5

    .line 571
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-ne v2, v1, :cond_d

    .line 580
    .line 581
    goto :goto_5

    .line 582
    :cond_d
    if-eqz v2, :cond_f

    .line 583
    .line 584
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 585
    .line 586
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 587
    .line 588
    .line 589
    new-instance v2, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 590
    .line 591
    invoke-direct {v2, v4, v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    invoke-static {v0, v2}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 595
    .line 596
    .line 597
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 600
    .line 601
    if-eqz v1, :cond_e

    .line 602
    .line 603
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 604
    .line 605
    .line 606
    move-object v7, v1

    .line 607
    :cond_e
    iput-object v7, v0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 608
    .line 609
    goto :goto_5

    .line 610
    :cond_f
    iget-object v1, v0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 611
    .line 612
    if-eqz v1, :cond_10

    .line 613
    .line 614
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    .line 615
    .line 616
    .line 617
    :cond_10
    iput-object v7, v0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 618
    .line 619
    :goto_5
    return-object v8

    .line 620
    :pswitch_d
    move-object/from16 v1, p1

    .line 621
    .line 622
    check-cast v1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 623
    .line 624
    move-object/from16 v2, p2

    .line 625
    .line 626
    check-cast v2, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 627
    .line 628
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v0, Landroidx/compose/foundation/FocusableNode;

    .line 631
    .line 632
    iget-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 633
    .line 634
    if-nez v3, :cond_11

    .line 635
    .line 636
    goto/16 :goto_8

    .line 637
    .line 638
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-ne v2, v1, :cond_12

    .line 647
    .line 648
    goto/16 :goto_8

    .line 649
    .line 650
    :cond_12
    iget-object v1, v0, Landroidx/compose/foundation/FocusableNode;->onFocusChange:Lkotlin/jvm/functions/Function1;

    .line 651
    .line 652
    if-eqz v1, :cond_13

    .line 653
    .line 654
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    :cond_13
    sget-object v1, Landroidx/compose/foundation/FocusedBoundsObserverNode;->TraverseKey:Landroidx/compose/foundation/GestureNode$TraverseKey;

    .line 662
    .line 663
    if-eqz v2, :cond_15

    .line 664
    .line 665
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    new-instance v5, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 670
    .line 671
    const/16 v6, 0xf

    .line 672
    .line 673
    invoke-direct {v5, v0, v7, v6}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 674
    .line 675
    .line 676
    const/4 v6, 0x3

    .line 677
    invoke-static {v3, v7, v7, v5, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 678
    .line 679
    .line 680
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 681
    .line 682
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 683
    .line 684
    .line 685
    new-instance v5, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 686
    .line 687
    invoke-direct {v5, v4, v3, v0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v0, v5}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 691
    .line 692
    .line 693
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 696
    .line 697
    if-eqz v3, :cond_14

    .line 698
    .line 699
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 700
    .line 701
    .line 702
    goto :goto_6

    .line 703
    :cond_14
    move-object v3, v7

    .line 704
    :goto_6
    iput-object v3, v0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 705
    .line 706
    iget-object v3, v0, Landroidx/compose/foundation/FocusableNode;->globalLayoutCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 707
    .line 708
    if-eqz v3, :cond_17

    .line 709
    .line 710
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 715
    .line 716
    if-eqz v3, :cond_17

    .line 717
    .line 718
    iget-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 719
    .line 720
    if-eqz v3, :cond_17

    .line 721
    .line 722
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatingNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    .line 723
    .line 724
    .line 725
    goto :goto_7

    .line 726
    :cond_15
    iget-object v3, v0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 727
    .line 728
    if-eqz v3, :cond_16

    .line 729
    .line 730
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    .line 731
    .line 732
    .line 733
    :cond_16
    iput-object v7, v0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 734
    .line 735
    iget-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 736
    .line 737
    if-eqz v3, :cond_17

    .line 738
    .line 739
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatingNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    .line 740
    .line 741
    .line 742
    :cond_17
    :goto_7
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 743
    .line 744
    .line 745
    iget-object v1, v0, Landroidx/compose/foundation/FocusableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 746
    .line 747
    if-eqz v1, :cond_1a

    .line 748
    .line 749
    iget-object v3, v0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 750
    .line 751
    if-eqz v2, :cond_19

    .line 752
    .line 753
    if-eqz v3, :cond_18

    .line 754
    .line 755
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 756
    .line 757
    invoke-direct {v2, v3}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/FocusableNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 761
    .line 762
    .line 763
    iput-object v7, v0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 764
    .line 765
    :cond_18
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 766
    .line 767
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/FocusableNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 771
    .line 772
    .line 773
    iput-object v2, v0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 774
    .line 775
    goto :goto_8

    .line 776
    :cond_19
    if-eqz v3, :cond_1a

    .line 777
    .line 778
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 779
    .line 780
    invoke-direct {v2, v3}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/FocusableNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 784
    .line 785
    .line 786
    iput-object v7, v0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 787
    .line 788
    :cond_1a
    :goto_8
    return-object v8

    .line 789
    :pswitch_e
    move-object/from16 v1, p1

    .line 790
    .line 791
    check-cast v1, Ljava/util/List;

    .line 792
    .line 793
    move-object/from16 v3, p2

    .line 794
    .line 795
    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 796
    .line 797
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    sget-object v4, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE$3:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    .line 805
    .line 806
    sget-object v9, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE$2:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    .line 807
    .line 808
    sget-object v10, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE$1:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    .line 809
    .line 810
    sget-object v11, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    .line 811
    .line 812
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 813
    .line 814
    .line 815
    move-result v12

    .line 816
    if-ne v12, v5, :cond_1b

    .line 817
    .line 818
    move v12, v6

    .line 819
    goto/16 :goto_10

    .line 820
    .line 821
    :cond_1b
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 822
    .line 823
    .line 824
    move-result v12

    .line 825
    add-int/2addr v12, v2

    .line 826
    if-ltz v12, :cond_1f

    .line 827
    .line 828
    move v13, v2

    .line 829
    :goto_9
    add-int/lit8 v14, v12, -0x1

    .line 830
    .line 831
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v15

    .line 835
    check-cast v15, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 836
    .line 837
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v16

    .line 841
    if-nez v16, :cond_2b

    .line 842
    .line 843
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v16

    .line 847
    if-nez v16, :cond_2b

    .line 848
    .line 849
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    move-result v16

    .line 853
    if-nez v16, :cond_2b

    .line 854
    .line 855
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v16

    .line 859
    if-eqz v16, :cond_1c

    .line 860
    .line 861
    goto/16 :goto_10

    .line 862
    .line 863
    :cond_1c
    instance-of v15, v15, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    .line 864
    .line 865
    if-eqz v15, :cond_1d

    .line 866
    .line 867
    if-gez v13, :cond_1d

    .line 868
    .line 869
    move v13, v12

    .line 870
    :cond_1d
    if-gez v14, :cond_1e

    .line 871
    .line 872
    move v12, v13

    .line 873
    goto :goto_a

    .line 874
    :cond_1e
    move v12, v14

    .line 875
    goto :goto_9

    .line 876
    :cond_1f
    move v12, v2

    .line 877
    :goto_a
    if-ltz v12, :cond_20

    .line 878
    .line 879
    goto/16 :goto_10

    .line 880
    .line 881
    :cond_20
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 882
    .line 883
    .line 884
    move-result v12

    .line 885
    move v13, v2

    .line 886
    move v14, v13

    .line 887
    move v15, v6

    .line 888
    :goto_b
    if-ge v15, v12, :cond_24

    .line 889
    .line 890
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v16

    .line 894
    move-object/from16 v6, v16

    .line 895
    .line 896
    check-cast v6, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 897
    .line 898
    instance-of v2, v6, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    .line 899
    .line 900
    if-eqz v2, :cond_21

    .line 901
    .line 902
    move v13, v15

    .line 903
    goto :goto_c

    .line 904
    :cond_21
    instance-of v2, v6, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    .line 905
    .line 906
    if-eqz v2, :cond_22

    .line 907
    .line 908
    move v14, v15

    .line 909
    goto :goto_c

    .line 910
    :cond_22
    instance-of v2, v6, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    .line 911
    .line 912
    if-nez v2, :cond_23

    .line 913
    .line 914
    goto :goto_d

    .line 915
    :cond_23
    :goto_c
    add-int/lit8 v15, v15, 0x1

    .line 916
    .line 917
    const/4 v2, -0x1

    .line 918
    const/4 v6, 0x0

    .line 919
    goto :goto_b

    .line 920
    :cond_24
    :goto_d
    if-ltz v13, :cond_25

    .line 921
    .line 922
    move v12, v13

    .line 923
    goto :goto_10

    .line 924
    :cond_25
    if-ltz v14, :cond_26

    .line 925
    .line 926
    move v12, v14

    .line 927
    goto :goto_10

    .line 928
    :cond_26
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 929
    .line 930
    if-eqz v2, :cond_28

    .line 931
    .line 932
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_captureProcessingEnabled:Lkotlinx/atomicfu/AtomicBoolean;

    .line 933
    .line 934
    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 935
    .line 936
    .line 937
    move-result v2

    .line 938
    if-eqz v2, :cond_28

    .line 939
    .line 940
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 941
    .line 942
    .line 943
    move-result v2

    .line 944
    const/4 v12, 0x0

    .line 945
    :goto_e
    if-ge v12, v2, :cond_28

    .line 946
    .line 947
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v6

    .line 951
    check-cast v6, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 952
    .line 953
    instance-of v13, v6, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    .line 954
    .line 955
    if-nez v13, :cond_2b

    .line 956
    .line 957
    instance-of v6, v6, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    .line 958
    .line 959
    if-eqz v6, :cond_27

    .line 960
    .line 961
    goto :goto_10

    .line 962
    :cond_27
    add-int/lit8 v12, v12, 0x1

    .line 963
    .line 964
    goto :goto_e

    .line 965
    :cond_28
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    const/4 v6, 0x0

    .line 970
    const/16 v16, -0x1

    .line 971
    .line 972
    :goto_f
    if-ge v6, v2, :cond_29

    .line 973
    .line 974
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v12

    .line 978
    check-cast v12, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 979
    .line 980
    instance-of v12, v12, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    .line 981
    .line 982
    if-eqz v12, :cond_29

    .line 983
    .line 984
    add-int/lit8 v12, v6, 0x1

    .line 985
    .line 986
    move/from16 v16, v6

    .line 987
    .line 988
    move v6, v12

    .line 989
    goto :goto_f

    .line 990
    :cond_29
    if-ltz v16, :cond_2a

    .line 991
    .line 992
    move/from16 v12, v16

    .line 993
    .line 994
    goto :goto_10

    .line 995
    :cond_2a
    const/4 v12, 0x0

    .line 996
    :cond_2b
    :goto_10
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 1001
    .line 1002
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v6

    .line 1006
    if-eqz v6, :cond_2d

    .line 1007
    .line 1008
    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    :cond_2c
    :goto_11
    move-object v7, v8

    .line 1012
    goto/16 :goto_19

    .line 1013
    .line 1014
    :cond_2d
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v4

    .line 1018
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1019
    .line 1020
    if-eqz v4, :cond_2e

    .line 1021
    .line 1022
    invoke-virtual {v0, v1, v3}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processShutdown(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v7

    .line 1026
    if-ne v7, v6, :cond_2c

    .line 1027
    .line 1028
    goto/16 :goto_19

    .line 1029
    .line 1030
    :cond_2e
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v4

    .line 1034
    if-eqz v4, :cond_33

    .line 1035
    .line 1036
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Lorg/apache/james/mime4j/stream/RawField;

    .line 1037
    .line 1038
    if-eqz v2, :cond_2f

    .line 1039
    .line 1040
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/RawField;->abortCaptures$camera_camera2_pipe()V

    .line 1041
    .line 1042
    .line 1043
    :cond_2f
    iput-object v7, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 1044
    .line 1045
    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    const/4 v6, 0x0

    .line 1049
    :goto_12
    if-ge v6, v12, :cond_2c

    .line 1050
    .line 1051
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 1056
    .line 1057
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1058
    .line 1059
    .line 1060
    move-result v3

    .line 1061
    if-nez v3, :cond_32

    .line 1062
    .line 1063
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v3

    .line 1067
    if-nez v3, :cond_32

    .line 1068
    .line 1069
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    .line 1070
    .line 1071
    if-nez v3, :cond_32

    .line 1072
    .line 1073
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    .line 1074
    .line 1075
    if-eqz v3, :cond_30

    .line 1076
    .line 1077
    goto :goto_13

    .line 1078
    :cond_30
    instance-of v2, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    .line 1079
    .line 1080
    if-eqz v2, :cond_31

    .line 1081
    .line 1082
    invoke-virtual {v0, v7}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->abortRequests(Ljava/util/ArrayList;)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_13

    .line 1086
    :cond_31
    add-int/lit8 v6, v6, 0x1

    .line 1087
    .line 1088
    goto :goto_12

    .line 1089
    :cond_32
    :goto_13
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    add-int/lit8 v12, v12, -0x1

    .line 1093
    .line 1094
    goto :goto_12

    .line 1095
    :cond_33
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v4

    .line 1099
    if-eqz v4, :cond_37

    .line 1100
    .line 1101
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Lorg/apache/james/mime4j/stream/RawField;

    .line 1102
    .line 1103
    if-eqz v2, :cond_34

    .line 1104
    .line 1105
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/RawField;->stopRepeating$camera_camera2_pipe()V

    .line 1106
    .line 1107
    .line 1108
    :cond_34
    iput-object v7, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 1109
    .line 1110
    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    const/4 v6, 0x0

    .line 1114
    :goto_14
    if-ge v6, v12, :cond_2c

    .line 1115
    .line 1116
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v0

    .line 1120
    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 1121
    .line 1122
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v2

    .line 1126
    if-nez v2, :cond_36

    .line 1127
    .line 1128
    instance-of v0, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    .line 1129
    .line 1130
    if-eqz v0, :cond_35

    .line 1131
    .line 1132
    goto :goto_15

    .line 1133
    :cond_35
    add-int/lit8 v6, v6, 0x1

    .line 1134
    .line 1135
    goto :goto_14

    .line 1136
    :cond_36
    :goto_15
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    add-int/lit8 v12, v12, -0x1

    .line 1140
    .line 1141
    goto :goto_14

    .line 1142
    :cond_37
    instance-of v4, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    .line 1143
    .line 1144
    if-eqz v4, :cond_38

    .line 1145
    .line 1146
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    .line 1147
    .line 1148
    invoke-virtual {v0, v1, v12, v2, v3}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRequestProcessor(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v7

    .line 1152
    if-ne v7, v6, :cond_2c

    .line 1153
    .line 1154
    goto/16 :goto_19

    .line 1155
    .line 1156
    :cond_38
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    .line 1157
    .line 1158
    if-eqz v3, :cond_39

    .line 1159
    .line 1160
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    .line 1161
    .line 1162
    invoke-virtual {v0, v1, v12, v2, v5}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processCapture(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Capture;Z)V

    .line 1163
    .line 1164
    .line 1165
    goto/16 :goto_11

    .line 1166
    .line 1167
    :cond_39
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    .line 1168
    .line 1169
    if-eqz v3, :cond_3a

    .line 1170
    .line 1171
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    .line 1172
    .line 1173
    invoke-virtual {v0, v1, v12, v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processTrigger(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_11

    .line 1177
    .line 1178
    :cond_3a
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    .line 1179
    .line 1180
    if-eqz v3, :cond_3e

    .line 1181
    .line 1182
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    .line 1183
    .line 1184
    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredParameters:Ljava/util/Map;

    .line 1185
    .line 1186
    iget-object v4, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->graphParameters:Ljava/util/Map;

    .line 1187
    .line 1188
    iput-object v4, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraphParameters:Ljava/util/Map;

    .line 1189
    .line 1190
    iget-object v2, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->graph3AParameters:Ljava/util/Map;

    .line 1191
    .line 1192
    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraph3AParameters:Ljava/util/Map;

    .line 1193
    .line 1194
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 1195
    .line 1196
    .line 1197
    move-result v4

    .line 1198
    if-eqz v4, :cond_3b

    .line 1199
    .line 1200
    goto :goto_16

    .line 1201
    :cond_3b
    new-instance v4, Lkotlin/collections/builders/MapBuilder;

    .line 1202
    .line 1203
    invoke-direct {v4}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v4, v2}, Lkotlin/collections/builders/MapBuilder;->putAll(Ljava/util/Map;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v4, v3}, Lkotlin/collections/builders/MapBuilder;->putAll(Ljava/util/Map;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v4}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v3

    .line 1219
    :goto_16
    iput-object v3, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequiredParameters:Ljava/util/Map;

    .line 1220
    .line 1221
    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    const/4 v6, 0x0

    .line 1225
    :goto_17
    if-ge v6, v12, :cond_3d

    .line 1226
    .line 1227
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v2

    .line 1231
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 1232
    .line 1233
    instance-of v2, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    .line 1234
    .line 1235
    if-eqz v2, :cond_3c

    .line 1236
    .line 1237
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    add-int/lit8 v12, v12, -0x1

    .line 1241
    .line 1242
    goto :goto_17

    .line 1243
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    .line 1244
    .line 1245
    goto :goto_17

    .line 1246
    :cond_3d
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->reissueRepeatingRequest()Z

    .line 1247
    .line 1248
    .line 1249
    goto/16 :goto_11

    .line 1250
    .line 1251
    :cond_3e
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    .line 1252
    .line 1253
    if-eqz v3, :cond_41

    .line 1254
    .line 1255
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredListeners:Ljava/util/ArrayList;

    .line 1256
    .line 1257
    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v2

    .line 1265
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestListeners:Ljava/util/List;

    .line 1270
    .line 1271
    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    const/4 v6, 0x0

    .line 1275
    :goto_18
    if-ge v6, v12, :cond_40

    .line 1276
    .line 1277
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v2

    .line 1281
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 1282
    .line 1283
    instance-of v2, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    .line 1284
    .line 1285
    if-eqz v2, :cond_3f

    .line 1286
    .line 1287
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    add-int/lit8 v12, v12, -0x1

    .line 1291
    .line 1292
    goto :goto_18

    .line 1293
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    .line 1294
    .line 1295
    goto :goto_18

    .line 1296
    :cond_40
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->reissueRepeatingRequest()Z

    .line 1297
    .line 1298
    .line 1299
    goto/16 :goto_11

    .line 1300
    .line 1301
    :cond_41
    instance-of v2, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    .line 1302
    .line 1303
    if-eqz v2, :cond_42

    .line 1304
    .line 1305
    invoke-virtual {v0, v1, v12, v5}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRepeat(Ljava/util/List;IZ)V

    .line 1306
    .line 1307
    .line 1308
    goto/16 :goto_11

    .line 1309
    .line 1310
    :cond_42
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1311
    .line 1312
    .line 1313
    :goto_19
    return-object v7

    .line 1314
    :pswitch_f
    move-object/from16 v1, p1

    .line 1315
    .line 1316
    check-cast v1, Ljava/lang/String;

    .line 1317
    .line 1318
    move-object/from16 v2, p2

    .line 1319
    .line 1320
    check-cast v2, Landroid/os/Bundle;

    .line 1321
    .line 1322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    .line 1327
    .line 1328
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 1329
    .line 1330
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 1331
    .line 1332
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    .line 1334
    .line 1335
    const-string v1, "action"

    .line 1336
    .line 1337
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v1

    .line 1341
    const-string v2, "search_keys"

    .line 1342
    .line 1343
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    const-string v3, "SendIntentException"

    .line 1348
    .line 1349
    const-string v4, "messageCryptoPresenter"

    .line 1350
    .line 1351
    if-eqz v2, :cond_46

    .line 1352
    .line 1353
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 1354
    .line 1355
    if-eqz v0, :cond_45

    .line 1356
    .line 1357
    :try_start_0
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 1358
    .line 1359
    iget-object v2, v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 1360
    .line 1361
    iget-object v4, v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 1362
    .line 1363
    if-eqz v4, :cond_43

    .line 1364
    .line 1365
    iget v4, v4, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 1366
    .line 1367
    const/4 v5, -0x1

    .line 1368
    if-eq v4, v5, :cond_43

    .line 1369
    .line 1370
    iget-object v7, v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 1371
    .line 1372
    goto :goto_1a

    .line 1373
    :cond_43
    if-eqz v2, :cond_44

    .line 1374
    .line 1375
    iget-object v1, v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 1376
    .line 1377
    if-eqz v1, :cond_44

    .line 1378
    .line 1379
    iget v1, v1, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 1380
    .line 1381
    const/4 v5, -0x1

    .line 1382
    if-eq v1, v5, :cond_44

    .line 1383
    .line 1384
    iget-object v7, v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 1385
    .line 1386
    :cond_44
    :goto_1a
    if-eqz v7, :cond_47

    .line 1387
    .line 1388
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 1389
    .line 1390
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v1

    .line 1394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1398
    .line 1399
    .line 1400
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 1401
    .line 1402
    const/16 v2, 0x27b

    .line 1403
    .line 1404
    invoke-static {v0, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->startIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    .line 1406
    .line 1407
    goto :goto_1f

    .line 1408
    :goto_1b
    const/4 v1, 0x0

    .line 1409
    goto :goto_1c

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    goto :goto_1b

    .line 1412
    :goto_1c
    new-array v1, v1, [Ljava/lang/Object;

    .line 1413
    .line 1414
    invoke-static {v0, v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_1f

    .line 1418
    :cond_45
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    throw v7

    .line 1422
    :cond_46
    const-string v2, "show_warning"

    .line 1423
    .line 1424
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1425
    .line 1426
    .line 1427
    move-result v2

    .line 1428
    if-eqz v2, :cond_49

    .line 1429
    .line 1430
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 1431
    .line 1432
    if-eqz v0, :cond_48

    .line 1433
    .line 1434
    :try_start_1
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 1435
    .line 1436
    iget-object v1, v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    .line 1437
    .line 1438
    if-eqz v1, :cond_47

    .line 1439
    .line 1440
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 1441
    .line 1442
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v1

    .line 1446
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1450
    .line 1451
    .line 1452
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 1453
    .line 1454
    const/16 v2, 0x27c

    .line 1455
    .line 1456
    invoke-static {v0, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->startIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;I)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1457
    .line 1458
    .line 1459
    goto :goto_1f

    .line 1460
    :goto_1d
    const/4 v1, 0x0

    .line 1461
    goto :goto_1e

    .line 1462
    :catch_1
    move-exception v0

    .line 1463
    goto :goto_1d

    .line 1464
    :goto_1e
    new-array v1, v1, [Ljava/lang/Object;

    .line 1465
    .line 1466
    invoke-static {v0, v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1467
    .line 1468
    .line 1469
    :cond_47
    :goto_1f
    move-object v7, v8

    .line 1470
    goto :goto_20

    .line 1471
    :cond_48
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    throw v7

    .line 1475
    :cond_49
    const-string v0, "Unsupported action: "

    .line 1476
    .line 1477
    invoke-static {v1, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    :goto_20
    return-object v7

    .line 1481
    :pswitch_data_0
    .packed-switch 0x0
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
