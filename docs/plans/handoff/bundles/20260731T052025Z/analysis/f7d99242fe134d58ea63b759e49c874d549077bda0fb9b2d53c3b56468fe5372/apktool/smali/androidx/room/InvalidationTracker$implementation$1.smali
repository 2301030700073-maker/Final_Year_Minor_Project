.class public final synthetic Landroidx/room/InvalidationTracker$implementation$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Landroidx/room/InvalidationTracker$implementation$1;->$r8$classId:I

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
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/room/InvalidationTracker$implementation$1;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, 0x7

    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    packed-switch v2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v11

    .line 33
    :pswitch_0
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v11

    .line 46
    :pswitch_1
    check-cast v1, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/helper/SizeFormatter;->formatSize(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :pswitch_2
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lkotlinx/datetime/internal/format/PropertyAccessor;->getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Integer;

    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_3
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lkotlinx/datetime/internal/format/PropertyAccessor;->getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Integer;

    .line 81
    .line 82
    return-object v0

    .line 83
    :pswitch_4
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lkotlinx/datetime/internal/format/Truth;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 91
    .line 92
    return-object v0

    .line 93
    :pswitch_5
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lkotlinx/datetime/internal/format/Predicate;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Lkotlinx/datetime/internal/format/Predicate;->test(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0

    .line 106
    :pswitch_6
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 109
    .line 110
    iget-object v0, v0, Lkotlinx/datetime/internal/format/PropertyAccessor;->property:Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :pswitch_7
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lkotlinx/datetime/internal/format/PropertyAccessor;->getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lkotlinx/datetime/internal/DecimalFraction;

    .line 126
    .line 127
    return-object v0

    .line 128
    :pswitch_8
    check-cast v1, Ljava/lang/Throwable;

    .line 129
    .line 130
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lkotlinx/coroutines/JobNode;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    return-object v11

    .line 138
    :pswitch_9
    check-cast v1, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    :pswitch_a
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;

    .line 164
    .line 165
    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;->onNotificationActionClicked(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V

    .line 166
    .line 167
    .line 168
    return-object v11

    .line 169
    :pswitch_b
    check-cast v1, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;

    .line 177
    .line 178
    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;->filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :pswitch_c
    check-cast v1, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    return-object v0

    .line 205
    :pswitch_d
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 213
    .line 214
    iget-object v2, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->logger$delegate:Lkotlin/Lazy;

    .line 215
    .line 216
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 221
    .line 222
    new-instance v3, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 223
    .line 224
    invoke-direct {v3, v5, v1}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    const-string v4, "MessageComposeInAppNotificationFragment"

    .line 228
    .line 229
    invoke-static {v2, v4, v10, v3, v7}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 230
    .line 231
    .line 232
    instance-of v2, v1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$AssignSentFolder;

    .line 233
    .line 234
    if-eqz v2, :cond_0

    .line 235
    .line 236
    sget v2, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->$r8$clinit:I

    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$AssignSentFolder;

    .line 243
    .line 244
    iget-object v1, v1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$AssignSentFolder;->accountUuid:Ljava/lang/String;

    .line 245
    .line 246
    const-string v2, "folders"

    .line 247
    .line 248
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/Option$1;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_0
    return-object v11

    .line 252
    :pswitch_e
    check-cast v1, Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 258
    .line 259
    move-object v2, v0

    .line 260
    check-cast v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 261
    .line 262
    iget-object v3, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->unsupportedPayloadHashes:Lkotlin/collections/ArrayDeque;

    .line 263
    .line 264
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 265
    .line 266
    invoke-static {v1}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v4, "SHA-1"

    .line 271
    .line 272
    invoke-virtual {v0, v4}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    iget-object v5, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->supportedPayloadHashes:Ljava/util/LinkedHashSet;

    .line 277
    .line 278
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_1

    .line 283
    .line 284
    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_2

    .line 289
    .line 290
    :cond_1
    move-object/from16 v17, v11

    .line 291
    .line 292
    goto/16 :goto_d

    .line 293
    .line 294
    :cond_2
    iget-object v0, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->qrCodePayloadReader:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget-object v0, v0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;->parser:Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;

    .line 300
    .line 301
    :try_start_0
    iget-object v0, v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;->qrCodePayloadAdapter:Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadAdapter;

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;
    :try_end_0
    .catch Lcom/squareup/moshi/JsonDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :catch_0
    move-exception v0

    .line 311
    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    .line 313
    goto :goto_1

    .line 314
    :goto_0
    const-string v1, "Unexpected IOException"

    .line 315
    .line 316
    new-array v6, v8, [Ljava/lang/Object;

    .line 317
    .line 318
    invoke-static {v0, v1, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :goto_1
    const-string v1, "Failed to parse JSON"

    .line 323
    .line 324
    new-array v6, v8, [Ljava/lang/Object;

    .line 325
    .line 326
    invoke-static {v0, v1, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :goto_2
    move-object v0, v10

    .line 330
    :goto_3
    if-nez v0, :cond_3

    .line 331
    .line 332
    move-object/from16 v19, v3

    .line 333
    .line 334
    move-object v0, v10

    .line 335
    move-object/from16 v17, v11

    .line 336
    .line 337
    goto/16 :goto_b

    .line 338
    .line 339
    :cond_3
    iget v1, v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->version:I

    .line 340
    .line 341
    if-eq v1, v9, :cond_4

    .line 342
    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    new-array v1, v9, [Ljava/lang/Object;

    .line 348
    .line 349
    aput-object v0, v1, v8

    .line 350
    .line 351
    const-string v0, "Unsupported version: %s"

    .line 352
    .line 353
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    move-object/from16 v19, v3

    .line 357
    .line 358
    move-object/from16 v17, v11

    .line 359
    .line 360
    goto/16 :goto_a

    .line 361
    .line 362
    :cond_4
    :try_start_1
    invoke-static {v0}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;->validateData(Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 363
    .line 364
    .line 365
    iget-object v1, v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->misc:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

    .line 366
    .line 367
    iget v6, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;->sequenceNumber:I

    .line 368
    .line 369
    iget v1, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;->sequenceEnd:I

    .line 370
    .line 371
    iget-object v0, v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->accounts:Ljava/util/List;

    .line 372
    .line 373
    new-instance v7, Ljava/util/ArrayList;

    .line 374
    .line 375
    const/16 v8, 0xa

    .line 376
    .line 377
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    .line 390
    .line 391
    move-result v12

    .line 392
    if-eqz v12, :cond_d

    .line 393
    .line 394
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    check-cast v12, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;

    .line 399
    .line 400
    iget-object v13, v12, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;->incomingServer:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;

    .line 401
    .line 402
    new-instance v14, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;

    .line 403
    .line 404
    iget v15, v13, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->protocol:I

    .line 405
    .line 406
    invoke-static {v15}, Landroidx/compose/ui/unit/IntOffsetKt;->toIncomingServerProtocol(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 407
    .line 408
    .line 409
    move-result-object v15

    .line 410
    iget-object v10, v13, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->hostname:Ljava/lang/String;

    .line 411
    .line 412
    invoke-static {v10}, Lokhttp3/Cookie$Companion;->toHostname(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget v9, v13, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->port:I

    .line 416
    .line 417
    invoke-static {v9}, Lokhttp3/Handshake$Companion;->toPort(I)V

    .line 418
    .line 419
    .line 420
    iget v8, v13, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->connectionSecurity:I

    .line 421
    .line 422
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->toConnectionSecurity(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 423
    .line 424
    .line 425
    move-result-object v18

    .line 426
    iget v8, v13, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->authenticationType:I

    .line 427
    .line 428
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->toAuthenticationType(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 429
    .line 430
    .line 431
    move-result-object v19

    .line 432
    iget-object v8, v13, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->username:Ljava/lang/String;

    .line 433
    .line 434
    iget-object v13, v13, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->password:Ljava/lang/String;

    .line 435
    .line 436
    move-object/from16 v20, v8

    .line 437
    .line 438
    move/from16 v17, v9

    .line 439
    .line 440
    move-object/from16 v16, v10

    .line 441
    .line 442
    move-object/from16 v21, v13

    .line 443
    .line 444
    invoke-direct/range {v14 .. v21}, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;-><init>(Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;Ljava/lang/String;ILapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v8, v12, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;->outgoingServers:Ljava/util/List;

    .line 448
    .line 449
    new-instance v9, Ljava/util/ArrayList;

    .line 450
    .line 451
    const/16 v10, 0xa

    .line 452
    .line 453
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v10

    .line 468
    if-eqz v10, :cond_7

    .line 469
    .line 470
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    check-cast v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;

    .line 475
    .line 476
    new-instance v13, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServerGroup;

    .line 477
    .line 478
    new-instance v15, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;

    .line 479
    .line 480
    move-object/from16 p1, v0

    .line 481
    .line 482
    iget v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->protocol:I

    .line 483
    .line 484
    if-nez v0, :cond_6

    .line 485
    .line 486
    iget-object v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->hostname:Ljava/lang/String;

    .line 487
    .line 488
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->toHostname(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    move-object/from16 v16, v0

    .line 492
    .line 493
    iget v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->port:I

    .line 494
    .line 495
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->toPort(I)V

    .line 496
    .line 497
    .line 498
    move/from16 v17, v0

    .line 499
    .line 500
    iget v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->connectionSecurity:I

    .line 501
    .line 502
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->toConnectionSecurity(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 503
    .line 504
    .line 505
    move-result-object v18

    .line 506
    iget v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->authenticationType:I

    .line 507
    .line 508
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->toAuthenticationType(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 509
    .line 510
    .line 511
    move-result-object v19

    .line 512
    iget-object v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->username:Ljava/lang/String;

    .line 513
    .line 514
    move-object/from16 v20, v0

    .line 515
    .line 516
    iget-object v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->password:Ljava/lang/String;

    .line 517
    .line 518
    move-object/from16 v21, v0

    .line 519
    .line 520
    invoke-direct/range {v15 .. v21}, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;-><init>(Ljava/lang/String;ILapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object v0, v10, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->identities:Ljava/util/List;

    .line 524
    .line 525
    new-instance v10, Ljava/util/ArrayList;

    .line 526
    .line 527
    move-object/from16 v16, v8

    .line 528
    .line 529
    move-object/from16 v17, v11

    .line 530
    .line 531
    const/16 v8, 0xa

    .line 532
    .line 533
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 534
    .line 535
    .line 536
    move-result v11

    .line 537
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 538
    .line 539
    .line 540
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result v11

    .line 548
    if-eqz v11, :cond_5

    .line 549
    .line 550
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v11

    .line 554
    check-cast v11, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;

    .line 555
    .line 556
    new-instance v8, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Identity;

    .line 557
    .line 558
    move-object/from16 v18, v0

    .line 559
    .line 560
    iget-object v0, v11, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;->emailAddress:Ljava/lang/String;

    .line 561
    .line 562
    move-object/from16 v19, v3

    .line 563
    .line 564
    sget-object v3, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->LIMITED:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;

    .line 565
    .line 566
    invoke-static {v0, v3}, Lnet/thunderbird/core/common/mail/TokensKt;->parse(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    iget-object v3, v11, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;->displayName:Ljava/lang/String;

    .line 571
    .line 572
    invoke-direct {v8, v3, v0}, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Identity;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddress;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-object/from16 v0, v18

    .line 579
    .line 580
    move-object/from16 v3, v19

    .line 581
    .line 582
    const/16 v8, 0xa

    .line 583
    .line 584
    goto :goto_6

    .line 585
    :cond_5
    move-object/from16 v19, v3

    .line 586
    .line 587
    invoke-direct {v13, v15, v10}, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServerGroup;-><init>(Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;Ljava/util/ArrayList;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-object/from16 v0, p1

    .line 594
    .line 595
    move-object/from16 v8, v16

    .line 596
    .line 597
    move-object/from16 v11, v17

    .line 598
    .line 599
    goto/16 :goto_5

    .line 600
    .line 601
    :cond_6
    const-string v1, "Unsupported value: "

    .line 602
    .line 603
    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    :goto_7
    const/4 v10, 0x0

    .line 611
    goto/16 :goto_e

    .line 612
    .line 613
    :cond_7
    move-object/from16 p1, v0

    .line 614
    .line 615
    move-object/from16 v19, v3

    .line 616
    .line 617
    move-object/from16 v17, v11

    .line 618
    .line 619
    iget-object v0, v12, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;->incomingServer:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;

    .line 620
    .line 621
    iget-object v0, v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->accountName:Ljava/lang/String;

    .line 622
    .line 623
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    check-cast v3, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServerGroup;

    .line 628
    .line 629
    iget-object v3, v3, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServerGroup;->identities:Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    check-cast v3, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Identity;

    .line 636
    .line 637
    if-eqz v0, :cond_9

    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 640
    .line 641
    .line 642
    move-result v8

    .line 643
    if-lez v8, :cond_8

    .line 644
    .line 645
    goto :goto_8

    .line 646
    :cond_8
    const/4 v0, 0x0

    .line 647
    :goto_8
    if-nez v0, :cond_a

    .line 648
    .line 649
    :cond_9
    iget-object v0, v3, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Identity;->emailAddress:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 650
    .line 651
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/EmailAddress;->getAddress()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    :cond_a
    iget-object v3, v14, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 656
    .line 657
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    if-eqz v3, :cond_c

    .line 662
    .line 663
    const/4 v8, 0x1

    .line 664
    if-ne v3, v8, :cond_b

    .line 665
    .line 666
    const-string v3, "pop3"

    .line 667
    .line 668
    goto :goto_9

    .line 669
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 670
    .line 671
    .line 672
    goto :goto_7

    .line 673
    :cond_c
    const-string v3, "imap"

    .line 674
    .line 675
    :goto_9
    invoke-static {v3}, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;->getDeletePolicy(Ljava/lang/String;)Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    new-instance v8, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Account;

    .line 680
    .line 681
    invoke-direct {v8, v0, v3, v14, v9}, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Account;-><init>(Ljava/lang/String;Lnet/thunderbird/core/android/account/DeletePolicy;Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;Ljava/util/ArrayList;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-object/from16 v0, p1

    .line 688
    .line 689
    move-object/from16 v11, v17

    .line 690
    .line 691
    move-object/from16 v3, v19

    .line 692
    .line 693
    const/16 v8, 0xa

    .line 694
    .line 695
    const/4 v9, 0x1

    .line 696
    const/4 v10, 0x0

    .line 697
    goto/16 :goto_4

    .line 698
    .line 699
    :cond_d
    move-object/from16 v19, v3

    .line 700
    .line 701
    move-object/from16 v17, v11

    .line 702
    .line 703
    new-instance v0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData;

    .line 704
    .line 705
    invoke-direct {v0, v7, v6, v1}, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData;-><init>(Ljava/util/ArrayList;II)V

    .line 706
    .line 707
    .line 708
    goto :goto_b

    .line 709
    :catch_2
    move-exception v0

    .line 710
    move-object/from16 v19, v3

    .line 711
    .line 712
    move-object/from16 v17, v11

    .line 713
    .line 714
    const-string v1, "QR code payload failed validation"

    .line 715
    .line 716
    new-array v3, v8, [Ljava/lang/Object;

    .line 717
    .line 718
    invoke-static {v0, v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    .line 720
    .line 721
    :goto_a
    const/4 v0, 0x0

    .line 722
    :goto_b
    if-eqz v0, :cond_11

    .line 723
    .line 724
    iget-object v1, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->accountDataList:Ljava/util/ArrayList;

    .line 725
    .line 726
    iget v3, v0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData;->sequenceEnd:I

    .line 727
    .line 728
    iget v6, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->totalCount:I

    .line 729
    .line 730
    if-ne v3, v6, :cond_e

    .line 731
    .line 732
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    iput v0, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->scannedCount:I

    .line 740
    .line 741
    goto :goto_c

    .line 742
    :cond_e
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    const/4 v8, 0x1

    .line 752
    iput v8, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->scannedCount:I

    .line 753
    .line 754
    iput v3, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->totalCount:I

    .line 755
    .line 756
    :goto_c
    iget-object v0, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 757
    .line 758
    :cond_f
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    move-object v7, v6

    .line 763
    check-cast v7, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 764
    .line 765
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    new-instance v8, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$ProgressText;

    .line 769
    .line 770
    iget v9, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->scannedCount:I

    .line 771
    .line 772
    iget v10, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->totalCount:I

    .line 773
    .line 774
    invoke-direct {v8, v9, v10}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$ProgressText;-><init>(II)V

    .line 775
    .line 776
    .line 777
    const/4 v9, 0x1

    .line 778
    const/4 v10, 0x0

    .line 779
    invoke-static {v7, v10, v8, v9}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->copy$default(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$ProgressText;I)Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 780
    .line 781
    .line 782
    move-result-object v7

    .line 783
    invoke-virtual {v0, v6, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v6

    .line 787
    if-eqz v6, :cond_f

    .line 788
    .line 789
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    if-ne v0, v3, :cond_10

    .line 794
    .line 795
    invoke-virtual {v2}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->startAccountImport()V

    .line 796
    .line 797
    .line 798
    :cond_10
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    goto :goto_d

    .line 802
    :cond_11
    move-object/from16 v6, v19

    .line 803
    .line 804
    iget v0, v6, Lkotlin/collections/ArrayDeque;->size:I

    .line 805
    .line 806
    const/4 v1, 0x5

    .line 807
    if-le v0, v1, :cond_12

    .line 808
    .line 809
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    :cond_12
    invoke-virtual {v6, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 813
    .line 814
    .line 815
    :goto_d
    move-object/from16 v10, v17

    .line 816
    .line 817
    :goto_e
    return-object v10

    .line 818
    :pswitch_f
    move-object/from16 v17, v11

    .line 819
    .line 820
    check-cast v1, Landroid/net/Uri;

    .line 821
    .line 822
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 826
    .line 827
    check-cast v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 828
    .line 829
    sget v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;->$r8$clinit:I

    .line 830
    .line 831
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    new-instance v2, Landroid/content/Intent;

    .line 835
    .line 836
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 846
    .line 847
    .line 848
    return-object v17

    .line 849
    :pswitch_10
    move-object/from16 v17, v11

    .line 850
    .line 851
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 852
    .line 853
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 856
    .line 857
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->filters:Landroidx/collection/MutableObjectList;

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    return-object v17

    .line 863
    :pswitch_11
    move-object/from16 v17, v11

    .line 864
    .line 865
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 866
    .line 867
    iget-wide v9, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 868
    .line 869
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 870
    .line 871
    move-object v8, v0

    .line 872
    check-cast v8, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 873
    .line 874
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->LocalTextContextMenuDropdownProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 878
    .line 879
    invoke-static {v8, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    move-object v11, v0

    .line 884
    check-cast v11, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 885
    .line 886
    if-nez v11, :cond_13

    .line 887
    .line 888
    goto :goto_f

    .line 889
    :cond_13
    new-instance v12, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;

    .line 890
    .line 891
    invoke-direct {v12, v8, v9, v10}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;J)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    new-instance v7, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 899
    .line 900
    const/4 v13, 0x0

    .line 901
    invoke-direct/range {v7 .. v13}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;JLandroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;Lkotlin/coroutines/Continuation;)V

    .line 902
    .line 903
    .line 904
    const/4 v10, 0x0

    .line 905
    invoke-static {v0, v10, v10, v7, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 906
    .line 907
    .line 908
    :goto_f
    return-object v17

    .line 909
    :pswitch_12
    check-cast v1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 910
    .line 911
    iget-object v1, v1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 912
    .line 913
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 914
    .line 915
    check-cast v0, Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 916
    .line 917
    iget-object v2, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->preparedSelectionState:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 918
    .line 919
    iget-boolean v4, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->editable:Z

    .line 920
    .line 921
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    .line 922
    .line 923
    .line 924
    move-result v5

    .line 925
    if-nez v5, :cond_18

    .line 926
    .line 927
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 928
    .line 929
    .line 930
    move-result v5

    .line 931
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(I)Z

    .line 932
    .line 933
    .line 934
    move-result v5

    .line 935
    if-nez v5, :cond_18

    .line 936
    .line 937
    iget-object v5, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->keyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    .line 938
    .line 939
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 943
    .line 944
    .line 945
    move-result v6

    .line 946
    const/high16 v9, -0x80000000

    .line 947
    .line 948
    and-int/2addr v9, v6

    .line 949
    if-eqz v9, :cond_14

    .line 950
    .line 951
    const v9, 0x7fffffff

    .line 952
    .line 953
    .line 954
    and-int/2addr v6, v9

    .line 955
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 956
    .line 957
    .line 958
    move-result-object v6

    .line 959
    iput-object v6, v5, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    .line 960
    .line 961
    const/4 v5, 0x0

    .line 962
    goto :goto_10

    .line 963
    :cond_14
    iget-object v9, v5, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    .line 964
    .line 965
    if-eqz v9, :cond_17

    .line 966
    .line 967
    const/4 v10, 0x0

    .line 968
    iput-object v10, v5, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    .line 969
    .line 970
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 971
    .line 972
    .line 973
    move-result v5

    .line 974
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    .line 975
    .line 976
    .line 977
    move-result v5

    .line 978
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 979
    .line 980
    .line 981
    move-result-object v9

    .line 982
    if-nez v5, :cond_15

    .line 983
    .line 984
    const/4 v9, 0x0

    .line 985
    :cond_15
    if-eqz v9, :cond_16

    .line 986
    .line 987
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 988
    .line 989
    .line 990
    move-result v6

    .line 991
    :cond_16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 992
    .line 993
    .line 994
    move-result-object v5

    .line 995
    goto :goto_10

    .line 996
    :cond_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 997
    .line 998
    .line 999
    move-result-object v5

    .line 1000
    :goto_10
    if-eqz v5, :cond_18

    .line 1001
    .line 1002
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1003
    .line 1004
    .line 1005
    move-result v5

    .line 1006
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v5

    .line 1015
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v5

    .line 1019
    new-instance v6, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 1020
    .line 1021
    const/4 v9, 0x1

    .line 1022
    invoke-direct {v6, v5, v9}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_11

    .line 1026
    :cond_18
    const/4 v6, 0x0

    .line 1027
    :goto_11
    if-eqz v6, :cond_19

    .line 1028
    .line 1029
    if-eqz v4, :cond_1e

    .line 1030
    .line 1031
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1036
    .line 1037
    .line 1038
    const/4 v10, 0x0

    .line 1039
    iput-object v10, v2, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1040
    .line 1041
    const/4 v8, 0x1

    .line 1042
    goto :goto_12

    .line 1043
    :cond_19
    invoke-static {v1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v5

    .line 1047
    if-ne v5, v7, :cond_1e

    .line 1048
    .line 1049
    iget-object v5, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->keyMapping:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 1050
    .line 1051
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    if-eqz v1, :cond_1e

    .line 1056
    .line 1057
    iget-boolean v5, v1, Landroidx/compose/foundation/text/KeyCommand;->editsText:Z

    .line 1058
    .line 1059
    if-eqz v5, :cond_1a

    .line 1060
    .line 1061
    if-nez v4, :cond_1a

    .line 1062
    .line 1063
    goto :goto_12

    .line 1064
    :cond_1a
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1065
    .line 1066
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1067
    .line 1068
    .line 1069
    const/4 v8, 0x1

    .line 1070
    iput-boolean v8, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1071
    .line 1072
    new-instance v5, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 1073
    .line 1074
    const/16 v6, 0x9

    .line 1075
    .line 1076
    invoke-direct {v5, v1, v0, v4, v6}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1077
    .line 1078
    .line 1079
    new-instance v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 1080
    .line 1081
    iget-object v6, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1082
    .line 1083
    iget-object v7, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1084
    .line 1085
    iget-object v8, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1086
    .line 1087
    invoke-virtual {v8}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v8

    .line 1091
    invoke-direct {v1, v6, v7, v8, v2}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v5, v1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    iget-wide v7, v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 1098
    .line 1099
    iget-wide v9, v6, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1100
    .line 1101
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v2

    .line 1105
    iget-object v5, v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1106
    .line 1107
    if-eqz v2, :cond_1b

    .line 1108
    .line 1109
    iget-object v2, v6, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1110
    .line 1111
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v2

    .line 1115
    if-nez v2, :cond_1c

    .line 1116
    .line 1117
    :cond_1b
    iget-object v2, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1118
    .line 1119
    iget-wide v7, v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 1120
    .line 1121
    invoke-static {v6, v5, v7, v8, v3}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    :cond_1c
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1129
    .line 1130
    if-eqz v0, :cond_1d

    .line 1131
    .line 1132
    const/4 v8, 0x1

    .line 1133
    iput-boolean v8, v0, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    .line 1134
    .line 1135
    :cond_1d
    iget-boolean v8, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1136
    .line 1137
    :cond_1e
    :goto_12
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    return-object v0

    .line 1142
    :pswitch_13
    move-object/from16 v17, v11

    .line 1143
    .line 1144
    check-cast v1, Ljava/lang/Boolean;

    .line 1145
    .line 1146
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v1

    .line 1150
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 1151
    .line 1152
    check-cast v0, Landroidx/compose/foundation/AbstractClickableNode;

    .line 1153
    .line 1154
    iget-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    .line 1155
    .line 1156
    if-eqz v1, :cond_1f

    .line 1157
    .line 1158
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 1159
    .line 1160
    .line 1161
    goto/16 :goto_17

    .line 1162
    .line 1163
    :cond_1f
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1164
    .line 1165
    if-eqz v1, :cond_24

    .line 1166
    .line 1167
    iget-object v1, v2, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 1168
    .line 1169
    iget-object v3, v2, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 1170
    .line 1171
    array-length v4, v3

    .line 1172
    sub-int/2addr v4, v7

    .line 1173
    if-ltz v4, :cond_23

    .line 1174
    .line 1175
    move v9, v8

    .line 1176
    :goto_13
    aget-wide v10, v3, v9

    .line 1177
    .line 1178
    not-long v12, v10

    .line 1179
    shl-long/2addr v12, v5

    .line 1180
    and-long/2addr v12, v10

    .line 1181
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    and-long/2addr v12, v14

    .line 1187
    cmp-long v12, v12, v14

    .line 1188
    .line 1189
    if-eqz v12, :cond_22

    .line 1190
    .line 1191
    sub-int v12, v9, v4

    .line 1192
    .line 1193
    not-int v12, v12

    .line 1194
    ushr-int/lit8 v12, v12, 0x1f

    .line 1195
    .line 1196
    const/16 v13, 0x8

    .line 1197
    .line 1198
    rsub-int/lit8 v12, v12, 0x8

    .line 1199
    .line 1200
    move v14, v8

    .line 1201
    :goto_14
    if-ge v14, v12, :cond_21

    .line 1202
    .line 1203
    const-wide/16 v15, 0xff

    .line 1204
    .line 1205
    and-long/2addr v15, v10

    .line 1206
    const-wide/16 v18, 0x80

    .line 1207
    .line 1208
    cmp-long v15, v15, v18

    .line 1209
    .line 1210
    if-gez v15, :cond_20

    .line 1211
    .line 1212
    shl-int/lit8 v15, v9, 0x3

    .line 1213
    .line 1214
    add-int/2addr v15, v14

    .line 1215
    aget-object v15, v1, v15

    .line 1216
    .line 1217
    check-cast v15, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1218
    .line 1219
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v5

    .line 1223
    new-instance v8, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    .line 1224
    .line 1225
    move/from16 p0, v13

    .line 1226
    .line 1227
    const/4 v7, 0x1

    .line 1228
    const/4 v13, 0x0

    .line 1229
    invoke-direct {v8, v0, v15, v13, v7}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;I)V

    .line 1230
    .line 1231
    .line 1232
    invoke-static {v5, v13, v13, v8, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1233
    .line 1234
    .line 1235
    goto :goto_15

    .line 1236
    :cond_20
    move/from16 p0, v13

    .line 1237
    .line 1238
    :goto_15
    shr-long v10, v10, p0

    .line 1239
    .line 1240
    add-int/lit8 v14, v14, 0x1

    .line 1241
    .line 1242
    move/from16 v13, p0

    .line 1243
    .line 1244
    const/4 v5, 0x7

    .line 1245
    const/4 v7, 0x2

    .line 1246
    const/4 v8, 0x0

    .line 1247
    goto :goto_14

    .line 1248
    :cond_21
    move v5, v13

    .line 1249
    if-ne v12, v5, :cond_23

    .line 1250
    .line 1251
    :cond_22
    if-eq v9, v4, :cond_23

    .line 1252
    .line 1253
    add-int/lit8 v9, v9, 0x1

    .line 1254
    .line 1255
    const/4 v5, 0x7

    .line 1256
    const/4 v7, 0x2

    .line 1257
    const/4 v8, 0x0

    .line 1258
    goto :goto_13

    .line 1259
    :cond_23
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1260
    .line 1261
    if-eqz v1, :cond_24

    .line 1262
    .line 1263
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v3

    .line 1267
    new-instance v4, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    .line 1268
    .line 1269
    const/4 v5, 0x2

    .line 1270
    const/4 v10, 0x0

    .line 1271
    invoke-direct {v4, v0, v1, v10, v5}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;I)V

    .line 1272
    .line 1273
    .line 1274
    invoke-static {v3, v10, v10, v4, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1275
    .line 1276
    .line 1277
    goto :goto_16

    .line 1278
    :cond_24
    const/4 v10, 0x0

    .line 1279
    :goto_16
    invoke-virtual {v2}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 1280
    .line 1281
    .line 1282
    iput-object v10, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1283
    .line 1284
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->onCancelKeyInput()V

    .line 1285
    .line 1286
    .line 1287
    :goto_17
    return-object v17

    .line 1288
    :pswitch_14
    move-object/from16 v17, v11

    .line 1289
    .line 1290
    check-cast v1, Ljava/util/List;

    .line 1291
    .line 1292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 1296
    .line 1297
    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 1298
    .line 1299
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1300
    .line 1301
    .line 1302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v1

    .line 1306
    :cond_25
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1307
    .line 1308
    .line 1309
    move-result v2

    .line 1310
    if-eqz v2, :cond_27

    .line 1311
    .line 1312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 1317
    .line 1318
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    .line 1319
    .line 1320
    if-eqz v3, :cond_26

    .line 1321
    .line 1322
    const/4 v10, 0x0

    .line 1323
    invoke-virtual {v0, v10}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->abortRequests(Ljava/util/ArrayList;)V

    .line 1324
    .line 1325
    .line 1326
    goto :goto_18

    .line 1327
    :cond_26
    const/4 v10, 0x0

    .line 1328
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    .line 1329
    .line 1330
    if-eqz v3, :cond_25

    .line 1331
    .line 1332
    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->shutdownScope:Lkotlinx/coroutines/CoroutineScope;

    .line 1333
    .line 1334
    new-instance v4, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 1335
    .line 1336
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    .line 1337
    .line 1338
    const/16 v5, 0xb

    .line 1339
    .line 1340
    invoke-direct {v4, v2, v10, v5}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1341
    .line 1342
    .line 1343
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 1344
    .line 1345
    const/4 v8, 0x1

    .line 1346
    invoke-static {v3, v10, v2, v4, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1347
    .line 1348
    .line 1349
    goto :goto_18

    .line 1350
    :cond_27
    return-object v17

    .line 1351
    :pswitch_15
    move v8, v9

    .line 1352
    move-object/from16 v17, v11

    .line 1353
    .line 1354
    check-cast v1, Ljava/util/List;

    .line 1355
    .line 1356
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1357
    .line 1358
    .line 1359
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 1360
    .line 1361
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 1362
    .line 1363
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1364
    .line 1365
    .line 1366
    new-instance v0, Ljava/util/ArrayList;

    .line 1367
    .line 1368
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .line 1370
    .line 1371
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v2

    .line 1375
    :cond_28
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1376
    .line 1377
    .line 1378
    move-result v5

    .line 1379
    if-eqz v5, :cond_29

    .line 1380
    .line 1381
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v5

    .line 1385
    move-object v7, v5

    .line 1386
    check-cast v7, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1387
    .line 1388
    instance-of v7, v7, Landroidx/camera/camera2/pipe/compat/RequestClose;

    .line 1389
    .line 1390
    if-eqz v7, :cond_28

    .line 1391
    .line 1392
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    goto :goto_19

    .line 1396
    :cond_29
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1397
    .line 1398
    .line 1399
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1408
    .line 1409
    .line 1410
    move-result v2

    .line 1411
    if-eqz v2, :cond_2a

    .line 1412
    .line 1413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v2

    .line 1417
    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1418
    .line 1419
    const/4 v5, 0x0

    .line 1420
    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1421
    .line 1422
    .line 1423
    goto :goto_1a

    .line 1424
    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1425
    .line 1426
    .line 1427
    move-result v0

    .line 1428
    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    :cond_2b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 1433
    .line 1434
    .line 1435
    move-result v2

    .line 1436
    if-eqz v2, :cond_2c

    .line 1437
    .line 1438
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v2

    .line 1442
    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1443
    .line 1444
    instance-of v2, v2, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 1445
    .line 1446
    if-eqz v2, :cond_2b

    .line 1447
    .line 1448
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    .line 1449
    .line 1450
    .line 1451
    move-result v4

    .line 1452
    :cond_2c
    if-lez v4, :cond_31

    .line 1453
    .line 1454
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v0

    .line 1458
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1459
    .line 1460
    .line 1461
    check-cast v0, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 1462
    .line 1463
    const/4 v5, 0x0

    .line 1464
    :goto_1b
    if-ge v5, v4, :cond_31

    .line 1465
    .line 1466
    const/4 v2, 0x0

    .line 1467
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v7

    .line 1471
    check-cast v7, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1472
    .line 1473
    instance-of v9, v7, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1474
    .line 1475
    if-eqz v9, :cond_2d

    .line 1476
    .line 1477
    move-object v9, v7

    .line 1478
    check-cast v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1479
    .line 1480
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1481
    .line 1482
    goto :goto_1c

    .line 1483
    :cond_2d
    instance-of v9, v7, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 1484
    .line 1485
    if-eqz v9, :cond_2e

    .line 1486
    .line 1487
    move-object v9, v7

    .line 1488
    check-cast v9, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 1489
    .line 1490
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1491
    .line 1492
    goto :goto_1c

    .line 1493
    :cond_2e
    const/4 v9, 0x0

    .line 1494
    :goto_1c
    if-eqz v9, :cond_2f

    .line 1495
    .line 1496
    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1497
    .line 1498
    new-instance v11, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 1499
    .line 1500
    invoke-direct {v11, v6, v9}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v10, v11}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 1504
    .line 1505
    .line 1506
    :cond_2f
    instance-of v9, v7, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1507
    .line 1508
    if-eqz v9, :cond_30

    .line 1509
    .line 1510
    check-cast v7, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1511
    .line 1512
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 1513
    .line 1514
    const/4 v10, 0x0

    .line 1515
    invoke-virtual {v7, v10}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 1516
    .line 1517
    .line 1518
    :cond_30
    add-int/lit8 v5, v5, 0x1

    .line 1519
    .line 1520
    goto :goto_1b

    .line 1521
    :cond_31
    const/4 v2, 0x0

    .line 1522
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 1523
    .line 1524
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1525
    .line 1526
    .line 1527
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v4

    .line 1531
    move v5, v2

    .line 1532
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1533
    .line 1534
    .line 1535
    move-result v6

    .line 1536
    if-eqz v6, :cond_3a

    .line 1537
    .line 1538
    add-int/lit8 v6, v5, 0x1

    .line 1539
    .line 1540
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v7

    .line 1544
    check-cast v7, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1545
    .line 1546
    instance-of v9, v7, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1547
    .line 1548
    if-eqz v9, :cond_37

    .line 1549
    .line 1550
    move-object v9, v7

    .line 1551
    check-cast v9, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1552
    .line 1553
    iget-object v10, v9, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 1554
    .line 1555
    iget-object v10, v10, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 1556
    .line 1557
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 1558
    .line 1559
    new-instance v11, Landroidx/camera/camera2/pipe/CameraId;

    .line 1560
    .line 1561
    invoke-direct {v11, v10}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v9

    .line 1568
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v9

    .line 1572
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1573
    .line 1574
    .line 1575
    move-result v11

    .line 1576
    move v12, v6

    .line 1577
    :goto_1e
    if-ge v12, v11, :cond_36

    .line 1578
    .line 1579
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v13

    .line 1583
    check-cast v13, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1584
    .line 1585
    instance-of v14, v13, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1586
    .line 1587
    if-eqz v14, :cond_32

    .line 1588
    .line 1589
    check-cast v13, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1590
    .line 1591
    iget-object v13, v13, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    .line 1592
    .line 1593
    new-instance v14, Landroidx/camera/camera2/pipe/CameraId;

    .line 1594
    .line 1595
    invoke-direct {v14, v13}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v13

    .line 1602
    goto :goto_20

    .line 1603
    :cond_32
    instance-of v14, v13, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1604
    .line 1605
    if-eqz v14, :cond_33

    .line 1606
    .line 1607
    check-cast v13, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1608
    .line 1609
    iget-object v14, v13, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 1610
    .line 1611
    iget-object v14, v14, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 1612
    .line 1613
    iget-object v13, v13, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 1614
    .line 1615
    new-instance v15, Landroidx/camera/camera2/pipe/CameraId;

    .line 1616
    .line 1617
    invoke-direct {v15, v14}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v13

    .line 1624
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v13

    .line 1628
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1629
    .line 1630
    .line 1631
    move-result v14

    .line 1632
    if-nez v14, :cond_34

    .line 1633
    .line 1634
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v13

    .line 1638
    if-nez v13, :cond_33

    .line 1639
    .line 1640
    goto :goto_1f

    .line 1641
    :cond_33
    move v13, v2

    .line 1642
    goto :goto_20

    .line 1643
    :cond_34
    :goto_1f
    move v13, v8

    .line 1644
    :goto_20
    if-eqz v13, :cond_35

    .line 1645
    .line 1646
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v9

    .line 1650
    goto :goto_22

    .line 1651
    :cond_35
    add-int/lit8 v12, v12, 0x1

    .line 1652
    .line 1653
    goto :goto_1e

    .line 1654
    :cond_36
    const/4 v9, 0x0

    .line 1655
    goto :goto_22

    .line 1656
    :cond_37
    instance-of v9, v7, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1657
    .line 1658
    if-eqz v9, :cond_36

    .line 1659
    .line 1660
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1661
    .line 1662
    .line 1663
    move-result v9

    .line 1664
    move v10, v6

    .line 1665
    :goto_21
    if-ge v10, v9, :cond_36

    .line 1666
    .line 1667
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v11

    .line 1671
    check-cast v11, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1672
    .line 1673
    instance-of v12, v11, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1674
    .line 1675
    if-eqz v12, :cond_38

    .line 1676
    .line 1677
    check-cast v11, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1678
    .line 1679
    iget-object v11, v11, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    .line 1680
    .line 1681
    move-object v12, v7

    .line 1682
    check-cast v12, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1683
    .line 1684
    iget-object v12, v12, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    .line 1685
    .line 1686
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1687
    .line 1688
    .line 1689
    move-result v11

    .line 1690
    if-eqz v11, :cond_38

    .line 1691
    .line 1692
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v9

    .line 1696
    goto :goto_22

    .line 1697
    :cond_38
    add-int/lit8 v10, v10, 0x1

    .line 1698
    .line 1699
    goto :goto_21

    .line 1700
    :goto_22
    if-eqz v9, :cond_39

    .line 1701
    .line 1702
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1703
    .line 1704
    .line 1705
    move-result v9

    .line 1706
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v9

    .line 1710
    check-cast v9, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1711
    .line 1712
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    .line 1720
    const-string v11, " is pruned by "

    .line 1721
    .line 1722
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v10

    .line 1732
    const-string v11, "CXCP"

    .line 1733
    .line 1734
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    .line 1736
    .line 1737
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v5

    .line 1741
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1742
    .line 1743
    .line 1744
    instance-of v5, v7, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1745
    .line 1746
    if-eqz v5, :cond_39

    .line 1747
    .line 1748
    instance-of v5, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1749
    .line 1750
    if-eqz v5, :cond_39

    .line 1751
    .line 1752
    check-cast v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1753
    .line 1754
    iget-object v5, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1755
    .line 1756
    new-instance v9, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 1757
    .line 1758
    check-cast v7, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1759
    .line 1760
    invoke-direct {v9, v3, v7}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v5, v9}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 1764
    .line 1765
    .line 1766
    :cond_39
    move v5, v6

    .line 1767
    goto/16 :goto_1d

    .line 1768
    .line 1769
    :cond_3a
    new-instance v2, Ljava/util/ArrayList;

    .line 1770
    .line 1771
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1772
    .line 1773
    .line 1774
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v0

    .line 1778
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v0

    .line 1782
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1783
    .line 1784
    .line 1785
    move-result v3

    .line 1786
    if-eqz v3, :cond_3b

    .line 1787
    .line 1788
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v3

    .line 1792
    check-cast v3, Ljava/lang/Number;

    .line 1793
    .line 1794
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1795
    .line 1796
    .line 1797
    move-result v3

    .line 1798
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1799
    .line 1800
    .line 1801
    move-result v4

    .line 1802
    sub-int/2addr v3, v4

    .line 1803
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v3

    .line 1807
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    .line 1809
    .line 1810
    goto :goto_23

    .line 1811
    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v0

    .line 1815
    :cond_3c
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1816
    .line 1817
    .line 1818
    move-result v1

    .line 1819
    if-eqz v1, :cond_3d

    .line 1820
    .line 1821
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v1

    .line 1825
    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1826
    .line 1827
    instance-of v2, v1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1828
    .line 1829
    if-eqz v2, :cond_3c

    .line 1830
    .line 1831
    check-cast v1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1832
    .line 1833
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 1834
    .line 1835
    const/4 v10, 0x0

    .line 1836
    invoke-virtual {v1, v10}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 1837
    .line 1838
    .line 1839
    goto :goto_24

    .line 1840
    :cond_3d
    return-object v17

    .line 1841
    :pswitch_16
    move-object/from16 v17, v11

    .line 1842
    .line 1843
    check-cast v1, Ljava/util/Set;

    .line 1844
    .line 1845
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1846
    .line 1847
    .line 1848
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 1849
    .line 1850
    check-cast v0, Landroidx/room/InvalidationTracker;

    .line 1851
    .line 1852
    iget-object v1, v0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1853
    .line 1854
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1855
    .line 1856
    .line 1857
    :try_start_2
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/LinkedHashMap;

    .line 1858
    .line 1859
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v0

    .line 1863
    check-cast v0, Ljava/lang/Iterable;

    .line 1864
    .line 1865
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1869
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1870
    .line 1871
    .line 1872
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v0

    .line 1876
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1877
    .line 1878
    .line 1879
    move-result v1

    .line 1880
    if-nez v1, :cond_3e

    .line 1881
    .line 1882
    return-object v17

    .line 1883
    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v0

    .line 1887
    check-cast v0, Landroidx/room/ObserverWrapper;

    .line 1888
    .line 1889
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1890
    .line 1891
    .line 1892
    const/16 v22, 0x0

    .line 1893
    .line 1894
    throw v22

    .line 1895
    :catchall_0
    move-exception v0

    .line 1896
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1897
    .line 1898
    .line 1899
    throw v0

    .line 1900
    nop

    .line 1901
    :pswitch_data_0
    .packed-switch 0x0
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
