.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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

    .line 16
    iput p5, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/foundation/pager/PagerState;

    .line 14
    .line 15
    iget-object v3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    const-string v6, "share_click"

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 34
    .line 35
    iget-object v8, v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData;->slideName:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/16 v4, 0xee

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-static/range {v4 .. v9}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 54
    .line 55
    instance-of v5, v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

    .line 56
    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$GeoScreen;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 70
    .line 71
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$GeoScreen;-><init>(Lorg/wikipedia/yearinreview/YearInReviewScreenData;Lkotlin/jvm/functions/Function2;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    instance-of v3, v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$StandardScreen;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest$StandardScreen;-><init>(Lorg/wikipedia/yearinreview/YearInReviewScreenData;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    instance-of p0, v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 102
    .line 103
    if-eqz p0, :cond_2

    .line 104
    .line 105
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-object v1

    .line 112
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 115
    .line 116
    iget-object v1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 119
    .line 120
    iget-object v2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 123
    .line 124
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 127
    .line 128
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/String;

    .line 139
    .line 140
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Ljava/lang/String;

    .line 145
    .line 146
    invoke-interface {v0, v1, v2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Landroid/content/Context;

    .line 155
    .line 156
    iget-object v1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v1, Ljava/util/List;

    .line 159
    .line 160
    iget-object v2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 163
    .line 164
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 167
    .line 168
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-eqz v3, :cond_3

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast p0, Lorg/wikipedia/onboarding/OnboardingScreen;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    const-string v4, "click"

    .line 189
    .line 190
    const-string v7, "add_language"

    .line 191
    .line 192
    const/4 v9, 0x0

    .line 193
    const/16 v10, 0xf2

    .line 194
    .line 195
    const/4 v5, 0x0

    .line 196
    const/4 v8, 0x0

    .line 197
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 198
    .line 199
    .line 200
    :cond_3
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_2
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 209
    .line 210
    iget-object v2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v2, Ljava/util/UUID;

    .line 213
    .line 214
    iget-object v3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v3, Landroidx/work/ForegroundInfo;

    .line 217
    .line 218
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p0, Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iget-object v4, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 227
    .line 228
    invoke-virtual {v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    if-eqz v4, :cond_7

    .line 233
    .line 234
    iget-object v5, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 235
    .line 236
    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-nez v5, :cond_7

    .line 241
    .line 242
    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mForegroundProcessor:Landroidx/work/impl/Processor;

    .line 243
    .line 244
    const-string v5, "Moving WorkSpec ("

    .line 245
    .line 246
    iget-object v6, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 247
    .line 248
    monitor-enter v6

    .line 249
    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    sget-object v8, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 254
    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v5, ") to the foreground"

    .line 264
    .line 265
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v7, v8, v5}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v5, v0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    .line 276
    .line 277
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Landroidx/work/impl/WorkerWrapper;

    .line 282
    .line 283
    if-eqz v5, :cond_6

    .line 284
    .line 285
    iget-object v7, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 286
    .line 287
    if-nez v7, :cond_4

    .line 288
    .line 289
    iget-object v7, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 290
    .line 291
    invoke-static {v7}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    iput-object v7, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    .line 297
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :catchall_0
    move-exception v0

    .line 302
    move-object p0, v0

    .line 303
    goto :goto_4

    .line 304
    :cond_4
    :goto_2
    iget-object v7, v0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    .line 305
    .line 306
    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    iget-object v2, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 310
    .line 311
    iget-object v5, v5, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 312
    .line 313
    invoke-static {v5}, Lkotlin/ResultKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-static {v2, v5, v3}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createStartForegroundIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    iget-object v0, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 322
    .line 323
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 324
    .line 325
    const/16 v7, 0x1a

    .line 326
    .line 327
    if-lt v5, v7, :cond_5

    .line 328
    .line 329
    invoke-static {v0, v2}, Lcoil3/util/BitmapsKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_5
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    .line 335
    .line 336
    :cond_6
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-static {v4}, Lkotlin/ResultKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    .line 342
    .line 343
    new-instance v2, Landroid/content/Intent;

    .line 344
    .line 345
    const-class v4, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 346
    .line 347
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .line 349
    .line 350
    const-string v4, "ACTION_NOTIFY"

    .line 351
    .line 352
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    .line 354
    .line 355
    const-string v4, "KEY_NOTIFICATION_ID"

    .line 356
    .line 357
    iget v5, v3, Landroidx/work/ForegroundInfo;->mNotificationId:I

    .line 358
    .line 359
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    .line 361
    .line 362
    const-string v4, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 363
    .line 364
    iget v5, v3, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    .line 365
    .line 366
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    const-string v4, "KEY_NOTIFICATION"

    .line 370
    .line 371
    iget-object v3, v3, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    .line 372
    .line 373
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    .line 375
    .line 376
    const-string v3, "KEY_WORKSPEC_ID"

    .line 377
    .line 378
    iget-object v4, v0, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    const-string v3, "KEY_GENERATION"

    .line 384
    .line 385
    iget v0, v0, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 386
    .line 387
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 391
    .line 392
    .line 393
    goto :goto_5

    .line 394
    :goto_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    throw p0

    .line 396
    :cond_7
    const-string p0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 397
    .line 398
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :goto_5
    return-object v1

    .line 402
    :pswitch_3
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 403
    .line 404
    move-object v4, v0

    .line 405
    check-cast v4, Ljava/lang/Float;

    .line 406
    .line 407
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 410
    .line 411
    iget-object v1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 412
    .line 413
    move-object v5, v1

    .line 414
    check-cast v5, Ljava/lang/Float;

    .line 415
    .line 416
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    .line 417
    .line 418
    move-object v2, p0

    .line 419
    check-cast v2, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 420
    .line 421
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Float;

    .line 422
    .line 423
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    if-eqz p0, :cond_8

    .line 428
    .line 429
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Float;

    .line 430
    .line 431
    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result p0

    .line 435
    if-nez p0, :cond_9

    .line 436
    .line 437
    :cond_8
    iput-object v4, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Float;

    .line 438
    .line 439
    iput-object v5, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Float;

    .line 440
    .line 441
    new-instance v1, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 442
    .line 443
    const/4 v6, 0x0

    .line 444
    sget-object v3, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 445
    .line 446
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 447
    .line 448
    .line 449
    iput-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 450
    .line 451
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 452
    .line 453
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 454
    .line 455
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 456
    .line 457
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    const/4 p0, 0x0

    .line 461
    iput-boolean p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    .line 462
    .line 463
    const/4 p0, 0x1

    .line 464
    iput-boolean p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 465
    .line 466
    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 467
    .line 468
    return-object p0

    .line 469
    :pswitch_4
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 470
    .line 471
    move-object v7, v0

    .line 472
    check-cast v7, Ljava/lang/String;

    .line 473
    .line 474
    iget-object v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Lorg/wikipedia/games/GamesHubViewModel;

    .line 477
    .line 478
    iget-object v1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 479
    .line 480
    move-object v9, v1

    .line 481
    check-cast v9, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 482
    .line 483
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 486
    .line 487
    const-string v4, "language_chip_select"

    .line 488
    .line 489
    const-string v5, "games_hub"

    .line 490
    .line 491
    const/4 v3, 0x0

    .line 492
    const/16 v1, 0x3bc

    .line 493
    .line 494
    const/4 v2, 0x0

    .line 495
    const/4 v6, 0x0

    .line 496
    const/4 v8, 0x0

    .line 497
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-interface {p0, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    iput-object v7, v0, Lorg/wikipedia/games/GamesHubViewModel;->selectedLanguage:Ljava/lang/String;

    .line 510
    .line 511
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    check-cast v1, Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v0, v1}, Lorg/wikipedia/games/GamesHubViewModel;->loadOnThisDayGamesPreviews(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    check-cast p0, Ljava/lang/String;

    .line 525
    .line 526
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    iput-object p0, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->languageCode:Ljava/lang/String;

    .line 533
    .line 534
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 535
    .line 536
    return-object p0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
