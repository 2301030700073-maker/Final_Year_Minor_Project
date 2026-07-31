.class public final synthetic Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ljava/util/UUID;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Landroidx/work/ForegroundInfo;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v4, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 28
    .line 29
    invoke-virtual {v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    iget-object v5, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mForegroundProcessor:Landroidx/work/impl/Processor;

    .line 44
    .line 45
    const-string v5, "Moving WorkSpec ("

    .line 46
    .line 47
    iget-object v6, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v6

    .line 50
    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    sget-object v8, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v9, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, ") to the foreground"

    .line 65
    .line 66
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v7, v8, v5}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v5, v0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroidx/work/impl/WorkerWrapper;

    .line 83
    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    iget-object v7, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    .line 88
    if-nez v7, :cond_0

    .line 89
    .line 90
    iget-object v7, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v7}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iput-object v7, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    .line 98
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    :goto_0
    iget-object v7, v0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 110
    .line 111
    iget-object v5, v5, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 112
    .line 113
    invoke-static {v5}, Lkotlin/ranges/RangesKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v2, v5, v3}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createStartForegroundIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object v0, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {v0, v2}, Lcoil3/decode/StaticImageDecoderKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {v4}, Lkotlin/ranges/RangesKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v2, Landroid/content/Intent;

    .line 134
    .line 135
    const-class v4, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 136
    .line 137
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .line 139
    .line 140
    const-string v4, "ACTION_NOTIFY"

    .line 141
    .line 142
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    const-string v4, "KEY_NOTIFICATION_ID"

    .line 146
    .line 147
    iget v5, v3, Landroidx/work/ForegroundInfo;->mNotificationId:I

    .line 148
    .line 149
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    const-string v4, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 153
    .line 154
    iget v5, v3, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    .line 155
    .line 156
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    const-string v4, "KEY_NOTIFICATION"

    .line 160
    .line 161
    iget-object v3, v3, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    .line 162
    .line 163
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    const-string v3, "KEY_WORKSPEC_ID"

    .line 167
    .line 168
    iget-object v4, v0, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    const-string v3, "KEY_GENERATION"

    .line 174
    .line 175
    iget v0, v0, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 176
    .line 177
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    throw p0

    .line 186
    :cond_2
    const-string p0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 187
    .line 188
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    return-object v1

    .line 192
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Landroidx/navigationevent/compose/NavigationEventState;

    .line 195
    .line 196
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v1, Landroidx/navigation3/scene/SceneInfo;

    .line 199
    .line 200
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Ljava/util/List;

    .line 203
    .line 204
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Ljava/util/List;

    .line 207
    .line 208
    iget-object v3, v0, Landroidx/navigationevent/compose/NavigationEventState;->currentInfo$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 209
    .line 210
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Landroidx/navigationevent/compose/NavigationEventState;->backInfo$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v0, Landroidx/navigationevent/compose/NavigationEventState;->forwardInfo$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 219
    .line 220
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 229
    .line 230
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 233
    .line 234
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 237
    .line 238
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 241
    .line 242
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 243
    .line 244
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 245
    .line 246
    :try_start_2
    iput-object v2, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 247
    .line 248
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 249
    .line 250
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 251
    .line 252
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 253
    .line 254
    iput-object v1, v0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 255
    .line 256
    iput-object v1, v0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    .line 258
    :try_start_3
    iput-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 259
    .line 260
    iget-boolean v1, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 261
    .line 262
    const/4 v3, 0x0

    .line 263
    :try_start_4
    iput-boolean v3, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 264
    .line 265
    iget-object v3, p0, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;

    .line 266
    .line 267
    iget-object v8, p0, Landroidx/compose/runtime/MovableContentStateReference;->locals:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 268
    .line 269
    iget-object p0, p0, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    .line 270
    .line 271
    const/4 v9, 0x1

    .line 272
    invoke-virtual {v0, v3, v8, p0, v9}, Landroidx/compose/runtime/GapComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 273
    .line 274
    .line 275
    :try_start_5
    iput-boolean v1, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 276
    .line 277
    :try_start_6
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 278
    .line 279
    iput-object v6, v0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 280
    .line 281
    iput-object v7, v0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 282
    .line 283
    iput-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 284
    .line 285
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 286
    .line 287
    return-object p0

    .line 288
    :catchall_1
    move-exception p0

    .line 289
    goto :goto_4

    .line 290
    :catchall_2
    move-exception p0

    .line 291
    goto :goto_3

    .line 292
    :catchall_3
    move-exception p0

    .line 293
    :try_start_7
    iput-boolean v1, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 294
    .line 295
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 296
    :goto_3
    :try_start_8
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 297
    .line 298
    iput-object v6, v0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 299
    .line 300
    iput-object v7, v0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 301
    .line 302
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 303
    :goto_4
    iput-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 304
    .line 305
    throw p0

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
