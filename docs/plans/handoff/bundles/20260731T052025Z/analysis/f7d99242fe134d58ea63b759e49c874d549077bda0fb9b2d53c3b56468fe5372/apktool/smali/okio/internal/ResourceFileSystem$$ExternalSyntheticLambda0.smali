.class public final synthetic Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "execute() called with: notification = "

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object p0, p0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1, v5, v5}, Lokhttp3/internal/http2/Http2Writer;->ping(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 31
    .line 32
    invoke-virtual {p0, v1, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v6

    .line 36
    :pswitch_0
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "accountOAuthViewModel.effect() called with: effect = "

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_1
    check-cast p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    new-instance v0, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup;

    .line 56
    .line 57
    invoke-direct {v0}, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v6

    .line 64
    :pswitch_2
    check-cast p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;

    .line 65
    .line 66
    invoke-virtual {p0, v5, v5}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 67
    .line 68
    .line 69
    return-object v6

    .line 70
    :pswitch_3
    check-cast p0, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "show() called with: notification = "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_4
    check-cast p0, Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "dismiss() called with: notification = "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_5
    check-cast p0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;

    .line 105
    .line 106
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "execute() called with notification = "

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_6
    check-cast p0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;

    .line 124
    .line 125
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :pswitch_7
    check-cast p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;

    .line 141
    .line 142
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_8
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 158
    .line 159
    invoke-virtual {p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->close()V

    .line 160
    .line 161
    .line 162
    return-object v6

    .line 163
    :pswitch_9
    check-cast p0, Ljava/lang/Throwable;

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "LoadMessagesLegacySideEffect failed: "

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :pswitch_a
    check-cast p0, Ljava/util/Map;

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v1, "saved sort criteria = "

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0

    .line 197
    :pswitch_b
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success;

    .line 198
    .line 199
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$SyncStarted;

    .line 200
    .line 201
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$SyncStarted;->serverId:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p0}, Lnet/thunderbird/feature/mail/folder/api/FolderServerId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    const-string v0, "Started sync for "

    .line 208
    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :pswitch_c
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 215
    .line 216
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 217
    .line 218
    if-eqz v0, :cond_0

    .line 219
    .line 220
    move-object v3, p0

    .line 221
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 222
    .line 223
    :cond_0
    if-eqz v3, :cond_1

    .line 224
    .line 225
    iget-object v2, v3, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->folderName:Ljava/lang/String;

    .line 226
    .line 227
    :cond_1
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    :pswitch_d
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;

    .line 233
    .line 234
    invoke-virtual {p0, v5, v5}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 235
    .line 236
    .line 237
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    const-string v1, "SetupArchiveFolderDialogFragmentFactory_dialog_dismiss"

    .line 243
    .line 244
    invoke-static {p0, v1, v0}, Lorg/slf4j/helpers/Util;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 245
    .line 246
    .line 247
    return-object v6

    .line 248
    :pswitch_e
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 249
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v1, "state.onEach called with: state = "

    .line 253
    .line 254
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    return-object p0

    .line 265
    :pswitch_f
    check-cast p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;

    .line 266
    .line 267
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 268
    .line 269
    const/4 v0, 0x1

    .line 270
    new-array v0, v0, [Ljava/lang/Object;

    .line 271
    .line 272
    aput-object p0, v0, v5

    .line 273
    .line 274
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    return-object p0

    .line 279
    :pswitch_10
    check-cast p0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 280
    .line 281
    iget-object p0, p0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 282
    .line 283
    return-object p0

    .line 284
    :pswitch_11
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 285
    .line 286
    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 287
    .line 288
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->value:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-static {v2, v2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 295
    .line 296
    .line 297
    move-result-wide v2

    .line 298
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :pswitch_12
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 307
    .line 308
    iget p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->value:I

    .line 309
    .line 310
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 311
    .line 312
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 313
    .line 314
    .line 315
    return-object v0

    .line 316
    :pswitch_13
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 317
    .line 318
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 319
    .line 320
    if-eqz p0, :cond_2

    .line 321
    .line 322
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragCancelled;->INSTANCE:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragCancelled;

    .line 323
    .line 324
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    :cond_2
    return-object v6

    .line 328
    :pswitch_14
    check-cast p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 329
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string/jumbo v1, "writeConfig() called with: config = "

    .line 333
    .line 334
    .line 335
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    return-object p0

    .line 346
    :pswitch_15
    check-cast p0, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 347
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v1, "save() called with: config = "

    .line 351
    .line 352
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    return-object p0

    .line 363
    :pswitch_16
    check-cast p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 364
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    const-string/jumbo p0, "\u2550\u2550 State machine history dump \u2550\u2550"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const/16 p0, 0xa

    .line 380
    .line 381
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, "BEGINNING OF HISTORY DUMP:"

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v1, "---"

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v2, "No state transitions to print"

    .line 401
    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v1, "END OF HISTORY DUMP"

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    return-object p0

    .line 427
    :pswitch_17
    check-cast p0, Lokio/internal/ResourceFileSystem;

    .line 428
    .line 429
    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->classLoader:Ljava/lang/ClassLoader;

    .line 430
    .line 431
    iget-object p0, p0, Lokio/internal/ResourceFileSystem;->systemFileSystem:Lokio/FileSystem;

    .line 432
    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    new-instance v4, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-eqz v6, :cond_5

    .line 461
    .line 462
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    check-cast v6, Ljava/net/URL;

    .line 467
    .line 468
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    const-string v8, "file"

    .line 476
    .line 477
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v7

    .line 481
    if-nez v7, :cond_4

    .line 482
    .line 483
    move-object v7, v3

    .line 484
    goto :goto_2

    .line 485
    :cond_4
    sget-object v7, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 486
    .line 487
    new-instance v7, Ljava/io/File;

    .line 488
    .line 489
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 494
    .line 495
    .line 496
    invoke-static {v7}, Lokio/Path$Companion;->get$default(Ljava/io/File;)Lokio/Path;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    new-instance v7, Lkotlin/Pair;

    .line 501
    .line 502
    invoke-direct {v7, p0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    :goto_2
    if-eqz v7, :cond_3

    .line 506
    .line 507
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    goto :goto_1

    .line 511
    :cond_5
    const-string v2, "META-INF/MANIFEST.MF"

    .line 512
    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    new-instance v2, Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    if-eqz v6, :cond_9

    .line 541
    .line 542
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v6

    .line 546
    check-cast v6, Ljava/net/URL;

    .line 547
    .line 548
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    const-string v7, "jar:file:"

    .line 559
    .line 560
    invoke-static {v6, v7, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 561
    .line 562
    .line 563
    move-result v7

    .line 564
    if-nez v7, :cond_7

    .line 565
    .line 566
    :goto_4
    move-object v8, v3

    .line 567
    goto :goto_5

    .line 568
    :cond_7
    const-string v7, "!"

    .line 569
    .line 570
    const/4 v8, 0x6

    .line 571
    invoke-static {v8, v6, v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    move-result v7

    .line 575
    const/4 v8, -0x1

    .line 576
    if-ne v7, v8, :cond_8

    .line 577
    .line 578
    goto :goto_4

    .line 579
    :cond_8
    sget-object v8, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 580
    .line 581
    new-instance v8, Ljava/io/File;

    .line 582
    .line 583
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 588
    .line 589
    .line 590
    move-result-object v6

    .line 591
    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 592
    .line 593
    .line 594
    invoke-static {v8}, Lokio/Path$Companion;->get$default(Ljava/io/File;)Lokio/Path;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    new-instance v7, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;

    .line 599
    .line 600
    const/4 v8, 0x7

    .line 601
    invoke-direct {v7, v8}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 602
    .line 603
    .line 604
    invoke-static {v6, p0, v7}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    sget-object v7, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 609
    .line 610
    new-instance v8, Lkotlin/Pair;

    .line 611
    .line 612
    invoke-direct {v8, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    :goto_5
    if-eqz v8, :cond_6

    .line 616
    .line 617
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    goto :goto_3

    .line 621
    :cond_9
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    return-object p0

    .line 626
    nop

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
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
