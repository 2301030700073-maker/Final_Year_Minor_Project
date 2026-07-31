.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v9, p1

    .line 16
    .line 17
    check-cast v9, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 18
    .line 19
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 20
    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 25
    .line 26
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    aget v1, v1, v6

    .line 31
    .line 32
    if-eq v1, v3, :cond_2

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    const-string v1, "monthly"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 43
    .line 44
    .line 45
    move-object v4, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string/jumbo v1, "weekly"

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v1, "daily"

    .line 52
    .line 53
    :goto_0
    const-string/jumbo v2, "update_"

    .line 54
    .line 55
    .line 56
    const-string v3, "_click"

    .line 57
    .line 58
    invoke-static {v2, v1, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    const/16 v18, 0x1fc

    .line 65
    .line 66
    const-string v11, "discover_settings"

    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v14, 0x0

    .line 71
    const/4 v15, 0x0

    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    invoke-static/range {v10 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 82
    .line 83
    const v2, 0x7f120671

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 94
    .line 95
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    move-object v6, v2

    .line 100
    check-cast v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    const/16 v12, 0x1b

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v10, 0x0

    .line 108
    invoke-static/range {v6 .. v12}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZI)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v5, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->requestPermissionAndScheduleRecommendedReadingNotification()V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-object v4

    .line 119
    :pswitch_0
    move-object/from16 v10, p1

    .line 120
    .line 121
    check-cast v10, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    sget v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    const/16 v14, 0x1ec

    .line 131
    .line 132
    const-string v6, "article_count_click"

    .line 133
    .line 134
    const-string v7, "discover_settings"

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    invoke-static/range {v6 .. v14}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 148
    .line 149
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eq v1, v2, :cond_3

    .line 154
    .line 155
    const v2, 0x7f12066e

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 159
    .line 160
    .line 161
    :cond_3
    const v2, 0x7f120667

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 165
    .line 166
    .line 167
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 168
    .line 169
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    move-object v11, v2

    .line 174
    check-cast v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 175
    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    const/16 v17, 0x1d

    .line 179
    .line 180
    const/4 v12, 0x0

    .line 181
    const/4 v14, 0x0

    .line 182
    const/4 v15, 0x0

    .line 183
    move v13, v1

    .line 184
    invoke-static/range {v11 .. v17}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZI)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v5, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    return-object v4

    .line 192
    :pswitch_1
    move-object/from16 v1, p1

    .line 193
    .line 194
    check-cast v1, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    sget v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 201
    .line 202
    if-eqz v1, :cond_4

    .line 203
    .line 204
    const-string v2, "notifs_on_click"

    .line 205
    .line 206
    :goto_2
    move-object v5, v2

    .line 207
    goto :goto_3

    .line 208
    :cond_4
    const-string v2, "notifs_off_click"

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_3
    const/4 v12, 0x0

    .line 212
    const/16 v13, 0x1fc

    .line 213
    .line 214
    const-string v6, "discover_settings"

    .line 215
    .line 216
    const/4 v7, 0x0

    .line 217
    const/4 v8, 0x0

    .line 218
    const/4 v9, 0x0

    .line 219
    const/4 v10, 0x0

    .line 220
    const/4 v11, 0x0

    .line 221
    invoke-static/range {v5 .. v13}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    if-eqz v1, :cond_5

    .line 225
    .line 226
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->requestPermissionAndScheduleRecommendedReadingNotification()V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_5
    const-string v1, "alarm"

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    check-cast v1, Landroid/app/AlarmManager;

    .line 240
    .line 241
    new-instance v2, Landroid/content/Intent;

    .line 242
    .line 243
    const-class v3, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;

    .line 244
    .line 245
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .line 247
    .line 248
    const-string v3, "action_recommended_reading_list"

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const/high16 v3, 0x4000000

    .line 258
    .line 259
    const/4 v5, 0x0

    .line 260
    invoke-static {v0, v5, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->toggleNotification(Z)V

    .line 272
    .line 273
    .line 274
    :goto_4
    return-object v4

    .line 275
    :pswitch_2
    move-object/from16 v1, p1

    .line 276
    .line 277
    check-cast v1, Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    sget v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 284
    .line 285
    if-eqz v1, :cond_6

    .line 286
    .line 287
    const-string v3, "discover_on_click"

    .line 288
    .line 289
    :goto_5
    move-object v6, v3

    .line 290
    goto :goto_6

    .line 291
    :cond_6
    const-string v3, "discover_off_click"

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :goto_6
    const/4 v13, 0x0

    .line 295
    const/16 v14, 0x1fc

    .line 296
    .line 297
    const-string v7, "discover_settings"

    .line 298
    .line 299
    const/4 v8, 0x0

    .line 300
    const/4 v9, 0x0

    .line 301
    const/4 v10, 0x0

    .line 302
    const/4 v11, 0x0

    .line 303
    const/4 v12, 0x0

    .line 304
    invoke-static/range {v6 .. v14}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    sget-object v6, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 316
    .line 317
    new-instance v7, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 318
    .line 319
    const/4 v8, 0x7

    .line 320
    invoke-direct {v7, v6, v8}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 321
    .line 322
    .line 323
    new-instance v6, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 324
    .line 325
    invoke-direct {v6, v1, v0, v5}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(ZLorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v3, v7, v5, v6, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 329
    .line 330
    .line 331
    new-instance v0, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 332
    .line 333
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    return-object v4

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
