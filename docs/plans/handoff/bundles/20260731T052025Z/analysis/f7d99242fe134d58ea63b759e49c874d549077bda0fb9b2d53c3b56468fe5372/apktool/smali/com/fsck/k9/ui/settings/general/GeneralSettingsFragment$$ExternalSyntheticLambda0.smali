.class public final synthetic Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    check-cast p1, Landroid/net/Uri;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->jobManager$delegate:Lkotlin/Lazy;

    .line 32
    .line 33
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/fsck/k9/job/K9JobManager;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lcom/fsck/k9/job/K9JobManager;->syncDebugFileLogManager:Lcom/fsck/k9/job/FileLogLimitWorkManager;

    .line 50
    .line 51
    new-instance v1, Lkotlin/Pair;

    .line 52
    .line 53
    const-string v3, "exportUriString"

    .line 54
    .line 55
    invoke-direct {v1, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    new-array v3, p1, [Lkotlin/Pair;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    aput-object v1, v3, v4

    .line 63
    .line 64
    new-instance v1, Landroidx/work/Data$Builder;

    .line 65
    .line 66
    invoke-direct {v1, v4}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 67
    .line 68
    .line 69
    aget-object v3, v3, v4

    .line 70
    .line 71
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {v1, v3, v4}, Landroidx/work/Data$Builder;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v3, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 85
    .line 86
    const-class v4, Lcom/fsck/k9/job/SyncDebugWorker;

    .line 87
    .line 88
    invoke-direct {v3, v4}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v4, 0x18

    .line 92
    .line 93
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 94
    .line 95
    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/WorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 100
    .line 101
    iget-object v4, v3, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    .line 104
    .line 105
    iput-object v1, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 106
    .line 107
    iget-object v1, v3, Landroidx/work/WorkRequest$Builder;->tags:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Ljava/util/Set;

    .line 110
    .line 111
    const-string v6, "sync_debug_timer"

    .line 112
    .line 113
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 117
    .line 118
    invoke-virtual {v3, v1}, Landroidx/work/WorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;)Landroidx/work/WorkRequest$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroidx/work/OneTimeWorkRequest;

    .line 129
    .line 130
    iget-object v5, v0, Lcom/fsck/k9/job/FileLogLimitWorkManager;->workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    new-instance v4, Landroidx/work/impl/WorkContinuationImpl;

    .line 140
    .line 141
    const/4 v9, 0x0

    .line 142
    sget-object v7, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 143
    .line 144
    invoke-direct/range {v4 .. v9}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/SystemClock;

    .line 148
    .line 149
    .line 150
    iget-object v0, v1, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    .line 151
    .line 152
    iget-object v1, v5, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v3, "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN ("

    .line 173
    .line 174
    invoke-static {v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-static {v4, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->appendPlaceholders(ILjava/lang/StringBuilder;)V

    .line 183
    .line 184
    .line 185
    const-string v4, ")"

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 195
    .line 196
    const-string v5, "WorkProgress"

    .line 197
    .line 198
    const-string/jumbo v6, "workspec"

    .line 199
    .line 200
    .line 201
    const-string v7, "WorkTag"

    .line 202
    .line 203
    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    new-instance v6, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    const/16 v7, 0x17

    .line 210
    .line 211
    invoke-direct {v6, v3, v0, v1, v7}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v4, p1, v5, v6}, Landroidx/sqlite/SQLite;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 219
    .line 220
    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;

    .line 228
    .line 229
    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0, p0, v1}, Landroidx/work/Data$Companion;->observe(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 233
    .line 234
    .line 235
    :cond_1
    return-void

    .line 236
    :pswitch_0
    sget v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 237
    .line 238
    if-eqz p1, :cond_2

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 259
    .line 260
    const/16 v4, 0xe

    .line 261
    .line 262
    invoke-direct {v3, p0, p1, v1, v4}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 263
    .line 264
    .line 265
    invoke-static {v0, v1, v1, v3, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 266
    .line 267
    .line 268
    :cond_2
    return-void

    .line 269
    :pswitch_1
    sget v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 270
    .line 271
    if-eqz p1, :cond_3

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 285
    .line 286
    const/16 v4, 0xd

    .line 287
    .line 288
    invoke-direct {v3, p0, p1, v1, v4}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v1, v1, v3, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 292
    .line 293
    .line 294
    :cond_3
    return-void

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
