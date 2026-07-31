.class public final Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static ENABLED:Z

.field public static final INITIAL_QUEUE:Ljava/util/ArrayList;

.field public static final INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

.field public static final STREAM_CONFIGS:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 7
    .line 8
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->STREAM_CONFIGS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INITIAL_QUEUE:Ljava/util/ArrayList;

    .line 21
    .line 22
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 23
    .line 24
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput-boolean v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->ENABLED:Z

    .line 33
    .line 34
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 39
    .line 40
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 51
    .line 52
    return-void
.end method

.method public static doSubmit(Lorg/wikipedia/analytics/eventplatform/Event;)V
    .locals 11

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$SamplingController;->SAMPLING_CACHE:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/analytics/eventplatform/Event;->stream:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$SamplingController;->SAMPLING_CACHE:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->STREAM_CONFIGS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lorg/wikimedia/testkitchen/config/StreamConfig;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    :goto_0
    move v0, v3

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    iget-object v2, v2, Lorg/wikimedia/testkitchen/config/StreamConfig;->sampleConfig:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v2, :cond_9

    .line 49
    .line 50
    iget-wide v5, v2, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;->rate:D

    .line 51
    .line 52
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 53
    .line 54
    cmpg-double v7, v5, v7

    .line 55
    .line 56
    if-nez v7, :cond_2

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_2
    const-wide/16 v7, 0x0

    .line 61
    .line 62
    cmpg-double v7, v5, v7

    .line 63
    .line 64
    if-nez v7, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object v2, v2, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;->unit:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v7, "session"

    .line 73
    .line 74
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    invoke-static {}, Lorg/wikipedia/util/TabUtil;->getSessionId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const-string v7, "pageview"

    .line 86
    .line 87
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_5

    .line 92
    .line 93
    sget-object v2, Lorg/wikipedia/util/TabUtil;->PAGEVIEW_ID:Ljava/lang/String;

    .line 94
    .line 95
    if-nez v2, :cond_7

    .line 96
    .line 97
    invoke-static {}, Lorg/wikipedia/util/TabUtil;->generateRandomId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sput-object v2, Lorg/wikipedia/util/TabUtil;->PAGEVIEW_ID:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const-string v7, "device"

    .line 105
    .line 106
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 113
    .line 114
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_1

    .line 122
    :cond_6
    const-string v2, "Bad identifier type"

    .line 123
    .line 124
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_1
    const/16 v7, 0x8

    .line 139
    .line 140
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const/16 v7, 0x10

    .line 145
    .line 146
    invoke-static {v7}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 150
    .line 151
    .line 152
    move-result-wide v7

    .line 153
    long-to-double v7, v7

    .line 154
    const-wide v9, 0x41efffffffe00000L    # 4.294967295E9

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    div-double/2addr v7, v9

    .line 160
    cmpg-double v2, v7, v5

    .line 161
    .line 162
    if-gez v2, :cond_8

    .line 163
    .line 164
    move v3, v4

    .line 165
    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_9
    :goto_2
    move v0, v4

    .line 175
    :goto_3
    if-nez v0, :cond_a

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_a
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer;->QUEUE:Ljava/util/ArrayList;

    .line 179
    .line 180
    sget-boolean v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->ENABLED:Z

    .line 181
    .line 182
    const/16 v1, 0x80

    .line 183
    .line 184
    const v2, 0x7f1205f8

    .line 185
    .line 186
    .line 187
    if-nez v0, :cond_b

    .line 188
    .line 189
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer;->QUEUE:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 196
    .line 197
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-gt v3, v4, :cond_c

    .line 202
    .line 203
    :cond_b
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer;->QUEUE:Ljava/util/ArrayList;

    .line 204
    .line 205
    monitor-enter v0

    .line 206
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .line 208
    .line 209
    monitor-exit v0

    .line 210
    :cond_c
    sget-boolean p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->ENABLED:Z

    .line 211
    .line 212
    if-eqz p0, :cond_f

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 219
    .line 220
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-lt p0, v0, :cond_d

    .line 225
    .line 226
    invoke-static {}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer;->sendAllScheduled()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_d
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 231
    .line 232
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    const-string v0, "sendScheduled"

    .line 241
    .line 242
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    const-string v0, "sendScheduled"

    .line 254
    .line 255
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer$schedule$$inlined$postDelayed$1;

    .line 256
    .line 257
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 261
    .line 262
    const/16 v3, 0x1c

    .line 263
    .line 264
    if-lt v2, v3, :cond_e

    .line 265
    .line 266
    invoke-static {p0, v1}, Landroidx/core/os/HandlerCompat$Api28Impl;->postDelayed(Landroid/os/Handler;Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer$schedule$$inlined$postDelayed$1;)Z

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_e
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    .line 276
    const-wide/16 v2, 0x7530

    .line 277
    .line 278
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    .line 280
    .line 281
    :cond_f
    :goto_4
    return-void

    .line 282
    :catchall_0
    move-exception p0

    .line 283
    monitor-exit v0

    .line 284
    throw p0
.end method

.method public static submit(Lorg/wikipedia/analytics/eventplatform/Event;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->STREAM_CONFIGS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INITIAL_QUEUE:Ljava/util/ArrayList;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 17
    .line 18
    const v2, 0x7f1205f8

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x80

    .line 22
    .line 23
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lt v1, v2, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p0

    .line 43
    :cond_1
    invoke-static {p0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->doSubmit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final refreshStreamConfigs(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;-><init>(Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x2

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v4, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    iget-object v1, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->L$0:Lj$/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->STREAM_CONFIGS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 65
    .line 66
    new-instance p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 67
    .line 68
    const-string v5, "https://meta.wikimedia.org"

    .line 69
    .line 70
    invoke-direct {p0, v5}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iput-object v1, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->L$0:Lj$/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    iput v3, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->label:I

    .line 80
    .line 81
    invoke-interface {p0, v0}, Lorg/wikipedia/dataclient/Service;->getStreamConfigs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-ne p0, p1, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    check-cast p0, Lorg/wikimedia/testkitchen/config/StreamConfigCollection;

    .line 89
    .line 90
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/StreamConfigCollection;->streamConfigs:Ljava/util/Map;

    .line 91
    .line 92
    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 96
    .line 97
    new-instance v1, Landroidx/paging/CachedPagingDataKt$cachedIn$4;

    .line 98
    .line 99
    const/4 v3, 0x4

    .line 100
    invoke-direct {v1, v4, v3, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$4;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->L$0:Lj$/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    iput v4, v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$refreshStreamConfigs$1;->label:I

    .line 106
    .line 107
    invoke-static {p0, v1, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-ne p0, p1, :cond_5

    .line 112
    .line 113
    :goto_2
    return-object p1

    .line 114
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p0
.end method
