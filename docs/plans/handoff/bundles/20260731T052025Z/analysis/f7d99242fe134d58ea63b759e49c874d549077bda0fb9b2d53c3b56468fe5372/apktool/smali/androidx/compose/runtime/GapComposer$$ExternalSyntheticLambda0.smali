.class public final synthetic Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-wide v1, 0x412e848000000000L    # 1000000.0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 29
    .line 30
    iget-object v3, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->transform:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 39
    .line 40
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v8, v2

    .line 47
    check-cast v8, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v10, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->validate:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    invoke-interface {v10, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    iget-object v4, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->id:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v5, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->title:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    iget-object v6, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->description:Lkotlin/jvm/functions/Function0;

    .line 64
    .line 65
    iget-object v7, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->icon:Lkotlin/jvm/functions/Function0;

    .line 66
    .line 67
    iget-object v9, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->transform:Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 73
    .line 74
    invoke-direct/range {v3 .. v10}, Lnet/thunderbird/core/ui/setting/SettingValue$Text;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 94
    .line 95
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, ".handle() called with:\n                    |   event = "

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, ",\n                    |   oldState = "

    .line 126
    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, ",\n                    |   newState = "

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p0, ",\n                "

    .line 142
    .line 143
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 158
    .line 159
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v1, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;

    .line 162
    .line 163
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v2, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 166
    .line 167
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;

    .line 170
    .line 171
    iget-object v0, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->messagingController:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 172
    .line 173
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, v2, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 179
    .line 180
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_2
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 189
    .line 190
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v1, Ljava/util/UUID;

    .line 193
    .line 194
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v2, Landroidx/work/ForegroundInfo;

    .line 197
    .line 198
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-object v3, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 207
    .line 208
    invoke-virtual {v3, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-eqz v3, :cond_4

    .line 213
    .line 214
    iget-object v5, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 215
    .line 216
    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_4

    .line 221
    .line 222
    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mForegroundProcessor:Landroidx/work/impl/Processor;

    .line 223
    .line 224
    const-string v5, "Moving WorkSpec ("

    .line 225
    .line 226
    iget-object v6, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 227
    .line 228
    monitor-enter v6

    .line 229
    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    sget-object v8, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 234
    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v5, ") to the foreground"

    .line 244
    .line 245
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v7, v8, v5}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v5, v0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    .line 256
    .line 257
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Landroidx/work/impl/WorkerWrapper;

    .line 262
    .line 263
    if-eqz v5, :cond_3

    .line 264
    .line 265
    iget-object v7, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 266
    .line 267
    if-nez v7, :cond_1

    .line 268
    .line 269
    iget-object v7, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 270
    .line 271
    invoke-static {v7}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    iput-object v7, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    .line 277
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 278
    .line 279
    .line 280
    goto :goto_1

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    move-object p0, v0

    .line 283
    goto :goto_3

    .line 284
    :cond_1
    :goto_1
    iget-object v7, v0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    .line 285
    .line 286
    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 290
    .line 291
    iget-object v5, v5, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 292
    .line 293
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-static {v1, v5, v2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createStartForegroundIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    iget-object v0, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 302
    .line 303
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 304
    .line 305
    const/16 v7, 0x1a

    .line 306
    .line 307
    if-lt v5, v7, :cond_2

    .line 308
    .line 309
    invoke-static {v0, v1}, Landroidx/datastore/core/Api26Impl;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    .line 315
    .line 316
    :cond_3
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-static {v3}, Lorg/jsoup/helper/Validate;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    .line 322
    .line 323
    new-instance v1, Landroid/content/Intent;

    .line 324
    .line 325
    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 326
    .line 327
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .line 329
    .line 330
    const-string v3, "ACTION_NOTIFY"

    .line 331
    .line 332
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    const-string v3, "KEY_NOTIFICATION_ID"

    .line 336
    .line 337
    iget v5, v2, Landroidx/work/ForegroundInfo;->mNotificationId:I

    .line 338
    .line 339
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    .line 341
    .line 342
    const-string v3, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 343
    .line 344
    iget v5, v2, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    .line 345
    .line 346
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    .line 348
    .line 349
    const-string v3, "KEY_NOTIFICATION"

    .line 350
    .line 351
    iget-object v2, v2, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    .line 352
    .line 353
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    .line 355
    .line 356
    const-string v2, "KEY_WORKSPEC_ID"

    .line 357
    .line 358
    iget-object v3, v0, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    const-string v2, "KEY_GENERATION"

    .line 364
    .line 365
    iget v0, v0, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 366
    .line 367
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 371
    .line 372
    .line 373
    goto :goto_4

    .line 374
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    throw p0

    .line 376
    :cond_4
    const-string p0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 377
    .line 378
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    :goto_4
    return-object v4

    .line 382
    :pswitch_3
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 385
    .line 386
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 389
    .line 390
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v2, Landroidx/compose/material3/SheetValue;

    .line 393
    .line 394
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 397
    .line 398
    new-instance v3, Landroidx/compose/material3/SheetState;

    .line 399
    .line 400
    invoke-direct {v3, v0, v1, v2, p0}, Landroidx/compose/material3/SheetState;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;)V

    .line 401
    .line 402
    .line 403
    return-object v3

    .line 404
    :pswitch_4
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Landroidx/compose/material3/SheetState;

    .line 407
    .line 408
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 411
    .line 412
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v2, Landroidx/compose/animation/core/Animatable;

    .line 415
    .line 416
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 419
    .line 420
    iget-object v3, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 421
    .line 422
    iget-object v3, v3, Landroidx/compose/material3/internal/AnchoredDraggableState;->currentValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 423
    .line 424
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    check-cast v3, Landroidx/compose/material3/SheetValue;

    .line 429
    .line 430
    sget-object v6, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    .line 431
    .line 432
    const/4 v7, 0x3

    .line 433
    if-ne v3, v6, :cond_5

    .line 434
    .line 435
    iget-object v3, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 436
    .line 437
    invoke-virtual {v3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    sget-object v6, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    .line 442
    .line 443
    iget-object v3, v3, Landroidx/compose/material3/internal/MapDraggableAnchors;->anchors:Ljava/util/Map;

    .line 444
    .line 445
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-eqz v3, :cond_5

    .line 450
    .line 451
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 452
    .line 453
    const/16 v3, 0x18

    .line 454
    .line 455
    invoke-direct {p0, v2, v4, v3}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 456
    .line 457
    .line 458
    invoke-static {v1, v4, v4, p0, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 459
    .line 460
    .line 461
    new-instance p0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;

    .line 462
    .line 463
    invoke-direct {p0, v0, v4, v5}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;I)V

    .line 464
    .line 465
    .line 466
    invoke-static {v1, v4, v4, p0, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 467
    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_5
    new-instance v2, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;

    .line 471
    .line 472
    const/4 v3, 0x2

    .line 473
    invoke-direct {v2, v0, v4, v3}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;I)V

    .line 474
    .line 475
    .line 476
    invoke-static {v1, v4, v4, v2, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    new-instance v1, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 481
    .line 482
    invoke-direct {v1, v7, p0}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 486
    .line 487
    .line 488
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 489
    .line 490
    return-object p0

    .line 491
    :pswitch_5
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v0, Landroidx/compose/material3/SheetState;

    .line 494
    .line 495
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v1, Landroidx/compose/animation/core/SpringSpec;

    .line 498
    .line 499
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v2, Landroidx/compose/animation/core/SpringSpec;

    .line 502
    .line 503
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast p0, Landroidx/compose/animation/core/SpringSpec;

    .line 506
    .line 507
    iput-object v1, v0, Landroidx/compose/material3/SheetState;->showMotionSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 508
    .line 509
    iput-object v2, v0, Landroidx/compose/material3/SheetState;->hideMotionSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 510
    .line 511
    iput-object p0, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableMotionSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 512
    .line 513
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 514
    .line 515
    return-object p0

    .line 516
    :pswitch_6
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 517
    .line 518
    move-object v9, v0

    .line 519
    check-cast v9, Ljava/lang/Float;

    .line 520
    .line 521
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 524
    .line 525
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 526
    .line 527
    move-object v10, v1

    .line 528
    check-cast v10, Ljava/lang/Float;

    .line 529
    .line 530
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 531
    .line 532
    move-object v7, p0

    .line 533
    check-cast v7, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 534
    .line 535
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Float;

    .line 536
    .line 537
    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result p0

    .line 541
    if-eqz p0, :cond_6

    .line 542
    .line 543
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Float;

    .line 544
    .line 545
    invoke-virtual {v10, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result p0

    .line 549
    if-nez p0, :cond_7

    .line 550
    .line 551
    :cond_6
    iput-object v9, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Float;

    .line 552
    .line 553
    iput-object v10, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Float;

    .line 554
    .line 555
    new-instance v6, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 556
    .line 557
    const/4 v11, 0x0

    .line 558
    sget-object v8, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 559
    .line 560
    invoke-direct/range {v6 .. v11}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 561
    .line 562
    .line 563
    iput-object v6, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 564
    .line 565
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 566
    .line 567
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 568
    .line 569
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 570
    .line 571
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    iput-boolean v3, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    .line 575
    .line 576
    iput-boolean v5, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 577
    .line 578
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 579
    .line 580
    return-object p0

    .line 581
    :pswitch_7
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;

    .line 584
    .line 585
    iget-object v6, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v6, Landroid/content/Context;

    .line 588
    .line 589
    iget-object v7, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v7, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;

    .line 592
    .line 593
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast p0, Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 596
    .line 597
    const-string v8, "CXCP"

    .line 598
    .line 599
    const-string v9, "Created CameraPipe in "

    .line 600
    .line 601
    const-string v10, "Create CameraPipe"

    .line 602
    .line 603
    :try_start_2
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 607
    .line 608
    .line 609
    move-result-wide v10

    .line 610
    new-instance v12, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    .line 611
    .line 612
    invoke-static {v6}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 613
    .line 614
    .line 615
    move-result-object v6

    .line 616
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    new-instance v13, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    .line 620
    .line 621
    iget-object v7, v7, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    .line 622
    .line 623
    new-instance v14, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 624
    .line 625
    invoke-direct {v14, v7}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 626
    .line 627
    .line 628
    const/16 v7, 0x77

    .line 629
    .line 630
    invoke-direct {v13, v14, v7}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;-><init>(Landroidx/camera/core/impl/utils/executor/SequentialExecutor;I)V

    .line 631
    .line 632
    .line 633
    new-instance v7, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 634
    .line 635
    iget-object v0, v0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedInteropCallbacks:Landroidx/cardview/widget/CardView$1;

    .line 636
    .line 637
    iget-object v14, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 638
    .line 639
    check-cast v14, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    .line 640
    .line 641
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v0, Landroidx/cardview/widget/CardView$1;

    .line 644
    .line 645
    invoke-direct {v7, v14, v0, p0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;-><init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/pipe/core/DurationNs;)V

    .line 646
    .line 647
    .line 648
    invoke-direct {v12, v6, v13, v7}, Landroidx/camera/camera2/pipe/CameraPipe$Config;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;)V

    .line 649
    .line 650
    .line 651
    invoke-static {v12}, Landroidx/camera/camera2/pipe/CameraPipeKt;->CameraPipe(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 652
    .line 653
    .line 654
    move-result-object p0

    .line 655
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_8

    .line 660
    .line 661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 662
    .line 663
    .line 664
    move-result-wide v6

    .line 665
    sub-long/2addr v6, v10

    .line 666
    const-string v0, "%.3f ms"

    .line 667
    .line 668
    long-to-double v6, v6

    .line 669
    div-double/2addr v6, v1

    .line 670
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    new-array v2, v5, [Ljava/lang/Object;

    .line 675
    .line 676
    aput-object v1, v2, v3

    .line 677
    .line 678
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 691
    .line 692
    .line 693
    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 694
    .line 695
    .line 696
    return-object p0

    .line 697
    :catchall_1
    move-exception v0

    .line 698
    move-object p0, v0

    .line 699
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 700
    .line 701
    .line 702
    throw p0

    .line 703
    :pswitch_8
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 704
    .line 705
    move-object v7, v0

    .line 706
    check-cast v7, Landroid/content/Context;

    .line 707
    .line 708
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 709
    .line 710
    move-object v8, v0

    .line 711
    check-cast v8, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;

    .line 712
    .line 713
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Landroidx/compose/ui/node/NodeChain;

    .line 716
    .line 717
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 718
    .line 719
    move-object v10, p0

    .line 720
    check-cast v10, Landroidx/cardview/widget/CardView$1;

    .line 721
    .line 722
    const-string p0, "CameraFactoryAdapter#appComponent"

    .line 723
    .line 724
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 728
    .line 729
    .line 730
    move-result-wide v13

    .line 731
    new-instance v6, Lcom/eygraber/uri/Uri$Builder;

    .line 732
    .line 733
    iget-object p0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 734
    .line 735
    check-cast p0, Lkotlin/SynchronizedLazyImpl;

    .line 736
    .line 737
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object p0

    .line 741
    move-object v9, p0

    .line 742
    check-cast v9, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 743
    .line 744
    iget-object p0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 745
    .line 746
    move-object v11, p0

    .line 747
    check-cast v11, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 748
    .line 749
    iget-object p0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 750
    .line 751
    move-object v12, p0

    .line 752
    check-cast v12, Landroidx/camera/core/CameraXConfig;

    .line 753
    .line 754
    invoke-direct/range {v6 .. v12}, Lcom/eygraber/uri/Uri$Builder;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;Landroidx/camera/camera2/pipe/CameraPipeImpl;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;Landroidx/camera/core/CameraXConfig;)V

    .line 755
    .line 756
    .line 757
    new-instance p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 758
    .line 759
    invoke-direct {p0, v6}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;-><init>(Lcom/eygraber/uri/Uri$Builder;)V

    .line 760
    .line 761
    .line 762
    const-string v0, "CXCP"

    .line 763
    .line 764
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    if-eqz v6, :cond_9

    .line 769
    .line 770
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 771
    .line 772
    .line 773
    move-result-wide v6

    .line 774
    sub-long/2addr v6, v13

    .line 775
    const-string v8, "%.3f ms"

    .line 776
    .line 777
    long-to-double v6, v6

    .line 778
    div-double/2addr v6, v1

    .line 779
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    new-array v2, v5, [Ljava/lang/Object;

    .line 784
    .line 785
    aput-object v1, v2, v3

    .line 786
    .line 787
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    invoke-static {v4, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    const-string v2, "Created CameraFactoryAdapter in "

    .line 796
    .line 797
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .line 803
    .line 804
    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 805
    .line 806
    .line 807
    return-object p0

    .line 808
    :pswitch_9
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 809
    .line 810
    move-object v1, v0

    .line 811
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 812
    .line 813
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 816
    .line 817
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 820
    .line 821
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 824
    .line 825
    iget-object v6, v1, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 826
    .line 827
    iget-object v7, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 828
    .line 829
    :try_start_3
    iput-object v0, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 830
    .line 831
    iget-object v8, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 832
    .line 833
    iget-object v9, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 834
    .line 835
    iget-object v10, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 836
    .line 837
    iput-object v4, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 838
    .line 839
    iput-object v4, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 840
    .line 841
    :try_start_4
    iput-object v2, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 842
    .line 843
    iget-boolean v2, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 844
    .line 845
    :try_start_5
    iput-boolean v3, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 846
    .line 847
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;

    .line 848
    .line 849
    iget-object v3, p0, Landroidx/compose/runtime/MovableContentStateReference;->locals:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 850
    .line 851
    iget-object p0, p0, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    .line 852
    .line 853
    invoke-virtual {v1, v0, v3, p0, v5}, Landroidx/compose/runtime/GapComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 854
    .line 855
    .line 856
    :try_start_6
    iput-boolean v2, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 857
    .line 858
    :try_start_7
    iput-object v8, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 859
    .line 860
    iput-object v9, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 861
    .line 862
    iput-object v10, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 863
    .line 864
    iput-object v7, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 865
    .line 866
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 867
    .line 868
    return-object p0

    .line 869
    :catchall_2
    move-exception v0

    .line 870
    move-object p0, v0

    .line 871
    goto :goto_7

    .line 872
    :catchall_3
    move-exception v0

    .line 873
    move-object p0, v0

    .line 874
    goto :goto_6

    .line 875
    :catchall_4
    move-exception v0

    .line 876
    move-object p0, v0

    .line 877
    :try_start_8
    iput-boolean v2, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 878
    .line 879
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 880
    :goto_6
    :try_start_9
    iput-object v8, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 881
    .line 882
    iput-object v9, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 883
    .line 884
    iput-object v10, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 885
    .line 886
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 887
    :goto_7
    iput-object v7, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 888
    .line 889
    throw p0

    .line 890
    nop

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
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
